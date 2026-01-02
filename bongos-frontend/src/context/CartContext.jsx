import React, { createContext, useState, useContext } from "react";

// Create the context channel [cite: 1008]
export const CartContext = createContext();

export const CartProvider = ({ children }) => {
  const [items, setItems] = useState([]); // Array to hold cart items [cite: 973, 1022]

  // Add product to cart or increment quantity [cite: 975, 1033]
  const add = (product) => {
    setItems((prev) => {
      // Use productId because your SQL and DTO use this field
      const existing = prev.find((it) => it.productId === product.productId);
      if (existing) {
        return prev.map((it) =>
          it.productId === product.productId
            ? { ...it, quantity: (it.quantity || 1) + 1 }
            : it
        );
      }
      return [...prev, { ...product, quantity: 1 }];
    });
  };

  // Other actions: decrement, remove, clear [cite: 988, 998, 1001]
  const decrement = (id) => {
    setItems((prev) =>
      prev.map((it) => (it.productId === id ? { ...it, quantity: it.quantity - 1 } : it))
          .filter((it) => it.quantity > 0)
    );
  };
  const remove = (id) => setItems((prev) => prev.filter((it) => it.productId !== id));
  const clear = () => setItems([]);

  return (
    <CartContext.Provider value={{ items, add, decrement, remove, clear }}>
      {children}
    </CartContext.Provider>
  );
};

// Hook for easy access [cite: 1006, 1089]
export const useCart = () => useContext(CartContext);