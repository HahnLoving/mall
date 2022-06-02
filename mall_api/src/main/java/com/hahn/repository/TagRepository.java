package com.hahn.repository;

import com.hahn.model.Banner;
import com.hahn.model.Tag;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TagRepository extends JpaRepository<Tag, Long> {
//    Banner findOneById(Long id);
//
//    Banner findOneByName(String name);
//    List<Tag> fin
}