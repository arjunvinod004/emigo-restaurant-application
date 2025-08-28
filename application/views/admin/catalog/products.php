
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="container">
            <div class="page-content p-2">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                        <div class="add-new-dish-list-combo mb-3">
                    <a   data-bs-toggle="modal" data-bs-original-title="Add product" data-bs-target="#add-product" class="add-new-dish-btn btn1">
                        <img src="<?php echo base_url('assets/admin/images/add-new-dish-icon.svg'); ?>
                        " alt="add new dish" class="add-new-dish__icon" width="23" height="23">
                        Add Product
                    </a>

                    <a href="<?php echo base_url('admin/settings'); ?>"   class="add-new-dish-btn btn1">
                        <img src="https://img.icons8.com/ios-filled/30/FFFFFF/circled-left-2.png
                        " alt="add new dish" class="add-new-dish__icon" width="23" height="23">
                      Back
                    </a>

                    <div class="mt-3">
                    <form class="product-search__form search">
                <input type="text" id="search_admin_product" placeholder="Search for a product" name="search"
                    class="product-search__field search-input1">
                <button type="submit" class="product-search__button"><img
                        src="<?php echo base_url(); ?>assets/admin/images/product-search-icon.svg" width="22"
                        height="23" alt="SearchIcon" class="product-search__icon"></button>
                <ul id="autocomplete-results1" class="autocomplete-results">
                </ul>
            </form>
                    </div>
                </div>
                               
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                   
                    <div class="row">
                    <!-- <?php if($this->session->flashdata('success')){ ?>
                    <div class="alert alert-success dark" role="alert">
                        <?php echo $this->session->flashdata('success');$this->session->unset_userdata('success'); ?>
                    </div><?php } ?>
                    
                    <?php if($this->session->flashdata('error')){ ?>
                    <div class="alert alert-danger dark" role="alert">
                        <?php echo $this->session->flashdata('error');$this->session->unset_userdata('error'); ?>
                    </div><?php } ?> -->

                        <div class="container">
                            <div class="table-responsive-sm">
                            <!-- <div class="product-list" id="search_result_admin_container"> -->
                          
        <table id="example" class="table table-striped" style="width:100%">
        <thead style="background: #e5e5e5;">
            <tr>
            <th>No</th>
            <th>Product Name</th>
            <th>Category</th>
            <th>Veg/Non Veg</th>
            <th>Is addon</th>
            <th>Is Customizable</th>
            <th>Image</th>
            <!-- <th>Status</th> -->
            <th>Actions</th>
            </tr>
        </thead>
        <tbody id="search_result_admin_container">

       

        <?php
                       if(!empty($products)){
                       $count = 1;
                       foreach($products as $val){ ?>
            <tr>
                <td><?php echo $count;?></td>
                 <td><?php echo $val['product_name_en'];?></td>
                 <td><?php echo $val['category_name_en'];?></td>
                 <td><?php if($val['product_veg_nonveg'] == 'veg'){ ?> <span class="badge-success">Veg</span> <?php } else { ?> <span class="badge-danger">Non Veg</span> <?php }?></td>
                 <td><input type="checkbox" class="form-check-input" disabled value="1" <?php echo ($val['is_addon'] == 1) ? 'checked' : ''; ?>></td>
                 <td><input type="checkbox" class="form-check-input" disabled value="1" <?php echo ($val['is_customizable'] == 1) ? 'checked' : ''; ?>></td>
                 <td><img width="100" height="100" src="<?php echo base_url(); ?>uploads/product/<?php if(isset($val['image'])) echo $val['image']; ?>" class="img-thumbnail"></td>
                <!-- <td><?php if($val['is_active'] == 1){ ?> <span class="badge-success">Active</span> <?php } else { ?> <span class="badge-danger">Inactive</span> <?php }?></td> -->
                <td class="pb-0 pt-0 d-flex">
                    <!-- <form class="m-0" action="<?php echo base_url();?>admin/product/edit" method="post"> -->
                                      <input type="hidden" name="id" value="<?php echo $val['product_id']; ?>"> 
                                        <button class="btn tblEditBtn edit_product pl-0 pr-0" type="submit" data-bs-toggle="modal" data-id="<?php echo $val['product_id']; ?>" data-bs-original-title="Edit Product" data-bs-target="#edit-product"><i class="fa fa-edit"></i></button>
                    <!-- </form> -->
                    
                    <a class="btn tblDelBtn pl-0 pr-0 del_product" type="button" data-bs-toggle="modal" data-id="<?php echo $val['product_id']; ?>" data-bs-original-title="Delete Product" data-bs-target="#delete-product"><i class="fa fa-trash"></i></a>
                    

                    <!-- <a data-bs-toggle="modal" data-bs-target="#emp_informations" class="btn tblLogBtn pl-0 pr-0" type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="Additional Informations">
                        <i class="fa-solid fa-circle-plus"></i>
                    </a> -->
                </td>
            </tr>
            <?php $count++; }} ?>

           
            
        </tbody>
    </table>








                               
                               
                                
                            </div>
                            <div class="pagination-wrapper">
            <?= $pagination; ?>
        </div>

                        </div>
                    </div>



      <!-- add cooking -->

      <div class="modal fade" id="add-product" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabel">Add Product</h2>
                        <button class="emigo-close-btn" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    <div class="row bg-soft-light mb-3 border1 pt-2">
                    <form class="row mt-0 mb-0" id="add-new-product" method="post" enctype="multipart/form-data">
                       
                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Category</label>
                                <select class="form-select" name="category_id">
                                            <option value="">Select Category</option>
                                            <?php
                                foreach($categories as $category)
                                {
                                ?>
                                            <option value="<?=$category['category_id'];?>"
                                                <?php echo set_select('category_id', $category['category_id'])?>>
                                                <?=$category['category_name_en'];?></option>
                                            <?php
                                }
                                ?>
                                        </select>
                                <span class="error errormsg mt-2" id="category_id_error"></span>
                                <div id="general_error" class="error errormsg"></div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">veg or non-veg</label>
                                <select class="form-select" name="product_veg_nonveg">
                                                <option value="">Select any</option>
                                                <option value="veg">Veg</option>
                                                <option value="non-veg">Non-Veg</option>
                                            </select>
                                <span class="error errormsg mt-2" id="product_veg_nonveg_error"></span>
                                <div id="general_error" class="error errormsg"></div>
                            </div>
                        </div>


                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Product malayalam</label>
                                <input class="form-control" value="" type="text" placeholder="Malayalam"
                                name="products_name_ma">
                                <span class="error errormsg mt-2" id="products_name_ma_error"></span>

                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Product English</label>
                                 <input class="form-control" value="" type="text" placeholder="English"
                                                name="products_name_en">
                                <span class="error errormsg mt-2" id="products_name_en_error"></span>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Product hindi</label>
                                <input class="form-control" value="" type="text" placeholder="Hindi"
                                                name="products_name_hi">
                                <span class="error errormsg mt-2" id="products_name_hi_error"></span>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Product arabic</label>
                                <input class="form-control" value="" type="text" placeholder="Arabic"
                                                name="products_name_ar">
                                <span class="error errormsg mt-2" id="products_name_ar_error"></span>
                            </div>
                            </div>

                            <div class="col-md-3">
                            <div class="mb-2">
                                <label class="form-label" for="default-input" style="font-size: 15px;">Description Malayalam</label>
                                <textarea name="products_desc_ma" class="form-control"
                                                 placeholder="Malayalam"
                                                rows=""></textarea>
                                <span class="error errormsg mt-2" id="products_desc_ma_error"></span>
                            </div>

                        </div>


                        <div class="col-md-3">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Description English</label>
                                <textarea name="products_desc_en" class="form-control"
                                                 placeholder="English"
                                                rows=""></textarea>
                                <span class="error errormsg mt-2" id="products_desc_en_error"></span>
                            </div>
                            
                        </div>

                        <div class="col-md-3">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Description Hindi</label>
                                <textarea name="products_desc_hi" class="form-control"
                                 placeholder="Hindi" rows=""></textarea>
                                <span class="error errormsg mt-2" id="products_desc_hi_error"></span>
                            </div>
                            
                        </div>

                        <div class="col-md-3">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Description Arabic</label>
                                <textarea name="products_desc_ar" class="form-control"
                                                 placeholder="Arabic"
                                                rows=""></textarea>
                                <span class="error errormsg mt-2" id="products_desc_ar_error"></span>
                            </div>
                            
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Is Customisable</label>
                                <input type="hidden" name="iscustomizable_hidden" id="iscustomizablee_hidden" value="0"
                                               >
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="checkbox_is_customizable">
                            </div>
                            
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Is Addon</label>
                                <input type="hidden" name="isaddon_hidden" id="isaddon_hiddenn" value="0" >
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="checkbox_is_addon">
                            </div>
                            
                        </div>


                        <div class="row">

                        <div class="col-md-3">
