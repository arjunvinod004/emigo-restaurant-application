<div class="">
    <div class="page-content p-2">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="add-new-dish-list-combo">
                        <a href="#" data-bs-toggle="modal" data-bs-original-title="Add Followup"
                            data-bs-target="#add-followup" class="add-new-dish-btn btn1">
                            <img src="<?php echo base_url('assets/admin/images/add-new-dish-icon.svg'); ?>
                    " alt="add new dish" class="add-new-dish__icon" width="23" height="23">
                            Add Followup
                        </a>

                        <a href="<?php echo base_url('admin/store/index'); ?>" class="add-new-dish-btn btn1">
                            <img src="https://img.icons8.com/ios-filled/30/FFFFFF/circled-left-2.png
                        " alt="add new dish" class="add-new-dish__icon" width="23" height="23">Back</a>
                    </div>
                </div>
            </div>
            <!-- end page title -->
        </div>
        <div class="row">
            <div class="container">
                <div class="table-responsive-sm">
                    <table id="example" class="table table-bordered mt-3" style="width:100%">
                        <thead style="background: #e5e5e5;">
                            <tr>
                                <th>No</th>
                                <th>UserName</th>
                                <th>Date</th>
                                <th>Remarks</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Emigo</td>
                                <td>
                                    <?php echo date('Y-m-d');?>
                                </td>
                                <td>Date changed to 1 month</td>
                                <td class="pb-0 pt-0 d-flex">
                                    <!-- Edit Button -->
                                    <button class="btn tblEditBtn edit_country pl-0 pr-0" type="submit" id=""
                                        data-bs-toggle="modal" data-bs-target="#edit-country"><i
                                            class="fa fa-edit"></i></button>
                                    <!-- Delete Button -->

                                    <a class="btn tblDelBtn pl-0 pr-0 delete_country" type="button"
                                        data-bs-toggle="modal" data-bs-original-title="Delete Country"
                                        data-bs-target="#exampleModal"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td>2</td>
                                <td>Alan</td>
                                <td>
                                    2025-08-29
                                </td>
                                <td>Date changed to 2 month</td>
                                <td class="pb-0 pt-0 d-flex">
                                    <!-- Edit Button -->
                                    <button class="btn tblEditBtn edit_country pl-0 pr-0" type="submit" id=""
                                        data-bs-toggle="modal" data-bs-target="#edit-country"><i
                                            class="fa fa-edit"></i></button>
                                    <!-- Delete Button -->

                                    <a class="btn tblDelBtn pl-0 pr-0 delete_country" type="button"
                                        data-bs-toggle="modal" data-bs-original-title="Delete Country"
                                        data-bs-target="#exampleModal"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>


                            <tr>
                                <td>3</td>
                                <td>Vishnu</td>
                                <td>
                                    2025-08-30
                                </td>
                                <td>Date changed to 3 month</td>
                                <td class="pb-0 pt-0 d-flex">
                                    <!-- Edit Button -->
                                    <button class="btn tblEditBtn edit_country pl-0 pr-0" type="submit" id=""
                                        data-bs-toggle="modal" data-bs-target="#edit-country"><i
                                            class="fa fa-edit"></i></button>
                                    <!-- Delete Button -->

                                    <a class="btn tblDelBtn pl-0 pr-0 delete_country" type="button"
                                        data-bs-toggle="modal" data-bs-original-title="Delete Country"
                                        data-bs-target="#exampleModal"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>


                        </tbody>

                        <tbody class="d-none">

                            <?php
                       if(!empty($countries)){
                       $count = 1;
                       foreach($countries as $val){ ?>
                            <tr>
                                <td><?php echo $count;?></td>
                                <td><?php echo $val['name'];?></td>
                                <td><?php echo $val['code'];?></td>
                                <td><?php echo $val['currency'];?></td>
                                <td class="pb-0 pt-0 d-flex">
                                    <!-- <form class="m-0"  method="post"> -->
                                    <input type="hidden" name="id" value="<?php echo $val['country_id']; ?>">
                                    <button class="btn tblEditBtn edit_country pl-0 pr-0" type="submit" id=""
                                        data-id="<?php echo $val['country_id']; ?>" data-bs-toggle="modal"
                                        data-bs-target="#edit-country"><i class="fa fa-edit"></i></button>
                                    <!-- </form> -->

                                    <a class="btn tblDelBtn pl-0 pr-0 delete_country" type="button"
                                        data-bs-toggle="modal" data-id="<?php echo $val['country_id']; ?>"
                                        data-bs-original-title="Delete Country" data-bs-target="#exampleModal"><i
                                            class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <?php $count++; }} ?>
                        </tbody>
                    </table>

                    <div class="float-end">
                        <button class=" btn btn-danger w-md" type="button" id="">Close Followup</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- add followup -->

        <div class="modal fade" id="add-followup" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabel">Add Followup</h2>
                        <button class="emigo-close-btn" type="button" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row bg-soft-light mb-3 border1 pt-2 pb-2">
                            <form class="row mt-0 mb-0" id="add-new-followup" method="post"
                                enctype="multipart/form-data">
                                <div class="col-md-4">
                                    <div class="mb-2">
                                        <label class="form-label" for="default-input">User</label>
                                        <select name="followup_user" id="" class="form-select">
                                            <option value="1">Emigo</option>
                                            <option value="2">Emigo User</option>
                                            <option value="3">Vishnu</option>

                                        </select>
                                        <span class="error errormsg mt-2" id="followup_user_error"></span>
                                        <div id="general_error" class="error errormsg"></div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mb-2">
                                        <label class="form-label" for="default-input">Date</label>
                                        <input class="form-control" value="<?php echo date('Y-m-d'); ?>"
                                            placeholder="Date" type="date" name="followup_date">
                                        <span class="error errormsg mt-2" id="followup_date_error"></span>
                                        <div id="general_error" class="error errormsg"></div>
                                    </div>
                                </div>


                                <div class="col-md-4">
                                    <div class="mb-2">
                                        <label class="form-label" for="default-input">Remarks</label>
                                        <input class="form-control" value="" placeholder="Remarks" type="text"
                                            name="followup_remarks">
                                        <span class="error errormsg mt-2" id="followup_remarks_error"></span>

                                    </div>
                                </div>

                            </form>


                        </div>

                        <div class="col-md-12">
                            <div class="justify-content-center" style="float: right;">
                                <button class="btn btn-primary w-md" type="button" id="add_followup">Save</button>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>



    </div>

    <!-- add country -->



    <!-- ! SECTION: HEADER -->
    <div class="modal fade" id="edit-country" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title" id="exampleModalLabel">Edit Country</h2>
                    <button class="emigo-close-btn" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row bg-soft-light mb-3 border1 pt-2">
                        <form class="row mt-0 mb-0" id="edit_save_country" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="hidden_country_id">
                            <div class="col-md-4">
                                <div class="mb-2">
                                    <label class="form-label" for="default-input">Name</label>
                                    <input class="form-control" value="" placeholder="Name" type="text"
                                        name="country_name" id="country_name">
                                    <span class="error errormsg mt-2" id="country_edit_name_error"></span>
                                    <div id="general_error" class="error errormsg"></div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="mb-2">
                                    <label class="form-label" for="default-input">Country Code</label>
                                    <input class="form-control" value="" placeholder="Country Code" type="text"
                                        name="country_code" id="country_code">
                                    <span class="error errormsg mt-2" id="country_edit_code_error"></span>
                                    <div id="general_error" class="error errormsg"></div>
                                </div>
                            </div>




                            <div class="col-md-4">
                                <div class="mb-2">
                                    <label class="form-label" for="default-input">Currency</label>
                                    <input class="form-control" value="" placeholder="Currency" type="text"
                                        name="country_currency" id="country_currency">
                                    <span class="error errormsg mt-2" id="country_edit_currency_error"></span>

                                </div>
                            </div>



                            <div class="col-md-12">
                                <div class="justify-content-center" style="float: right;">
                                    <button class="btn btn-primary w-md" type="button" id="save_country">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>



</div>

<!-- edit country -->


<!-- delete user -->
<div class="modal fade " id="delete-country" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Delete</h1>
                <button type="button" class="emigo-close-btn" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- if response within jquery -->
                <div class="message d-none" role="alert"></div>
                <input type="hidden" name="id" id="delete_id" value="" />
                <?php echo are_you_sure; ?>
            </div>
            <div class="modal-footer"><button class="btn btn-primary" type="button" data-bs-dismiss="modal">No</button>
                <button class="btn btn-secondary" id="yes_del_user" type="button" data-bs-dismiss="modal">Yes</button>
            </div>

            </form>
        </div>
    </div>
</div>
<!-- delete user -->






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

<script src="<?php echo base_url();?>assets/admin/js/modules/store.js"></script>