<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign up</h5>
            <form class="form-signin">
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                <label for="inputEmail">Email address</label>
              </div>

              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>

              <div class="form-label-group">
                <input type="text" id="address" class="form-control" placeholder="Password" required>
                <label for="address">Address</label>
              </div>

              <div class="form-label-group">
                <input type="text" id="name" class="form-control" placeholder="Password" required>
                <label for="name">Name</label>
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