<input type="file" class="form-control" name="image1"  accept="image/*" required>
<span class="error errormsg mt-2" id="products_image1_error"></span>

</div>

<div class="col-md-3">
<input type="file" class="form-control" name="image2"  accept="image/*" required >
<span class="error errormsg mt-2" id="products_image2_error"></span>

</div>

<div class="col-md-3">
<input type="file" class="form-control" name="image3"  accept="image/*" required>
<span class="error errormsg mt-2" id="products_image3_error"></span>

</div>

<div class="col-md-3">
<input type="file" class="form-control" name="image4"  accept="image/*" required>
<span class="error errormsg mt-2" id="products_image4_error"></span>

</div>

                        </div>

                       



                       

                        

                        <div class="col-md-12 mt-3">
                            <div class="justify-content-center" style="float: right;">
                                <button class="btn btn-primary w-md" type="button" id="add_product">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
                    </div>
                   
                </div>
            </div>
        </div>



    </div>

    <!-- add cooking -->




          <!-- edit product -->

          <div class="modal fade" id="edit-product" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabel">Edit Product</h2>
                        <button class="emigo-close-btn" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    <div class="row bg-soft-light mb-3 border1 pt-2">
                    <form class="row mt-0 mb-0" id="edit-new-product" method="post" enctype="multipart/form-data">
                        <input type="hidden" id="hidden_products_id">
                       
                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Category</label>
                                <select class="form-select" name="category_id" id="category_id">
                                                        <option value="">Select Category</option>
                                                        <?php
                                foreach($categories as $category)
                                {
                                ?>
                                                        <option value="<?=$category['category_id'];?>"
                                                            <?php if(isset($productDet[0]['category_id']) && ($productDet[0]['category_id']==$category['category_id'])) echo 'selected';else echo set_select('category_id', $category['category_id'])?>>
                                                            <?=$category['category_name_en'];?></option>
                                                        <?php
                                }
                                ?>
                                                    </select>
                                <span class="error errormsg mt-2" id="category_edit_id_error"></span>
                                <div id="general_error" class="error errormsg"></div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">veg or non-veg</label>
                                <select class="form-select" name="product_veg_nonveg" id="product_veg_nonveg">
                                                <option value="">Select any</option>
                                                <option value="veg">Veg</option>
                                                <option value="non-veg">Non-Veg</option>
                                            </select>
                                <span class="error errormsg mt-2" id="product_edit_veg_nonveg_error"></span>
                                <div id="general_error" class="error errormsg"></div>
                            </div>
                        </div>


                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Product malayalam</label>
                                <input class="form-control" value="" type="text" placeholder="Malayalam"
                                name="products_name_ma" id="products_name_ma">
                                <span class="error errormsg mt-2" id="products_edit_name_ma_error"></span>

                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Product English</label>
                                 <input class="form-control" value="" type="text" placeholder="English"
                                                name="products_name_en" id="products_name_en">
                                <span class="error errormsg mt-2" id="products_edit_name_en_error"></span>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Product hindi</label>
                                <input class="form-control" value="" type="text" placeholder="Hindi"
                                                name="products_name_hi" id="products_name_hi">
                                <span class="error errormsg mt-2" id="products_edit_name_hi_error"></span>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Product arabic</label>
                                <input class="form-control" value="" type="text" placeholder="Arabic"
                                                name="products_name_ar" id="products_name_ar">
                                <span class="error errormsg mt-2" id="products_edit_name_ar_error"></span>
                            </div>
                            </div>

                            <div class="col-md-3">
                            <div class="mb-2">
                                <label class="form-label" for="default-input" style="font-size: 15px;">Description Malayalam</label>
                                <textarea name="products_desc_ma" id="products_desc_ma" class="form-control"
                                                 placeholder="Malayalam"
                                                rows=""></textarea>
                                <span class="error errormsg mt-2" id="products_edit_desc_ma_error"></span>
                            </div>

                        </div>


                        <div class="col-md-3">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Description English</label>
                                <textarea name="products_desc_en" id="products_desc_en" class="form-control"
                                                 placeholder="English"
                                                rows=""></textarea>
                                <span class="error errormsg mt-2" id="products_edit_desc_en_error"></span>
                            </div>
                            
                        </div>

                        <div class="col-md-3">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Description Hindi</label>
                                <textarea name="products_desc_hi" id="products_desc_hi" class="form-control"
                                 placeholder="Hindi" rows=""></textarea>
                                <span class="error errormsg mt-2" id="products_edit_desc_hi_error"></span>
                            </div>
                            
                        </div>

                        <div class="col-md-3">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Description Arabic</label>
                                <textarea name="products_desc_ar" id="products_desc_ar" class="form-control"
                                                 placeholder="Arabic"
                                                rows=""></textarea>
                                <span class="error errormsg mt-2" id="products_edit_desc_ar_error"></span>
                            </div>
                            
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Is Customisable</label>
                                <input type="hidden" name="iscustomizable_hidden" value=""
                                                id="iscustomizable_hidden">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="checkbox_is_customizable_edit">
                            </div>
                            
                        </div>

                        <div class="col-md-4">
                            <div class="mb-2">
                                <label class="form-label" for="default-input">Is Addon</label>
                                <input type="hidden" name="isaddon_hidden" value="" id="isaddon_hidden" >
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="checkbox_is_addon_edit">
                            </div>
                            
                        </div>


                        <div class="row">

                        <div class="col-md-3">
