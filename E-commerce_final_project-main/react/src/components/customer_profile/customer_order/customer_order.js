import React, { useState, useEffect } from 'react';
import './customer_order.css';
let flag=true;
function OrderDetails({ orderData, onDeleteOrder }) {
  const [orderItems, setOrderItems] = useState(orderData?.attributes?.OrderList || []);
  const [confirmOrder, setConfirmOrder] = useState(orderData?.attributes?.ConfirmOrder || false);
  const [OrderId, setOrderId] = useState(orderData.id);

  const handleDelete = async () => {
    const confirmation = window.confirm(`Are you sure you want to delete your order? This order cannot be undone.`);
    if (confirmation) {
      try {
        const response = await fetch(`http://localhost:1369/api/order-reports/${orderData.id}`, {
          method: 'DELETE',
        });

        if (response.ok) {
          console.log('Order deleted successfully!');
          // localStorage.removeItem('OrderId');
          localStorage.clear();
          onDeleteOrder();
          flag=false;
        } else {
          console.error('Error deleting order:', await response.text());
          alert('Error deleting order. Please try again.');
        }
      } catch (error) {
        console.error('Error deleting order:', error);
        alert('Error deleting order. Please try again.');
      }
    }
  };

  return (
    <div className="order-details">
      <div className='order-itemm'>
        <h2>Order History</h2>
        <p>Order ID: {orderData?.attributes?.orderId}</p>
        <p style={{ marginBottom: "20%" }}>Order Date: {new Date(orderData?.attributes?.createdAt).toLocaleString()}</p>
        {orderItems.length > 0 ? (
          orderItems.map((orderItem, index) => (
            <div key={index} className="order-item">
              <p>
                {orderItem.productName && (
                  <>
                    Product Name: {orderItem.productName}
                    <br />
                    Product Price: {orderItem.price}৳
                    <br />
                    {orderItem.quantity > 1 && (
                      <>
                        Product Quantity: {orderItem.quantity}
                        <br />
                      </>
                    )}
                  </>
                )}
                {orderItem.deliveryType && <p>Delivery Fee: {orderItem.price}৳</p>}
                {orderItem.TotalPrice && <p>Total Payment: {orderItem.TotalPrice}৳</p>}
              </p>
            </div>
          ))
        ) : (
          <p>No order items found.</p>
        )}
      </div>
      <div className='status_button'>
        <p style={{ color: confirmOrder ? 'green' : 'red' }}>
          Order Status: {confirmOrder ? 'Confirmed' : 'Not Confirmed'}
        </p>
        <button className='buton' onClick={handleDelete}     disabled={confirmOrder} >Delete Order</button>
      </div>
    </div>
  );
}

function App() {
  const [orderData, setOrderData] = useState(null);
  const [orderDeleted, setOrderDeleted] = useState(false);

  useEffect(() => {
        if (flag===true) {
      fetchOrderData();
    }
  }, [orderDeleted]);
  const fetchOrderData = async () => {
    try {
      const response = await fetch('http://localhost:1369/api/order-reports?populate=*');
      const data = await response.json();
      console.log(data,"dsffgsdfds")
      if (data && data.data && data.data.length > 0) {
        const latestOrder = data.data[data.data.length - 1];
        setOrderData(latestOrder);
      } else {
        setOrderData(null);
      }
    } catch (error) {
      console.error('Error fetching order data:', error);
    }
  };

  const handleDeleteOrder = () => {
    setOrderData(null);
    setOrderDeleted(true);
  };

  return (
    <div className="app">
      <div className="profile_card">
        {!orderData && !orderDeleted ? (
          <p>You have no order history.</p>
        ) : (
          orderData && !orderDeleted && (
            <OrderDetails
              orderData={orderData}
              onDeleteOrder={handleDeleteOrder}
            />
          )
        )}
        {orderDeleted && (
          <p style={{ fontWeight: "bolder", marginTop: "30px", color: "blue" }}>Your order history is empty</p>
        )}
      </div>
    </div>
  );
}

export default App;
