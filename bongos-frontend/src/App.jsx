import React from "react";
import { Routes, Route } from "react-router-dom";
import { CartProvider } from "./context/CartContext";
import Header from "./components/Header";
import CategorySidebar from "./components/CategorySidebar";
import UserSidebar from "./components/UserSidebar";
import Home from "./pages/Home";
import { Box, CssBaseline } from "@mui/material";

function App() {
  return (
    <CartProvider>
      <CssBaseline />
      <Header /> 
      
      {/* ANA TAŞIYICI: width: 100% ve padding ile tam yayılım sağlıyoruz */}
      <Box sx={{ 
        display: 'flex', 
        flexDirection: { xs: 'column', md: 'row' }, 
        width: '100%',
        minHeight: '100vh',
        p: 2, // Kenarlardan çok az nefes payı, tamamen sıfırlamak istersen 0 yap
        gap: 2,
        justifyContent: 'space-between' // Sütunları iki yana yaslar
      }}>
        
        {/* SOL SÜTUN (Kategoriler) - Tam Sola Yapışık */}
        <Box sx={{ 
          flex: { xs: '1 1 100%', md: '0 0 250px' }, // Sabit genişlik daha profesyonel durur
          backgroundColor: '#fff',
          borderRadius: '8px',
          boxShadow: '0 2px 8px rgba(0,0,0,0.05)'
        }}>
          <CategorySidebar />
        </Box>
        
        {/* ORTA SÜTUN (Ürünler) - Kalan Tüm Boşluğu Doldurur */}
        <Box sx={{ 
          flex: '1', 
          minWidth: 0, // Flex çakışmasını önler
          px: { md: 2 } 
        }}>
          <Routes>
            {/* Ürünlerin burada gözükmesi lazım */}
            <Route path="/" element={<Home />} />
            <Route path="/login" element={<Box sx={{p:3}}><h2>Login Page</h2></Box>} />
            <Route path="/cart" element={<Box sx={{p:3}}><h2>Your Cart</h2></Box>} />
          </Routes>
        </Box>

        {/* SAĞ SÜTUN (Welcome/User) - Tam Sağa Yapışık */}
        <Box sx={{ 
          flex: { xs: '1 1 100%', md: '0 0 300px' },
          backgroundColor: '#fff',
          borderRadius: '8px',
          boxShadow: '0 2px 8px rgba(0,0,0,0.05)'
        }}>
          <UserSidebar />
        </Box>

      </Box>
    </CartProvider>
  );
}

export default App;