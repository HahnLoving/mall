
package com.hahn.vo;

import com.hahn.model.Sku;
import com.hahn.model.Spu;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SpuSimplifyVO {
    private Long id;
    private String title;
    private String subtitle;
    private String img;
    private String forThemeImg;
    private String price;
    private String ratePrice;
    private String description;
    private String tags;
    private String sketchSpecId;
}

