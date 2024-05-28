import React, { useContext } from "react";
import { MdClose } from "react-icons/md";
import { Context } from "../../../utils/context";
import "./CartItem.scss";
import Cart from "../Cart";

const CartItem = ({ handleCartItemAction }) => {
  const { cartItems, handleRemoveFromCart, handleCartProductQuantity } =
    useContext(Context);
  const handleAction = (action, item) => {
    if (action === "remove") {
      handleRemoveFromCart(item);
    } else if (action === "increase") {
      handleCartProductQuantity("inc", item);
    } else if (action === "decrease") {
      handleCartProductQuantity("dec", item);
    }
    handleCartItemAction(item);
  };

  return (
    <>
      <div className="cart-products">
        {cartItems.map((item) => (
          <div key={item.id} className="cart-product">
            <div className="img-container">
              <img
                src={
                  process.env.REACT_APP_DEV_URL +
                  item.attributes.img.data[0].attributes.url
                }
                alt="Product"
              />
            </div>
            <div className="prod-details">
              <span className="name">{item.attributes.title}</span>
              <MdClose
                className="close-btn"
                onClick={() => handleAction("remove", item)}
              />
              <div className="quantity-buttons">
                <span onClick={() => handleAction("decrease", item)}>-</span>
                <span>{item.attributes.quantity}</span>
                <span onClick={() => handleAction("increase", item)}>+</span>
              </div>
              <div className="text">
                <span>{item.attributes.quantity}</span>
                <span>x</span>
                <span className="highlight">
                  {" "}
                  {item.attributes.price * item.attributes.quantity}
                </span>
              </div>
            </div>
          </div>
        ))}
      </div>
     
    </>
  );
};

export default CartItem;
