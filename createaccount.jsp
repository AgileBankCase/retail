<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="navbar.css">

    <style>
        .main-section{
	width: 460px;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

</style>
</head>
<body bgcolor= #E6E6FA>
  <nav class="navbar navbar-expand-md navbar-dark">
		<a class="navbar-brand" href="#">AGILE BANK</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
		  aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
		  <ul class="navbar-nav">
			<li class="nav-item">
			  <a class="nav-link" href="#">Hello User!!!</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link" href="#">Customer Search</a>
			</li>
			<li class="nav-item dropdown">
			  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink3" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
				Customer Management
			  </a>
			  <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink3">
				<a class="dropdown-item" href="#">Create Customer Screen</a>
				<a class="dropdown-item" href="#">Update Customer Screen</a>
				<a class="dropdown-item" href="#">Delete Customer Screen</a>
	
			  </div>
			</li>

			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink3" data-toggle="dropdown"
				  aria-haspopup="true" aria-expanded="false">
				  Account Management
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink3">
				  <a class="dropdown-item" href="#">Create Account</a>
				  <a class="dropdown-item" href="#">Delete Account</a>
				</div>
			  </li>
			  
			
			<li class="nav-item">
			  <a class="nav-link" href="#">Logout</a>
			</li>
		  </ul>
		</div>
    </nav>
<br>    
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<center><tr>
   <td><h1>   Create Account</h1></td>
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
<tr>
    <td align='center'>Deposit Amount</td>
    <td><input name='damount' pattern="[0-9]{9}"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
    <tr>
        <td align='center'><input type='submit' name='REGISTER' value="Submit"></td>
    </tr>
    </table>
    </table>
     
    </table>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </body>

    <br> <br> <br> <br> <br> 
     
    <div class="row lastrow text-center offset">
      <div class="col-12 col-md">
        <h2>About Us</h2>
        <p>Agile Bank was found on 14th June,2020 with the objective of providing detailed services based on retail
          banking and operations.The Retail Internet Banking of Agile Bank offers a clechothora of products and services
          to cateract with customers by providing certain animus services with an easy volving offers and ways to do the
          required job without hurdling the process. </p>
      </div>
      <div class="col-12 col-md">
        <h2>Services</h2>
        <p>Retail and Consumer Banking</p>
        <p>Personal Internet Banking</p>
        <P>Corporate Internet Banking</p>
        <p>Debit and Credit Cards</p>
      </div>
      <div class="col-12 col-md">
        <h2>Contact Us</h2>
        <p>Email Address : customer.service@agile.com</p>
        <p>Contact us : 9876787546</p>
        <p>Address:No-2.Golden Apartments,Ice Glove Colony,Belgium.</p>
      </div>
    </div>
    </html>
