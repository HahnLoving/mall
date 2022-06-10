// 封装微信请求
// 请求 url 配置
import {config} from "../config/config";
// 小程序本地错误码
import {codes} from "../config/exception-config";
// promisic 封装
import {promisic} from "./util";
// 信息处理返回
import {HttpException} from "../core/http-exception";
// Token请求
import {Token} from "../models/token";

class Http {
    // url 请求路由
    // data 请求参数
    // method 请求方式
    // refetch 是否需要重新请求
    // throwError 是否需要返回错误信息
    static async request({
                             url,
                             data,
                             method = 'GET',
                             refetch = true,
                             throwError = false
                         }) {
        let res;
        try {
            // 开始http请求
            res = await promisic(wx.request)({
                url: `${config.apiBaseUrl}${url}`,
                data,
                method,
                header: {
                    'content-type': 'application/json',
                    // JWT token头部
                    'authorization': `Bearer ${wx.getStorageSync('token')}`
                }
            })
        } catch (e) {
            // 这里显示是网络的错误
            // 请求错误处理
            console.log("请求异常")
            console.log(e)
            if (throwError) {
                throw new HttpException(-1, codes[-1])
            }
            Http.showError(-1)
            return null
        }
        const code = res.statusCode.toString()
        if (code.startsWith('2')) {
            // 请求成功返回
            return res.data
        } else {
            if (code === '401') {
                // 如果是token过期这些，需要二次重发
                if (refetch) {
                    Http._refetch({
                        url,
                        data,
                        method
                    })
                }
            } else {
                // 请求错误处理
                if (throwError) {
                    throw new HttpException(res.data.code, res.data.message, code)
                }

                if (code === '404') {
                    if (res.data.code !== undefined) {
                        return null
                    }
                    return res.data
                }
                const error_code = res.data.code;
                Http.showError(error_code, res.data)
            }
            // 403 404 500
        }
        return res.data
    }

    // 请求token 
    static async _refetch(data) {
        const token = new Token()
        await token.getTokenFromServer()
        data.refetch = false
        return await Http.request(data)
    }

    // 显示错误信息
    static showError(error_code, serverError) {
        let tip

        if (!error_code) {
            tip = codes[9999]
        } else {
            if (codes[error_code] === undefined) {
                tip = serverError.message
            } else {
                tip = codes[error_code]
            }
        }

        wx.showToast({
            icon: "none",
            title: tip,
            duration: 3000
        })
    }
}


export {
    Http
}