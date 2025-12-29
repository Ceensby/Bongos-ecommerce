package com.example.ecomm.repository;

import com.example.ecomm.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

     List<Product> findByCategories_CategoryId(Long categoryId);
}
