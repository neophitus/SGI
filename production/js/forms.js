$(document).ready(function() {
    $(":input").inputmask();
    $('#pessoasTbl').DataTable({
        language: {
            url: '//cdn.datatables.net/plug-ins/1.10.11/i18n/Portuguese-Brasil.json'
        }
    });
    $('#homeTbl').DataTable({
        language: {
            url: '//cdn.datatables.net/plug-ins/1.10.11/i18n/Portuguese-Brasil.json'
        }
    });
});

function postForm(form, destino) {
    var datastring = $(form).serialize();
    $.ajax({
        type: "POST",
        url: destino,
        data: datastring,
        dataType: "json",
        success: function(data) {
            new PNotify({
                title: 'Sucesso!',
                text: 'O Registro foi adicionado com sucesso!',
                type: 'success',
                styling: 'bootstrap3'
            });
            $(form)[0].reset();
            window.scrollTo(0,0);
        },
        error: function(e) {
            new PNotify({
                title: 'Erro!',
                text: 'Aconteceu um erro!',
                type: 'error',
                styling: 'bootstrap3'
            });
        }
    });
}

function selectPessoa(pessoa) {
    var getBairros = "forms/getBairros.php?id=" + pessoa;
    var getName = "forms/getName.php?id=" + pessoa;
    
    $( "#getName" ).load(getName);
    $( "#getBairros" ).load(getBairros);
    
}


