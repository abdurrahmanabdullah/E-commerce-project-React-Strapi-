import React, { useState, useEffect } from "react";
import styled from "../About/about.scss";
import Newsletter from "../Footer/Newsletter/Newsletter";
import BkashPage from "../../payment/bkash_page";

const About = () => {
  const [aboutUsData, setAboutUsData] = useState(null);
  const [additionalImages, setAdditionalImages] = useState([]);
  const [footer, setFooter] = useState("");
  const coreapi = "";
  useEffect(() => {
    const fetchData = async () => {
      try {
        // Fetch data from about-uses API
        const aboutUsResponse = await fetch(
          "http://localhost:1369/api/about-uses?populate=*"
        );
        const aboutUsData = await aboutUsResponse.json();
        setAboutUsData(aboutUsData.data[0]);

        // Fetch additional images from homes API
        const homesResponse = await fetch("http://localhost:1369/api/homes");
        const homesData = await homesResponse.json();
        if (homesData.data && homesData.data.length > 0) {
          const images = homesData.data[0].attributes.images.data;
          const footerText = homesData.data[0].attributes.footer;
          setAdditionalImages(images);
          setFooter(footerText);
        }
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    };

    fetchData();
  }, []);

  return (
    <div>
      <div style={{ paddingBlock: "4%" }}>
        <h2
          style={{
            textAlign: "center",
            color: "#050505",
            fontFamily: "Barlowsans-serif",
            fontSize: "45px",
          }}
        >
          Our Story{" "}
        </h2>
        <p
          style={{
            textAlign: "justify",
            color: "#010101",
            fontFamily: "Barlowsans-serif",
            fontSize: "20px",
            paddingInline: "6%",
            paddingTop: "3%",
          }}
        >
          In the heart of Metropolis, Hidayah Smart Solutions, a team of 25 tech
          enthusiasts, pioneers innovation through bespoke software solutions
          and expert consultancy. With a commitment to excellence, they empower
          businesses to thrive in the digital era, leveraging cutting-edge
          technology and unwavering dedication. Their journey is marked by
          transformative projects, fueled by integrity, innovation, and
          collaboration, shaping a future .
        </p>
      </div>
      {aboutUsData && aboutUsData.attributes && (
        <div>
          {aboutUsData.attributes.content.map((item) => (
            <div
              key={item.id}
              style={{
                marginBottom: "10px",
                padding: "10px",
                flex: 1,
                marginLeft: "70px",
                marginRight: "70px",
              }}
            >
              <h2
                style={{
                  fontWeight: "normal",
                  fontSize: "24px",
                  color: "#333",
                }}
              >
                {item.heading}
              </h2>
              <div className="text-typing">
                <p
                  style={{
                    fontFamily: "Barlowsans-serif",
                    color: "black",
                    fontSize: "20px",
                  }}
                >
                  {item.subheading}
                </p>
              </div>
            </div>
          ))}

          {/* Additional Images */}
          {additionalImages.length > 0 && (
            <div className="additional-images">
              {additionalImages.map((image, index) => (
                <img
                  key={image.id}
                  src={`
http://localhost:1369${image.attributes.url}`}
                  alt={image.attributes.name}
                  style={{
                    borderRadius: "10px",
                    margin: "10px",
                    padding: "23px",
                  }}
                />
              ))}
            </div>
          )}
          <Newsletter />
        </div>
      )}
    </div>
  );
};

export default About;
