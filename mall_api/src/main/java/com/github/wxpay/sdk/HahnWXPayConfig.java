
package com.github.wxpay.sdk;

import com.hahn.exception.http.ServerErrorException;
import org.springframework.core.io.ClassPathResource;

import java.io.*;
public class HahnWXPayConfig extends WXPayConfig {

    private byte[] certData;


    public HahnWXPayConfig() {
        try {
            String c = System.getProperty("user.dir");
            String certPath = c + "/src/main/resources/static/apiclient_cert.p12";
//            String certPath = "/Users/hanzhili/Desktop/风袖项目/1592067141_20200510_cert/apiclient_cert.p12";
            File file = new File(certPath);

//            ClassPathResource resource = new ClassPathResource("template" + File.separator + "apiclient_cert.p12");
////            // 获取文件流
////            InputStream inputStream = resource.getInputStream();
////            // 获取文件
////            File file = resource.getFile();
//
//            String certPath = resource.getPath();
//            File file = new File(certPath);

            InputStream certStream = new FileInputStream(file);
            this.certData = new byte[(int) file.length()];
            certStream.read(this.certData);
            certStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    public void HahnWXPayConfig() throws Exception {
//        String certPath = "/Users/hanzhili/Desktop/风袖项目/1592067141_20200510_cert/apiclient_cert.p12 ";
//        File file = new File(certPath);
//        InputStream certStream = new FileInputStream(file);
//        this.certData = new byte[(int) file.length()];
//        certStream.read(this.certData);
//        certStream.close();
//    }


    public String getAppID() {
        return "wx70247c5666312d10";
    }

    public String getMchID() {
        return "1592067141";
    }

    public String getKey() {
        return "2BC7D70238BC4D97347970CE02AA624F";
    }


    public InputStream getCertStream() {
        ByteArrayInputStream certBis = new ByteArrayInputStream(this.certData);
        return certBis;
    }

    public int getHttpConnectTimeoutMs() {
        return 8000;
    }

    public int getHttpReadTimeoutMs() {
        return 10000;
    }

    public IWXPayDomain getWXPayDomain() {
        IWXPayDomain iwxPayDomain = new IWXPayDomain() {
            @Override
            public void report(String domain, long elapsedTimeMillis, Exception ex) {

            }

            @Override
            public DomainInfo getDomain(WXPayConfig config) {
                return new IWXPayDomain.DomainInfo(WXPayConstants.DOMAIN_API, true);
            }
        };
        return iwxPayDomain;
    }

    public static String readNotify(InputStream stream) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
        StringBuilder builder = new StringBuilder();

        String line;

        try {
            while ((line = reader.readLine()) != null) {
                builder.append(line).append("\n");
            }
        } catch (IOException e) {
            throw new ServerErrorException(9999);
        } finally {
            try {
                stream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return builder.toString();
    }

    public static String fail() {
        return "false";
    }

    public static String success() {
        return "<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>";
    }

}
