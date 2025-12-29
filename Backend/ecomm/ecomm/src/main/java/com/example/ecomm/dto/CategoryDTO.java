package com.example.ecomm.dto;

import java.util.List;

public class CategoryDTO {
    private Long categoryId;
    private String name;
    private Long parentId;
    private List<CategoryDTO> children;

    public CategoryDTO() {}

    public CategoryDTO(Long categoryId, String name, Long parentId, List<CategoryDTO> children) {
        this.categoryId = categoryId;
        this.name = name;
        this.parentId = parentId;
        this.children = children;
    }

    public Long getCategoryId() { return categoryId; }
    public void setCategoryId(Long categoryId) { this.categoryId = categoryId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public Long getParentId() { return parentId; }
    public void setParentId(Long parentId) { this.parentId = parentId; }

    public List<CategoryDTO> getChildren() { return children; }
    public void setChildren(List<CategoryDTO> children) { this.children = children; }
}