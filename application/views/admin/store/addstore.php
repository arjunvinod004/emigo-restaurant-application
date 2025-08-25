<div class="application-content add-new-dish">
    <div class="application-content__container container add-new-dish__container">
        <h1 class="application-content__page-heading">Add New Store</h1>
        <div class="add-new-dish-form">

            <form id="storeForm" enctype="multipart/form-data" method="post" >

                <div class="add-new-dish-form__section-container">
                    <div class="add-new-dish-form__section">
                        <h2 class="add-new-dish-form__section-heading">Store Details</h2>


                        <!-- country -->

                        <div class="form__field-container-group gc">
                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Country</label>
                                <select class="form-select" name="country" id="country_id">
                                    <option value="">Select Country</option>
                                    <?php foreach ($countries as $country) { ?>
                                    <option value="<?= $country['country_id']; ?>">
                                        <?= $country['name']; ?></option>
                                    <?php } ?>
                                </select>
                                <div class="errormsg mt-2" id="country_error"></div>
                            </div>
                            <!--Gst Tax-->
                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Gst/Vat</label>
                                <select id="sel_gst_or_tax" class="form-select"
                                                        name="gst_or_tax"></select>
                                <div class="errormsg mt-2" id="gst_or_tax_error"></div>
                            </div>
                           <!--Registration Number-->
                            <div class="form__field-container textbox xs12 lg4 d-none">
                                <label class="form__label">Registration Number</label>
                                <input name="bill_no" class="form-control" id="inputbillno"
                                                        placeholder="">
                              
                            </div>

                        </div>

                        <!-- <div class="form__field-container-group gc">
                            <div class="form__field-container xs12 lg2">
                                <div class="form__input-group-checkbox">
                                    <label class="form__label">Is Customizable</label>
                                    <input type="hidden" name="iscustomizable_hidden" value="0"
                                        id="iscustomizable_hidden">
                                    <input class="form-check-input" type="checkbox" value=""
                                        id="checkbox_is_customizable">
                                </div>
                            </div>
                            <div class="form__field-container xs12 lg2">
                                <div class="form__input-group-checkbox">
                                    <label class="form__label">Is Addon</label>
                                    <input type="hidden" name="isaddon_hidden" value="0" id="isaddon_hidden">
                                    <input class="form-check-input" type="checkbox" value="" id="checkbox_is_addon">
                                </div>
                            </div>
                        </div> -->


                        <!-- display name -->


                        <div class="form__field-container-group gc" id="product_rate_div">
                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Display Name</label>
                                <input name="disp_name" class="form-control" id="disp_name"
                                placeholder="">
                            <div class="errormsg mt-2" id="disp_name_error"></div>
                                <!-- <input type="text" class="form__input-text"
                                    value="<?php echo isset($val['rate']) ? $val['rate'] : ''; ?>" id="rate" name="rate"
                                    style="width:100%;"> -->
                            </div>
                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Registered Name</label>
                                <input class="form-control" type="text" name="name" id="reg_name">
                                <div class="errormsg mt-2" id="name_error"></div>
                            </div>

                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Email</label>
                                <input class="form-control" type="email" name="email" id="email">
                                <div class="errormsg mt-2" id="email_error"></div>
                            </div>
                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Phone</label>
                                <input class="form-control" type="text" name="phone" id="phone">
                                <div class="errormsg mt-2" id="phone_error"></div>
                            </div>
                        </div>

                        <!-- address -->

                        <div class="form__field-container-group gc" id="product_rate_div">
                            <div class="form__field-container xs12 lg6">
                                <label class="form__label">Address</label>
                                <textarea name="address" class="form-control" id="address"></textarea>
                                <div class="errormsg mt-2" id="address_error"></div>
                                <!-- <input type="text" class="form__input-text"
                                    value="<?php echo isset($val['rate']) ? $val['rate'] : ''; ?>" id="rate" name="rate"
                                    style="width:100%;"> -->
                            </div>
                            <div class="form__field-container xs12 lg6">
                                <label class="form__label">Description</label>
                                <textarea name="store_desc" class="form-control" id="store_desc" ></textarea>
                            <div class="errormsg mt-2" id="store_desc_error"></div>

                            </div>

                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Contract Start Date</label>
                                <div id="datepicker" class="input-group date"
                                                        data-date-format="yyyy-mm-dd">
                                                        <input name="contract_start_date" class="form-control"
                                                            type="text">
                                                        <span class="input-group-addon"><i
                                                                class="glyphicon glyphicon-calendar"></i></span>
                                </div>
                                <div class="errormsg mt-2" id="error_contract_start_date"></div>
                            </div>
                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Contract End Date</label>
                                <input type="text" class="form-control" id="datepicker1"
                                name="contract_end_date" placeholder="Select End Date">
                            <div class="errormsg mt-2" id="error_contract_end_date"></div>
                            </div>

                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Next Follow Up Date</label>
                                <input type="text" class="form-control" id="datepicker2"
                                    name="next_followup_date" placeholder="Select Date">
                            <div class="errormsg mt-2" id="error_next_followup_date"></div>
                            </div>
                        </div>

                      <!-- follow up remark -->

                        <div class="form__field-container-group gc" id="product_rate_div">
                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Followup Remark</label>
                                 <input name="followup_remarks" class="form-control" placeholder="">
                                 <div class="errormsg mt-2" id="error_followup_remarks"></div>
                            </div>

                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Opening Time</label>
                                <input class="form-control" type="time" name="store_opening_time"
                                id="store_opening_time">
                            <div class="errormsg mt-2" id="error_store_opening_time"></div>
                            </div>

                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Closing Time</label>
                                <input class="form-control" type="time" name="store_closing_time" id="store_closing_time">
                                <div class="errormsg mt-2" id="error_store_closing_time"></div>
                            </div>


                            </div>


                            <!--select package  -->

                            <div class="form__field-container-group gc" id="product_rate_div">
                                <div class="form__field-container xs12 lg3">
                                    <label class="form__label">Select Package</label>
                                    <select class="form-select" name="no_of_tables" id="no_of_tables">
                                        <option value="">Select Package</option>
                                        <?php foreach($packages as $package) { ?>
                                        <option value="<?= $package['package_id']; ?>">
                                            <?= $package['name']; ?></option>
                                        <?php } ?>
                                    </select>
                                    <div class="errormsg mt-2" id="error_no_of_tables"></div>
                                </div>

                                <div class="form__field-container xs12 lg3">
                                    <label class="form__label">Trade License</label>
                                    <input class="form-control" type="text" name="trade_license"
                                                        id="trade_license">
                                    <div class="errormsg mt-2" id="error_trade_license"></div>
                                </div>

                                <div class="form__field-container xs12 lg3">
                                    <label class="form__label">Location</label>
                                    <input name="location" class="form-control" id="location"
                                                        placeholder="">
                                                    <div class="errormsg mt-2" id="error_location"></div>
                                </div>

                                <div class="form__field-container xs12 lg3">
                                    <label class="form__label">Default Language</label>
                                    <select class="form-select" name="language" id="language">
                                        <option value="">Select Language</option>
                                        <option value="ma">Malayalam</option>
                                        <option value="hi">Hindi</option>
                                        <option value="en">English</option>
                                        <option value="ar">Arabic</option>
                                    </select>
                                    <div class="errormsg mt-2" id="error_language"></div>
                                </div>

                                </div>


                                <!-- default Language -->


                                <div class="form__field-container-group gc" id="product_rate_div">
                                    <div class="form__field-container xs12 lg12">
                                        <label class="form__label">Default Language</label>
                                        <div class="col-sm-10">
                                            <input type="checkbox" name="checkbox[]" value="ma" checked>
                                            Malayalam<br>
                                            <input type="checkbox" name="checkbox[]" value="en" checked>
                                            English<br>
                                            <input type="checkbox" name="checkbox[]" value="hi" checked>
                                            Hindi<br>
                                            <input type="checkbox" name="checkbox[]" value="ar" checked>
                                            Arabic<br>
                                        </div>
                                        <div class="errormsg mt-2" id="error_language"></div>
                                    </div>
                                    </div>


                                    <!-- username  -->

                                    <div class="form__field-container-group gc" id="product_rate_div">
                                        <div class="form__field-container xs12 lg3">
                                            <label class="form__label">Username (Shop owner)</label>
                                            <input class="form-control" type="text" name="username"
                                            id="username">
                                        <div class="errormsg mt-2" id="error_username"></div>
                                           
                                        </div>

                                        <div class="form__field-container xs12 lg3">
                                            <label class="form__label">password</label>
                                            <input class="form-control" type="password" name="password"
                                            id="password">
                                        <div class="errormsg mt-2" id="error_password"></div>
                                           
                                        </div>


                                        <div class="form__field-container xs12 lg3">
                                            <label class="form__label">Username (user)</label>
                                            <input class="form-control" type="text" name="user_username"
                                                        id="user_username">
                                                    <div class="errormsg mt-2" id="error_user_username"></div>
                                           
                                        </div>
                                      
                                        <div class="form__field-container xs12 lg3">
                                            <label class="form__label">password</label>
                                            <input class="form-control" type="password" name="user_password"
                                            id="user_password">
                                        <div class="errormsg mt-2" id="error_user_password"></div>
                                           
                                        </div>

        
                                        </div>


                                        <div class="form__field-container-group gc" id="product_rate_div">
                                            <div class="form__field-container xs12 lg12">
                                                <label class="form__label">Store Logo</label>
                                                
                                                    <input type="file" class="form-control-file" name="store_logo_image"
                                                        id="store_logo_image">
                                                    <div class="errormsg mt-2" id="error_store_logo_image"></div>
                                               
                                               
                                            </div>

                                            </div>

                                        <!-- serving modes -->
                     <!-- <h2 class="add-new-dish-form__section-heading">Pickup/Take away</h2> -->
                     <!-- <div class="form__field-container-group gc" id="product_rate_div">

                        <div class="form__field-container xs12 lg3">
                           
                      
                            <input class="form-check-input" type="checkbox"
                                id="checkbox_pickup_or_take_away">
                             <input type="hidden" name="checkbox_pickup_or_take_away" value="0" id="pickup_hidden"> 
                        

                      
                            </div>

                            <div class="form__field-container xs12 lg3">
                               
                          
                                <select class="form-select"name="pickup_country_code"
                                id="pickup_country_code">
                                    <option value="">Select Country</option>
                                    <?php foreach ($countries as $country) { ?>
                                    <option value="<?= $country['code']; ?>">
                                        <?= $country['name']; ?></option>
                                    <?php } ?>
                                </select>
                                    <div class="errormsg mt-2" id="error_pickup_country_code"></div>
                                </div>

                                <div class="form__field-container xs12 lg3">
                                   
                              
                                    <input type="text" placeholder="Enter Pickup Number"
                                    class="form-control" name="txt_pickup_or_take_away"
                                    id="txt_pickup_or_take_away">
                                <div class="errormsg mt-2" id="error_txt_pickup_or_take_away">
                                    </div>
                                    </div> 

                                    <div class="form__field-container xs12 lg3">
                                       
                                  
                                        <button type="button" class="btn btn-dark" style="width: 60%;"
                                                        id="send_pickup_test_message">Send Test Message</button>
                                        </div> 
    


                                            </div> -->



                                            <!-- dining -->

            <!-- <h2 class="add-new-dish-form__section-heading">Dining</h2>
            <div class="form__field-container-group gc" id="product_rate_div">
                       
            <div class="form__field-container xs12 lg3">
             <input class="form-check-input" type="checkbox" id="checkbox_dining">
            <input type="hidden" name="checkbox_dining" value="0" id="dining_hidden">                               
            </div>
                       
             <div class="form__field-container xs12 lg3">
             <select class="form-select"  name="dining_country_code"
             id="dining_country_code">
            <option value="">Select Country</option>
            <?php foreach ($countries as $country) { ?>
        <option value="<?= $country['code']; ?>">
             <?= $country['name']; ?></option>
                <?php } ?>
            </select>
        <div class="errormsg mt-2" id="error_dining_country_code"></div>
         </div>
                        
        <div class="form__field-container xs12 lg3">                                 
        <input type="text" placeholder="Enter Dining Number"
         class="form-control" name="txt_dining" id="txt_dining">
            <div class="errormsg mt-2" id="error_txt_dining"></div>
        </div> 
                        
            <div class="form__field-container xs12 lg3">
        <button type="button" class="btn btn-dark " style="width: 60%;" id="send_dining_test_message">Send Test Message</button>
        </div> 
      </div> -->

     <!-- delivery -->

     <!-- <h2 class="add-new-dish-form__section-heading">Delivery</h2>
     <div class="form__field-container-group gc" id="product_rate_div">
     <div class="form__field-container xs12 lg3">
        <input class="form-check-input" type="checkbox"
        id="checkbox_delivery">
    <input type="hidden" name="checkbox_delivery" value="0"
        id="delivery_hidden">                            
     </div>
                
      <div class="form__field-container xs12 lg3">
      <select class="form-select" name="delivery_country_code"
      id="delivery_country_code" >
     <option value="">Select Country</option>
     <?php foreach ($countries as $country) { ?>
 <option value="<?= $country['code']; ?>">
      <?= $country['name']; ?></option>
         <?php } ?>
     </select>
     <div class="errormsg mt-2" id="error_delivery_country_code">
  </div>
  </div>
                 
 <div class="form__field-container xs12 lg3">                                 
    <input type="text" placeholder="Enter Delivery Number"
    class="form-control" name="txt_delivery" id="txt_delivery">
