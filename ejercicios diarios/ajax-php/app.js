$(function(){
    console.log('jQuery is working');
    $('#search').keyup(function(){
        let search = $('#search').val();
        $.ajax({
            url: 'task-search.php',
            type: 'POST',
            data: {search},
            success: function(response){
                let task = JSON.parse(response);
            }
        })
    });
})