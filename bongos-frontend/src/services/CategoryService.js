import api from "../api/axios";

export const getAllCategories = async () => {
  const res = await api.get("/categories"); // Hits Spring Boot CategoryController
  return res.data;
};