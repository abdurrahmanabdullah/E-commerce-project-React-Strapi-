import React from 'react';

import "./cart.scss";

const Card = ({ title, subtitle, subhead }) => (
  <div className="home-card-container"> {/* Container for the card */}
    <div className="home-card"> {/* apply the .card class */}
      <h2>{title}</h2>
      <p>{subtitle}</p>
      <p>{subhead}</p>
     
    </div>
  </div>
);

export default Card;
