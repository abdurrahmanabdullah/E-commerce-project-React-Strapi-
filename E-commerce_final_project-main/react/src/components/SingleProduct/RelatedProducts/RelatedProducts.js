import React from "react"; 
import useFetch from "../../../hooks/useFetch";
import { Link } from "react-router-dom";
import "./Relatedproduct.css";
const Relatedproducts = ({ productId }) => {
  const { data } = useFetch(
    `/api/products/${productId}?populate=*`
  );
  const { data: data2 } = useFetch(
   
    `/api/products/${productId}?populate=deep,10`
  );
  let len = data?.data?.attributes?.categories?.data?.length;
  console.log(len, "data2............");
  return (
    <div
      className="related-productss"
      style={{
        display: "flex",

        marginBottom: len > 1 ? "5%" : "0",
        paddingInline: "10%",
      }}
    >
   
      {data2 &&
        data2.data &&
        data2.data.attributes &&
        data2.data.attributes.categories &&
        data2.data.attributes.categories.data.map((category, i) => {
          const title = category.attributes.title;
          const id = category.id;
       
          return (
            // <div className="container" style={{marginLeft:"25%",marginTop:"10%"}}>
            <div className="container">
              {data?.data?.attributes?.title !== title ? (
                <div className="product-item " key={id}>
                  <Link
                    key={id}
                    to={`/product/${id}`} // Specify the URL of the destination page
                  >
                    <img
                      key={id}
                      src={
                        process.env.REACT_APP_DEV_URL +
                        category.attributes.img.data[0].attributes.url
                      }
                      alt={title}
                    />
                  </Link>
                  <h3 style={{ textAlign: "center", marginTop: "10%" }}>
                    {title}
                  </h3>
                </div>
              ) : null}
            </div>
          );
        })}
    </div>
  );
};

export default Relatedproducts;

