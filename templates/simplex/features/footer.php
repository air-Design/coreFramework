<footer class="ad-footer ad-section">
    <div class="wrapper">
        <div class="ad-row">
            <div class="ad-cols-12">
                <center>
                  <hr>
                    <small>Copyright &copy; 2017. All rights reserved</small>
                </center>
            </div>
        </div>
    </div>
</footer>




<!--Scritps-->
<script src="<?=CDN;?>js/jquery-3.2.1.min.js"></script>
<script src="<?=CDN;?>js/air.design.js"></script>
<script src="<?=BaseUrl;?>templates/simplex/js/main.js"></script>

<?php if (AirJax) { ?>
  <script src="<?=CDN;?>js/airjax.js"></script>

<!-- Component Scripts -->
<?php } else {
    if (isset($legacy->script)) {
        echo '<script>'.$legacy->script.'</script>';
    } elseif (isset($legacy->scriptUrls)) {
        for ($i =0; $i < count($legacy->scriptUrls); $i++) {
            echo '<script src="'.BaseUrl.'components/'.$legacy->scriptUrls[$i].'"></script>';
        }
    }
} ?>
