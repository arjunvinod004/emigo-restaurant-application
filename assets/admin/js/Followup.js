
 var base_url = 'http://localhost/emigo-restaurant-application/';
    //  var base_url = 'https://qr-experts.com/emigo-restaurant-application/';
    $(document).on('click', '.emigo-close-btn , .reload-close-btn, .emigo-btn', function () {
        location.reload();
    });

//MARK: - Add Followup 
$('#add_followup').click(function (e) {
    let formData = new FormData($('#add-new-followup')[0]);
    let storeId = $('#store_id').val();
    formData.append('store_id', storeId);
    $.ajax({
       url: base_url + 'admin/Followup/add',
            type: 'POST',
            data: formData,
            dataType: 'json',
            processData: false,
            contentType: false,  
                success: function (response) {
                if (response.success === 'success') {
                    setTimeout(function () {
                        $('#add-followup').modal('hide');
                        $('#successModal .modal-body').text('Followup saved successfully');
                        $('#successModal').modal('show');
                        $('#add-new-followup')[0].reset();
                        $('#followup_user_error').html('')
                        $('#followup_date_error').html('')
                        $('#followup_remarks_error').html('')
                        setTimeout(function () {
                            $('#successModal').modal('hide');
                            location.reload();
                        }, 1000);
                    }, 1000);
                } else {
                       $('#followup_user_error').html('')
                       $('#followup_date_error').html('')
                       $('#followup_remarks_error').html('')
                        // Handle field-specific validation errors
                        if (response.errors.followup_user) {
                            $('#followup_user_error').html(response.errors.followup_user);
                        }
                        
                        if (response.errors.followup_date) {
                            $('#followup_date_error').html(response.errors.followup_date);
                        } 
                        
                        if (response.errors.followup_remarks) {
                            $('#followup_remarks_error').html(response.errors.followup_remarks);
                        }
                       

                }
            },
            error: function (xhr, status, error) {
                // Handle error
                alert('An error occurred while submitting the form.');
            }
    })
})


// MARK: - Edit Followup

$(".edit_followup").click(function (e) 
{
        var id = $(this).attr('data-id');
        $('#hidden_followup_id').val(id);
        $.ajax({
            url: base_url + 'admin/Followup/edit',
            type: 'POST',
            data: { 'id': id },
            dataType: 'json',
            success: function (response) {
                console.log(response.data);
                if (response.success === 'success') {
                    $('#followup_edit_user').val(response.data.entered_user);
                    $('#followup_edit_date').val(response.data.date_and_time);
                    $('#followup_edit_remarks').val(response.data.remark);
                    $('#edit-followup').modal('show');
                }
                else {
                    alert('Followup data not found!');
                }
            }
        })
});


// MARK: - Save Followup

$('#save_followup').click(function (e) 
{
        var save_followup = $('#hidden_followup_id').val();
        let formData = new FormData($('#edit_save_followup')[0]);
        formData.append('hidden_followup_id', save_followup);
        $.ajax({
            url: base_url + "admin/Followup/update",
            type: 'POST',
            data: formData,
            dataType: 'json',
            processData: false, 
            contentType: false, 
            success: function (response) {
                console.log(response);
                if (response.success === 'success') {
                    setTimeout(function () {
                        $('#successModal .modal-body').text('Followup Updated Successfully');
                        $('#successModal').modal('show');
                        $('#edit-followup').modal('hide');
                        setTimeout(function () {
                            $('#successModal').modal('hide');
                            location.reload();
                        }, 1000);
                    }, 1000);
                }

                else {

                    if (response.errors.followup_edit_user) {
                        $('#followup_edit_user_error').html(response.errors.followup_edit_user);
                    } else {
                        $('#followup_edit_user_error').html('');
                    }

                    if (response.errors.followup_edit_date) {
                        $('#followup_edit_date_error').html(response.errors.followup_edit_date);
                    } else {
                        $('#followup_edit_date_error').html('');
                    }

                    if (response.errors.followup_edit_remarks) {
                        $('#followup_edit_remarks_error').html(response.errors.followup_edit_remarks);
                    }
                    else {
                        $('#followup_edit_remarks_error').html('');
                    }
                }
            },
            error: function (xhr) {
                $('#response').html('<p>An error occurred: ' + xhr
                    .responseText +
                    '</p>');
            }
        });
});

//MARK: - Delete Followup

$("#delete_followup").click(function (e) 
{
        var id = $(this).attr('data-id');
        // alert(id);
        $('#delete_followup_id').val(id);
        $('#delete-followup').modal('show');
});

    $('#yes_del_followup').click(function () {
        $.ajax({
            method: "POST",
            url: base_url + "admin/Followup/delete",
            data: {
                'id': $('#delete_followup_id').val()
            },
            success: function (data) {
                console.log(data);
                window.location.href = '';
            }
        });
    });