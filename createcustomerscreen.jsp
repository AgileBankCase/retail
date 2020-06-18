<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <style>
    * {
      box-sizing: border-box;

    }

    body {
      margin: 0px;
      background-color:#EAF4FE;
    }

    .row-content {
      margin: 0px auto;
      padding: 20px 0px;
      border-bottom: 1px ridge;
      min-height: 400px;
    }

    .btn {
      background-color:#2b4a74;

    }

    h1 {
      margin-top: 10px;
    }

    h2{
        color:#FAC726;
    }

    label {
      padding-right: 20px;
    }

    .lastrow {
      background-color: #182a44;
      color: white !important;
    }

    .offset:before {
      display: block;
      content: "";
      height: 4rem;
      margin-top: -4rem;
    }
    .navbar{
      background-color: #2b4a74;
    }
    .navbar-dark .navbar-nav .nav-link.active,
.navbar-dark .navbar-nav .nav-link:hover{
  color: #F7C526;
}
.dropdown-item:hover{
  background-color: #f3db8c;
;
}
  </style>
</head>

<body>
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
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            Customer Management
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
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
  <h1 class="row justify-content-center">Create Customer Screen</h1>

  <div class="row row-content justify-content-center">
    <form>
      <div class="form-group row">
        <label for="custid" class="col-12 col-md-4">Customer SSN ID</label>
        <input type="text" class="col-12 col-md form-control align-items-center" placeholder="Enter Customer SSN ID"
          name="custid" id="custid" pattern="[0-9]{9}">
      </div>
      <div class="form-group row">
        <label for="custname" class="col-12 col-md-4">Customer Name</label>
        <input type="text" class="col-12 col-md form-control" placeholder="Enter Customer Name" name="custname"
          id="custname" pattern="[A-Za-z]+">
      </div>
      <div class="form-group row">
        <label for="age" class="col-12 col-md-4">Age</label>
        <input type="text" class="col-12 col-md form-control align-items-center" placeholder="Enter Age" id="age"
          name="age" min="1" max="3" pattern="[0-9]">
      </div>
      <div class="form-group row">
        <label for="addr1" class="col-12 col-md-4">Address 1</label>
        <input type="text" class="col-12 col-md form-control align-items-center" placeholder="Enter Address 1"
          id="addr1" name="addr1">
      </div>
      <div class="form-group row">
        <label for="addr2" class="col-12 col-md-4">Address 2</label>
        <input type="text" class="col-12 col-md form-control align-items-center" placeholder="Enter Address 2"
          id="addr2" name="addr2">
      </div>
      <div class="form-group row">
        <label for="city" class="col-12 col-md-4">City</label>
        <!-- <input type="dropdown" class="col-12 col-md-9 form-control align-items-center" placeholder="Enter email" id="email"> -->
        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonn"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Click to Select City
          </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonn">
            <a class="dropdown-item" href="#">Pune</a>
            <a class="dropdown-item" href="#">Mumbai</a>
            <a class="dropdown-item" href="#">Chennai</a>
            <a class="dropdown-item" href="#">Raigad</a>
            <a class="dropdown-item" href="#">Nagpur</a>
            <a class="dropdown-item" href="#">Nasik</a>
            <a class="dropdown-item" href="#">Nagar</a>
            <a class="dropdown-item" href="#">Kolhapur</a>
            <a class="dropdown-item" href="#">Solapur</a>

          </div>
        </div>
      </div>
      <div class="form-group row">
        <label for="state" class="col-12 col-md-4">State</label>
        <!-- <input type="email" class="col-12 col-md-9 form-control align-items-center" placeholder="Enter email" id="email"> -->
        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonn1"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Click to Select State
          </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonn1">
            <a class="dropdown-item" href="#">Arunachal Pradesh</a>
            <a class="dropdown-item" href="#">Assam</a>
            <a class="dropdown-item" href="#">Goa</a>
            <a class="dropdown-item" href="#">Manipur</a>
            <a class="dropdown-item" href="#">Maharashtra</a>
            <a class="dropdown-item" href="#">Karnataka</a>
            <a class="dropdown-item" href="#">Andhra Pradesh</a>
            <a class="dropdown-item" href="#">Telangana</a>
            <a class="dropdown-item" href="#">Tamil Nadu</a>
            <a class="dropdown-item" href="#">West Bengal</a>

          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </form>
  </div>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
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