$(function () {
    console.log('jQuery is working');
    $('#search').keyup(function (e) {
        if ($('#search').val()){

            let search = $('#search').val();
            $.ajax({
                url: 'task-search.php',
                type: 'POST',
                data: { search },
                success: function (response) {
                    let tasks = JSON.parse(response);
                    let template = '';
                    
                    tasks.forEach(task=>{
                        template += `
                        <li>
                        ${task.placa}
                        ${task.id_registro}
                        ${task.fecha}
                        </li>
                        `
                    })
                    $('#container').html(template);
                }
            })
        }
    });
})