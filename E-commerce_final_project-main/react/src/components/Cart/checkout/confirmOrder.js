import html2canvas from "html2canvas";
import jsPDF from "jspdf";
import React, { useState, useEffect, useRef } from "react";
import BkashPage from "../../../payment/bkash_page";
import "../checkout/confirmOrder.css"; // Import CSS file for styling

import Logo from "../../../assets/Logo_Hidayah.png"
const ConfirmOrder = () => {
  const pdfRef = useRef();

  const [latestOrder, setLatestOrder] = useState(null);

  useEffect(() => {
    const fetchOrderData = async () => {
      try {
        const response = await fetch(
          "http://localhost:1369/api/order-reports?populate,deep=10"
        );
        if (!response.ok) {
          throw new Error("Failed to fetch order data");
        }
        const jsonData = await response.json();
        if (jsonData.data.length > 0) {
          const sortedOrders = jsonData.data.sort(
            (a, b) =>
              new Date(b.attributes.createdAt) -
              new Date(a.attributes.createdAt)
          );
          setLatestOrder(sortedOrders[0]);

            
        }
      } catch (error) {
        console.error("Error fetching order data:", error);
      }
    };

    // Fetch order data initially
    fetchOrderData();
  }, []);

  useEffect(() => {
    if (latestOrder) {
      localStorage.setItem('orderId', latestOrder.attributes.orderId);
    }
  }, [latestOrder]);

  const download = () => {
    const input = pdfRef.current;
    html2canvas(input).then((canvas) => {
      const imgData = canvas.toDataURL("image/png");
      const pdf = new jsPDF("p", "mm", "a4", true);
      const pdfWidth = pdf.internal.pageSize.getWidth();
      const pdfHeight = pdf.internal.pageSize.getHeight();
      const imgWidth = canvas.width;
      const imgHeight = canvas.height;
      const ratio = Math.min(pdfWidth / imgWidth, pdfHeight / imgHeight);
      const imgX = (pdfWidth - imgWidth * ratio) / 2;
      const imgY = 30;
      pdf.addImage(
        imgData,
        "PNG",
        imgX,
        imgY,
        imgWidth * ratio,
        imgHeight * ratio
      );
      pdf.save("invoice.pdf");
    });
  };

  return (
    <div className="outer-container">
      <div className="center-container" ref={pdfRef}>
        <div className="confirmation-box">
           <img style={{width:"8%",marginRight:"80%"}} src={Logo} alt="Hidayah Logo" />
          <h2>Your Order has been placed!</h2>
          {latestOrder && (
            <p>
              Your order # {latestOrder.attributes.orderId} has been placed
              successfully. Should you have any questions about your order, feel
              free to call us on 09872000 (10 AM - 5 PM)
            </p>
          )}
        </div>
        <div className="columns-container">
          <div className="column">
            {latestOrder && (
              <div>
                <h3>Delivery Address</h3>
                <p>First Name: {latestOrder.attributes.FirstName}</p>
                <p>Address: {latestOrder.attributes.Address}</p>
                <p>Mobile: {latestOrder.attributes.Mobile}</p>
                <p>Email: {latestOrder.attributes.Email}</p>
              </div>
            )}
          </div>
          <div className="column">
            <h3>Order Summary</h3>
            {latestOrder &&
              latestOrder.attributes.OrderList &&
              latestOrder.attributes.OrderList.map((item, index) => (
                <div key={index}>
                  {item.productName && <p>Product Name: {item.productName}</p>}
                  {item.price && !item.deliveryType && (
                    <p>Price: {item.price}৳</p>
                  )}
                  {item.quantity && !item.deliveryType && (
                    <p>Quantity: {item.quantity}</p>
                  )}

                  {item.deliveryType && <p>Delivery Fee: {item.price}৳</p>}
                </div>
              ))}
            {latestOrder && latestOrder.attributes.OrderList && (
              <p>
                Total payment:{" "}
                {
                  latestOrder.attributes.OrderList[
                    latestOrder.attributes.OrderList.length - 1
                  ].TotalPrice
                }
              </p>
            )}
          </div>

        
        </div>

        <div className="want-to-pay" style={{ padding: "20px" }}>
          <h5 style={{ textAlign: "center" }}>
            Want to Pay Now? please read carefully
          </h5>
          <p style={{ textAlign: "center" }}>
            After payment before agent confirmation, some product may not be
            delivered due to stock problem. To get a refund, refund change will
            be applicable and it will take 5 to 10 working days to process the
            refund. So, we are encouraging you to pay our agent's confirmation
            to avoid any inconveniences.
          </p>
        </div>  
      </div>

 <div className="button-container">
          <button
            style={{ marginRight: "50px" }}
            onClick={() => (window.location.href = "/product")}
          >
            Continue Shopping
          </button>
          {latestOrder && latestOrder.attributes.OrderList && (
            <BkashPage
              totalPayment={
                latestOrder.attributes.OrderList[
                  latestOrder.attributes.OrderList.length - 1
                ].TotalPrice
              }
            />
          )}
        </div>

      <div style={{ marginTop: "1%", marginLeft: "80%" }}>
        <button className="btn btn-primary" onClick={download}>
          Download PDF
        </button>
      </div>
    </div>
  );
};

export default ConfirmOrder;

