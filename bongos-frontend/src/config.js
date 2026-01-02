export const BACKEND_BASE_URL = 'http://localhost:8080'; // Spring Boot portun [cite: 329, 2113]
export const API_BASE_URL = `${BACKEND_BASE_URL}/api`; // Backend API prefix [cite: 331, 2055]

// Resim yollarını tam URL'e çeviren yardımcı [cite: 333, 411]
export const resolveImageUrl = (pathOrUrl) => {
  if (!pathOrUrl) return '';
  if (/^https?:\/\//i.test(pathOrUrl)) return pathOrUrl;
  const cleanPath = pathOrUrl.startsWith('/') ? pathOrUrl : `/${pathOrUrl}`;
  return `${BACKEND_BASE_URL}${cleanPath}`;
};