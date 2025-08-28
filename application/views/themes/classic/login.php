<!-- Add FontAwesome (in <head> of your site, if not already present) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- Lost Password Modal -->
<div class="modal fade" id="lostpassword" tabindex="-1" role="dialog" aria-labelledby="lostPasswordLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content shadow border-0 rounded-3" style="background:#FFF8E7;">
            <div class="modal-header border-0">
                <h5 class="modal-title font-weight-bold text-dark" id="lostPasswordLabel">
                    <i class="fa fa-lock mr-2 text-warning"></i>
                    <?php echo display('forgot_password') ?>
                </h5>
                <button type="button" class="close text-dark" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" style="font-size:1.5rem;">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group mb-3">
                    <label for="user_email2" class="control-label text-dark font-weight-semibold">
                        <?php echo display('please_enter_your_email') ?>
                    </label>
                    <input type="email" id="user_email2" class="form-control border-0 shadow-sm rounded" name="user_email2" autocomplete="email" required>
                </div>
                <button id="lostpassBtn" type="button"
                  onclick="lostpassword();"
                  class="btn btn-warning btn-block rounded-pill text-dark font-weight-bold position-relative"
                  style="background:#E6B800;border:none;">
                    <span id="lostpassBtnText"><?php echo display('submit') ?></span>
                    <span id="lostpassSpinner" class="spinner-border spinner-border-sm ml-2 d-none" role="status" aria-hidden="true"></span>
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Start Login Area -->
<section class="menu_area sect_pad">
    <div class="container wow fadeIn">
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="card border-0 shadow-lg rounded-3 p-4" style="background:#FFF8E7;">
                    <div class="card-body">
                        <p class="text-secondary mb-4"><?php echo display('shopping_details_information_msg') ?></p>
                        <form>
                            <div class="row">
                                <div class="col-sm-6 mb-3">
                                    <div class="form-group position-relative">
                                        <label for="user_email" class="control-label text-dark font-weight-semibold"><?php echo display('email') ?></label>
                                        <input type="email" id="user_email" class="form-control border-0 shadow-sm rounded pl-4" name="user_email" autocomplete="username" required>
                                        <i class="fa fa-envelope position-absolute text-warning" style="left:12px;top:38px;"></i>
                                    </div>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <div class="form-group position-relative">
                                        <label for="u_pass" class="control-label text-dark font-weight-semibold">
                                            <?php echo display('password') ?> <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="password" id="u_pass" class="form-control border-0 shadow-sm rounded pl-4" name="u_pass" autocomplete="current-password" required>
                                        <i class="fa fa-lock position-absolute text-warning" style="left:12px;top:38px;"></i>
                                    </div>
                                </div>
                                <div class="col-12 mb-3 d-flex justify-content-between align-items-center">
                                    <div>
                                        <input id="brand1" type="checkbox" name="isremember" value="1">
                                        <label for="brand1" class="text-dark"><?php echo display('remember_me') ?></label>
                                    </div>
                                    <a href="javascript:void(0);" class="text-warning" data-toggle="modal" data-target="#lostpassword" data-dismiss="modal">
                                        <u><?php echo display('forgot_password') ?></u>
                                    </a>
                                </div>
                                <div class="col-12 mb-3">
                                    <button type="button" class="btn btn-warning btn-block rounded-pill text-dark font-weight-bold"
                                      style="background:#E6B800;border:none;" onclick="logincustomer();">
                                        <?php echo display('login') ?>
                                    </button>
                                </div>
                                <div class="col-12 text-center text-dark">
                                    <?php echo display('or') ?>
                                    <a href="<?php echo base_url() . 'hungry/signup' ?>" class="btn btn-outline-warning btn-sm rounded-pill ml-2">
                                        <?php echo display('register') ?>
                                    </a>
                                    <?php
                                    $facrbooklogn = $this->db->where('directory', 'facebooklogin')->where('status', 1)->get('module')->num_rows();
                                    if ($facrbooklogn == 1) { ?>
                                        &nbsp; <?php echo display('or') ?> &nbsp;
                                        <a class="btn btn-primary btn-sm rounded-pill text-white" href="<?php echo base_url('facebooklogin/facebooklogin/index/1') ?>">
                                            <i class="fa fa-facebook pr-1"></i><?php echo display('facebook_login') ?>
                                        </a>
                                    <?php } ?>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
$webinfo = $this->webinfo;
$activethemeinfo = $this->themeinfo;
$acthemename = $activethemeinfo->themename;
?>
<script src="<?php echo base_url(); ?>application/views/themes/<?php echo $acthemename; ?>/assets_web/js/login.js"></script>

<!-- UX: Spinner/processing feedback for lostpassword() -->
<script>
function lostpassword() {
    document.getElementById('lostpassBtnText').textContent = '<?php echo display("processing") ?>';
    document.getElementById('lostpassSpinner').classList.remove('d-none');
    // TODO: Insert AJAX/process logic
    // When done, reset button and spinner state
    // Example for demo:
    setTimeout(function() {
      document.getElementById('lostpassBtnText').textContent = '<?php echo display("submit") ?>';
      document.getElementById('lostpassSpinner').classList.add('d-none');
      // Optionally show "check your email" notification
    }, 1800);
}
</script>
