import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./components/Destination-page/home";
import Header from "./components/Header/Header";
import Footer from "./components/Footer/Footer";
import Product from "./components/product_Home/product_Home";
import Category from "./components/Category/Category";
import SingleProduct from "./components/SingleProduct/SingleProduct";
import AppContext from "./utils/context";
import About from "./components/About/About";
import Contact from "./components/Contact/Contact";
import Services from "./components/Services/service";
import Register from "./components/Authentication/Registration/Registration";
import CustomerInformationForm from "./components/Cart/checkout/checkout";
import ConfirmOrder from "./components/Cart/checkout/confirmOrder";
import LucentChartComponent from "./components/product_menu/lucent_chart_page/lucentChart";
import NursecallComponent from "./components/product_menu/nursecall_page/nurseCall";
import QBOT from "./components/product_menu/qbot_page/Qbot";
import QAD from "./components/product_menu/qad_page/qad";
import IpTelephoneServiceSolution from "./components/service_menu/IpTelephoneService";
import ProductiveOffice from "./components/service_menu/productoffice";
import EmailMigration from "./components/service_menu/emailmigrationmanagement";
import Login from "./components/Authentication/Login/login";
import Profile from "./components/customer_profile/profile";

import CustomerOrder from "./components/customer_profile/customer_order/customer_order";
// payment

import Error from "./payment/Error";
import Success from "./payment/Success";

function App() {
  return (
    <BrowserRouter>
      <AppContext>
        <Header />

        {/* <CustomNavbar /> */}

        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/home" element={<Home />} />
          <Route path="/product" element={<Product />} />

          <Route path="/about" element={<About />} />

          <Route path="/contact" element={<Contact />} />

          <Route path="/service" element={<Services />} />

          
          <Route path="/profile" element={<Profile />} />
            <Route path="/profile/customerOrder" element={<CustomerOrder />} />
          {/* //product menu------------------------ */}

          {/* <Route path="/product/:submenu" element={<Product />} /> */}

          <Route path="/lucentchart" element={<LucentChartComponent />} />
          <Route path="/nursecalling" element={<NursecallComponent />} />
          <Route path="/qbot" element={<QBOT />} />
          <Route path="/qad" element={<QAD />} />

          {/* //service menu------------------------ */}
          <Route
            path="/IpTelephoneService&Solution"
            element={<IpTelephoneServiceSolution />}
          />
          <Route path="/ProductiveOffice" element={<ProductiveOffice />} />

          <Route
            path="/E-MailMigrationandManagement"
            element={<EmailMigration />}
          />
          {/* //authentication---------------------- */}

          <Route path="/register" element={<Register />} />
          <Route path="/login" element={<Login />} />

          <Route path="/category/:id" element={<Category />} />
          <Route path="/product/:id" element={<SingleProduct />} />

          {/*   checkout */}

          <Route
            path="/customerinformation"
            element={<CustomerInformationForm />}
          />

          {/* //confirm order */}

          <Route path="/confirmorder" element={<ConfirmOrder />} />

          {/* payment */}

          <Route path="/" element={<Home />} />
          <Route path="/error?" element={<Error />} />
          <Route path="/success" element={<Success />} />
        </Routes>
        {/* <Newsletter/> */}
        <Footer />
      </AppContext>
    </BrowserRouter>
  );
}

export default App;
