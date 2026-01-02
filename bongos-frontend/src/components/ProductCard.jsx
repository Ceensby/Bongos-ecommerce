import React from "react";
import { 
  Card, 
  CardMedia, 
  CardContent, 
  Typography, 
  CardActions, 
  Button, 
  Box, 
  IconButton 
} from "@mui/material";
import FavoriteBorderIcon from "@mui/icons-material/FavoriteBorder";
import { useCart } from "../context/CartContext";
import { resolveImageUrl } from "../config";

export default function ProductCard({ product }) {
  // Use global cart actions from CartContext
  const { add } = useCart();

  return (
    <Card 
      sx={{ 
        height: "100%", 
        display: "flex", 
        flexDirection: "column", 
        borderRadius: 4, 
        position: 'relative', 
        boxShadow: '0 4px 12px rgba(0,0,0,0.05)',
        transition: '0.3s',
        '&:hover': { boxShadow: '0 8px 24px rgba(0,0,0,0.1)' }
      }}
    >
      {/* Heart icon for wishlist, styled to match your design reference */}
      <IconButton 
        sx={{ 
          position: 'absolute', 
          top: 8, 
          right: 8, 
          bgcolor: 'rgba(255,255,255,0.8)',
          '&:hover': { bgcolor: 'white' }
        }}
      >
        <FavoriteBorderIcon fontSize="small" sx={{ color: '#f37199' }} />
      </IconButton>

      <CardMedia
        component="img"
        height="180"
        // Build image URL using the helper function
        image={resolveImageUrl(product.imageUrl)} 
        alt={product.name}
        sx={{ objectFit: 'contain', pt: 2 }}
      />

      <CardContent sx={{ flexGrow: 1, textAlign: 'center' }}>
        <Typography 
          variant="subtitle1" 
          sx={{ fontWeight: 600, color: '#333', mb: 1 }}
        >
          {product.name}
        </Typography>
        <Typography 
          variant="h6" 
          sx={{ fontWeight: 'bold', color: '#f37199' }}
        >
          {/* Format price correctly from your DB value */}
          {product.price ? product.price.toFixed(2) : "0.00"} TL
        </Typography>
      </CardContent>

      <CardActions sx={{ justifyContent: 'center', pb: 2 }}>
        <Button 
          variant="contained" 
          onClick={() => add(product)} // Add product to the cart
          sx={{ 
            bgcolor: '#d81b60', 
            borderRadius: 5, 
            textTransform: 'none',
            fontSize: '0.9rem',
            px: 3,
            '&:hover': { bgcolor: '#ad1457' }
          }}
        >
          Add to Cart
        </Button>
      </CardActions>
    </Card>
  );
}