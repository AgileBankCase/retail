<!DOCTYPE html>
<html>
<head>
    <style>
        #navbar{
           list-style:none;
           background: #000000; 
           color:#ffffff;
           display:flex;
           justify-content: space-around;
        }

        #footer{
            list-style: none;
            padding : 50px 50px;
            display: flex;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color:#000000;
            color: white;
            justify-content: space-around;
        }.main-section{
	width: 460px;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
ul {
    list-style-type: none;
  padding : 20px 20px;
  margin: 0;
  width: 100%;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}
        
    </style>
</head>
<body bgcolor= #E6E6FA>
    <h1 align='center'><strong>AGILE BANK</strong></h1>
    <ul>
        <li><a href="#home">Hello User!!!</a></li>
        <li class="dropdown">
          <a href="javascript:void(0)" class="dropbtn">Customer Management</a>
          <div class="dropdown-content">
            <a href="#">Create Customer Screen</a>
            <a href="#">Update Customer Screen</a>
            <a href="#">Delete Customer Screen</a>
          </div>
          <li class="dropdown">
          <a href="javascript:void(0)" class="dropbtn">Account Management</a>
          <div class="dropdown-content">
            <a href="#">Create Account</a>
            <a href="#">Delete Account</a>
          </div>    
        </li>
        <li><a href="#home">Logout</a></li>
      </ul>
 
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<center><tr>
   <td><h1>Delete Account</h1></td>
</tr><center>
 
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<tr>
    <td align='center'>Customer Id</td>
    <td><input name='customer-id' pattern="[0-9]{9}"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'>Account Type</td>
    <td>
    <select>
        <option>Select</option>
        <option>Savings</option>
        <option>Current</option>
        </select><br/><br/>
        
    </td>
    
</tr>

<tr> <td>&nbsp;</td> </tr>
<table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
    <tr>
        <td align='center'><input type='submit' name='REGISTER' value="Delete Account"></td>
    </tr>
    </table>
    </table>
     
    </table>
    </div>
    </body>
    
    <footer>
        <ul id = "footer">
            <li>About Us
                <p>We are a well developing Bank containing a lots of schemes </p>
                <p>developed and helpful to the common people</p></li>
            <li>Services
                <p>dwhjdjhielnwkchlwk</p></li>
            <li>Contact us
                <p>Ms.M.Shafana Aasmi,CEO Agile bank,866766875 </p></li>
        </ul>
    </footer>
    </html>
