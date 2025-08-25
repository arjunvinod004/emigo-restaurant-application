<!-- end page title -->

<div class="application-navigation container">
    <ul class="application-navigation__ul">

        <li class="application-navigation__li">
            <a href="<?php echo base_url('owner/order'); ?>"
                class="application-navigation__a <?php echo ($controller == 'order') ? 'application-navigation__a--active' : ''; ?>">Order
                Monitor</a>
        </li>
        <li class="application-navigation__li">
            <a href="<?php echo base_url('owner/reports'); ?>"
                class="application-navigation__a <?php echo ($controller == 'reports') ? 'application-navigation__a--active' : ''; ?>">Reports</a>
        </li>
        <li class="application-navigation__li">
            <a href="<?php echo base_url('admin/login/logout'); ?>" class="application-navigation__a">Logout</a>
        </li>
    </ul>
</div>