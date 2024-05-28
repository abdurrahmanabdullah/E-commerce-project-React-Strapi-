
import React, { useRef } from "react";
import emailjs from "@emailjs/browser";
import styled from "styled-components";

const Contact = ( ) => {
  const form = useRef();

  const sendEmail = (e) => {
    e.preventDefault();

    emailjs
      .sendForm(
        "service_2x6fyyv",
        "template_fa5b5xc",
        form.current,
        "RnB_nnBsWKrulOse-"
      )
      .then(
        (result) => {
          console.log(result.text);
          console.log("message sent");
        },
        (error) => {
          console.log(error.text);
        }
      );
  };

  return (
    <StyledContactForm>
      <form ref={form} onSubmit={sendEmail}>
      
        <label>Email</label>
        <input type="email" name="user_email" />
      
      </form>
    </StyledContactForm>
  );
};

export default Contact;

