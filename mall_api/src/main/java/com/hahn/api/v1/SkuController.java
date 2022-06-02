
package com.hahn.api.v1;

import com.hahn.model.Sku;
import com.hahn.model.Spu;
import com.hahn.service.SkuService;
import com.hahn.service.SpuService;
import com.hahn.vo.SkuIsTestVO;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@RequestMapping("v1/sku")
@RestController
public class SkuController {
    @Autowired
    private SkuService skuService;

    @Autowired
    private SpuService spuService;

    @GetMapping("")
    public List<Sku> getSkuListInIds(@RequestParam(name = "ids", required = false) String ids) {
        if(ids==null || ids.isEmpty()){
            return Collections.emptyList();
        }
        List<Long> idList = Arrays.stream(ids.split(","))
                .map(s -> Long.parseLong(s.trim()))
                .collect(Collectors.toList());
        List<Sku> skus = skuService.getSkuListByIds(idList);
//        List<Long> spuIds = new ArrayList<>();
//        skus.forEach(sku-> spuIds.add(sku.getSpuId()));
//        List<Spu> spuList = spuService.getSpuListInIds(spuIds);
//        List<SkuIsTestVO> vos = new ArrayList<>();
//
//        skus.forEach(sku -> {
//            SkuIsTestVO vo = new SkuIsTestVO(sku, spuList);
//            vos.add(vo);
//        });
        return skus;
    }
}
