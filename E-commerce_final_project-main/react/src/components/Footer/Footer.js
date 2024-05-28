import React, { Fragment } from "react";
import "./Footer.css";
import { FaMapMarkerAlt, FaPhone, FaEnvelope } from "react-icons/fa";

const Footer = () => {
  return (
    <div className="footer">
      <div className="support-section">
        <p
          style={{
            color: "#F3F2ED",
            fontFamily: "Poppins,sans-serif",
            fontSize: "20px",
          }}
        >
          SUPPORT
        </p>
        <div
          className="contact "
          style={{
            display: "flex",
            gap: "10px",
            flexDirection: "column",
          }}
        >
          <div className="SUPPORT-PHONE">
            <p>
              <FaPhone
                style={{
                  color: "white",
                  fontSize: "15px",
                  marginRight: "10px",
                }}
              />{" "}
              10AM - 7PM
            </p>

            <p style={{ color: "red", whiteSpace: "nowrap", marginTop: "20%" }}>
              +880-186877300
            </p>
            <span class="vertical-line"></span>
          </div>
          <div className="SUPPORT-LOCATION">
            <a
              style={{ textDecoration: "none" }}
              href="https://www.google.com/maps/place/Cemex+Shimul+Trishna+Trade+Centre/@23.818226,90.421265,14z/data=!4m6!3m5!1s0x3755c70cd5e84b85:0x1dea89384d59338d!8m2!3d23.8182261!4d90.4212654!16s%2Fg%2F11fdxs93t7?hl=en&entry=ttu"
            >
              <p>
                <FaMapMarkerAlt
                  style={{
                    color: "white",
                    fontSize: "15px",
                    marginRight: "10px",
                  }}
                />
                Location
              </p>
              <p
                style={{ color: "red", whiteSpace: "nowrap", marginTop: "20%" }}
              >
                Find Our company
              </p>{" "}
            </a>
          </div>
        </div>
      </div>
      <div
        className="about-us"
        style={{
          display: "flex",
          flexDirection: "column",
          gap: "25px",
          // gap: "1.5em",
          marginLeft: "10%",
          textAlign: "left",
        }}
      >
        <p
          style={{
            color: "#F3F2ED",
            fontFamily: "Poppins, sans-serif",
            alignSelf: "flex-start",
            fontSize: "20px",
          }}
        >
          Quick Links
        </p>
        <div className="footer-links" style={{ display: "flex" }}>
          <div
            className="fl1"
            style={{
              textAlign: "left",
              marginRight: "90px",
            }}
          >
            <a
              href="https://hidayahsmart.solutions/about"
              style={{
                marginBottom: "10px",
                whiteSpace: "nowrap",
                textDecoration: "none",
                color: "inherit",
              }}
            >
              <p style={{ color: "#A8B0A6" }}>About us</p>
            </a>

            <a
              href="https://hidayahsmart.solutions/home"
              style={{
                marginBottom: "10px",
                whiteSpace: "nowrap",
                textDecoration: "none",
                color: "inherit",
              }}
            >
              <p style={{ marginTop: "10px", color: "#A8B0A6" }}>Home</p>
            </a>
            <a
              href="https://hidayahsmart.solutions/service"
              style={{
                marginBottom: "10px",
                whiteSpace: "nowrap",
                textDecoration: "none",
                color: "inherit",
              }}
            >
              <p style={{ marginTop: "10px", color: "#A8B0A6" }}>services</p>
            </a>

            <a
              href="https://hidayahsmart.solutions/contact"
              style={{
                marginBottom: "10px",
                whiteSpace: "nowrap",
                textDecoration: "none",
                color: "inherit",
              }}
            >
              <p style={{ marginTop: "10px", color: "#A8B0A6" }}>Contact</p>
            </a>
          </div>
          <div className="fl2" style={{ marginRight: "40px" }}>
            <a
              href="https://hidayahsmart.solutions/product/lucentchart"
              style={{
                marginBottom: "10px",
                whiteSpace: "nowrap",
                textDecoration: "none",
                color: "inherit",
              }}
            >
              <p
                style={{
                  marginBottom: "10px",
                  whiteSpace: "nowrap",
                  color: "#A8B0A6",
                }}
              >
                Lucent Chart
              </p>
            </a>

            <a
              href="https://hidayahsmart.solutions/product/nursecalling"
              style={{
                marginBottom: "10px",
                whiteSpace: "nowrap",
                textDecoration: "none",
                color: "inherit",
              }}
            >
              <p
                style={{
                  marginBottom: "10px",
                  whiteSpace: "nowrap",
                  color: "#A8B0A6",
                }}
              >
                Nurse Calling
              </p>
            </a>

            <a
              href="https://hidayahsmart.solutions/product/qbot"
              style={{
                marginBottom: "10px",
                whiteSpace: "nowrap",
                textDecoration: "none",
                color: "inherit",
              }}
            >
              <p style={{ marginBottom: "10px", color: "#A8B0A6" }}>Q Bot</p>
            </a>
            <a
              href="https://hidayahsmart.solutions/product/qad"
              style={{
                marginBottom: "10px",
                whiteSpace: "nowrap",
                textDecoration: "none",
                color: "inherit",
              }}
            >
              <p style={{ color: "#A8B0A6" }}>Q AD</p>
            </a>
          </div>
          <div className="fl3" style={{ marginLeft: "40px" }}>
            <p style={{ marginBottom: "10px", color: "#A8B0A6" }}>
              E-mail Migration and Management
            </p>
            <p style={{ marginBottom: "10px", color: "#A8B0A6" }}>
              Cloud Service and Management
            </p>
          </div>
        </div>
      </div>
      {/* <div className="stay-connected">
       
      </div> */}

      <div className="stayConnection-section">
        <p
          style={{
            color: "#F3F2ED",
            fontFamily: "Poppins, sans-serif",
            marginLeft: "45px",
            fontSize: "20px",
          }}
        >
          STAY CONNECTED
        </p>
        <div className="contact">
          <div className="SUPPORT-PHONE">
            <p style={{ marginBottom: "10px", color: "#A8B0A6" }}>
              Hidayah Smart Solutions
            </p>
            <p style={{ color: "#A8B0A6" }}>
              Cemex Shimul Trishna Trade Centre Ka, 86/1, Kuril Bishwaroad,
              Progoti Shoroni, 1229 Dhaka, Dhaka Division, Bangladesh
            </p>
            {/* <p style={{ marginBottom: "10px" }}>
              Progoti Shoroni, 1229 Dhaka, Dhaka Division, Bangladesh
            </p> */}
            <p
              style={{
                marginBottom: "10px",
                marginTop: "3px",
                color: "#A8B0A6",
              }}
            >
              Email :
            </p>
            <p>
              <a href="mailto:hidayah@gmail.com" class="email">
                info@hidayahsmart.solutions
              </a>
            </p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;
