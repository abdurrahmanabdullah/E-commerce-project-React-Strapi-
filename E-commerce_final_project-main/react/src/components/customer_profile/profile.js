import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './profile.css'; 
import avatarImage from '../../assets/profile/profile.png';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'; 
import { faShoppingCart, faTrash, faSignOutAlt } from '@fortawesome/free-solid-svg-icons';
import { Button } from 'reactstrap';

let flag=true;
let a=true;
function OrderCard() {
  const navigate = useNavigate();

  const handleClick = () => {
    navigate('/profile/customerOrder');
  };

  return (
    <div className="order-card" onClick={handleClick}>
      <FontAwesomeIcon icon={faShoppingCart} />
      <p className="order-text" style={{ padding: "5px" }}> My Order</p>
    </div>
  );
}

function DeleteProfile({ userId, lastDeletionTime, setLastDeletionTime }) {
  const navigate = useNavigate();

  const handleClick = async () => {
    try {
    const response = await fetch(`http://localhost:1369/api/users/${userId}`, {
        method: 'DELETE',
        headers: {
          'Content-Type': 'application/json',
        },

        
      });

   if (response.ok) {
          flag=false;
        } else {
          console.error('Error deleting order:', await response.text());
          
        }
      setLastDeletionTime(Date.now()); // Update the last deletion time

      navigate('/register');
    } catch (error) {
      console.error('Error while deleting user profile:', error);
    }
  };

  return (
    <div className="order-card" onClick={handleClick}>
      <FontAwesomeIcon icon={faTrash} />
      <p className="order-text" style={{ paddingTop: "10px" }}> Delete Account</p>
    </div>
  );
}

function Logout() {
  const navigate = useNavigate();
    const [logoutMessage, setLogoutMessage] = useState('');

  const handleLogout = () => {
    a=false;
      setLogoutMessage('Logout successfully');
       // Set a timeout to navigate to the login page after 2 seconds
    setTimeout(() => {
      navigate('/login');
    }, 2000);
  };
    
  

  return (
    <div className="order-card">
      <FontAwesomeIcon icon={faSignOutAlt} />
      <p className="order-text" style={{ padding: "5px" }} onClick={handleLogout}>Logout</p>
      {logoutMessage && (
   <div className="logout-message">
    {logoutMessage}
  </div>
)}
    </div>
  );
}

// Define the Profile component if it's not already defined
function Profile({ userData }) {
  return (
    <div className="profile">
      <img src={avatarImage} alt="Profile Avatar" />
      <div className="profile-info">
        <p>Hello,</p>
        <p>{userData.username}</p>
      </div>
    </div>
  );
}

function App() {
  const [userData, setUserData] = useState(null);
  const [lastDeletionTime, setLastDeletionTime] = useState(0);
  const [lastDeletionId, setLastDeletionId] = useState(null); // Track the last deleted user ID

  useEffect(() => {
    const fetchData = async () => {
      if(flag===true && a===true)
      try {
        const response = await fetch('http://localhost:1369/api/users');
        const data = await response.json();


        const sortedData = data.sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt));

        // If the last deletion ID matches the current user's ID, set the next user as current
        if (lastDeletionId && sortedData[0] && sortedData[0].id === parseInt(lastDeletionId)) {
          setUserData(sortedData[1] || null); // Set the next user or null if there's no next user
        } else {
          setUserData(sortedData[0]); // Set the first user
        }
      } catch (error) {
        console.error('Error fetching user data:', error);
      }
    };

    fetchData();
  }, [lastDeletionId]); 


  return (
    <div className="app">
      {userData && (
        <>
          <Profile userData={userData} />
          <div className="profile_card">
            <OrderCard />
            <DeleteProfile userId={userData.id} lastDeletionTime={lastDeletionTime} setLastDeletionTime={setLastDeletionTime} />
            <Logout />
          </div>
        </>
      )}
    </div>
  );
}

export default App;







