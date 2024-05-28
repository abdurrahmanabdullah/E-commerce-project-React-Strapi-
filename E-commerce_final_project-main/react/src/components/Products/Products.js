import React, { useEffect, useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

import "../Products/Products.scss";
const Product = ({ id, data }) => {
  const navigate = useNavigate();
  const [products, setProducts] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get(
          "http://localhost:1369/api/products?populate=*"
        );
        setProducts(response.data.data);
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    };

    fetchData();
  }, []);

  return (
    <div>
      {products.map((product) => (
        <div
          className="product-card"
          key={product.id}
          onClick={() => navigate("/product/" + product.id)}
        >
          <div className="thumbnail">
            {product.attributes.img.data && (
              <img
                src={`http://localhost:1369${product.attributes.img.data[0].attributes.url}`}
                alt={
                  product.attributes.img.data[0].attributes.alternativeText ||
                  "Image"
                }
                onError={(event) => {
                  event.target.src = "path/to/placeholder.png"; // Replace with your placeholder image path
                }}
                style={{ maxWidth: "240px", maxHeight: "600px" }}
              />
            )}
          </div>
          <div className="prod-details">
            <span
              className="name"
              style={{ color: "blue", fontWeight: "bolder" }}
            >
              {product.attributes.title}
            </span>
            <span className="price">{product.attributes.price} Tk</span>
          </div>
        </div>
      ))}
    </div>
  );
};

export default Product;