<div class="errormsg mt-2" id="error_txt_delivery"></div>
 </div> 
                 
     <div class="form__field-container xs12 lg3">
 <button type="button" class="btn btn-dark " style="width: 60%;" id="send_delivery_test_message">Send Test Message</button>
 </div> 
</div> -->
<!-- whatsapp enable -->

<div class="form__field-container-group gc d-none" id="product_rate_div">
    <div class="form__field-container xs12 lg12">
       
        <!-- <label class="form__label">whatsapp</label> -->
        <div class="col-sm-10">
            <input class="form-check-input" type="checkbox" value=""
            id="is_whatsapp"> whatsapp enable
            <input type="hidden" name="is_whatsapp_check" id="is_whatsapp_check"
            value="0">
        </div>
        <div class="errormsg mt-2" id="error_language"></div>
    </div>
    </div>
</div>



</div>

<button class="btn btn1 mt-2" type="submit">SAVE</button>

</div>

</form>
</div>

</div>
</div>





<!-- Modal for Image Cropping -->
<div id="cropper-modal" class="modal" tabindex="-1" role="dialog" style="display: none;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Crop Image</h5>
            </div>
            <div class="modal-body">
                <input type="text" id="hiddenImgId">
                <img id="image-to-crop-modal" src="" alt="image-to-crop" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn1" id="crop-button">CROP AND UPDATE</button>
            </div>
        </div>
    </div>
