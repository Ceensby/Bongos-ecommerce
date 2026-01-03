export const BACKEND_BASE_URL = 'http://localhost:8080'; // Spring Boot portun [cite: 329, 2113]
export const API_BASE_URL = `${BACKEND_BASE_URL}/api`; // Backend API prefix [cite: 331, 2055]

export const resolveImageUrl = (path) => {
  if (!path) return '';

  if (/^https?:\/\//i.test(path)) return path;
  
  return `${BACKEND_BASE_URL}/api/images${path.startsWith('/') ? '' : '/'}${path}`;
};