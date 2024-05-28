
import React, { useState, useContext } from "react";
import axios from "axios";

import "./SingleProduct.scss";
import {
  FaFacebookF,
  FaTwitter,
  FaInstagram,
  FaLinkedin,
  FaPinterest,
  FaCartPlus,
} from "react-icons/fa";
import Relatedproducts from "./RelatedProducts/RelatedProducts";
import useFetch from "../../hooks/useFetch";
import { useParams } from "react-router-dom";
import { Context } from "../../utils/context";

const SingleProduct = () => {
  const [quantity, setQuantity] = useState(1);
  const { id } = useParams();
  const [loading] = useState(false);
  const { data } = useFetch(`/api/products?populate=*&[filters][id]=${id}`);
 
  const { handleAddToCart: originalHandleAddToCart } = useContext(Context);
  const handleAddToCart = async (product, quantity) => {
  if (loading) return; // Prevent submitting while data is loading

  try {
    console.log("Quantity added:", quantity);

    if (quantity > product.attributes.stock_product) {
      alert("Stock is not available. Please fill up the contact form or decrease the amount.");
      return; 
    }

    if (originalHandleAddToCart) {
      await originalHandleAddToCart(product, quantity);
    }
///The reason for using 0 as one of the parameters in Math.max is to prevent the stock from becoming negative
    const updatedStock = Math.max(
      0,
      product.attributes.stock_product - quantity
    );
/// json key value
    const payload = {
      data: {
        stock_product: updatedStock,
      },
    };

    const response = await axios.put(
      `http://localhost:1369/api/products/${product.id}`,
      payload
    );

    console.log("Stock updated successfully:", response.data);

    product.attributes.stock_product = updatedStock; 
  } catch (error) {
    console.error("Error updating stock:", error);
  }
};

  const handleBuyNow = async () => {
    if (!data) return; // Ensure data is available
    const product = data.data[0].attributes;
    console.log(product, "product");
    const currentUrl = window.location.href;
    console.log(currentUrl, "currentUrl");
    const url = new URL(currentUrl);
    const queryParam = url.searchParams;

    const ids = queryParam.get("id");
    const queryParams = new URLSearchParams();
    queryParams.append("productName[]", product.title);
    queryParams.append("price[]", product.price);
    queryParams.append("quantity[]", quantity);

   
    console.log(queryParams, "queryParams");
    const loggedIn = false;

    if (loggedIn) {
     
      window.location.href = `/customerinformation?id=${ids}&${queryParams.toString()}`;
    } else {
    
      window.location.href = `/login?id=${id}&${queryParams.toString()}`;
      //  window.location.href = '/register';
    }
  };

  const increment = () => {
    setQuantity((prevState) => prevState + 1);
  };

  const decrement = () => {
    setQuantity((prevState) => {
      if (prevState === 1) return 1;
      return prevState - 1;
    });
  };

  if (!data) return null;

  const product = data.data[0].attributes;
  const keyPart = {
    price: product.price,
    PreviousPrice: product.previous_price,
    Status: product.status,
    productCode: product.product_code,
    Brand: product.key_Features.Brand,
  };

  return (
    <div className="single-product-main-content">
      <div className="layout">
        <div className="single-product-page">
          <div className="left">
            {product &&
              product.img &&
              product.img.data &&
              product.img.data[0] && (
                <img
                  src={
                    process.env.REACT_APP_DEV_URL +
                    product.img.data[0].attributes.url
                  }
                  alt="Product1"
                />
              )}
          </div>
          <div className="right">
            <h2 style={{ color: "#3749BB" }}>{product.title}</h2>
            <div
              style={{
                display: "flex",
                flexDirection: "row",
                gap: "4px",
                flexWrap: "wrap",
                overflow: "auto",
              }}
            >
              <p
                style={{
                  borderRadius: "16px",
                  padding: "5px 10px",
                  boxShadow: "1px 2px 4px 2px rgba(0.0, 0.0, 0.0, 0.2)",
                }}
              >
                Price:{" "}
                <span style={{ fontWeight: "bold" }}>{keyPart.price}৳</span>
              </p>
              <p
                style={{
                  borderRadius: "16px",
                  padding: "5px 10px",
                  boxShadow: "1px 2px 4px 2px rgba(0.0, 0.0, 0.0, 0.2)",
                }}
              >
                previous Price:{" "}
                <span
                  style={{ fontWeight: "bold", textDecoration: "line-through" }}
                >
                  {keyPart.PreviousPrice}৳
                </span>
              </p>
              <p
                style={{
                  borderRadius: "16px",
                  padding: "5px 10px",
                  boxShadow: "1px 2px 4px 2px rgba(0.0, 0.0, 0.0, 0.2)",
                }}
              >
                Status:{" "}
                <span style={{ fontWeight: "bold" }}>{keyPart.Status}</span>
              </p>
              <p
                style={{
                  borderRadius: "16px",
                  padding: "5px 10px",
                  boxShadow: "1px 2px 4px 2px rgba(0.0, 0.0, 0.0, 0.2)",
                }}
              >
                Product Code:{" "}
                <span style={{ fontWeight: "bold" }}>
                  {keyPart.productCode}
                </span>
              </p>
              <p
                style={{
                  borderRadius: "16px",
                  padding: "5px 10px",
                  boxShadow: "1px 2px 4px 2px rgba(0.0, 0.0, 0.0, 0.2)",
                }}
              >
                Brand:{" "}
                <span style={{ fontWeight: "bold" }}>{keyPart.Brand}</span>
              </p>
            </div>
            <span className="desc">{product.desc}</span>

            {/* ///-----------key feature */}
            <div className="key-features">
              <span
                style={{
                  fontSize: "20px",
                  fontWeight: "bolder",
                  color: "#3749BB",
                }}
              >
                Key Features
              </span>

              {/* {Object.entries(product.key_Features).map(
                ([key, value]) =>
                  key !== "id" && (
                    <ul style={{ marginTop: "20px" }} key={key}>
                      <span style={{ fontWeight: "bold" }}>{`${key}:`}</span>{" "}
                      {value}
                    </ul>
                  )
              )} */}


              {product.key_Features && Object.entries(product.key_Features).map(
  ([key, value]) =>
    key !== "id" && (
      <ul style={{ marginTop: "20px" }} key={key}>
        <span style={{ fontWeight: "bold" }}>{`${key}:`}</span>{" "}
        {value}
      </ul>
    )
)}
            </div>

            <div className="cart-buttons">
              <div className="quantity-buttons">
                <span onClick={decrement}>-</span>
                <span>{quantity}</span>

                <span onClick={increment}>+</span>
              </div>
              <button
                className="add-to-cart-button"
                onClick={() => {
                  handleAddToCart(data.data[0], quantity);
                  setQuantity(1);
                }}
              >
                <FaCartPlus size={20} />
                &nbsp; ADD TO CART
              </button>
              <button className="add-to-pay-button" onClick={handleBuyNow}>
                BUY NOW
              </button>
            </div>
            <span className="divider" />
            <div className="info-item">
              <span className="text-bold">
                Category: &nbsp;
                <span>{product.categories.data[0].attributes.title}</span>
              </span>
              <span className="text-bold">
                Share:
                <span className="social-icons">
                  <FaFacebookF size={16} />
                  <FaTwitter size={16} />
                  <FaInstagram size={16} />
                  <FaLinkedin size={16} />
                  <FaPinterest size={16} />
                </span>
              </span>
            </div>
          </div>
        </div>
      </div>
      <div className="related_class">
        {" "}
        <Relatedproducts
          productId={id}
          categoryId={product.categories.data[0].id}
        />
      </div>

      {/* Description */}
      {/* <div className="description" style={{ paddingInline: "5%" }}>
        <h3>Description</h3>
        {product.Description.map((descItem, index) => (
          <div key={index}>
            <h4>{descItem.heading}</h4>
            <p>{descItem.subheading}</p>
          </div>
        ))}
      </div> */}
{/* Description */}
<div className="description" style={{ paddingInline: "5%" }}>
  <h3>Description</h3>
  {product.Description && product.Description.map((descItem, index) => (
    <div key={index}>
      <h4>{descItem.heading}</h4>
      <p>{descItem.subheading}</p>
    </div>
  ))}
</div>


    </div>
  );
};

export default SingleProduct;