</div>

<!-- Add Cropper.js & jQuery -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.12/cropper.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.12/cropper.min.js"></script>

<script>
$(document).ready(function() {
    var cropper;

    // Trigger cropper modal when image is clicked
    $('.image-to-crop').click(function() {
        var imageSrc = $(this).attr('src');
        var dataId = $(this).attr('id');
        $('#image-to-crop-modal').attr('src', imageSrc);

        // Destroy existing cropper if any
        if (cropper) {
            cropper.destroy();
        }

        // Initialize the cropper on the modal image
        $('#cropper-modal').modal('show');
        $('#hiddenImgId').val(dataId);
        var image = document.getElementById('image-to-crop-modal');
        cropper = new Cropper(image, {
            aspectRatio: 1, // Optional: change aspect ratio if needed
            viewMode: 1,
            scalable: true,
            zoomable: true,
            movable: true
        });
    });

    // Crop the image and upload
    $('#crop-button').click(function() {
        var croppedCanvas = cropper.getCroppedCanvas();
        var croppedImage = croppedCanvas.toDataURL('image/jpeg'); // Get cropped image data
        var fileName = 'cropped-image-' + new Date().getTime() + '.jpg';
        $.ajax({
            url: '<?= base_url("owner/Product/update_image") ?>',
            method: 'POST',
            dataType: 'json',
            data: {
                image: croppedImage,
                imageId: $('#hiddenImgId').val(),
                file_name: fileName // Send file name for saving
            },
            success: function(response) {
                console.log(response);

                $('.image-to-crop[src="' + $('#image-to-crop-modal').attr(
                        'src') + '"]')
                    .attr('src', croppedImage);

                // Hide the modal after updating
                $('#cropper-modal').modal('hide');
                if (response.imageId == 'previewImage1') {
                    $('#imghidden1').val(response.filename);
                }
                if (response.imageId == 'previewImage2') {
                    $('#imghidden2').val(response.filename);
                }
                if (response.imageId == 'previewImage3') {
                    $('#imghidden3').val(response.filename);
                }
                if (response.imageId == 'previewImage4') {
                    $('#imghidden4').val(response.filename);
                }
                if (response.imageId == 'previewImage5') {
                    $('#imghidden5').val(response.filename);
                }
            },
            error: function() {
                alert('Failed to update the image.');
            }
        });
    });

    // Handle real-time image preview when files are selected
    function previewImage(inputId, previewImageId, imgHidden) {
        $(inputId).on('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                const filename = file.name;
                $(imgHidden).val(filename);
                const reader = new FileReader();
                reader.onload = function(e) {
                    $(previewImageId).removeClass('d-none');
                    $(previewImageId).attr('src', e.target
                        .result); // Update the preview image
                };
                reader.readAsDataURL(file); // Read the file as a data URL
                var formData = new FormData();
                formData.append("file", file);
                $.ajax({
                    url: '<?= base_url("owner/Product/update_image1") ?>',
                    method: 'POST',
                    data: formData,
                    contentType: false, // Don't set contentType
                    processData: false,
                    success: function(response) {}
                });
            }
        });
    }

    // Bind preview image functionality to file inputs
    previewImage('#preview1', '#previewImage1', '#imghidden1');
    previewImage('#preview2', '#previewImage2', '#imghidden2');
    previewImage('#preview3', '#previewImage3', '#imghidden3');
    previewImage('#preview4', '#previewImage4', '#imghidden4');
    previewImage('#preview5', '#previewImage5', '#imghidden5');
});
</script>
<script>
$(document).ready(function() {
    $('#checkbox_is_customizable').on('click', function() {
        if ($(this).is(':checked')) {
            $('#iscustomizable_hidden').val(1);
        } else {
            $('#iscustomizable_hidden').val(0);
        }
    });

    $('#checkbox_is_addon').on('click', function() {
        if ($(this).is(':checked')) {
            $('#isaddon_hidden').val(1);
        } else {
            $('#isaddon_hidden').val(0);
        }
    });
})
</script>
<script>
const rateInput = document.getElementById('rate');
const taxInput = document.getElementById('tax');
const taxAmountInput = document.getElementById('taxAmount');
const totalAmountInput = document.getElementById('totalAmount');

