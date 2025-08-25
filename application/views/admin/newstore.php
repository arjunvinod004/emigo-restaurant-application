<!DOCTYPE html>
<html>

<!-- header start -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8" />
    <title>Dashboard | Emigo </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Emigo" name="description" />
    <meta content="CVS" name="author" />

    <link rel="shortcut icon" href="<?php echo base_url();?>assets/admin/images/favicon.ico">
    <link href="<?php echo base_url();?>assets/admin/css/crm-responsive.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url();?>assets/admin/css/classic.min.css" rel="stylesheet" /> <!-- 'classic' theme -->
    <!--<link href="<?php echo base_url();?>assets/admin/fonts/css/all.min.css" rel="stylesheet" />-->
    <link href="<?php echo base_url();?>assets/admin/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet"
        type="text/css" />
    <link href="<?php echo base_url();?>assets/admin/css/icon.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url();?>assets/admin/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url();?>assets/admin/css/custom.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url();?>assets/admin/css/styles.css" rel="stylesheet" type="text/css" />

</head>

<body>
    <div class="application-header">
        <div class="application-header__container container">
            <div class="application-header__brand">
                <a href="<?php echo base_url();?>/owner/dashboard" class="application-header__brand-logo">
                    <img src="<?php echo base_url();?>assets/admin/images/emigo.png" alt="brand lgo"
                        class="application-header__brand-logo-img" width="97" height="97">
                </a>
                <div class="application-header__brand-address">
                    <h2 class="application-header__brand-name"></h2>
                    <p class="application-header__brand-address"></p>
                </div>
            </div>
            <div class="application-header__provider">
                <img src="<?php echo base_url();?>assets/admin/images/choose-my-food.png" alt="choose my food logo"
                    class="application-header__provider-img" width="300" height="37">
                <!--<div class="application-header__provider-description">Powered By EMIGO</div>-->
            </div>
        </div>

    </div>


    <!-- header end -->



    <!--  new store add  -->


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




</div>



</div>

<button class="btn btn1 mt-2" type="submit">SAVE</button>

</div>

</form>
</div>

</div>


<!-- new store add end -->


<!-- footer starts -->

<div class="application-footer">
    <div class="application-footer__container container">
        <div class="application-footer__company-logo">
            <img src="<?php echo base_url();?>assets/admin/images/emigo-logo.svg" alt="emigo logo"
                class="application-footer__company-logo-img" width="210" height="69">
        </div>
        <div class="application-footer__copyright">
            
    <h1 class="application-content__page-heading_datetime text-center">
        <!--<i class="fas fa-clock"></i>  -->
        <?php
        $date = new DateTime();
        echo $date->format("h:i A");
        ?>
    </h1>
@ All rights reserved. Emigo 2025</div>
       
    </div>
</div>

<button id="goToTop" style="display: none; position: fixed; bottom: 20px; right: 20px;">Top</button>

<!-- footer ends -->


    <!-- success modal -->
<div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="confirmModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="emigo-modal__heading" id="exampleModalLabel"></h1>
                <button type="button" class="emigo-close-btn" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary reload-close-btn" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- success modal -->

<!-- JAVASCRIPT -->
<script src="<?php echo base_url();?>assets/admin/js/jquery-3.7.1.min.js"></script>
<script src="<?php echo base_url();?>assets/admin/js/bootstrap.min.js"></script>
<!-- <script src="<?php echo base_url();?>assets/admin/js/ownerscripts.js"></script> -->
<script src="<?php echo base_url();?>assets/admin/js/newstore.js"></script>
<!-- <script src="<?php echo base_url();?>assets/admin/js/otherscripts1.js"></script> -->
<!-- <script src="<?php echo base_url();?>assets/admin/js/order-dashboard.js"></script>
<script src="<?php echo base_url();?>assets/admin/js/kitchen-dashboard.js"></script> -->
<script src="<?php echo base_url();?>assets/admin/js/scripts.js"></script>
<script src="<?php echo base_url();?>assets/admin/js/datepicker.js"></script>


<script>
$(function() {
    $("#datepicker").datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date());

    $("#datepicker1").datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date());
})
</script>
</body>

</html>








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