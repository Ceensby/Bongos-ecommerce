package com.example.ecomm.service;

import com.example.ecomm.model.Category;
import com.example.ecomm.repository.CategoryRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Category> getRootCategories() {
        return categoryRepository.findByParentIsNull();
    }
}
