package io.github.talelin.latticy.dto;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Positive;

/**
 * @author TaleLin
 */
@Data
public class BannerItemDTO {

    @NotBlank
    @Length(min = 1, max = 255)
    private String img;

    @Length(min = 1, max = 255)
    private String name;

    @NotNull
    @Positive
    private Integer type;

    @NotNull
    @Positive
    private Integer bannerId;

//    @Length(min = 1, max = 50)

    @Length(min = 0, max = 50)
    private String keyword;


//    @Length(min = 0, max = 50)
    @Positive
    private Integer spuId;


    @Length(min = 0, max = 50)
    private String spuName;


//    @Length(min = 0, max = 50)
    @Positive
    private Integer themeId;


    @Length(min = 0, max = 50)
    private String themeName;
}
