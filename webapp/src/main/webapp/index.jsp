<!DOCTYPE html>
<html>
<head>
  <title>Customers</title>
  <link href="site.css" rel="stylesheet">
</head>
<body>

<nav id="nav01"></nav>

<div id="main">
  <h1>Customers</h1>
  <div id="id01"></div>
  <footer id="foot01"></footer>
</div>

<script src="script.js"></script>

<script>
var xmlhttp = new XMLHttpRequest();
var url = "http://www.w3schools.com/website/customers.php";
xmlhttp.onreadystatechange=function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        myFunction(xmlhttp.responseText);
    }
}
xmlhttp.open("GET", url, true);
xmlhttp.send();

function myFunction(response) {
    var obj = JSON.parse(response);
    var arr = obj.records;
    var i;
    var out = "<table><tr><th>Name</th><th>City</th><th>Country</th></tr>";

    for(i = 0; i < arr.length; i++) {
        out += "<tr><td>" + 
        arr[i].Name +
        "</td><td>" +
        arr[i].City +
        "</td><td>" +
        arr[i].Country +
        "</td></tr>";
    }
    out += "</table>"
    document.getElementById("id01").innerHTML = out;
}
</script>

</body>
</html>
