
package com.hahn.dto;

import com.hahn.util.HttpRequestProxy;
import lombok.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SuccessDTO {
    private Integer code = 0;
    private String message = "ok";
    private String request = HttpRequestProxy.getRequestUrl();
}
