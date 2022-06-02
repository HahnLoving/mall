package com.hahn.api.v1;


import com.hahn.model.Order;
import com.hahn.model.Tag;
import com.hahn.repository.OrderRepository;
import com.hahn.repository.TagRepository;
import com.hahn.repository.UserCouponRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("v1/tag")
public class TagController {
    @Autowired
    private TagRepository tagRepository;


    @GetMapping("/all")
    @Transactional
    public List<Tag> getTest() {
//        Order order = this.orderRepository.findFirstByOrderNo("B3292062362326").get();
//        int res = this.orderRepository.updateStatusByOrderNo("B3292062362326", 2);
//        System.out.println(res);
        List<Tag> tags = this.tagRepository.findAll();
        return tags;
    }

}
