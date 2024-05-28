
import React, { useState, useEffect } from "react";
import "./checkout.scss";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import "bootstrap/dist/css/bootstrap.min.css";
import Bkashlogo from "../../../assets/bkash.png";
import { Context } from "../../../utils/context";
import { useContext } from "react";
export default function CustomerInformationForm() {
  const [ids, setIds] = useState([]);
  const [productNames, setProductNames] = useState([]);
  const [prices, setPrices] = useState([]);
  const [quantities, setQuantities] = useState([]);
  const [cartSubTotal, setCartSubTotal] = useState("");
  const [paymentMethod, setPaymentMethod] = useState("Cash on Delivery");
  const [DeliveryMethod, setDeliveryMethod] = useState("Home Delivery");
  const [productName, setProductName] = useState("");
  const [price, setPrice] = useState("");
  const [quantity, setQuantity] = useState("");
const [orderSuccess, setorderSuccess] = useState(false);
///--------------Form section 

  const [formData, setFormData] = useState({
    FirstName: "",
    LastName: "",
    Address: "",
    Mobile: "",
    Email: "",
    City: "",
    Zone: "",
    Comment: "",
  });
  

  const handleChange = (event) => {
    setFormData({
      ...formData,
      [event.target.name]: event.target.value,
    });
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    if (!formData.FirstName || !formData.Email) {
    alert("Please fill out both the First Name and Email fields.");
    return;
  }
    console.log(formData);
    try {
    
      const orderSummaryData = []; 

      let totalPrice = 0; 

      let deliveryPrice = 0;

      for (let i = 0; i < productName.length; i++) {
        orderSummaryData.push({
        
          productName: productName[i],
          price: price[i],
          quantity: quantity[i],
        });
      
        totalPrice += parseFloat(price[i]) * parseInt(quantity[i]);
      }
      deliveryPrice = DeliveryMethod === "Home Delivery" ? 50 : 0;

      orderSummaryData.push({
        deliveryType:
          DeliveryMethod === "Home Delivery" ? "Home Delivery" : "Store Pickup",
        price: deliveryPrice,
      });

      totalPrice += deliveryPrice;

      orderSummaryData.push({
        TotalPrice: totalPrice,
      });

      const orderSummaryText = `
Order Summary:
${
  productName.length > 1
    ? productName
        .map(
          (item, index) => `
    Product Name: ${item}
    Product Price: ${price[index]}৳
    Product Quantity: ${quantity[index]}
  `
        )
        .join("\n")
    : `Product Name: ${productName}
  Product Price: ${price}৳
  Product Quantity: ${quantity}`
}
Delivery Fee: ${DeliveryMethod === "Home Delivery" ? 50 : 0}৳
Total Payment: ${totalPrice}৳`;

      try {
        const response = await fetch(
          "http://localhost:1369/api/order-reports?populate=*",
          {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              data: {
                ...formData,
                OrderItem: orderSummaryText, 
                OrderList: orderSummaryData, 
              },
            }),
          }
        );



        
        if (response.ok) {

  const queryParams = new URLSearchParams();
    queryParams.append("productName[]", product.title);
    queryParams.append("price[]", product.price);
    queryParams.append("quantity[]", quantity);

      

    window.location.href = `/confirmorder?id=${id}&${queryParams.toString()}`;

        
        }

        const data = await response.json();
        console.log("order successful:", data);
        setorderSuccess(true);



      } catch (error) {
        console.error("Fetch Error:", error); // Log any fetch errors
      }

      ///--------------------- clear field

      setFormData({
        FirstName: "",
        LastName: "",
        Address: "",
        Mobile: "",
        Email: "",
        City: "",
        Zone: "",
        Comment: "",
      });
      // Clear order summary data
      setProductName("");
      setPrice("");
      setQuantity("");
      // clear payment and delivery data
      setPaymentMethod("Cash on Delivery");
      setDeliveryMethod("Home Delivery");

      // Clear success message after 2 seconds
      setTimeout(() => {
        setorderSuccess(false);
      }, 2000);
    } catch (error) {
      console.error("Error order user:", error);
    }
  };

  const handlePaymentMethodChange = (event) => {
    setPaymentMethod(event.target.value);
  };

  const handleDeliveryMethodChange = (event) => {
    setDeliveryMethod(event.target.value);
  };

  useEffect(() => {
    // Extracting query parameters from the URL
    const urlParams = new URLSearchParams(window.location.search);
    const productNameParam = urlParams.getAll("productName[]");
    const priceParam = urlParams.getAll("price[]");
    const quantityParam = urlParams.getAll("quantity[]");

    // Setting state with extracted values
    setProductName(productNameParam);
    setPrice(priceParam);
    setQuantity(quantityParam);
  }, []);


  const [product, setProduct] = useState({});
  const [id, setId] = useState("");
  


  return (
    <Row>
      {/* /////////////////////////////-----------Form section  */}

      <Col className="First-Column" sm={5}>
        <div className="form">
          <h2
            style={{
              marginTop: "40px",
              marginBottom: "10px",
              textAlign: "center",
            }}
          >
            CheckOut
          </h2>
          <div>
            <form className="signup-form" onSubmit={handleSubmit}>
              <h4>
                <span
                  style={{
                    borderRadius: "100%",
                    padding: "5px",
                    backgroundColor: "#CCCCFF",
                  }}
                >
                  1
                </span>{" "}
                Customer Information
              </h4>
              <hr />

              <div className="form-group">
                <label htmlFor="FirstName">First Name</label>
               <input
                type="text"
                className="form-control"
                id="FirstName"
                name="FirstName"
                placeholder="First Name"
                value={formData.FirstName}
                onChange={handleChange}
                required
                pattern=".*\S+.*" // Require at least one non-whitespace character
                title="Please enter your first name" // Custom validation message
              />

              </div>

              <div className="form-group">
                <label htmlFor="LastName">Last Name</label>
                <input
                  type="text"
                  className="form-control"
                  id="LastName"
                  name="LastName"
                  placeholder="Last Name"
                  value={formData.LastName}
                  onChange={handleChange}
                />
              </div>

              <div className="form-group">
                <label htmlFor="Address">Address</label>
                <input
                  type="text"
                  className="form-control"
                  id="Address"
                  name="Address"
                  placeholder="Address"
                  value={formData.Address}
                  onChange={handleChange}
                />
              </div>

              <div className="form-group">
                <label htmlFor="Mobile">Mobile</label>
                <input
                  type="text"
                  className="form-control"
                  id="Mobile"
                  name="Mobile"
                  placeholder="Mobile"
                  value={formData.Mobile}
                  onChange={handleChange}
                />
              </div>

              <div className="form-group">
                <label htmlFor="EmailAddress">Email Address</label>
                <input
                  type="email"
                  className="form-control"
                  id="Email"
                  name="Email"
                  placeholder="Enter Email"
                  value={formData.Email}
                  onChange={handleChange}
                required

                />
              </div>

              <div className="form-group">
                <label htmlFor="City">City</label>
                <input
                  type="text"
                  className="form-control"
                  id="City"
                  name="City"
                  placeholder="Enter City"
                  value={formData.City}
                  onChange={handleChange}
                />
              </div>

              <div className="form-group">
                <label htmlFor="Zone">Zone</label>

                <select
                  className="form-control"
                  id="zone"
                  name="Zone"
                  value={formData.Zone}
                  onChange={handleChange}
                >
                  <option value="">Select Zone</option>
                  <option value="Dhaka City">Dhaka City</option>
                  <option value="Mymensingh">Mymensingh</option>
                  <option value="Gazipur">Gazipur</option>
                </select>
              </div>

              <div className="form-group">
                <label htmlFor="Comment">Comment</label>
                <input
                  type="text"
                  className="form-control"
                  id="Comment"
                  name="Comment"
                  placeholder="Enter Comment"
                  value={formData.Comment}
                  onChange={handleChange}
                />
              </div>
              {/* //onClick={handlepayment} */}

              {/* </form> */}

              <div className="form-group">
                <button
                  type="submit"
                  className="btn btn-primary"
                  onClick={handleSubmit}
                >
                  Confirm order
                </button>
              </div>
            </form>
            {/* {orderSuccess && (
              <div
                style={{ textAlign: "center", color: "blue" }}
                className="alert alert-success"
                role="alert"
              >
                Sign up successful!
              </div>
            )} */}
          </div>
        </div>
      </Col>



      <Col className="Second-Column" sm={7}>
        {" "}
        {/* Main column with two inner columns */}
        <div className="row" style={{ marginTop: "40px" }}>
          {" "}
          {/* Create a row for two inner columns */}
          <div className="col-md-6">
            {" "}
            {/* First inner column (adjust size as needed) */}
            <h4>
              <span
                style={{
                  borderRadius: "100%",
                  padding: "5px",
                  backgroundColor: "#CCCCFF",
                }}
              >
                2
              </span>{" "}
              Payment Method
            </h4>
            <hr />
            <p>Select a payment method</p>
            <div className="payment-method-options">
              <label>
                <input
                  type="radio"
                  value="Cash on Delivery"
                  checked={paymentMethod === "Cash on Delivery"}
                  onChange={handlePaymentMethodChange}
                />
                Cash on Delivery
              </label>
              <label>
                <input
                  type="radio"
                  value="Online Payment"
                  checked={paymentMethod === "Online Payment"}
                  onChange={handlePaymentMethodChange}
                />
                Online Payment
              </label>
              <p>We Accept :</p>

              {paymentMethod === "Online Payment" && (
                <img
                  style={{ width: "160px" }}
                  src={Bkashlogo}
                  alt="bKash Logo"
                />
              )}
            </div>
          </div>
          <div className="col-md-6">
            {" "}
            {/* Second inner column (adjust size as needed) */}
            <h4>
              <span
                style={{
                  borderRadius: "100%",
                  padding: "5px",
                  backgroundColor: "#CCCCFF",
                }}
              >
                3
              </span>
              Delivery Method
            </h4>
            <hr />
            <p>Select a delivery method</p>
            <div className="delivery-method-options">
              <label>
                <input
                  type="radio"
                  value="Home Delivery"
                  checked={DeliveryMethod === "Home Delivery"}
                  onChange={handleDeliveryMethodChange}
                />
                Home Delivery - 50 ৳
              </label>
              <label>
                <input
                  type="radio"
                  value="Store pickup"
                  checked={DeliveryMethod === "Store pickup"}
                  onChange={handleDeliveryMethodChange}
                />
                Store pickup -0 ৳
              </label>
            </div>
          </div>
        </div>
        {/* order summary card segment */}
        <div className="order-summary-card">
          {" "}
          {/* Order Summary card */}
          <h4>
            <span
              style={{
                borderRadius: "100%",
                padding: "5px",
                backgroundColor: "#CCCCFF",
              }}
            >
              4
            </span>
            Order Overview
          </h4>
          <hr />
          <ul className="order-summary-list">
            {" "}
           
            {productName.length > 1 ? (
              productName.map((item, index) => (
                <li key={index} style={{ marginTop: index === 0 ? 0 : "10px" }}>
                  {" "}
                  {/* Add margin top for all but the first item */}
                  <div
                    style={{ display: "flex", justifyContent: "space-between" }}
                  >
                    <span>Product&nbsp; Name:</span>
                    <span style={{ fontWeight: "bolder" }}>{item}</span>
                  </div>
                  <div
                    style={{ display: "flex", justifyContent: "space-between" }}
                  >
                    <span>Product&nbsp; Price:</span>
                    <span style={{ fontWeight: "bolder" }}>
                      {price[index]}৳
                    </span>
                  </div>
                  <div
                    style={{ display: "flex", justifyContent: "space-between" }}
                  >
                    <span>Product&nbsp; Quantity:</span>
                    <span style={{ fontWeight: "bolder" }}>
                      {quantity[index]}
                    </span>
                  </div>
                </li>
              ))
            ) : (
              /* If there's only one product, render it without spacing */
              <li>
                <div
                  style={{ display: "flex", justifyContent: "space-between" }}
                >
                  <span>Product&nbsp; Name:</span>
                  <span style={{ fontWeight: "bolder" }}>{productName}</span>
                </div>
                <div
                  style={{ display: "flex", justifyContent: "space-between" }}
                >
                  <span>Product&nbsp; Price:</span>
                  <span style={{ fontWeight: "bolder" }}>{price}৳</span>
                </div>
                <div
                  style={{ display: "flex", justifyContent: "space-between" }}
                >
                  <span>Product&nbsp; Quantity:</span>
                  <span style={{ fontWeight: "bolder" }}>{quantity}</span>
                </div>
              </li>
            )}
            <li>
              <div style={{ display: "flex", justifyContent: "space-between" }}>
                <span>Delivery&nbsp; Fee:</span>
                <span style={{ fontWeight: "bolder" }}>
                  {DeliveryMethod === "Home Delivery" ? 50 : 0}৳
                </span>
              </div>
            </li>
            <li>
              <div style={{ display: "flex", justifyContent: "space-between" }}>
                <span>Total&nbsp; payment:</span>
                <span style={{ fontWeight: "bolder" }}>
                  {DeliveryMethod === "Home Delivery"
                    ? cartSubTotal
                      ? parseFloat(cartSubTotal) + 50
                      : parseFloat(price) + 50
                    : cartSubTotal
                    ? parseFloat(cartSubTotal)
                    : parseFloat(price)}
                  ৳
                </span>
              </div>
            </li>
          </ul>
        </div>
      </Col>

      <div className="form-group"></div>
    </Row>
  );
}