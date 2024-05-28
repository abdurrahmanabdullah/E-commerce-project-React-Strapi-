// import React from 'react'
// import axios from 'axios'

// const BkashPage = () => {

//     const pay = async () => {
//         try {
//             const { data } = await axios.post('http://localhost:5000/api/bkash/payment/create', { amount: 50, orderId: 1 }, { withCredentials: true })
//             window.location.href = data.bkashURL
//         } catch (error) {
//             console.log(error.response.data)
//         }
//     }
//     return (
//         <div>
//             <button onClick={pay}>Pay bkash</button>
//         </div>
//     )
// }

// export default BkashPage

import React from 'react';
import axios from 'axios';

const BkashPage = ({ totalPayment }) => {
    const pay = async () => {
        try {
            const response = await axios.post('http://localhost:5000/api/bkash/payment/create', { amount: totalPayment, orderId: 1 }, { withCredentials: true });
            
            if (response && response.data && response.data.bkashURL) {
                window.location.href = response.data.bkashURL;
            } else {
                console.error('Unexpected response format:', response);
            }
        } catch (error) {
            console.error('Error occurred while making the request:', error);
            if (error.response && error.response.data) {
                console.error('Server error message:', error.response.data);
            }
        }
    };

    return (
        <div>
            <button   onClick={pay}>Pay Now</button>
        </div>
    );
};

export default BkashPage;
