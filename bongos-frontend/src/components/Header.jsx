import React from "react";
import { AppBar, Toolbar, Box, InputBase, IconButton, Badge , Typography } from "@mui/material";
import { styled, alpha } from "@mui/material/styles";
import SearchIcon from "@mui/icons-material/Search";
import ShoppingCartIcon from "@mui/icons-material/ShoppingCart";
import { Link } from "react-router-dom";
import { useCart } from "../context/CartContext";

const Search = styled('div')(({ theme }) => ({
  position: 'relative',
  borderRadius: 20,
  backgroundColor: alpha('#f37199', 0.1),
  border: '1px solid #f37199',
  width: '400px',
  display: 'flex',
  alignItems: 'center',
  padding: '2px 10px'
}));

export default function Header() {
  const { items } = useCart(); // Get cart item count

  return (
    <AppBar position="static" sx={{ backgroundColor: "#ffffff", color: "#333", boxShadow: "none", borderBottom: '1px solid #eee' }}>
      <Toolbar sx={{ justifyContent: "space-between" }}>
        {/* LOGO */}
        <Link to="/" style={{ textDecoration: 'none' }}>
           <Typography variant="h5" sx={{ color: '#d81b60', fontWeight: 'bold' }}>Bongos Beauty</Typography>
        </Link>

        {/* SEARCH BAR */}
        <Search>
          <InputBase placeholder="What are you looking for?" sx={{ ml: 1, flex: 1 }} />
          <IconButton sx={{ p: '5px' }}><SearchIcon /></IconButton>
        </Search>

        {/* CART ICON WITH BADGE */}
        <Box>
          <IconButton component={Link} to="/cart">
            <Badge badgeContent={items.length} color="primary">
              <ShoppingCartIcon sx={{ color: '#f37199' }} />
            </Badge>
          </IconButton>
        </Box>
      </Toolbar>
    </AppBar>
  );
}