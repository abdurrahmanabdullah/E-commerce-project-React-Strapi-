import React from "react";
import styles from "../../product_menu/nursecall_page/nurseCall.css";

import "bootstrap/dist/css/bootstrap.css";
import Col from "react-bootstrap/Col";
import Row from "react-bootstrap/Row";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

import "react-animated-slider/build/horizontal.css";
//body image
import n1 from "../../../assets/products/nursecall/n1.png";
import n2 from "../../../assets/products/nursecall/n2.jpeg";
import n3 from "../../../assets/products/nursecall/n3.png";
// clientslider imgage
import c1 from "../../../assets/products/clientlogo/client1.png";
import c2 from "../../../assets/products/clientlogo/client2.png";
import c3 from "../../../assets/products/clientlogo/client3.png";
import c4 from "../../../assets/products/clientlogo/client4.png";
import c5 from "../../../assets/products/clientlogo/client5.png";
import { useState } from "react";
import { FaChevronRight, FaChevronLeft } from "react-icons/fa";

function Qad() {
  const CustomNextArrow = (props) => {
    const { onClick } = props;
  };

  const CustomPrevArrow = (props) => {
    const { onClick } = props;
    return (
      <div className="slick-arrow" onClick={onClick}>
        <FaChevronLeft style={{ color: "blue" }} />
      </div>
    );
  };
  const settings = {
    centerMode: true,
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    variableWidth: true,
  };
  const clientUrls = [c1, c2, c3, c4, c5];
  const highlighted = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 5,
    slidesToScroll: 1,
  };

  return (
    <div>
      <div className="hero" style={{ maxWidth: "100%", width: "100%" }}>
        <img
          style={{
            width: "100%",
          }}
          src={n1}
          alt="Qbot Image"
        />
      </div>

      <Row style={{ maxWidth: "100%",padding:"4rem",marginLeft:"50px" }}>
        {/* //1 em=16px  outline: "auto"}
        {/* //inline holo left right // block holo up down */}
        <Col style={{ display: "block", width: 150, marginLeft: "70px" }}>
          <div>
            <h2
              style={{
                whiteSpace: "nowrap",
                textAlign: "center",
                marginBottom: "20px",
              }}
            >
              Nurse Calling System(QNurseLink)
            </h2>
            <p style={{ textAlign: "justify" }}>
              A nurse calling system, also known as a nurse call system, is a
              crucial component of healthcare facilities such as hospitals,
              nursing homes, and assisted living centers. Its primary function
              is to allow patients or residents to easily summon assistance from
              nursing staff whenever they require help or have an emergency. The
              system typically consists of various components, including call
              buttons or pull cords installed in patient rooms or designated
              areas, a central control panel or software interface at the
              nursing station, and often, communication devices worn by staff
              members. When a patient activates the call button, it sends a
              signal to the central control panel, alerting nursing staff to the
              specific location and nature of the request.
            </p>
          </div>
        </Col>
        <Col>
          <div>
            <img
              style={{
                width: "400px",
                height: "300px",
                marginLeft: "50px",
              }}
              src={n2}
              alt="Nurse calling Image"
            />
          </div>
        </Col>
      </Row>
      <div
        className="cardItem"
        style={{ marginLeft: "100px", marginRight: "100px" }}
      >
        {/* //1nd row ----------- */}

        <div className="row">
          <Col md={6}>
            <div
              className="nurse-advace-card"
              style={{
                display: "flex",
                justifyContent: "space-between",
                alignItems: "center",
              }}
            >
              <div
                className="card-title"
                style={{
                  width: "4.5em",
                  height: "4.5em",
                  borderRadius: "50%",
                  border: "2px solid black",
                  alignItems: "center",

                  display: "flex",
                  justifyContent: "center",
                  zIndex: "1",
                  position: "absolute",
                  backgroundColor: "white",
                }}
              >
                <h2 style={{ fontSize: "2.5rem" }}>01</h2>
              </div>
              <div
                className="nurse-card-body"
                style={{
                  zIndex: "0",
                  width: "100%",
                
                  marginLeft: "6%",

                  boxShadow:
                    "rgba(17, 17, 26, 0.1) 0px 4px 16px, rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, 10px 10px white, rgba(50, 50, 93, 0.25) 0px 30px 60px -12px inset, rgba(0, 0, 0, 0.3) 0px 18px 36px -18px inset",
                }}
              >
                <div
                  className="inner-text-wrapper"
                  style={{
                    width: "50%",
                    marginLeft: "30%",
                    textAlign: "justify",
                  
                  }}
                >
                  <h1 style={{ fontSize: "32px" }}>Patient Activation</h1>
                  <p>
                    When a patient requires assistance, they simply press the
                    call button or pendant within their reach. This button press
                    initiates an aler and it get quick response system to alert
                    doctor and ensure more secure.
                  </p>
                </div>
              </div>
            </div>
          </Col>
          <Col md={6}>
            <div
              className="nurse-advace-card"
              style={{
                display: "flex",
                justifyContent: "space-between",
                alignItems: "center",
              }}
            >
              <div
                className="card-title"
                style={{
                  width: "4.5em",
                  height: "4.5em",
                  borderRadius: "50%",
                  border: "2px solid black",
                  alignItems: "center",

                  display: "flex",
                  justifyContent: "center",
                  zIndex: "1",
                  position: "absolute",
                  backgroundColor: "white",
                }}
              >
                <h2 style={{ fontSize: "2.5rem" }}>02</h2>
              </div>
              <div
                className="nurse-card-body"
                style={{
                  zIndex: "0",
                  width: "100%",
              
                  marginLeft: "6%",

                  boxShadow:
                    "rgba(17, 17, 26, 0.1) 0px 4px 16px, rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, 10px 10px white, rgba(50, 50, 93, 0.25) 0px 30px 60px -12px inset, rgba(0, 0, 0, 0.3) 0px 18px 36px -18px inset",
                }}
              >
                <div
                  className="inner-text-wrapper"
                  style={{
                    width: "50%",
                    marginLeft: "30%",
                    textAlign: "justify",
                  }}
                >
                  <h1 style={{ fontSize: "32px" }}>Notification</h1>
                  <p>
                    The alert is transmitted in real-time to the central console
                    located to the nurse’s station . healthcare providers,
                    typically nurses, can immediately see and acknowledge
                    incoming calls.
                  </p>
                </div>
              </div>
            </div>
          </Col>
        </div>

        {/* ///2nd row */}
        <div className="row" style={{ marginTop: "30px" }}>
          <Col md={6}>
            <div
              className="nurse-advace-card"
              style={{
                display: "flex",
                justifyContent: "space-between",
                alignItems: "center",
              }}
            >
              <div
                className="card-title"
                style={{
                  width: "4.5em",
                  height: "4.5em",
                  borderRadius: "50%",
                  border: "2px solid black",
                  alignItems: "center",

                  display: "flex",
                  justifyContent: "center",
                  zIndex: "1",
                  position: "absolute",
                  backgroundColor: "white",
                }}
              >
                <h2 style={{ fontSize: "2.5rem" }}>03</h2>
              </div>
              <div
                className="nurse-card-body"
                style={{
                  zIndex: "0",
                  width: "100%",
                
                  marginLeft: "6%",

                  boxShadow:
                    "rgba(17, 17, 26, 0.1) 0px 4px 16px, rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, 10px 10px white, rgba(50, 50, 93, 0.25) 0px 30px 60px -12px inset, rgba(0, 0, 0, 0.3) 0px 18px 36px -18px inset",
                }}
              >
                <div
                  className="inner-text-wrapper"
                  style={{
                    width: "50%",
                    marginLeft: "30%",
                    textAlign: "justify",
                  }}
                >
                  <h1 style={{ fontSize: "32px" }}>Response</h1>
                  <p>
                    Nurses or healthcare professionals can then prioritize and
                    respond to the call . they may communicate with the patient
                    through an intercom system or visit the patient’s room to
                    address their needs.
                  </p>
                </div>
              </div>
            </div>
          </Col>
          <Col md={6}>
            <div
              className="nurse-advace-card"
              style={{
                display: "flex",
                justifyContent: "space-between",
                alignItems: "center",
              }}
            >
              <div
                className="card-title"
                style={{
                  width: "4.5em",
                  height: "4.5em",
                  borderRadius: "50%",
                  border: "2px solid black",
                  alignItems: "center",

                  display: "flex",
                  justifyContent: "center",
                  zIndex: "1",
                  position: "absolute",
                  backgroundColor: "white",
                }}
              >
                <h2 style={{ fontSize: "2.5rem" }}>04</h2>
              </div>
              <div
                className="nurse-card-body"
                style={{
                  zIndex: "0",
                  width: "100%",
               
                  marginLeft: "6%",

                  boxShadow:
                    "rgba(17, 17, 26, 0.1) 0px 4px 16px, rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, 10px 10px white, rgba(50, 50, 93, 0.25) 0px 30px 60px -12px inset, rgba(0, 0, 0, 0.3) 0px 18px 36px -18px inset",
                }}
              >
                <div
                  className="inner-text-wrapper"
                  style={{
                    width: "50%",
                    marginLeft: "30%",
                    textAlign: "justify",
                  }}
                >
                  <h1 style={{ fontSize: "32px" }}>Documentation</h1>
                  <p>
                    Some advanced nurse call systems provide the capability to
                    document the response and any patient interactions. This
                    documentation can be valuable and it give more clear
                    concept.
                  </p>
                </div>
              </div>
            </div>
          </Col>
        </div>
      </div>
      <div className="system-work">
        {/* <h1 style={{ textAlign: "center", marginBottom: "40px" }}>
          How Our Cloud Based System Works
        </h1> */}
        {/* <img
          style={{ width: "100%", height: "300px" }}
          src={logo2}
          alt="Qbot Image"
        /> */}
      </div>

      {/* //------qad  feature */}

      {/* /// highlight client */}

      {/* <div className="highlight client">
        <h2
          style={{
            textAlign: "center",
            marginBottom: "50px",
          }}
        >
          Highlighted Client List
        </h2>

        <div className="">
          <div className="mt-20">
            <Slider {...highlighted}>
              {clientUrls.map((url, index) => (
                <div key={index} className="">
                 
                  <img
                    style={{ width: "150px", height: "150px" }}
                    src={url}
                    alt=""
                  />
                </div>
              ))}
            </Slider>
          </div>
        </div>
      </div> */}
    </div>
  );
}

export default Qad;
