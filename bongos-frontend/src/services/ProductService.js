// src/services/productService.js
import api from "../api/axios";

/**
 * Fetches all products from the backend API.
 * Uses GET /api/products [cite: 2057, 2092]
 */
export const getAllProducts = async () => {
  try {
    const res = await api.get("/products");
    return res.data; // Returns a list of ProductDTO [cite: 450, 2097]
  } catch (error) {
    console.error("Error fetching products:", error);
    throw error;
  }
};

/**
 * Fetches products by a specific category ID.
 * Uses GET /api/products/by-category/{categoryId} [cite: 2058]
 */
export const getProductsByCategory = async (categoryId) => {
  try {
    const res = await api.get(`/products/by-category/${categoryId}`);
    return res.data;
  } catch (error) {
    console.error(`Error fetching products for category ${categoryId}:`, error);
    throw error;
  }
};