<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
#navbar {
	list-style: none;
	background: #000000;
	color: #ffffff;
	display: flex;
	justify-content: space-around;
}

#footer {
	list-style: none;
	padding: 50px 50px;
	display: flex;
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: #000000;
	color: white;
	justify-content: space-around;
}

.main-section {
	width: 460px;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
</style>
</head>
<body bgcolor=#E6E6FA>
	<jsp:include page="header.jsp" />

	<div>
		<p id="msg"></p>
	</div>
	<form>
		<table border='0' width='480px' cellpadding='0' cellspacing='0'
			align='center'>
			<center>
				<tr>
					<td><h1>Create Customer Screen</h1></td>
				</tr>
				<center>

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
							<td align='center'>Customer Name</td>
							<td><input type='text' name='cname' pattern="[A-Za-z]+"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>Age</td>
							<td><input name='age' min="1" max="3" pattern="[0-9]"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>Address1</td>
							<td><input name='addline1'></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>Address2</td>
							<td><input name='addline2'></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>City</td>
							<td><select name="city">
									<option>Select</option>
									<option>Pune</option>
									<option>Chennai</option>
									<option>Mumbai</option>
									<option>Raigad</option>
									<option>Nagpur</option>
									<option>Nasik</option>
									<option>Raigad</option>
									<option>Nagar</option>
									<option>Kolhapur</option>
									<option>Solapur</option>
							</select><br />
							<br /></td>

						</tr>

						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>State</td>
							<td><select name="state">
									<option>Select</option>
									<option>Arunachal Pradesh</option>
									<option>Assam</option>
									<option>Goa</option>
									<option>Manipur</option>
									<option>Maharashtra</option>
									<option>Karnataka</option>
									<option>Andhra Pradesh</option>
									<option>Telungana</option>
									<option>Tamil Nadu</option>
									<option>West Bengal</option>
							</select><br />
							<br /></td>

						</tr>

						<table border='0' cellpadding='0' cellspacing='0' width='480px'
							align='center'>
							<tr>
								<td align='center'><button onclick="register(event)">Submit</button></td>
							</tr>
						</table>
					</table>
		</table>
	</form>
</body>
<script>
	function updateCustomer() {
		window.location.href = "/customersearch.jsp?action=update";

	}
	function register(event) {
		event.preventDefault();
		$.ajax({
			method : "post",
			url : "/customer",
			data : $('form').serialize(),
			success : function(data) {
				var json = JSON.parse(data);
				alert(json["status"]);
				if (json["status"] == "Succesfully Registered!") {
					document.location.reload();
				}
			}
		});

	}
</script>

</html>