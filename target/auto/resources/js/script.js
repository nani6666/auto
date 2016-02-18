
jQuery.getJSON('http://localhost:8080/auto/resources/json/data.json', function(data) {
  $("#autocomplete").autocomplete({
      source: data
  });
});
