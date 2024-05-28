import React, { useState, useEffect } from "react";
import styles from "../Destination-page/home.css";
import Slider from "react-slick";
import CountUp from "react-countup";
import Col from "react-bootstrap/Col";
import Row from "react-bootstrap/Row";
import Logo1 from "../../assets/Home_asset/logo/logo1.png";
import Logo2 from "../../assets/Home_asset/logo/logo2.png";
import Logo3 from "../../assets/Home_asset/logo/logo3.png";
import Logo4 from "../../assets/Home_asset/logo/logo4.jpeg";
import Logo5 from "../../assets/Home_asset/logo/logo5.png";
import Logo6 from "../../assets/Home_asset/logo/logo6.png";
import clienfeedbackimg from "../../assets/Home_asset/feedback2.png";
import Background from "../../assets/Home_asset/background.png";
import itemimg from "../../assets/Home_asset/HSS landing page content.png";
import Consultantimg from "../../assets/Home_asset/consultancy.jpeg";
import { Circle } from "@mui/icons-material";
import c1 from "../../assets/Home_asset/client_partner/c1.png";
import c2 from "../../assets/Home_asset/client_partner/c2.png";
import c3 from "../../assets/Home_asset/client_partner/c3.png";
import c4 from "../../assets/Home_asset/client_partner/c4.png";
import c5 from "../../assets/Home_asset/client_partner/c5.png";
import c6 from "../../assets/Home_asset/client_partner/c5.png";
import c7 from "../../assets/Home_asset/client_partner/c7.png";
import c8 from "../../assets/Home_asset/client_partner/getko.png";
const logosData = [
  { logo: Logo1, title: "Experience", time: "20" },
  { logo: Logo2, title: "IT Professional", time: "20" },
  { logo: Logo3, title: "Projects Completed", time: "60" },
  { logo: Logo4, title: "Flagship Products", time: "10" },
  { logo: Logo5, title: "Happy Clients", time: "40" },
  { logo: Logo6, title: "Tech Partners", time: "5" },
];

// /---------------- slider scroll
const clientimg = [c1, c2, c3, c4];
const partnerimg = [c8, c6, c7, c5];
const highlighted1 = {
  dots: true,
  infinite: true,
  speed: 500,
  slidesToShow: 4,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000, 
};
const highlighted2 = {

  slidesToShow: 3,
};

const Product = () => {
  return (
    <div style={{ paddingInline: "7%" }}>
      <Row
        className="Hero"
        style={{
          padding: "70px",
          position: "relative",
          overflow: "hidden",
          marginTop: "3%",
        }}
      >
        <div
          style={{
            position: "absolute",
            top: "0",
            left: "0",
            width: "100%",
            height: "100%",
            backgroundImage: `url(${Background})`,
            backgroundSize: "cover",
            backgroundPosition: "center",
            filter: "blur(1px)",
            opacity: 0.5,
            zIndex: "-1",
          }}
        ></div>
        <Col style={{ display: "block", width: 150, marginLeft: "10px" }}>
          <div style={{ marginRight: "30px" }}>
            <div class="shine-text">
              {" "}
              <h1 style={{ fontSize: "63px", fontFamily: "serif" }}>
                Hidayah Smart Solutions -HSS
              </h1>
            </div>
            <h3>Your Customeized Solutions Provider</h3>
          </div>
        </Col>
        <Col>
          <div style={{ marginLeft: "140px", marginTop: "5%" }}>
            <p>
              Welcome to Hidayah Smart Solutions (HSS), where innovation meets
              excellence in software development. As a dynamic and
              forward-thinking company, we embark on a mission to redefine the
              digital landscape through cutting-edge solutions tailored to meet
              the diverse needs of our clients.
            </p>
          </div>
        </Col>
      </Row>

      <Row style={{ marginTop: "30px" }}>
        {logosData.map((item, index) => (
          <Col key={index} md={6}>
            <div className="Home-vital-card">
              <div className="vital-card-content row">
                <div className="col-md-6 d-flex justify-content-center align-items-center">
                  <div className="logo">
                    <img
                      style={{ maxWidth: "60%", borderRadius: "50%" }}
                      src={item.logo}
                      alt={`logo${index + 1}`}
                    />
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card-body">
                    <p
                      style={{
                        fontWeight: "bolder",
                        fontSize: "20px",
                        marginTop: "30px",
                      }}
                    >
                      <span
                        style={{
                          color: "#7F97B4",
                          fontWeight: "bolder",
                          fontSize: "1.5em",
                          marginLeft: "20%",
                        }}
                      >
                        <CountUp end={item.time} duration={8} />
                        <span style={{ fontSize: "20px", marginLeft: "5px" }}>
                          +
                        </span>
                      </span>
                      <br />

                      <span
                        style={{
                          whiteSpace: "nowrap",
                          marginRight: "100%",
                          marginLeft: "10%",
                        }}
                      >
                        {item.title}
                      </span>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </Col>
        ))}
      </Row>

      <div
        className="hero-image"
        style={{ marginLeft: "30px", marginTop: "40px" }}
      >
        <img
          style={{ width: "100%", color: "#D4D4D4" }}
          src={itemimg}
          alt={"No image"}
        />
      </div>

  

      <div className="client-feedback">
        <img
          style={{
            width: "100%",
            paddingLeft: "2%",
            paddingBlock: "2%", 
          }}
          src={clienfeedbackimg}
        />
      </div>
      <div className="highlight client">
        <h2
          style={{
            textAlign: "center",
         
          }}
        >
          OUR FEATURED CLIENTS
        </h2>

        <div className="icon">
          <div className="mt-20">
            <Slider {...highlighted1}>
              {clientimg.map((url, index) => (
                <div key={index} className="">
                  {/* <a href="#" className=""></a> */}
                  <img
                    style={{ width: "40%", height: "40%" }}
                    src={url}
                    alt=""
                  />
                </div>
              ))}
            </Slider>
          </div>
        </div>
      </div>
      <div className="highlight client">
        <h2
          style={{
            textAlign: "center",
               marginTop:"5%"
          }}
        >
          OUR FEATURED PARTNERS
        </h2>

        <div className="">
          <div className="mt-20">
            <Slider {...highlighted2}>
              {partnerimg.map((url, index) => (
                <div key={index} className="">
                  <img
                    style={{ width: "50%", height: "50%" }}
                    src={url}
                    alt=""
                  />
                </div>
              ))}
            </Slider>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Product;
