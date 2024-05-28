import React, { useState, useEffect } from "react";
import { Col, Button, FormGroup, Input } from "reactstrap";
import axios from "axios";
import { toast } from "react-toastify";
import { Link, useNavigate, useParams } from "react-router-dom";
import useFetch from "../../../hooks/useFetch";

const storeUser = (data) => {
  localStorage.setItem(
    "user",
    JSON.stringify({
      username: data.user.username,
      jwt: data.jwt,
    })
  );
};

const initialUser = { password: "", identifier: "" };

const Login = () => {
  const [user, setUser] = useState(initialUser);
  const [product, setProduct] = useState({});
  const [quantity, setQuantity] = useState(1);
  const { id } = useParams(); // Access product ID from URL
  const currentUrl = window.location.href;
  console.log(currentUrl, "currentUrl");
  const url = new URL(currentUrl);
  const queryParams = url.searchParams;

  const ids = queryParams.getAll("id[]"); // Returns "9"
  const productNames = queryParams.getAll("productName[]"); // Returns an array of product names
  const prices = queryParams.getAll("price[]"); // Returns an array of prices
  const quantities = queryParams.getAll("quantity[]"); // Returns an array of quantities
  const cartSubTotal = queryParams.getAll("cartSubTotal"); // Returns an array of quantities

  const { data: productData, error } = useFetch(
    `/api/products?populate=*&[filters][id]=${ids}`
  );
  const navigate = useNavigate(); 

  useEffect(() => {
    console.log("Product Data:", productData);
    console.log("Product ID:", id);
    if (productData && productData.data && productData.data.length > 0) {
      setProduct(productData.data[0].attributes);
    }
  }, [productData]);

  const handleChange = ({ target }) => {
    const { name, value } = target;
    setUser((currentUser) => ({
      ...currentUser,
      [name]: value,
    }));
  };

  const handleLogin = async () => {
    const url = `http://localhost:1369/api/auth/local`;
    
    try {
      
      if (user.identifier && user.password) {
        const { data } = await axios.post(url, user);
     
   localStorage.setItem("id",data.user.id);
        if (data.jwt) {
          storeUser(data);

          toast.success("Logged in successfully!", { hideProgressBar: true });
          setUser(initialUser);

          if (product) {
            const queryParams = new URLSearchParams();
            queryParams.append("id[]", ids);
            queryParams.append("productName[]", productNames); // Change product.name to product.title
            queryParams.append("price[]", prices);
            queryParams.append("quantity[]", quantities);
            queryParams.append("cartSubTotal", cartSubTotal);
            console.log(queryParams.toString(), "queryParams");
            navigate(`/customerinformation?${queryParams.toString()}`);
          }
        }
      }
    } catch (error) {
      toast.error(error.message, { hideProgressBar: true });
    }
  };

  if (!product) {
    return null; // Render nothing until product data is loaded
  }
  return (
    <form className="signin-form">
      <Col sm="12" md={{ size: 8, offset: 2 }}>
        {productData === undefined ? (
          <div>Loading...</div>
        ) : productData === null ? (
          <div>Error fetching product data</div>
        ) : (
          <div>
            <h2 style={{ marginBottom: "10px" }}>Login</h2>
            <FormGroup style={{ padding: "7px" }}>
              <Input
                type="email"
                name="identifier"
                value={user.identifier}
                onChange={handleChange}
                placeholder="Enter your email"
              />
            </FormGroup>
            <FormGroup style={{ padding: "7px" }}>
              <Input
                type="password"
                name="password"
                value={user.password}
                onChange={handleChange}
                placeholder="Enter password"
              />
            </FormGroup>
            <div style={{ padding: "7px" }}>
              <Button color="primary" onClick={handleLogin}>
                Login
              </Button>
            </div>
            <h5>
            
              Click <Link to={`/register?${queryParams.toString()}`}>
                Here
              </Link>{" "}
              to Create Account
            </h5>
          </div>
        )}
      </Col>
    </form>
  );
};

export default Login;
