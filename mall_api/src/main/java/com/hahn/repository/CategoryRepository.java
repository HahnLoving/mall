
package com.hahn.repository;

import com.hahn.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Locale;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    //    {List, List, List}
//     List, List
    List<Category> findAllByIsRootOrderByIndexAsc(Boolean isRoot);
}
