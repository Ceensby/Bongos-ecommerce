package com.example.ecomm.model;

import jakarta.persistence.*;

@Entity
@Table(name = "category_attribute_defs")

public class CategoryAttributeDef {
    @EmbeddedId
    private CategoryAttributeDefId id;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("categoryId")
    @JoinColumn(name = "category_id", nullable = false)
    private Category category;

    @Column(name = "label_tr")
    private String labelTr;

    @Column(name = "data_type")
    private String dataType = "text";

    @Column(name = "is_required", nullable = false)
    private boolean required = false;

    @Column(name = "sort_order", nullable = false)
    private int sortOrder = 0;

    public CategoryAttributeDef() {}

    public CategoryAttributeDefId getId() { return id; }
    public void setId(CategoryAttributeDefId id) { this.id = id; }

    public Category getCategory() { return category; }
    public void setCategory(Category category) { this.category = category; }

    public String getLabelTr() { return labelTr; }
    public void setLabelTr(String labelTr) { this.labelTr = labelTr; }

    public String getDataType() { return dataType; }
    public void setDataType(String dataType) { this.dataType = dataType; }

    public boolean isRequired() { return required; }
    public void setRequired(boolean required) { this.required = required; }

    public int getSortOrder() { return sortOrder; }
    public void setSortOrder(int sortOrder) { this.sortOrder = sortOrder; }
}
