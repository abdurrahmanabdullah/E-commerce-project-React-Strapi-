import { useEffect, useContext, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { TbSearch } from "react-icons/tb";
import { CgShoppingCart } from "react-icons/cg";
import { BsPersonFill } from "react-icons/bs";
import Search from "./Search/Search";
import Cart from "../Cart/Cart";
import { Context } from "../../utils/context";
import hidayalogo from "../../assets/Logo_Hidayah.png";
import "./Header.scss";
import { FaChevronDown, FaChevronUp } from "react-icons/fa";
const SubmenuLinks = ({ submenus, isOpen, handleMouseLeave }) => {
  return (
    <div
      style={{
        position: "absolute",
        top: "1.5rem",
        background: "#f2f2f2",
        padding: "10px",
        display: "flex",
        flexDirection: "column",
        zIndex: 1,
        borderRadius: "10px",
        border: "1px solid #ccc",
        whiteSpace: "nowrap",
      }}
      onMouseLeave={handleMouseLeave} 
    >
      {submenus.map((submenu) => (
        <Link
          key={submenu.id}
          to={`${submenu.attributes.slug}`}
          style={{
            margin: "15px ",
            textDecoration: "none",
            color: "black",
            transition: "background 0.3s,box-shadow  0.3s",
            //  backgroundColor: "#e6e6e6",
          }}
          onMouseOver={(e) => {
            e.currentTarget.style.color = "red"; // Change color to red
            // Add underline
          }}
          onMouseOut={(e) => {
            e.currentTarget.style.boxShadow = "none"; // Reset box shadow
            e.currentTarget.style.color = "black"; // Reset color to black
            e.currentTarget.style.textDecoration = "none"; // Remove underline
          }}
    
        >
          {submenu.attributes.name}
        </Link>
      ))}
    </div>
  );
};

const NavbarMenu = ({
  menu,
  isOpen,
  handleMouseEnter,
  handleMouseLeave,
  handleToggle,
}) => (
  <div
    onMouseEnter={handleMouseEnter}
    onMouseLeave={handleMouseLeave}
    onClick={handleToggle}
    style={{
      cursor: "pointer",
      position: "relative",
      display: "flex",
      alignItems: "center",
      transition: "background 0.3s",
      boxShadow: isOpen ? "0 2px 5px rgba(0, 0, 0, 0.2)" : "none",
      backgroundColor: isOpen ? "" : "inherit", // Changed to correct color code
    }}
  >
    <div style={{ flex: 1 }}>{menu.attributes.name}</div>
    <div style={{ marginLeft: "15px" }}>
      {isOpen ? <FaChevronUp /> : <FaChevronDown />}
    </div>
    {isOpen && (
      <SubmenuLinks
        submenus={menu.attributes.navbar_menus.data}
        isOpen={isOpen}
        handleMouseLeave={handleMouseLeave}
      />
    )}
  </div>
);

const Header = () => {
  const [scrolled, setScrolled] = useState(false);
  const [showCart, setShowCart] = useState(false);
  const [showSearch, setShowSearch] = useState(false);
  const { cartCount } = useContext(Context);
  const [navbarMenus, setNavbarMenus] = useState([]);
  const [isProductMenuOpen, setProductMenuOpen] = useState(false);
  const [isServiceMenuOpen, setServiceMenuOpen] = useState(false); // Added state for service menu
  const navigate = useNavigate();
  const handleProductMenuToggle = () => {
    setProductMenuOpen((prevState) => !prevState);
    setServiceMenuOpen(false); // Close service menu when product menu is toggled
    if (!isProductMenuOpen) {
      navigate("/product");
    }
  };

  const handleServiceMenuToggle = () => {
    setServiceMenuOpen((prevState) => !prevState);
    setProductMenuOpen(false);

    // Close product menu when service menu is toggled

    if (!isServiceMenuOpen) {
      navigate("/service");
    }
  };

  const handleMenuMouseEnter = (menuType, setOpen) => {
    if (!isProductMenuOpen && !isServiceMenuOpen) {
      setOpen(true);
    }
  };

  const handleMenuMouseLeave = (setOpen) => {
    setOpen(false);
  };

  const handleScroll = () => {
    const offset = window.scrollY;
    if (offset > 200) {
      setScrolled(true);
    } else {
      setScrolled(false);
    }
  };

  useEffect(() => {
    window.addEventListener("scroll", handleScroll);
    return () => {
      window.removeEventListener("scroll", handleScroll);
    };
  }, []);

  const fetchData = async () => {
    try {
      const menuResponse = await fetch(
        "http://localhost:1369/api/navbarmenus?populate=deep,10"
      );
      const menuData = await menuResponse.json();

      setNavbarMenus(menuData.data);
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  return (
    <>
      <header className={`main-header ${scrolled ? "sticky-header" : ""} `}>
        <div className="header-container" style={{ gap: "20%" }}>
          <div className="image-section" style={{}}>
            <img style={{ width: "80px" }} src={hidayalogo} alt="Logo" />
          </div>
          <div className="header-content">
            {navbarMenus.map((menu) => (
              <div key={menu.id} style={{ position: "relative" }}>
                {menu.attributes.slug === "product" ? (
                  <NavbarMenu
                    menu={menu}
                    isOpen={isProductMenuOpen}
                    handleMouseEnter={() =>
                      handleMenuMouseEnter("product", setProductMenuOpen)
                    }
                    handleMouseLeave={() =>
                      handleMenuMouseLeave(setProductMenuOpen)
                    }
                    handleToggle={handleProductMenuToggle}
                  />
                ) : menu.attributes.slug === "service" ? (
                  <NavbarMenu
                    menu={menu}
                    isOpen={isServiceMenuOpen}
                    handleMouseEnter={() =>
                      handleMenuMouseEnter("service", setServiceMenuOpen)
                    }
                    handleMouseLeave={() =>
                      handleMenuMouseLeave(setServiceMenuOpen)
                    }
                    handleToggle={handleServiceMenuToggle}
                  />
                ) : (
                  <Link
                    to={`/${menu.attributes.slug}`}
                    style={{
                      margin: " 5%",
                      textDecoration: "none",
                      color: "white",
                    }}
                    onMouseOver={(e) => {
                      e.currentTarget.style.borderBottom = "2px solid white";
                    }}
                    onMouseLeave={(e) => {
                      e.currentTarget.style.borderBottom = "none";
                    }}
        
                  >
                    {menu.attributes.name}
                  </Link>
                )}
              </div>
            ))}
          </div>
          <div className="account-search-cart">
            {/* ///--------- */}
            <div
              style={{
                display: "flex",
                alignItems: "center",
              }}
            >
              <BsPersonFill className="account-icon"
              onClick={()=>navigate("/profile")}
              />
              {/* <p style={{ marginLeft: "20px" }}>Account</p> */}

              <span
                className="account-section"
                onClick={() => navigate("/register")}
              >
                Register
              </span>
              <span style={{ marginLeft: "5px", marginRight: "5px" }}>or</span>
              <span
                className="account-section"
                onClick={() => navigate("/login")}
              >
                Login
              </span>
            </div>
            <div className="search-icon">
              <TbSearch onClick={() => setShowSearch(true)} />
              {/* <AiOutlineHeart/> */}
              <span className="cart-icon" onClick={() => setShowCart(true)}>
                <CgShoppingCart />
                {!!cartCount && (
                  <span
                    className="cart-count"
                    style={{
                      borderRadius: "50%",
                      padding: "5px",
                      backgroundColor: "#ff5733",
                      marginLeft: "-1px",
                      marginTop: "-10px",
                      position: "absolute",
                      fontSize: "12px",
                      fontWeight: "bold",
                    }}
                  >
                    {cartCount}
                  </span>
                )}
              </span>

              {/* ///--- */}
            </div>
          </div>
        </div>
      </header>
      {showCart && <Cart setShowCart={setShowCart} />}

      {showSearch && <Search setShowSearch={setShowSearch} />}
    </>
  );
};

export default Header;
