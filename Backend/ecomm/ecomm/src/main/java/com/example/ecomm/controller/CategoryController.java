package com.example.ecomm.controller;

import com.example.ecomm.dto.CategoryDTO;
import com.example.ecomm.mapper.CategoryMapper;
import com.example.ecomm.service.CategoryService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/categories")
public class CategoryController {

    private final CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

   
    @GetMapping
    public List<CategoryDTO> getAllCategories() {
        return categoryService.getRootCategories().stream()
                .map(CategoryMapper::toDto)
                .toList();
    }
}
