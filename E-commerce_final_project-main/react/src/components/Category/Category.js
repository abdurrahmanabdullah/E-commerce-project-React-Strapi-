// import { useParams } from "react-router-dom"
// import "./Category.scss";
// import products from "../products/products"
// import useFetch from "../../hooks/useFetch";

// const Category = () => {
//     const {id} = useParams();

//     const {data} = useFetch(`/api/products?populate=*&[filters][categories][id]=${id}`);

//     return (<div className="category-main-content">
//         <div className="layout">
//             <div className="category-title">{data?.data?.[0]?.attributes?.categories?.data?.[0].attributes?.title}</div>
//             <products innerPage={true} products={data}/>
//         </div>
//         </div>);
// };

// export default Category;

///---------

import { useParams } from "react-router-dom";
import "./Category.scss";
import Products from "../Products/Products";
import useFetch from "../../hooks/useFetch";

const Category = () => {
  const { id } = useParams();

  const { data } = useFetch(
    `/api/products?populate=*&[filters][categories][id]=${id}`
  );

  return (
    <div className="category-main-content">
      <div className="layout">
        <div className="category-title">
          {data?.data?.[0]?.attributes?.categories?.data?.[0].attributes?.title}
        </div>
        <Products innerPage={true} Products={data} />
      </div>
    </div>
  );
};

export default Category;

///////////////---
// import { useParams } from "react-router-dom";
// import "./Category.scss";
// import products from "../products/products";
// import useFetch from "../../hooks/useFetch";

// const Category = () => {
//     const { id } = useParams();

//     const { data } = useFetch(`http://localhost:1369/api/products?populate=*&[filters][categories][id]=${id}`);

//     // Check if 'data' is defined before accessing 'url' property
//     const categoryTitle = data && data.data && data.data[0] && data.data[0].attributes && data.data[0].attributes.categories && data.data[0].attributes.categories.data && data.data[0].attributes.categories.data[0] && data.data[0].attributes.categories.data[0].attributes && data.data[0].attributes.categories.data[0].attributes.title;

//     return (
//         <div className="category-main-content">
//             <div className="layout">
//                 {/* Render category title if it exists */}
//                 {categoryTitle && <div className="category-title">{categoryTitle}</div>}
//                 <products innerPage={true} products={data} />
//             </div>
//         </div>
//     );
// };

// export default Category;
