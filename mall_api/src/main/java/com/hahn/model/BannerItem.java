
package com.hahn.model;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Objects;

@Entity
@Getter
@Setter
@Where(clause = "delete_time is null ")
public class BannerItem extends BaseEntity {
    @Id
    private Long id;
    private String img;
    private String keyword;
    private short type;
    private Long bannerId;
    private String name;
    private Long spuId;
    private String spuName;
    private Long themeId;
    private String themeName;
}
