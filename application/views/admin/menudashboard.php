<div class="application-navigation container container-fluid mt-3">
    <ul class="admin_application-navigation__ul mt-0">
        <li class="application-navigation__li">
            <a href="<?php echo base_url('admin/dashboard'); ?>"
                class="application-navigation__a <?php echo ($controller == 'dashboard') ? 'application-navigation__a--active' : ''; ?>">Dashboard</a>
        </li>
        <!-- <li class="application-navigation__li">
            <a href="<?php echo base_url(); ?>admin/country"
                class="application-navigation__a <?php echo ($controller == 'country') ? 'application-navigation__a--active' : ''; ?>">Country</a>
        </li>
        <li class="application-navigation__li">
            <a href="<?php echo base_url(); ?>admin/tax"
                class="application-navigation__a <?php echo ($controller == 'tax') ? 'application-navigation__a--active' : ''; ?>">Tax</a>
        </li> -->

        <li class="application-navigation__li">
            <a href="<?php echo base_url(); ?>admin/store"
                class="application-navigation__a <?php echo ($controller == 'store') ? 'application-navigation__a--active' : ''; ?>">Store</a>
        </li>

        <li class="application-navigation__li">
            <a href="<?php echo base_url(); ?>admin/pendingstores"
                class="application-navigation__a <?php echo ($controller == 'pendingstores') ? 'application-navigation__a--active' : ''; ?>">Pending
                Stores</a>
        </li>

        <!-- <li class="application-navigation__li">
            <a href="<?php echo base_url(); ?>admin/rooms"
                class="application-navigation__a <?php echo ($controller == 'rooms') ? 'application-navigation__a--active' : ''; ?>">Rooms</a>
        </li> -->
        <!-- <li class="application-navigation__li">
            <a href="<?php echo base_url(); ?>admin/categories"
                class="application-navigation__a <?php echo ($controller == 'categories') ? 'application-navigation__a--active' : ''; ?>">Categories</a>
        </li> -->
        <li class="application-navigation__li">
            <a href="<?php echo base_url('admin/product/index'); ?>"
                class="application-navigation__a <?php echo ($controller == 'product' || $controller == 'Product') ? 'application-navigation__a--active' : ''; ?>">Products</a>
        </li>
        <li class="application-navigation__li">
            <a href="<?php echo base_url('admin/settings'); ?>"
                class="application-navigation__a <?php echo ($controller == 'settings') ? 'application-navigation__a--active' : ''; ?>">Settings</a>
        </li>

        <li class="application-navigation__li">
            <a href="<?php echo base_url(); ?>admin/support"
                class="application-navigation__a <?php echo ($controller == 'support') ? 'application-navigation__a--active' : ''; ?>">Support

            </a>
        </li>
        <!-- <li class="application-navigation__li">
            <a href="<?php echo base_url('owner/settings'); ?>"
                class="application-navigation__a <?php echo ($controller == 'variant') ? 'application-navigation__a--active' : ''; ?>">Variant</a>
        </li>
        <li class="application-navigation__li">
            <a href="<?php echo base_url('owner/settings'); ?>"
                class="application-navigation__a <?php echo ($controller == 'user') ? 'application-navigation__a--active' : ''; ?>">User</a>
        </li> -->

        <li class="application-navigation__li">
            <a href="<?php echo base_url('admin/login/logout'); ?>" class="application-navigation__a">Logout</a>
        </li>
    </ul>
</div>