
package com.hahn.api.v1;

import com.hahn.bo.PageCounter;
import com.hahn.model.Spu;
import com.hahn.service.SearchService;
import com.hahn.util.CommonUtil;
import com.hahn.vo.PagingDozer;
import com.hahn.vo.SpuSimplifyVO;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

@RequestMapping("v1/search")
@RestController
public class SearchController {

    @Autowired
    private SearchService searchService;
    @GetMapping("")
    public PagingDozer<Spu, SpuSimplifyVO> search(@RequestParam String q,
                                                  @RequestParam(defaultValue = "0") Integer start,
                                                  @RequestParam(defaultValue = "10") Integer count) {
        PageCounter counter = CommonUtil.convertToPageParameter(start, count);
        Page<Spu> page = this.searchService.search(q, counter.getPage(), counter.getCount());
//        if (page.getContent().isEmpty()) {
//            return
//        }
        return new PagingDozer<>(page, SpuSimplifyVO.class);
    }
}