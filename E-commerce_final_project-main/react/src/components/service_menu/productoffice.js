// import React, { useState, useEffect } from 'react';
// // import styles from './service.css';

// const ProductiveOffice = () => {
//   const [data, setData] = useState(null);

//   useEffect(() => {
//     const fetchData = async () => {
//       try {
//         const response = await fetch('http://localhost:1369/api/productive-office?populate=deep,10');
//         const jsonData = await response.json();
//         setData(jsonData.data.attributes);
//       } catch (error) {
//         console.error('Error fetching data:', error);
//       }
//     };

//     fetchData();
//   }, []);

//   if (!data) {
//     return <div>Loading...</div>;
//   }

//   return (
//     <div style={{ flex: 1, marginLeft: '70px', marginRight: '70px', marginTop: '100px' }}>
//       <div>
//         {/* Display the hero section */}
//         <h3>{data.hero.heading}</h3>
//         <p>{data.hero.subheading}</p>

//         {/* Display the "element" array */}
//         {data.element.map(item => (
//           <div key={item.id}>
//             <h3>{item.heading}</h3>
//             <ul style={{ listStyleType: 'none', padding: 0 }}> {/* Remove default list styles */}
//               {item.list.map(listItem => (
//                 <li key={listItem.id}>{listItem.item}</li>
//               ))}
//             </ul>
//           </div>
//         ))}

//         {/* Display the "blog" array */}
//         {data.blog.map((blogItem, index) => (
//           <div key={blogItem.id} className={`blog-item col-${index % 3 === 2 ? 'xs-12' : 'xs-4'}`}>
//             <div className="blog-content">
//               {index % 2 === 0 ? (
//                 <>
//                   {/* Column for text */}
//                   <div className="content-column">
//                     <h3>{blogItem.heading}</h3>
//                     <p>{blogItem.subheading}</p>
//                   </div>
//                   {/* Column for image */}
//                   <div style={{ marginRight: '150px' }}>
//                     {blogItem.image && (
//                       <img
//                         src={`http://localhost:1369${blogItem.image.data[0].attributes.url}`}
//                         alt={blogItem.image.data[0].attributes.alternativeText}
//                       />
//                     )}
//                   </div>
//                 </>
//               ) : (
//                 <>
//                   {/* Column for text */}
//                   <div className="content-column">
//                     <h3>{blogItem.heading}</h3>
//                     <p>{blogItem.subheading}</p>
//                   </div>
//                 </>
//               )}
//             </div>
//           </div>
//         ))}
//       </div>
//     </div>
//   );
// };

// export default ProductiveOffice;

import React, { useState, useEffect } from 'react';
// import styles from './service.css';

const ProductiveOffice = () => {
  const [data, setData] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('http://localhost:1369/api/productive-office?populate=deep,10');
        const jsonData = await response.json();
        setData(jsonData.data.attributes);
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();
  }, []);

  if (!data) {
    return <div>Loading...</div>;
  }

  return (
    <div style={{ flex: 1, marginLeft: '70px', marginRight: '70px', marginTop: '100px' }}>
      <div>
        {/* Display the hero section */}
        <h3>{data.hero.heading}</h3>
        <p>{data.hero.subheading}</p>

        {/* Display the "element" array */}
        {data.element.map(item => (
          <div key={item.id}>
            <h3>{item.heading}</h3>
            <ul style={{ listStyleType: 'none', padding: 0 }}> {/* Remove default list styles */}
              {item.list.map(listItem => (
                <li key={listItem.id}>{listItem.item}</li>
              ))}
            </ul>
          </div>
        ))}

      {/* Display the "blog" array */}
{/* Display the "blog" array */}
{data.blog.map((blogItem, index) => (
  <div key={blogItem.id} className={`blog-item col-${index % 3 === 2 ? 'xs-12' : 'xs-4'}`}>
    <div className="blog-content">
      <div style={{ display: 'flex', alignItems: 'center' }}>
        {index % 2 === 0 ? (
          <>
            <div style={{ marginRight: '20px' }}>
              {blogItem.image && (
                <img
                  src={`http://localhost:1369${blogItem.image.data[0].attributes.url}`}
                  alt={blogItem.image.data[0].attributes.alternativeText}
                  style={{ maxWidth: '100%', height: 'auto' }}
                />
              )}
            </div>
            <div style={{ flex: 1, marginLeft: '20px',textAlign:"justify"}}> {/* Added margin to create space */}
              <h3>{blogItem.heading}</h3>
              <p>{blogItem.subheading}</p>
            </div>
          </>
        ) : (
          <>
            <div style={{ flex: 1, paddingRight: '90px' }}> {/* Added margin to create space */}
              <h3>{blogItem.heading}</h3>
              <p>{blogItem.subheading}</p>
            </div>
            <div style={{ marginLeft: '20px' }}>
              {blogItem.image && (
                <img
                  src={`http://localhost:1369${blogItem.image.data[0].attributes.url}`}
                  alt={blogItem.image.data[0].attributes.alternativeText}
                  style={{ maxWidth: '100%', height: 'auto' }}
                />
              )}
            </div>
          </>
        )}
      </div>
    </div>
  </div>
))}


      </div>
    </div>
  );
};

export default ProductiveOffice;
