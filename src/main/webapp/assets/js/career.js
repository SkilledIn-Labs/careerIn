var subjects;

$(document).ready(function () {
  $('#second-form').toggle();
  $('#third-form').toggle();
  $('#fourth-form').toggle();
  
var fillData = {
    url: '/api/fillData',
    method: 'GET',
    timeout: 0,
    headers: {
      Accept: 'application/json',
    },
  };

  $.ajax(fillData).done(function (response) {
      var i=0;
    $.each(response, function (key, value) {
        if(response[i].qid=='q18'){
            $('#q18').append(
               $('<option></option>').attr('value', response[i].answers).text(response[i].answers)
              );
        }
        
        
        if(response[i].qid=='q19'){
            $('#q19').append(
        $('<option></option>').attr('value', response[i].answers).text(response[i].answers)
      );
        }
        if(response[i].qid=='q24'){
            $('#q24').append(
        $('<option></option>').attr('value', response[i].answers).text(response[i].answers)
      );
        }

        if(response[i].qid=='q25'){
            $('#q25').append(
        $('<option></option>').attr('value', response[i].answers).text(response[i].answers)
      );
        }
        if(response[i].qid=='q27'){
            $('#q27').append(
        $('<option></option>').attr('value', response[i].answers).text(response[i].answers)
      );
        }
        if(response[i].qid=='q30'){
            $('#q30').append(
        $('<option></option>').attr('value', response[i].answers).text(response[i].answers)
      );
        }
        i=i+1;

    });

    

  });


 
});

$('#next_2').click(function () {
  $('#first-form').toggle();
  $('#second-form').toggle();
});
$('#next_3').click(function () {
  $('#second-form').toggle();
  $('#third-form').toggle();

});
$('#next_4').click(function () {
  $('#third-form').toggle();
  $('#fourth-form').toggle();

});


$('#submit').click(function () {
    var predict = {
"url": "/api/predict",
"method": "POST",
"timeout": 0,
"headers": {
"Accept": "application/json",
"Content-Type": "application/json"
},
"data": JSON.stringify({
"q1": $('#q1').val(),
"q2": $('#q2').val(),
"q3": $('#q3').val(),
"q4": $('#q4').val(),
"q5": $('#q5').val(),
"q6": $('#q6').val(),
"q7": $('#q7').val(),
"q8": $('#q8').val(),
"q9": $('#q9').val(),
"q10": $('#q10').val(),
"q11": $('#q11').val(),
"q12": $('#q12').val(),
"q13": $('#q13').val(),
"q14": $('#q14').val(),
"q15": $('#q15').val(),
"q16": $('#q16').val(),
"q17": $('#q17').val(),
"q18": $('#q18').val(),
"q19": $('#q19').val(),
"q20": $('#q20').val(),
"q21": $('#q21').val(),
"q22": $('#q22').val(),
"q23": $('#q23').val(),
"q24": $('#q24').val(),
"q25": $('#q25').val(),
"q26": $('#q26').val(),
"q27": $('#q27').val(),
"q28": $('#q28').val(),
"q29": $('#q29').val(),
"q30": $('#q30').val(),
"q31": $('#q31').val(),
"q32": $('#q32').val(),
"q33": $('#q33').val(),
"q34": $('#q34').val(),
"q35": $('#q35').val(),
"q36": $('#q36').val(),
"q37": $('#q37').val(),
"q38": $('#q38').val(),
}),
};

$.ajax(predict).done(function (response) {
console.log(response);
window.location.href = "/thankyou.jsp";
});

});
