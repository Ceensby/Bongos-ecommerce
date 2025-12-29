package com.example.ecomm.mapper;

import com.example.ecomm.dto.CategoryDTO;
import com.example.ecomm.model.Category;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryMapper {

    public static CategoryDTO toDto(Category category) {
        if (category == null) return null;

        CategoryDTO dto = new CategoryDTO();
        dto.setCategoryId(category.getCategoryId());
        dto.setName(category.getName());
        dto.setParentId(
                category.getParent() != null
                        ? category.getParent().getCategoryId()
                        : null
        );

        if (category.getChildren() != null && !category.getChildren().isEmpty()) {
            List<CategoryDTO> children = category.getChildren()
                    .stream()
                    .map(CategoryMapper::toDto)
                    .collect(Collectors.toList());
            dto.setChildren(children);
        } else {
            dto.setChildren(List.of());
        }

        return dto;
    }
}
