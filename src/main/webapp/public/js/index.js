/**
 * 
 */
var subjects;

$(document).ready(function() {
	$('#second-form').toggle();
	$('#third-form').toggle();
	$('#fourth-form').toggle();

	var sessionValue = $('#hdnSession').data('value');
	console.log(sessionValue);
	var fillData = {
		url: '/api/fillData',
		method: 'GET',
		timeout: 0,
		headers: {
			Accept: 'application/json',
		},
	};

	$.ajax(fillData).done(function(response) {
		var i = 0;
		$.each(response, function(key, value) {
			if (response[i].qid == 'q18') {
				$('#q18').append(
					$('<option></option>')
						.attr('value', response[i].answers)
						.text(response[i].answers)
				);
			}

			if (response[i].qid == 'q19') {
				$('#q19').append(
					$('<option></option>')
						.attr('value', response[i].answers)
						.text(response[i].answers)
				);
			}
			if (response[i].qid == 'q24') {
				$('#q24').append(
					$('<option></option>')
						.attr('value', response[i].answers)
						.text(response[i].answers)
				);
			}

			if (response[i].qid == 'q25') {
				$('#q25').append(
					$('<option></option>')
						.attr('value', response[i].answers)
						.text(response[i].answers)
				);
			}
			if (response[i].qid == 'q27') {
				$('#q27').append(
					$('<option></option>')
						.attr('value', response[i].answers)
						.text(response[i].answers)
				);
			}
			if (response[i].qid == 'q30') {
				$('#q30').append(
					$('<option></option>')
						.attr('value', response[i].answers)
						.text(response[i].answers)
				);
			}
			i = i + 1;
		});
	});
});


$(".tab-wizard").steps({
	headerTag: "h6"
	, bodyTag: "section"
	, transitionEffect: "none"
	, titleTemplate: '<span class="step">#index#</span> #title#'
	, labels: {
		finish: "Submit"
	}
	, onFinished: function(event, currentIndex) {
		swal("Your Order Submitted!", "Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor.");

	}
});


var form = $(".validation-wizard").show();

$(".validation-wizard").steps({
	headerTag: "h6"
	, bodyTag: "section"
	, transitionEffect: "none"
	, titleTemplate: '<span class="step">#index#</span> #title#'
	, labels: {
		finish: "Submit"
	}
	, onStepChanging: function(event, currentIndex, newIndex) {
		return currentIndex > newIndex || !(3 === newIndex && Number($("#age-2").val()) < 18) && (currentIndex < newIndex && (form.find(".body:eq(" + newIndex + ") label.error").remove(), form.find(".body:eq(" + newIndex + ") .error").removeClass("error")), form.validate().settings.ignore = ":disabled,:hidden", form.valid())
	}
	, onFinishing: function(event, currentIndex) {
		return form.validate().settings.ignore = ":disabled", form.valid()
	}
	, onFinished: function(event, currentIndex) {
		var value_31 = $("#q31").val();
		if(value_31==='Work'){
			value_31='work';
		}
		var predict = {
			url: '/api/predict',
			method: 'POST',
			timeout: 0,
			headers: {
				Accept: 'application/json',
				'Content-Type': 'application/json',
			},
			data: JSON.stringify({
				q1: $('#q1').val(),
				q2: $('#q2').val(),
				q3: $('#q3').val(),
				q4: $('#q4').val(),
				q5: $('#q5').val(),
				q6: $('#q6').val(),
				q7: $('#q7').val(),
				q8: $('#q8').val(),
				q9: $('#q9').val(),
				q10: $('#q10').val(),
				q11: $('#q11').val(),
				q12: $('#q12').val(),
				q13: $('#q13').val(),
				q14: $('#q14').val(),
				q15: $('#q15').val(),
				q16: $('#q16').val(),
				q17: $('#q17').val(),
				q18: $('#q18').val(),
				q19: $('#q19').val(),
				q20: $('#q20').val(),
				q21: $('#q21').val(),
				q22: $('#q22').val(),
				q23: $('#q23').val(),
				q24: $('#q24').val(),
				q25: $('#q25').val(),
				q26: $('#q26').val(),
				q27: $('#q27').val(),
				q28: $('#q28').val(),
				q29: $('#q29').val(),
				q30: $('#q30').val(),
				q31: $('#q31').val(),
				q32: $('#q32').val(),
				q33: $('#q33').val(),
				q34: $('#q34').val(),
				q35: value_31,
				q36: $('#q36').val(),
				q37: $('#q37').val(),
				q38: $('#q38').val(),
			}),
		};

		$.ajax(predict)
			.done(function(response) {
				console.log(response);
				window.location.href = '/dashboard';
			})
			.fail(function(jqXHR, textStatus) {
				alert('Try again champ! ' + textStatus);
				window.location.reload();
			});
		setTimeout(function() {
        swal({
            title: "Wow!",
            text: "Go To Dashboard to see the Result!",
            type: "success"
        }, function() {
            window.location = "/dashboard";
        });
    }, 1000);
	}
}), $(".validation-wizard").validate({
	ignore: "input[type=hidden]"
	, errorClass: "text-danger"
	, successClass: "text-success"
	, highlight: function(element, errorClass) {
		$(element).removeClass(errorClass)
	}
	, unhighlight: function(element, errorClass) {
		$(element).removeClass(errorClass)
	}
	, errorPlacement: function(error, element) {
		error.insertAfter(element)
	}
	, rules: {
		email: {
			email: !0
		}
	}
})