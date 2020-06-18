<!DOCTYPE html>
<html>
<head>
</head>
<body bgcolor=#E6E6FA>

	<table border='0' width='480px' cellpadding='0' cellspacing='0'
		align='center'>
		<center>
			<tr>
				<td><h1>Update Customer Screen</h1></td>
			</tr>
			<center>
				<form id="updateForm">
					<table border='0' width='480px' cellpadding='0' cellspacing='0'
						align='center'>
						<tr>
							<td align='center'>Customer SSN Id</td>
							<td><span id="cusssnID"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>Customer Id</td>
							<td><span id="cusID"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>Old Customer Name</td>
							<td><span id="cusname"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>New Customer Name</td>
							<td><input type='text' name="ncname" ></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>Old Age</td>
							<td><span id="age"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>New Age</td>
							<td><input name='nage' min="1" max="110" ></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>Old Address1</td>
							<td><span id="address1"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>New Address1</td>
							<td><input name='naddress1'></td>
						</tr>
						<tr>
							<td align='center'>Old Address2</td>
							<td><span id="address2"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center'>New Address2</td>
							<td><input name='naddress2'></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>


						<table border='0' cellpadding='0' cellspacing='0' width='480px'
							align='center'>
							<tr>
								<td align='center'><button onclick="javascript:updatecustomer(event)">Update</button></td>
								<td><button onclick="javascript:cancelEvent()">Cancel</button></td>
							</tr>
						</table>
					</table>
	</table>
	</form>
	<script>
		function updatecustomer(event) {
			event.preventDefault();
			$.ajax({
				type : "put",
				url : "/customer?" + $('#updateForm').serialize() + "&cusid=" + $("#cusID").html(),
				success : function(data) {
					var json = JSON.parse(data);
					alert(json["status"]);
					if (json["status"] == "Succesfully Updated!") {
						document.location.reload();
					}
				}
			});
		}
	</script>
</body>
</html>