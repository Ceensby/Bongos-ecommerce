import React from "react";
import { Paper, Typography, List, ListItemButton, ListItemText, Divider, Box, Avatar } from "@mui/material";
import { Link } from "react-router-dom";

export default function UserSidebar() {
  // Currently, we show static welcome text. 
  // Later, you can fetch actual user data from your Spring Boot backend.
  return (
    <Paper 
      sx={{ 
        p: 2, 
        bgcolor: "#fff5f2", // The soft pink color from your design
        borderRadius: 3, 
        boxShadow: "none", 
        border: "1px solid #fce4ec" 
      }}
    >
      <Box sx={{ display: 'flex', flexDirection: 'column', alignItems: 'center', mb: 2 }}>
        <Typography variant="subtitle1" sx={{ color: "#f37199", fontWeight: 600 }}>
          Welcome to Bongos!
        </Typography>
        <Typography variant="caption" color="text.secondary">
          -----------------------------
        </Typography>
      </Box>

      <List component="nav" disablePadding>
        {[
          { text: "LogIn/SignUp", path: "/login" },
          { text: "My Account", path: "/account" },
          { text: "Orders", path: "/orders" },
          { text: "Order Tracking", path: "/tracking" },
          { text: "My Bongos Card", path: "/card" },
          { text: "Personal Information", path: "/profile" },
          { text: "About Us", path: "/about" }
        ].map((item) => (
          <ListItemButton 
            key={item.text} 
            component={Link} 
            to={item.path}
            sx={{ 
                py: 1, 
                "&:hover": { bgcolor: "rgba(243, 113, 153, 0.08)" } 
            }}
          >
            <ListItemText 
              primary={item.text} 
              primaryTypographyProps={{ 
                fontSize: '14px', 
                color: "#f37199", 
                fontWeight: 500 
              }} 
            />
          </ListItemButton>
        ))}
      </List>
    </Paper>
  );
}