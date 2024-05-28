// import "./Newsletter.scss";
// import React from "react";
// import {
//   FaFacebookF,
//   FaTwitter,
//   FaInstagram,
//   FaLinkedin,
// } from "react-icons/fa";
// import emailjs from "emailjs-com";

// const Newsletter = () => {
//   function sendEmail(e) {
//     e.preventDefault();
//     // You'll need to configure your service ID, template ID, and user ID below
//     emailjs
//       .sendForm(
//         "service_2x6fyyv",
//         "template_fa5b5xc",
//         e.target,
//         "RnB_nnBsWKrulOse-"
//       )
//       .then(
//         (result) => {
//           console.log(result.text);
//         },
//         (error) => {
//           console.log(error.text);
//         }
//       );
//     e.target.reset();
//   }

//   return (
//     <div className="newsletter-section">
//       <div className="newsletter-content">
//         <span className="small-text">Newsletter</span>
//         <span className="big-text">Sign up for latest updates and offers</span>
//         <form className="form" onSubmit={sendEmail}>
//           <input
//             type="email"
//             name="user_email"
//             placeholder="Email Address"
//             required
//           />
//           <button type="submitt">Subscribe</button>
//         </form>
//         <div className="text">
//           Will be used in accordance with our Privacy Policy
//         </div>
//         <div className="social-icons">
//           <div className="icon">
//             {" "}
//             <a
//               href="https://www.facebook.com/hidayah.smart.solutions/"
//               target="_blank"
//               rel="noopener noreferrer"
//             >
//               <FaFacebookF size={14} />
//             </a>
//           </div>
//           <div className="icon">
//             <FaTwitter size={14} />
//           </div>
//           <div className="icon">
//             <FaInstagram size={14} />
//           </div>
//           <div className="icon">
//             <FaLinkedin size={14} />
//           </div>
//         </div>
//       </div>
//     </div>
//   );
// };

// export default Newsletter;

import "./Newsletter.scss";
import React from "react";
import {
  FaFacebookF,
  FaTwitter,
  FaInstagram,
  FaLinkedin,
} from "react-icons/fa";
import emailjs from "emailjs-com";

const Newsletter = () => {
  function sendEmail(e) {
    e.preventDefault();
    // You'll need to configure your service ID, template ID, and user ID below
    emailjs
      .sendForm(
        "service_2x6fyyv",
        "template_fa5b5xc",
        e.target,
        "RnB_nnBsWKrulOse-"
      )
      .then(
        (result) => {
          console.log(result.text);
        },
        (error) => {
          console.log(error.text);
        }
      );
    e.target.reset();
  }

  return (
    <div className="newsletter-section">
      <div className="newsletter-content">
        <span className="small-text">Newsletter</span>
        <span className="big-text">Sign up for latest updates and offers</span>
        <form className="form" onSubmit={sendEmail}>
          <div style={{ display: "block", gap: "2%" }}>
            {" "}
           
            <input
              type="email"
              name="user_email"
              placeholder="Email Address"
              required
            />
          </div>

          <button type="submitt" style={{ paddingBlock: "22px" }}>
            Subscribe
          </button>
        </form>
        <div className="text">
          Will be used in accordance with our Privacy Policy
        </div>
        <div className="social-icons">
          <div className="icon">
            {" "}
            <a
              href="https://www.facebook.com/hidayah.smart.solutions/"
              target="_blank"
              rel="noopener noreferrer"
            >
              <FaFacebookF size={14} />
            </a>
          </div>
          <div className="icon">
            <FaTwitter size={14} />
          </div>
          <div className="icon">
            <FaInstagram size={14} />
          </div>
          <div className="icon">
            <FaLinkedin size={14} />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Newsletter;
