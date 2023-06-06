import React from "react";
import { Routes, Route } from "react-router-dom";
import Accueil from "../components/acceuil/Acceuil";
import Apropos from "../components/apropos/Apropos";
import Compte from "../components/compte/Compte";
import Description from "../components/description/Description";
import Favoris from "../components/favoris/Favoris";
import Galerie from "../components/galerie/Galerie";
import User from "../components/user/User";

function Router() {
  return (
    <Routes>
      <Route path="/" element={<Accueil />} />
      <Route path="/apropos" element={<Apropos />} />
      <Route path="/compte" element={<Compte />} />
      <Route path="/galerie" element={<Galerie />} />
      <Route path="/galerie/:id" element={<Description />} />
      <Route path="/galerie/:id/favoris" element={<Favoris />} />
      <Route path="/utilisateur" element={<User />} />
    </Routes>
  );
}

export default Router;
