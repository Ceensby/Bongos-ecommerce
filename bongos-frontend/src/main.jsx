import React from "react";
import { createRoot } from "react-dom/client"; // React 18 root API [cite: 115, 140]
import App from "./App";
import { ThemeProvider } from "@mui/material/styles"; // MUI theme support [cite: 117, 147]
import CssBaseline from "@mui/material/CssBaseline"; // Base CSS reset [cite: 117, 151]
import theme from "./theme"; // Custom theme file
import { BrowserRouter } from "react-router-dom"; // Enable routing [cite: 119, 155]

const container = document.getElementById("root"); // Find the HTML mount point [cite: 121, 164]
const root = createRoot(container);

root.render(
  <React.StrictMode>
    <ThemeProvider theme={theme}>
      <CssBaseline /> {/* Apply global baseline CSS styles [cite: 126, 202] */}
      <BrowserRouter>
        <App />
      </BrowserRouter>
    </ThemeProvider>
  </React.StrictMode>
);