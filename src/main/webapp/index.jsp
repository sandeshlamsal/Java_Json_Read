<html>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script>
function show(){
	var msg="";
	if(document.frm.name.value==""){
		alert("Enter Name");
	}
	else
	//document.1.hidden=true;
	{
	alert('hi');
	//docuement.frm.1.hidden=true;
	//frm.1.style.visibility='hidden'; 
	document.getElementById('1').style.display = "none";
	var msg='';
	var restaurants = 
		  [
		    {"restaurant" : { "name" : "McDonald's", "food" : "burger" }},
		    {"restaurant" : { "name" : "KFC",        "food" : "chicken" }},
		    {"restaurant" : { "name" : "Pizza Hut",  "food" : "pizza" }},
		    {"restaurant" :	{"name"	 : "Wawa",       "food" :"chicken"}}
		  ];

	for(var i = 0; i < restaurants.length; i++)
	{
	  if(restaurants[i].restaurant.food == 'chicken')
	  {
	    alert (restaurants[i].restaurant.name);
	    msg=msg+restaurants[i].restaurant.name;
	  }
	}
	alert(msg);
	return;
	}
}

function calljson(){
//get a reference to the select element
var $select = $('#people');</code>

//request the JSON data and parse into the select element
$.getJSON('person.json', function(data){

  //clear the current content of the select
  $select.html('');

  //iterate over the data and append a select option
  $.each(data.person, function(key, val){ 
    $select.append('<option id="' + val.id + '">' + val.name + '</option>');
  })
});

}
</script>

<body onload="calljson()">

<h2>Hello World!</h2>
<form name="frm">
<div id="1">SHOW UP</div>

Input Name: <input type="text" name="name" size=10>
<input type="button" onclick="show()">
</form>
<select id="people"></select>
</body>
</html>
