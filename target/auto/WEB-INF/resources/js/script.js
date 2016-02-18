jQuery.getJSON('data.json', function(data) {
  $("#autocomplete").autocomplete({
      source: data
  });
});
