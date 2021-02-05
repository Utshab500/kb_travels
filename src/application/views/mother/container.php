<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
     <?php  $this->load->view('bootstrap_theme/header.php'); ?>
    <body>
        <?php  $this->load->view('navbar/navbar.php'); ?>
        <div class="container-fluid">
            <!-- Content here -->
            <?php echo $subview; ?>
        </div>
    </body>
</html>