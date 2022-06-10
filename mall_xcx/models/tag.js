
import {Http} from "../utils/http";

class Tag{
    static getSearchTags() {
        return Http.request({
            url:`tag/all`
        })
    }
}

export {
    Tag
}