<div class="grid-main dashboard">
    <h1 class="dashboard__title">
        Este es el Dashboard
    </h1>
    <p>Bienvenido <?php echo $this->session->userdata("nombre")?></p>
    <a href="<?php echo base_url()?>boveda/boveda">Ver Bóveda</a>
    <br>
    <a href="<?php echo base_url()?>auth/logout">Cerrar Sesion</a>
</div>
