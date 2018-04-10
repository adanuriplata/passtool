    <div class="wrapper">
        <div class="login">
            <h1 class="login__title">PASS<span>TOOL</span></h1>
            <i class="fas fa-lock login__ico"></i>
            <p class="login__description">Ingresa tu usuario y contraseña</p>
            <div class="login__form">
                <?php if($this->session->flashdata("error")) ?>
                <?php echo $this->session->flashdata("error")?>
                <form action="<?php base_url()?>auth/login" method="post">
                    <div class="login__form__input">
                        <i class="fas fa-user login__form__input__i"></i>
                        <input type="text" placeholder="Usuario" name="username">
                    </div>
                    <div class="login__form__input ">
                        <i class="fas fa-key login__form__input__i"></i>
                        <input type="password" placeholder="Password" name="password">
                    </div>
                    <button class="login__form__input__btn button btn-go">INGRESAR</button>
                </form>
            </div>
        </div>
    </div>
