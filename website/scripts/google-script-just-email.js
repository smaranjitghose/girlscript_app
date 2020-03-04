var $form = $('form#test-form'),
    url = 'https://script.google.com/macros/s/AKfycbyjmbFKFWrskueIh5GG7VAFRL6_6rEwRS8J4t3JG9ZrwQmBHMp-/exec'

$('#submit-form').on('click', function(e) {
  e.preventDefault();
  var jqxhr = $.ajax({
    url: url,
    method: "GET",
    dataType: "json",
    data: $form.serializeObject()
  }).success(
    // do something
  );
})