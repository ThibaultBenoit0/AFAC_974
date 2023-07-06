import "./App.css";
import "./index.scss";
import React, { useEffect, useState, useMemo } from "react";
import Router from "./navigation/Router";
import LoginContext from "./navigation/LoginContext";
import Footer from "./components/footer/Footer";
import Header from "./components/header/Header";
import Cookie from "./components/cookieConsent/CookieConsent";

function App() {
  // const logout = () => {
  //   setLoggedIn(false);
  //   localStorage.removeItem("token");
  // };

  const [user, setUser] = useState(undefined);
  const loginContextValue = useMemo(() => ({ user, setUser }), [user]);

  useEffect(() => {
    function disableRightClick(event) {
      if (event.target.tagName === "IMG") {
        event.preventDefault();
      }
    }
    document.addEventListener("contextmenu", disableRightClick); // Ajoute l'écouteur d'evènement lors du montage du composant

    return () => {
      document.removeEventListener("contextmenu", disableRightClick); // Supprime l'écouteur devenement au démontage du composant
    };
  }, []);

  return (
    <div className="App">
      <LoginContext.Provider value={loginContextValue}>
        <Header />
        <main className="app_main">
          <Router />
        </main>
        <Footer />
        <Cookie />
      </LoginContext.Provider>
    </div>
  );
}

export default App;
