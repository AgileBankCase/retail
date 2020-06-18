<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="navbar.css">
</head>
<body bgcolor=#E6E6FA>
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
	<jsp:include page="header.jsp" />
	<div class="mainpage">
		<div id="searchcustomer">
			<form id="search">
				<table border='0' width='480px' cellpadding='0' cellspacing='0'
					align='center'>
					<tr>

						<td align='center'>Customer SSN Id</td>
						<td><input name='ssn-id' pattern="[0-9]{9}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align='center'><p>OR</p></td>
					</tr>

					<tr>
						<td align='center'>Customer Id</td>
						<td><input name='cid' pattern="[0-9]{9}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
						<tr>
							<td align='center'><button
									onclick="javascript:getCustomer(event);">Submit</button></td>
						</tr>
					</table>
				</table>
			</form>
		</div>
		<div id="updatecustomer" class="hide">
			<jsp:include page="updatecustomerscreen.jsp" />
		</div>
	</div>
	<script>
		function getJsonFromUrl(url) {
			if (!url)
				url = location.search;
			var query = url.substr(1);
			var result = {};
			query.split("&").forEach(function(part) {
				var item = part.split("=");
				result[item[0]] = decodeURIComponent(item[1]);
			});
			return result;
		}
		function getCustomer(event) {
			event.preventDefault();
			var url = window.location.href;
			var result = getJsonFromUrl(url);
			var action = result["action"];
			$.ajax({
				method : "get",
				url : "/customersearch",
				data : $('#search').serialize() + "&action=" + action,
				success : function(data) {
					var json = JSON.parse(data);
					var userDetails = json["User_Details"];
					userDetails.forEach(user => {
						$("#cusssnID").html(user["Customer SSN ID"]);
						$("#cusID").html(user["Customer ID"]);
						$("#cusname").html(user["Name"]);
						$("#age").html(user["Age"]);
						$("#address1").html(user["Address Line 1"]);
						$("#address2").html(user["Address Line 2"]);
						$("#updatecustomer").attr("class","");
						$("#searchcustomer").attr("class","hide");	
					});
				}
			});
		}
	</script>
	<jsp:include page="footer.jsp" />
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