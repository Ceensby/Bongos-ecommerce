package com.example.ecomm.model;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private Long productId;

    @Column(name = "name", nullable = false, length = 250)
    private String name;

    @Column(name = "price", nullable = false, precision = 10, scale = 2)
    private BigDecimal price;

    @Column(name = "image_url", length = 512)
    private String imageUrl;

    @Column(name = "description", length = 500)
    private String description;

    @Column(name = "featured", nullable = false)
    private boolean featured = false;

    // JSONB: Attributes alanı
    @Column(name = "attributes", nullable = false, columnDefinition = "jsonb")
    private String attributes = "{}";

    // product_categories join table
    @ManyToMany
    @JoinTable(
            name = "product_categories",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "category_id")
    )
    private Set<Category> categories = new HashSet<>();

    public Product() {}

    // --- ÖZEL GETTER: Resim Yollarını Otomatik Oluşturur ---
    public String getImageUrl() {
        // 1. Temel Kontrol: Eğer image_url boşsa varsayılan resim döner
        if (this.imageUrl == null || this.imageUrl.isEmpty()) {
            return "ProductImages/default.png";
        }

        // 2. Eğer zaten ProductImages ile başlıyorsa dokunma
        if (this.imageUrl.startsWith("ProductImages/")) {
            return this.imageUrl;
        }

        StringBuilder fullPath = new StringBuilder("ProductImages/");

        // 3. Kategorileri kullanarak klasör yolunu inşa et
        if (this.categories != null && !this.categories.isEmpty()) {
            // Ürünün bağlı olduğu ilk kategoriyi baz alır
            Category current = this.categories.iterator().next(); 
            StringBuilder categoryPath = new StringBuilder();
            
            // Kategori ağacını Root'a kadar tırmanır
            while (current != null) {
                // Boşlukları siler, URL dostu klasör isimleri oluşturur
                String folderName = current.getName()
                                            .replace(" ", "")
                                            .replace("&", "And");
                
                categoryPath.insert(0, folderName + "/");
                current = current.getParent(); // Category.java'daki getParent() metodunu kullanır
            }
            fullPath.append(categoryPath);
        }

        // 4. Sonuç: ProductImages/Makeup/Face/Foundation/urun.jpg formatı
        return fullPath.toString() + this.imageUrl.trim();
    }

    // --- Standart Getters & Setters ---
    public Long getProductId() { return productId; }
    public void setProductId(Long productId) { this.productId = productId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public BigDecimal getPrice() { return price; }
    public void setPrice(BigDecimal price) { this.price = price; }

    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public boolean isFeatured() { return featured; }
    public void setFeatured(boolean featured) { this.featured = featured; }

    public String getAttributes() { return attributes; }
    public void setAttributes(String attributes) { this.attributes = attributes; }

    public Set<Category> getCategories() { return categories; }
    public void setCategories(Set<Category> categories) { this.categories = categories; }
}