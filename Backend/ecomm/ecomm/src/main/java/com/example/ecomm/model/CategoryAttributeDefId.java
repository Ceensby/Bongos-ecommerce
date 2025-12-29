package com.example.ecomm.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class CategoryAttributeDefId implements Serializable {

    @Column(name = "category_id")
    private Long categoryId;

    @Column(name = "attr_key")
    private String attrKey;

    public CategoryAttributeDefId() {}

    public CategoryAttributeDefId(Long categoryId, String attrKey) {
        this.categoryId = categoryId;
        this.attrKey = attrKey;
    }

    public Long getCategoryId() { return categoryId; }
    public void setCategoryId(Long categoryId) { this.categoryId = categoryId; }

    public String getAttrKey() { return attrKey; }
    public void setAttrKey(String attrKey) { this.attrKey = attrKey; }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CategoryAttributeDefId)) return false;
        CategoryAttributeDefId that = (CategoryAttributeDefId) o;
        return Objects.equals(categoryId, that.categoryId) &&
               Objects.equals(attrKey, that.attrKey);
    }

    @Override
    public int hashCode() {
        return Objects.hash(categoryId, attrKey);
    }
}