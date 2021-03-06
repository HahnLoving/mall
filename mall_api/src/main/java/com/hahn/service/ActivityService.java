
package com.hahn.service;

import com.hahn.model.Activity;
import com.hahn.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ActivityService {

    @Autowired
    private ActivityRepository activityRepository;

    public Activity getByName(String name) {
        return activityRepository.findByName(name);
    }

//    public List<Activity> getByCategoryId(Long categoryId){
//        Date date = new Date();
//        List<Activity> activities = activityRepository
//                .findByStartTimeLessThanAndEndTimeGreaterThanAndCategoryListId(
//                        date, date, categoryId);
//        return activities;
//    }
}
