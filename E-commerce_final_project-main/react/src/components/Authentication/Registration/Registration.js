
import React, { useState, useRef, useEffect } from "react";
import "./authStyle.scss";
import { Link, useNavigate, useParams } from "react-router-dom";
import useFetch from "../../../hooks/useFetch";
export default function SignUp() {
  /// data pass

  const [product, setProduct] = useState({});
  const [quantity, setQuantity] = useState(1);
  const { id } = useParams(); // Access product ID from URL
  const currentUrl = window.location.href;
  console.log(currentUrl, "currentUrl");
  const url = new URL(currentUrl);
  const queryParams = url.searchParams;

  const ids = queryParams.get("id"); // Returns "9"
  const productNames = queryParams.getAll("productName[]"); // Returns an array of product names
  const prices = queryParams.getAll("price[]"); // Returns an array of prices
  const quantities = queryParams.getAll("quantity[]"); // Returns an array of quantities

  console.log(ids, "idssss"); // Outputs: 9
  console.log(productNames); // Outputs: ["Q bot  v1"]
  console.log(prices); // Outputs: ["120000"]
  console.log(quantities); // Outputs: ["1"]

  const { data: productData, error } = useFetch(
    `/api/products?populate=*&[filters][id]=${ids}`
  );

  useEffect(() => {
    console.log("Product Data:", productData);
    console.log("Product ID:", id);
    if (productData && productData.data && productData.data.length > 0) {
      setProduct(productData.data[0].attributes);
    }
  }, [productData]);

  const [formData, setFormData] = useState({
    username: "",
    email: "",
    password: "",
  });
  const [registrationSuccess, setRegistrationSuccess] = useState(false);
  const [registrationError, setRegistrationError] = useState("");

  const formRef = useRef(null);

  const handleChange = (event) => {
    setFormData({
      ...formData,
      [event.target.name]: event.target.value,
    });
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    try {
      const response = await fetch(
        "http://localhost:1369/api/auth/local/register",
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(formData),
        }
      );

      if (!response.ok) {
        throw new Error(`Error registering user: ${response.status}`);
      }

      const data = await response.json();
      console.log("Registration successful:", data);
       
      setRegistrationSuccess(true);
      setRegistrationError("");
    } catch (error) {
      console.error("Error registering user:", error);
      setRegistrationError("Failed to register user. Please try again later.");
    }
  };

  const handleClickOutside = (event) => {
    if (formRef.current && !formRef.current.contains(event.target)) {
      // Do something if needed
    }
  };

  useEffect(() => {
    document.addEventListener("mousedown", handleClickOutside);
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, []);

  useEffect(() => {
    if (registrationSuccess) {
      // window.location.href = "/login";
      window.location.href = `/customerinformation?${queryParams.toString()}`;
    }
  }, [registrationSuccess]);

  return (
    <div>
      <form ref={formRef} className="signup-form" onSubmit={handleSubmit}>
        <h3>Register Account</h3>
        <div className="form-group">
          <label htmlFor="username">Username</label>
          <input
            type="text"
            className="form-control"
            id="username"
            name="username"
            placeholder="Enter Username"
            value={formData.username}
            onChange={handleChange}
          />
        </div>
        <div className="form-group">
          <label htmlFor="email">Email Address</label>
          <input
            type="email"
            className="form-control"
            id="email"
            name="email"
            placeholder="Enter Email"
            value={formData.email}
            onChange={handleChange}
          />
        </div>
        <div className="form-group">
          <label htmlFor="password">Password</label>
          <input
            type="password"
            className="form-control"
            id="password"
            name="password"
            placeholder="Enter Password"
            value={formData.password}
            onChange={handleChange}
          />
        </div>
        <div className="form-group">
          <button type="submit" className="btn btn-primary">
            continue
          </button>
        </div>
        <p className="forgot-password text-right">
          Already registered <a href="/login">Log in?</a>
        </p>
      </form>
      {registrationError && (
        <div className="alert alert-danger" role="alert">
          {registrationError}
        </div>
      )}
    </div>
  );
}
