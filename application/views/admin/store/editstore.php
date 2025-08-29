<div class="application-content add-new-dish">
    <div class="application-content__container container add-new-dish__container">
        <h1 class="application-content__page-heading">Edit Store</h1>
        <div class="add-new-dish-form">
            <?php if(isset($storeDet[0]['store_id'])) {
                //print_r($storeDet);exit;
                ?>

            <form method="post" action="<?php echo base_url(); ?>admin/store/edit" enctype="multipart/form-data">

                <input type="hidden" name="id"
                    value="<?php  if(isset($storeDet[0]['store_id'])){echo $storeDet[0]['store_id'];}?>">

                <div class="add-new-dish-form__section-container">
                    <div class="add-new-dish-form__section">
                        <h2 class="add-new-dish-form__section-heading">Store Details</h2>


                        <!-- country -->


                        <div class="form__field-container-group gc">
                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">Country</label>
                                <select class="form-select" name="country" id="country_id">
                                    <option value="">Select Country</option>
                                    <?php
                                foreach($countries as $country)
                                {
                                ?>
                                    <option value="<?=$country['country_id'];?>"
                                        <?php if(isset($storeDet[0]['store_country']) && ($storeDet[0]['store_country']==$country['country_id'])) echo 'selected';else echo set_select('country', $country['country_id'])?>>
                                        <?=$country['name'];?></option>
                                    <?php
                                }
                                ?>
                                </select>
                                <?php if(form_error('country')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('country'); ?></div>
                                <?php } ?>
                            </div>


                            <!--Gst Tax-->


                            <div class="form__field-container xs12 lg4">
                                <label class="form__label">TAX</label>
                                <select id="sel_gst_or_tax" class="form-select" name="gst_or_tax">
                                    <option value="1"
                                        <?php if(isset($storeDet[0]['gst_or_tax']) && ($storeDet[0]['gst_or_tax']==1)) echo 'selected';else echo set_select('gst_or_tax', 1)?>>
                                        Not Applicable</option>
                                    <?php foreach($tax_rates as $tax) { ?>
                                    <option value="<?=$tax['tax_id'];?>" data-type="<?=$tax['tax_type'];?>"
                                        data-rate="<?=$tax['tax_rate'];?>"
                                        <?php if(isset($storeDet[0]['gst_or_tax']) && ($storeDet[0]['gst_or_tax']==$tax['tax_id'])) echo 'selected'; else echo set_select('gst_or_tax', $tax['tax_id'])?>>
                                        Applicable
                                    </option>
                                    <?php } ?>
                                </select>
                                <?php if(form_error('gst_or_tax')){ ?>
                                <div class=" errormsg mt-2" role="alert">
                                    <?php echo form_error('gst_or_tax'); ?>
                                </div>
                                <?php } ?>
                            </div>


                            <!--Registration Number-->


                            <div class="form__field-container textbox xs12 lg4 ">
                                <label class="form__label" id="Tax_label">Gst/Vat</label>
                                <input name="bill_no" class="form-control"
                                    value="<?php if(set_value('bill_no')){echo set_value('bill_no');}else if(isset($storeDet[0]['registration_no'])){echo $storeDet[0]['registration_no'];}?>"
                                    id="inputPassword" placeholder="">
                                <?php if(form_error('bill_no')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('bill_no'); ?></div>
                                <?php } ?>
                            </div>

                            <script>
                            $(document).ready(function() {
                                function toggleTextbox() {
                                    var taxRate = $('#sel_gst_or_tax').val();
                                    var dataType = $('#sel_gst_or_tax').find(':selected').attr('data-type');
                                    if (dataType == "gst") {
                                        $('#Tax_label').text('GST Number')
                                        $('.form-group.textbox').removeClass('d-none');
                                    } else if (dataType == "vat") {
                                        $('#Tax_label').text('VAT Number')
                                        $('.form-group.textbox').removeClass('d-none');
                                    } else {

                                        $('.form-group.textbox').addClass('d-none');
                                    }
                                }
                                toggleTextbox();
                                ('#Tax_label').text(toggleTextbox);
                                $('#sel_gst_or_tax').on('change', function() {
                                    toggleTextbox();
                                });
                            });
                            </script>

                        </div>





                        <div class="form__field-container-group gc" id="product_rate_div">

                            <!-- Trade License -->
                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Trade License</label>
                                <input class="form-control"
                                    value="<?php if(set_value('store_trade_license')){echo set_value('store_trade_license');}else if(isset($storeDet[0]['store_trade_license'])){echo $storeDet[0]['store_trade_license'];}?>"
                                    type="text" name="store_trade_license">
                                <?php if(form_error('store_trade_license')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('store_trade_license'); ?></div>
                                <?php } ?>
                            </div>


                            <!-- Trade License -->

                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Location</label>
                                <input name="store_location" class="form-control"
                                    value="<?php if(set_value('store_location')){echo set_value('store_location');}else if(isset($storeDet[0]['store_location'])){echo $storeDet[0]['store_location'];}?>"
                                    id="inputPassword" placeholder="">
                            </div>


                            <!-- display name -->

                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Display Name</label>
                                <input name="disp_name" class="form-control"
                                    value="<?php if(set_value('disp_name')){echo set_value('disp_name');}else if(isset($storeDet[0]['store_disp_name'])){echo $storeDet[0]['store_disp_name'];}?>"
                                    id="inputPassword" placeholder="">
                                <?php if(form_error('disp_name')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('disp_name'); ?></div>
                                <?php } ?>
                            </div>


                            <!-- Registered Name -->


                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Registered Name</label>
                                <input class="form-control"
                                    value="<?php if(set_value('name')){echo set_value('name');}else if(isset($storeDet[0]['store_name'])){echo $storeDet[0]['store_name'];}?>"
                                    type="text" name="name">
                                <?php if(form_error('name')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('name'); ?></div>
                                <?php } ?>
                            </div>


                            <!-- Email -->

                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Email</label>
                                <input class="form-control"
                                    value="<?php if(set_value('email')){echo set_value('email');}else if(isset($storeDet[0]['store_email'])){echo $storeDet[0]['store_email'];}?>"
                                    type="text" name="email">
                                <?php if(form_error('email')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('email'); ?></div>
                                <?php } ?>
                            </div>

                            <!-- Phone -->

                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Phone</label>
                                <input class="form-control"
                                    value="<?php if(set_value('phone')){echo set_value('phone');}else if(isset($storeDet[0]['store_phone'])){echo $storeDet[0]['store_phone'];}?>"
                                    type="text" name="phone">
                                <?php if(form_error('phone')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('phone'); ?></div>
                                <?php } ?>
                            </div>

                        </div>


                        <div class="form__field-container-group gc" id="product_rate_div">

                            <!-- Address -->

                            <div class="form__field-container xs12 lg6">
                                <label class="form__label">Address</label>
                                <textarea name="address" class="form-control" id="exampleFormControlTextarea4"
                                    rows="3"><?php if(set_value('address')){echo set_value('address');}else if(isset($storeDet[0]['store_address'])){echo $storeDet[0]['store_address'];}?></textarea>
                                <?php if(form_error('address')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('address'); ?></div>
                                <?php } ?>
                            </div>

                            <!-- Description -->

                            <div class="form__field-container xs12 lg6">
                                <label class="form__label">Description</label>
                                <textarea name="store_desc" class="form-control" id="exampleFormControlTextarea4"
                                    rows="3"><?php if(set_value('store_desc')){echo set_value('store_desc');}else if(isset($storeDet[0]['store_desc'])){echo $storeDet[0]['store_desc'];}?></textarea>

                            </div>



                            <!-- Contract Start Date -->

                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Contract Start Date</label>
                                <div id="datepicker" class="input-group date" data-date-format="yyyy-mm-dd">
                                    <input name="contract_start_date" class="form-control"
                                        value="<?php if(set_value('contract_start_date')){echo set_value('contract_start_date');}else if(isset($storeDet[0]['contract_start_date'])){echo $storeDet[0]['contract_start_date'];}?>"
                                        type="text">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                </div>
                                <?php if(form_error('contract_start_date')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('contract_start_date'); ?></div>
                                <?php } ?>
                            </div>

                            <!-- Contract End Date -->

                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Contract End Date</label>
                                <input type="text"
                                    value="<?php if(set_value('contract_end_date')){echo set_value('contract_end_date');}else if(isset($storeDet[0]['contract_end_date'])){echo $storeDet[0]['contract_end_date'];}?>"
                                    class="form-control" id="datepicker1" name="contract_end_date"
                                    placeholder="Select End Date">
                                <?php if(form_error('contract_end_date')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('contract_end_date'); ?></div>
                                <?php } ?>
                            </div>


                            <!-- Next Follow Up Date -->

                            <div class="form__field-container xs12 lg2">
                                <label class="form__label">Next Follow Up Date</label>
                                <input type="text"
                                    value="<?php if(set_value('next_followup_date')){echo set_value('next_followup_date');}else if(isset($storeDet[0]['next_followup_date'])){echo $storeDet[0]['next_followup_date'];}?>"
                                    class="form-control" id="datepicker2" name="next_followup_date" placeholder="">
                                <?php if(form_error('next_followup_date')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('next_followup_date'); ?></div>
                                <?php } ?>
                            </div>


                            <!-- Default Language -->

                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Default Language</label>
                                <select class="form-select" name="language">
                                    <option value="">Select Country</option>
                                    <option value="ma"
                                        <?php if(isset($storeDet[0]['store_language']) && $storeDet[0]['store_language']=='ma'){echo 'selected'; }else{ echo set_select('country', 'ma'); } ?>>
                                        Malayalam</option>
                                    <option value="hi"
                                        <?php if(isset($storeDet[0]['store_language']) && $storeDet[0]['store_language']=='hi'){echo 'selected'; }else{ echo set_select('country', 'hi'); }?>>
                                        Hindi</option>
                                    <option value="en"
                                        <?php if(isset($storeDet[0]['store_language']) && $storeDet[0]['store_language']=='en'){echo 'selected'; }else{ echo set_select('country', 'en'); }?>>
                                        English</option>
                                    <option value="ar"
                                        <?php if(isset($storeDet[0]['store_language']) && $storeDet[0]['store_language']=='ar'){echo 'selected'; }else{ echo set_select('country', 'ar'); }?>>
                                        Arabic</option>
                                </select>
                                <?php if(form_error('language')){ ?>
                                <div class="errormsg mt-2" role="alert">
                                    <?php echo form_error('language'); ?></div>
                                <?php } ?>
                            </div>


                            <!--Status -->

                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Status</label>
                                <select class="form-select btn-square" name="is_active">
                                    <option value="">Select Status</option>
                                    <option value="1"
                                        <?php if(isset($storeDet[0]['is_active']) && $storeDet[0]['is_active']=='1'){echo 'selected'; }else{ echo set_select('status', '1'); } ?>>
                                        Yes</option>
                                    <option value="0"
                                        <?php if(isset($storeDet[0]['is_active']) && $storeDet[0]['is_active']=='0'){echo 'selected'; }else{ echo set_select('status', '0'); }?>>
                                        No</option>
                                </select>
                            </div>
                        </div>





                        <!--select package  -->

                        <div class="form__field-container-group gc" id="product_rate_div">
                            <input class="form-control"
                                value="<?php if(set_value('no_of_tables')){echo set_value('no_of_tables');}else if(isset($storeDet[0]['no_of_tables'])){echo $storeDet[0]['no_of_tables'];}?>"
                                type="hidden" name="no_of_tables">






                        </div>


                        <!-- default Language -->


                        <div class="form__field-container-group gc" id="product_rate_div">
                            <div class="form__field-container xs12 lg12">
                                <?php $saved_values = explode(",", $storeDet[0]['store_selected_languages']); ?>
                                <label class="form__label">Default Language</label>
                                <div class="col-sm-10">
                                    <input type="checkbox" name="checkbox[]" value="ma"
                                        <?= in_array('ma', $saved_values) ? 'checked' : '' ?>>Malayalam<br>
                                    <input type="checkbox" name="checkbox[]" value="en"
                                        <?= in_array('en', $saved_values) ? 'checked' : '' ?>>English<br>
                                    <input type="checkbox" name="checkbox[]" value="hi"
                                        <?= in_array('hi', $saved_values) ? 'checked' : '' ?>>Hindi<br>
                                    <input type="checkbox" name="checkbox[]" value="ar"
                                        <?= in_array('ar', $saved_values) ? 'checked' : '' ?>>Arabic<br>
                                </div>
                            </div>
                        </div>


                        <!--Store Logo -->

                        <div class="form__field-container-group gc" id="product_rate_div">
                            <div class="form__field-container xs12 lg12">
                                <label class="form__label">Store Logo</label>

                                <input type="hidden" name="old_image"
                                    value="<?php if(isset($storeDet[0]['store_logo_image'])) echo $storeDet[0]['store_logo_image'];?>">
                                <img width="100" height="100"
                                    src="<?php echo base_url(); ?>uploads/store/<?php if(isset($storeDet[0]['store_logo_image'])) echo $storeDet[0]['store_logo_image']; ?>"
                                    class="img-thumbnail">
                                <input type="file" class="form-control-file" name="store_logo_image">


                            </div>

                        </div>

                        <!--Enable Order Monitor Tabs -->

                        <h2 class="add-new-dish-form__section-heading">Enable Order Monitor Tabs</h2>
                        <div class="form__field-container-group gc table_monitor">
                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Table</label>

                                <input type="checkbox" class="form-check-input" name="is_table_tab" id="is_table_tab"
                                    value="<?php echo $storeDet[0]['is_table_tab'];?>"
                                    <?php echo ($storeDet[0]['is_table_tab'] == 1) ? 'checked' : ''; ?>>


                            </div>
                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Pickup</label>

                                <input type="checkbox" class="form-check-input" name="is_pickup_tab" id="is_pickup_tab"
                                    value="<?php echo $storeDet[0]['is_pickup_tab'];?>"
                                    <?php echo ($storeDet[0]['is_pickup_tab'] == 1) ? 'checked' : ''; ?>>




                            </div>
                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Delivery</label>

                                <input type="checkbox" class="form-check-input" name="is_delivery_tab"
                                    id="is_delivery_tab" value="<?php echo $storeDet[0]['is_delivery_tab'];?>"
                                    <?php echo ($storeDet[0]['is_delivery_tab'] == 1) ? 'checked' : ''; ?>>


                            </div>
                            <div class="form__field-container xs12 lg3">
                                <label class="form__label">Room </label>

                                <input type="checkbox" class="form-check-input" name="is_room_tab" id="is_room_tab"
                                    value="<?php echo $storeDet[0]['is_room_tab'];?>"
                                    <?php echo ($storeDet[0]['is_room_tab'] == 1) ? 'checked' : ''; ?>>


                            </div>

                        </div>
                    </div>
                </div>
        </div>
        <input type="hidden" name="hiddencountry"
            value="<?php if(isset($storeDet[0]['store_country'])){echo $storeDet[0]['store_country'];}?>">
        <button class="btn btn1 mt-2" type="submit" name="edit">SAVE</button>

    </div>

    </form>
    <?php } ?>
</div>

</div>
</div>
</div>
</div>
</div>
</form>
</div>
</body>

</html>