function calculateTotal() {
    const rate = parseFloat(rateInput.value) || 0;
    const tax = parseFloat(taxInput.value) || 0;

    const taxAmount = (rate * tax) / 100;
    const totalAmount = rate + taxAmount;

    taxAmountInput.value = taxAmount.toFixed(2);
    totalAmountInput.value = totalAmount.toFixed(2);
}

rateInput.addEventListener('input', calculateTotal);
taxInput.addEventListener('input', calculateTotal);
</script>


</div>
</div>

<!-- <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
fffffffffff
  </div> -->
</div>
</form>



</div>
<script>
$(document).ready(function() {
    $('#addNewDish').click(function() {
        let formData = new FormData($('#add-new-dish')[0]); // Capture the form data, including files

        $.ajax({
            url: '<?= base_url("owner/Product/save") ?>', // URL to the controller method
            type: 'POST',
            data: formData,
            dataType: 'json',
            processData: false, // Prevent jQuery from processing the data
            contentType: false, // Prevent jQuery from setting the Content-Type header
            success: function(response) {

                if (response.errors) {
                    // Define a mapping between error keys and their corresponding HTML elements
                    const errorMapping = {
                        category_id: '#category_id_error',
                        subcategory_id: '#subcategory_id_error',
                        product_veg_nonveg: '#product_veg_nonveg_error',
                        product_name_ma: '#product_name_ma_error',
                        product_name_en: '#product_name_en_error',
                        product_name_hi: '#product_name_hi_error',
                        product_name_ar: '#product_name_ar_error',
                        images: '#image_error',
                    };

                    // Iterate through the errorMapping and set the corresponding error messages
                    Object.keys(errorMapping).forEach(key => {
                        if (response.errors[key]) {
                            $(errorMapping[key]).html(response.errors[key]);
                        } else {
                            $(errorMapping[key]).html(
                                ''); // Clear the error message if not present
                        }
                    });
                } else {
                    $(this).prop('disabled', true).text('Processing...');
                    window.location.href = '<?= base_url("owner/Product") ?>';
                }

            },
            error: function(xhr) {
                $('#response').html('<p>An error occurred: ' + xhr
                    .responseText +
                    '</p>');
            }
        });
    });
});
</script>
<script>
$(document).ready(function() {
    $('#checkbox_is_customizable').on('click', function() {
        if ($(this).is(':checked')) {
            $('#iscustomizable_hidden').val(1);
            $('#product_rate_div').hide();
        } else {
            $('#iscustomizable_hidden').val(0);
            $('#product_rate_div').show();
        }
    });

    $('#checkbox_is_addon').on('click', function() {
        if ($(this).is(':checked')) {
            $('#isaddon_hidden').val(1);
        } else {
            $('#isaddon_hidden').val(0);
        }
    });

})
</script>
</body>

</html>