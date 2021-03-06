package io.github.talelin.latticy.model;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @author TaleLin
 */
@Data
@TableName("coupon_template")
public class CouponTemplateDO {

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String title;

    private String description;

    private BigDecimal fullMoney;

    private BigDecimal minus;

    /**
     * 国内多是打折，国外多是百分比 off
     */
    private BigDecimal rate;

    /**
     * 1. 满减券 2.折扣券 3.无门槛券 4.满金额折扣券
     */
    private Integer type;

    @JsonIgnore
    private Date createTime;

    @JsonIgnore
    @TableField(update = "now()")
    private Date updateTime;

    @TableLogic
    @JsonIgnore
    private Date deleteTime;

}
