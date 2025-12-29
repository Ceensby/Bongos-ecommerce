package com.example.ecomm.service;

import com.example.ecomm.dto.ProductDTO;
import com.example.ecomm.model.Category;
import com.example.ecomm.model.Product;
import com.example.ecomm.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    // Artık Product değil DTO döndürüyoruz
    public List<ProductDTO> getAllProducts() {
        return productRepository.findAll()
                .stream()
                .map(this::toDTO)
                .collect(Collectors.toList());
    }


    public List<ProductDTO> getProductsByCategory(Long categoryId) {
    return productRepository.findByCategories_CategoryId(categoryId)
            .stream()
            .map(this::toDTO)
            .collect(Collectors.toList());
}

 
    private ProductDTO toDTO(Product p) {
        ProductDTO dto = new ProductDTO();

        dto.setProductId(p.getProductId());
        dto.setName(p.getName());
        dto.setPrice(p.getPrice());
        dto.setImageUrl(p.getImageUrl());
        dto.setDescription(p.getDescription());
        dto.setFeatured(p.isFeatured());

        // attributes JSONB -> Map
        dto.setAttributes(p.getAttributes()); // p.getAttributes() Map dönmeli

        // Kategori ID'leri (istersen kalsın)
        dto.setCategoryIds(
                p.getCategories().stream()
                        .map(Category::getCategoryId)
                        .collect(Collectors.toSet())
        );

        // Kategori İSİMLERİ (senin istediğin)
        dto.setCategoryNames(
                p.getCategories().stream()
                        .map(Category::getName)
                        .collect(Collectors.toSet())
        );

        return dto;
    }
}

