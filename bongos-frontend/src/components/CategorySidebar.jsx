import React, { useEffect, useState } from "react";
import { 
  List, 
  ListItemButton, 
  ListItemText, 
  Collapse, 
  Typography, 
  Box,
  Divider 
} from "@mui/material";
import { ExpandLess, ExpandMore } from "@mui/icons-material";
import { getAllCategories } from "../services/CategoryService";

export default function CategorySidebar() {
  const [categories, setCategories] = useState([]); // State for categories from DB
  const [openStates, setOpenStates] = useState({}); // State to track which menus are expanded

  // Fetch categories from Spring Boot backend on component mount
  useEffect(() => {
    getAllCategories()
      .then((data) => {
        setCategories(data);
      })
      .catch((err) => {
        console.error("Failed to load categories from backend:", err);
      });
  }, []);

  // Toggle function for parent categories
  const handleToggle = (id) => {
    setOpenStates((prev) => ({
      ...prev,
      [id]: !prev[id],
    }));
  };

  // Recursive function to render categories and their children
  const renderCategories = (nodes) => (
    nodes.map((node) => (
      <Box key={node.categoryId} sx={{ mb: 0.5 }}>
        <ListItemButton 
          onClick={() => node.children?.length > 0 && handleToggle(node.categoryId)}
          sx={{ 
            borderRadius: 2,
            py: 0.8,
            "&:hover": { bgcolor: "#fce4ec" } 
          }}
        >
          <ListItemText 
            primary={node.name} 
            primaryTypographyProps={{ 
              fontSize: '14px', 
              fontWeight: node.parentId ? 400 : 600, // Bold for main categories
              color: "#333" 
            }}
          />
          {node.children?.length > 0 ? (
            openStates[node.categoryId] ? <ExpandLess sx={{ color: "#f37199" }} /> : <ExpandMore sx={{ color: "#f37199" }} />
          ) : null}
        </ListItemButton>

        {/* If category has children, render them inside a Collapse component */}
        {node.children?.length > 0 && (
          <Collapse in={openStates[node.categoryId]} timeout="auto" unmountOnExit>
            <List component="div" disablePadding sx={{ pl: 2 }}>
              {renderCategories(node.children)}
            </List>
          </Collapse>
        )}
      </Box>
    ))
  );

  return (
    <Box sx={{ width: '100%' }}>
      <Typography 
        variant="h6" 
        sx={{ 
          color: "#f37199", 
          fontWeight: 'bold', 
          mb: 1, 
          pl: 1,
          fontSize: '1.1rem' 
        }}
      >
        Categories
      </Typography>
      <Divider sx={{ mb: 2, bgcolor: "#fce4ec" }} />
      <List component="nav" disablePadding>
        {renderCategories(categories)}
      </List>
    </Box>
  );
}