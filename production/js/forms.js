$(document).ready(function() {
    $('#wizard').smartWizard({
        contentURL:'forms/pessoas.php',
        contentCache:false,
        enableAllSteps: false,
        labelNext:'Próximo', 
        labelPrevious:'Anterior',
        labelFinish:'Finalizar'
    });

    $('.buttonNext').addClass('btn btn-success');
    $(".buttonPrevious").hide();
    $('.buttonFinish').addClass('btn btn-default');

    function leaveStep(obj, context){
        $('#wizard').smartWizard('enableStep', context.toStep);
        $('#wizard').smartWizard('goToStep', context.toStep);
    }

});


