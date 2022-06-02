
package com.hahn.api.v1;

import com.hahn.manager.rocketmq.ProducerSchedule;
import com.hahn.model.Order;
import com.hahn.repository.OrderRepository;
import com.hahn.repository.UserCouponRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("v1/test")
public class TestController {
    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private UserCouponRepository userCouponRepository;



//    @Autowired
//    private ProducerSchedule producerSchedule;


    @GetMapping("/t")
    @Transactional
    public void getTest() {
        Order order = this.orderRepository.findFirstByOrderNo("B3292062362326").get();
        int res = this.orderRepository.updateStatusByOrderNo("B3292062362326", 2);
        System.out.println(res);
    }

//    @GetMapping("/push")
//    public void pushMessageToMQ() throws Exception {
//        producerSchedule.send("TopicTest", "test");
//    }
}
