<div class="application-footer ">
    <div class="application-footer__container container">
        <div class="application-footer__company-logo">
                <img src="<?php echo base_url();?>uploads/store/<?php echo $store_logo; ?>" alt="Store logo"
                class="application-footer__company-logo-img " width="210" height="69">
        </div>
        <div class="application-footer__copyright">
            <h1 class="application-content__page-heading_datetime text-center">
                <?php
        $date = new DateTime();
        echo $date->format("h:i A");
        ?>
            </h1>
            @ All rights reserved. Emigo 2025t
        </div>
        <div class="application-footer__company-logo">

                <img class=""
                    src="<?php echo base_url();?>assets/admin/images/choose-my-food.png" alt="Choose My Food">
        </div>
    </div>
</div>

<button id="goToTop" style="display: none; position: fixed; bottom: 20px; right: 20px;">Top</button>

<!-- JAVASCRIPT -->
<script src="<?php echo base_url();?>assets/admin/js/jquery-3.7.1.min.js"></script>
<script src="<?php echo base_url();?>assets/admin/js/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>assets/admin/js/ownerscripts.js"></script>
<script src="<?php echo base_url();?>assets/admin/js/order-dashboard.js"></script>
<script src="<?php echo base_url();?>assets/admin/js/kitchen-dashboard.js"></script>
<script src="<?php echo base_url();?>assets/admin/js/scripts.js"></script>
<!-- DataTables CSS -->
</body>

</html>