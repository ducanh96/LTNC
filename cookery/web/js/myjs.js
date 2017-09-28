$(function(){
    debugger;
     var $from = $('#from');      // Cache the price input
    var $to = $("#to");
  var $range = $('#price-range');  // Cache the <div> for the price range
  $('#price-range').slider({       // Turn price-range input into a slider
    range: true,                   // If it is a range it gets two handles
    min: 0,                        // Minimum value
    max: 500000,                      // Maximum value
    step:1000,
    values: [50000, 200000],            // Values to use when the page loads 
    slide: function(event, ui) {   // When slider used update amount element
      $from.val(ui.values[0]); 
        $to.val(ui.values[1]);
    }
  });
  $from.val($range.slider('values', 0));     // A $ sign then lower range
$to.val($range.slider('values', 1)); // A $ sign then higher range

})