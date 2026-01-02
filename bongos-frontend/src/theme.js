import { createTheme } from '@mui/material/styles';

const theme = createTheme({
  palette: {
    primary: {
      main: '#d81b60', // The vibrant pink from the "Add to Cart" buttons
    },
    secondary: {
      main: '#fce4ec', // Soft pink for backgrounds and category selections
    },
    background: {
      default: '#fdf7f9', // Very light pinkish-grey background from your design
    },
    text: {
      primary: '#333333',
      secondary: '#757575',
    },
  },
  shape: {
    borderRadius: 12, // More rounded corners to match your design cards
  },
});

export default theme;