<input type="file" class="form-control" name="image1" id="image1" accept="image/*" required>
<input type="text" name="imagehidden1" id="imagehidden1" value="">
<img id="images1" src="" alt="Image 1" width="100" name="images1">

<!-- <img src="" alt=""> -->
<span class="error errormsg mt-2" id="products_edit_image1_error"></span>

</div>

<div class="col-md-3">
<input type="file" class="form-control" name="image2" id="image2"  accept="image/*" required >
<input type="text" name="imagehidden2" id="imagehidden2" value="">
<img id="images2" src="" alt="Image 2" width="100" name="images2">

<span class="error errormsg mt-2" id="products_edit_image2_error"></span>

</div>

<div class="col-md-3">
<input type="file" class="form-control" name="image3" id="image3" accept="image/*" required>
<input type="text" name="imagehidden3" id="imagehidden3" value="">
<img id="images3" src="" alt="Image 3" name="images3"  width="100">


<span class="error errormsg mt-2" id="products_edit_image3_error"></span>

</div>

<div class="col-md-3">
<input type="file" class="form-control" name="image4" id="image4" accept="image/*" required>
<input type="text" name="imagehidden4" id="imagehidden4" value="">
<img id="images4" src="" alt="Image 4" width="100" name="images4">
<span class="error errormsg mt-2" id="products_edit_image4_error"></span>

</div>

 </div>

                       



                       

                        

                        <div class="col-md-12 mt-3">
                            <div class="justify-content-center" style="float: right;">
                                <button class="btn btn-primary w-md" type="button" id="save_product">Update</button>
                            </div>
                        </div>
                    </form>
                </div>
                    </div>
                   
                </div>
            </div>
        </div>



    </div>

    <!-- add cooking -->




<!-- Modal for detailed view -->
                    <div class="modal fade" id="emp_informations" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h1 class="modal-title fs-5" id="exampleModalLabel">Employee Details</h1>
                                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <iframe src="emp-informations.html" style="width: 100%; height: 500px;"></iframe>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- end -->



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








            </div>

            <script src="<?php echo base_url();?>assets/admin/js/modules/store.js"></script>



