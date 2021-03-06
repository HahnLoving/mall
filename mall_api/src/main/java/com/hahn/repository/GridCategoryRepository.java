
package com.hahn.repository;

import com.hahn.model.GridCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface GridCategoryRepository extends JpaRepository<GridCategory, Long> {
}
