package com.example.ecomm.dto;

import java.math.BigDecimal;
import java.util.Set;

public class ProductDTO {
    private Long productId;
    private String name;
    private BigDecimal price;
    private String imageUrl;
    private String description;
    private boolean featured;

    // JSONB attributes
    private String attributes;

    // category ids (M:N)
    private Set<Long> categoryIds;

    public ProductDTO() {}

    private Set<String> categoryNames;

    public Set<String> getCategoryNames() { return categoryNames; }
    public void setCategoryNames(Set<String> categoryNames) { this.categoryNames = categoryNames; }


    public Long getProductId() { return productId; }
    public void setProductId(Long productId) { this.productId = productId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public BigDecimal getPrice() { return price; }
    public void setPrice(BigDecimal price) { this.price = price; }

    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public boolean isFeatured() { return featured; }
    public void setFeatured(boolean featured) { this.featured = featured; }


   public String getAttributes() {return attributes;}
   public void setAttributes(String attributes) { this.attributes = attributes;}


    public Set<Long> getCategoryIds() { return categoryIds; }
    public void setCategoryIds(Set<Long> categoryIds) { this.categoryIds = categoryIds; }
}