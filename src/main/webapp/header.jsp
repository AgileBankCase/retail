<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
ul {
    list-style-type: none;
  padding : 1px 20px;
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

.hide{
  display:none;
}

.mainpage {
	margin-top: 2%;
	left: 50%;
	min-height: 70%;
}

.header{
  margin-top:0%;
  min-height: 20%;
  width: 100%;
}


</style>
</head>
<body>
<div class="header">
<h1 align='center'>
	<strong>AGILE BANK</strong>
</h1>
<ul>
        <li><a href="#home">Hello ${uname}!!!</a></li>
        <li class="dropdown">
          <a href="javascript:void(0)" class="dropbtn">Customer Management</a>
          <div class="dropdown-content">
            <a href="/createcustomerscreen.jsp">Create Customer Screen</a>
            <a href="/customersearch.jsp?action=update">Update Customer Screen</a>
            <a href="/customersearch.jsp?action=delete">Delete Customer Screen</a>
          </div>
          <li class="dropdown">
          <a href="javascript:void(0)" class="dropbtn">Account Management</a>
          <div class="dropdown-content">
            <a href="#">Create Account</a>
            <a href="#">Delete Account</a>
          </div>    
        </li>
        <li><a onclick="confirmLogout()" >Logout</a></li>
      </ul>
<!--  <ul>
	<li><a href="#home">Hello ${uname} !</a></li>

	<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Account
			Details</a>
		<div class="dropdown-content">
			<a href="#">Customer Search</a> <a href="#"> Account Serch</a>
		</div></li>
	<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Account
			Operations</a>
		<div class="dropdown-content">
			<a href="#">Withdraw Money</a> <a href="#">Deposit Money</a> <a
				href="#">Transfer Money</a>
		</div></li>
	<li><a href="#home">Account Statements</a></li>
	<li><a onclick="confirmLogout()" >Logout</a></li>
</ul>-->
</div>
<script>
function confirmLogout(){
	 if(confirm("Are you sure you want to log out?")){
		 document.location.href="/logout";	
	 }
}
</script>
</body>
</html>
