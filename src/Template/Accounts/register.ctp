<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign up</h5>
            <form class="form-signin" method="post" action="/practice_php_cakephp_vinhnt_201909/users/register">
              <div class="form-label-group">
                <input type="text" id="username" name="username" class="form-control" placeholder="Username" autofocus>
                <label for="username">Username</label>
                <!-- <p><?php if(isset($user)) echo $user[['errors']]['username']['_empty'];?></p> -->
              </div>

              <div class="form-label-group">
                <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password">
                <label for="inputPassword">Password</label>
              </div>

              <div class="form-label-group">
                <input type="text" id="address" name="address" class="form-control" placeholder="Address">
                <label for="address">Address</label>
              </div>

              <div class="form-label-group">
                <input type="text" id="phone" name="phone" class="form-control" placeholder="Phone">
                <label for="phone">Phone</label>
              </div>


              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign up</button>
              <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block" type="button">
                <i class="fab fa-google mr-2"></i><?php
                    echo $this->Html->link(
                        'Back',
                        ['controller' => 'Pages', 'action' => 'display'],
                        ['class'=>'text-uppercase link-custom']

                    );
                ?></button>
              <!-- <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign in with Facebook</button> -->
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
