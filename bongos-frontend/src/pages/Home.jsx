import React, { useEffect, useState } from 'react';
import { Grid, Typography, Box, CircularProgress, Container } from '@mui/material';
import { getAllProducts } from '../services/ProductService';
import ProductCard from '../components/ProductCard';

export default function Home() {
  const [products, setProducts] = useState([]); // State for product list [cite: 1785, 1840]
  const [loading, setLoading] = useState(true); // Loading state [cite: 1785, 1841]

  useEffect(() => {
    let mounted = true; // Prevents state update on unmounted component [cite: 1787, 1849]

    getAllProducts() // Call backend API [cite: 1782, 1936]
      .then((data) => {
        if (mounted) {
          setProducts(data); // Fill state with backend products [cite: 1790, 1853]
          setLoading(false); // Stop spinner [cite: 1791, 1856]
        }
      })
      .catch((err) => {
        if (mounted) {
          console.error("Home loading error:", err);
          setLoading(false);
        }
      });

    return () => { mounted = false; }; // Cleanup [cite: 1797, 1860]
  }, []);

  if (loading) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', py: 10 }}>
        <CircularProgress color="primary" /> {/* Show loading spinner [cite: 1809, 1904] */}
      </Box>
    );
  }

  return (
    <Box>
      <Typography variant="h5" sx={{ mb: 3, fontWeight: 'bold', color: '#333' }}>
        New Arrivals
      </Typography>
      
      {/* Product Grid based on your Bongos design reference [cite: 1812, 1913] */}
      <Grid container spacing={3} alignItems="stretch">
        {products.map((p) => (
          <Grid item key={p.productId} xs={12} sm={6} md={4}>
            <ProductCard product={p} />
          </Grid>
        ))}
      </Grid>
    </Box>
  );
}