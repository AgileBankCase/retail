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
        }
        .main-section{
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