package com.example.ecomm.controller;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.net.MalformedURLException;

@RestController
@RequestMapping("/api/images") 
@CrossOrigin(origins = "http://localhost:3000") 
public class ImageController {

    @GetMapping("/{category}/{filename}")
    public ResponseEntity<Resource> getProductImage(@PathVariable String category, @PathVariable String filename) {
        try {
            // Resimlerin saklandığı klasör yolu
            Path path = Paths.get("src/main/resources/static/products_images/" + category + "/" + filename);
            Resource resource = new UrlResource(path.toUri());

            if (resource.exists() || resource.isReadable()) {
                return ResponseEntity.ok()
                        .contentType(MediaType.IMAGE_JPEG) 
                        .body(resource);
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (MalformedURLException e) {
            return ResponseEntity.internalServerError().build();
        }
    }
}