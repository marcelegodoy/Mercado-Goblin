export const navMobile = () => {
  const navToggle = document.getElementById("navMobile");
  const navMenu = document.getElementById("navMobileMenu");

  const openMenu = (event) => {
    if (navMenu.style.display == "flex") {
      navMenu.style.display = "none";
    } else {
      navMenu.style.display = "flex";
    }
  };

  navToggle.addEventListener("click", openMenu);
};
