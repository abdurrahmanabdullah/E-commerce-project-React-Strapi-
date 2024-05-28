import React, { useContext } from "react";
import "../product_Home/product_home.scss";
import "./product_home.scss";
import Banner from "./Banner/Banner";

import Products from "../Products/Products";
import { Context } from "../../utils/context";

const Home = () => {
  const { products } = useContext(Context);

  return (
    <div>
      <Banner />
      <div className="main-content">
        <div className="layout" style={{ marginTop: "30px" }}>
          <Products products={products} headingText="product" />
        </div>
      </div>
    </div>
  );
};

export default Home;
