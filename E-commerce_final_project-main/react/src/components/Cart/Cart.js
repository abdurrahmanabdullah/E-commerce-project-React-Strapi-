
import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { MdClose } from "react-icons/md";
import { BsCartX } from "react-icons/bs";
import CartItem from "./CartItem/CartItem";
import "./Cart.scss";
import { useContext } from "react";
import { Context } from "../../utils/context";
import { makePaymentRequest } from "../../utils/api";
import { loadStripe } from "@stripe/stripe-js";
import { useParams } from "react-router-dom";
import { useLocation } from "react-router-dom";

const Cart = ({ setShowCart }) => {
  const { cartItems, cartSubTotal } = useContext(Context);
  const [login, setLogIn] = useState(false);
  const navigate = useNavigate(); 
  const location = useLocation();
  const handleReturnToShop = () => {
    setShowCart(false);
  };

  const parts = location.pathname.split("/");
  const lastPart = parts[parts.length - 1];
  const ids = lastPart;
  const queryParams = new URLSearchParams();
  const handleCartItemAction = (item) => {
    console.log("Action from CartItem component:", item);
  };
  const handleCheckout = () => {
    if (cartItems?.length) {
      cartItems.forEach((item) => {
        console.log(item.id, "item.id");
        queryParams.append("productName[]", item.attributes.title);
        queryParams.append("price[]", item.attributes.price);
        queryParams.append("quantity[]", item.attributes.quantity);
        queryParams.append("id[]", item.id);
      });
      queryParams.append("cartSubTotal", cartSubTotal);
      if (login) {
        window.location.href = `/customerinformation?&${queryParams.toString()}`;
      } else {
        window.location.href = `/login?id=${ids}&${queryParams.toString()}`;
        setLogIn(true);
      }
    }
  };

  return (
    <div className="cart-panel">
      <div className="opac-layer"></div>
      <div className="cart-content">
        <div className="cart-header">
          <span className="heading">Shopping Cart</span>
          <span className="close-button" onClick={() => setShowCart(false)}>
            <MdClose />
            <span className="text">close</span>
          </span>
        </div>
        {!cartItems?.length && (
          <div className="empty-cart">
            <BsCartX />
            <span>No products in the cart.</span>
            <button className="return-cta" onClick={handleReturnToShop}>
              RETURN TO SHOP
            </button>
          </div>
        )}

        {!!cartItems?.length && (
          <>
            <CartItem handleCartItemAction={handleCartItemAction} />
            <div className="cart-footer">
              <div className="sub-total">
                <span className="text">Subtotal</span>
                <span className="text total"> {cartSubTotal}৳</span>
              </div>
              <div className="button">
                <button className="checkout-cta" onClick={handleCheckout}>
                  Checkout
                </button>
              </div>
            </div>
          </>
        )}
      </div>
    </div>
  );
};

export default Cart;
