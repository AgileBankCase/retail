<!DOCTYPE html>
<html>
<head>
</head>
<body bgcolor= #E6E6FA>
 
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<center><tr>
   <td><h1>Delete customer details</h1></td>
</tr><center>
 
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<tr>
    <td>Customer SSN Id</td>
    <td><span id="dcusssnID"></span></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td>Customer Id</td>
    <td><span id="dcusID"></span></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td>Customer Name</td>
    <td><span id="dcusname"></span></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td>Age</td>
    <td><span id="dage"></span></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td>Address line 1</td>
    <td><span id="daddress1"></span></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td>Address line 2</td>
    <td><span id="daddress2"></span></td>
</tr>

<tr> <td>&nbsp;</td> </tr>

<tr>
    <td><button onclick="javascript:deletecustomer(event)">Delete</button></td>

    <td><button onclick="javascript:cancelEvent(event)">Cancel</button></td>
</tr>
</table>
 
</table>
</div>
<script>
function deletecustomer(event) {
			event.preventDefault();
			if(confirm("Are you sure you want to delete?")){
			$.ajax({
				type : "delete",
				url : "/customer?" + "dcusid=" + $("#dcusID").html(),
				success : function(data) {
					var json = JSON.parse(data);
					alert(json["status"]);
					if (json["status"] == "Succesfully Deleted!") {
						document.location.reload();
					}
					
				}
			});
			}
		}
</script>
</body>

</html>