<nav class="sidebar grid-sidebar">
    <div class="sidebar__profile">
        <div class="sidebar__profile__avatar">
            <i class="fas fa-user-circle"></i><img src="" alt="">
        </div>
        <div class="sidebar__profile__name">
            <p> <?php echo $this->session->userdata("nombre")?></p>
        </div>
    </div>
    <div class="sidebar__content">
        <ul>
            <li><a href="<?php echo base_url()?>boveda/boveda"><i class="fas fa-unlock-alt"></i> Ver Boveda</a></li>
            <li><a href=""><i class="fas fa-comments"></i> Social</a></li>
            <li><a href=""><i class="fas fa-address-card"></i> Suscripciones</a></li>
            <li><a href=""><i class="fas fa-university"></i> Educacion</a></li>
            <li><a href=""><i class="fas fa-at"></i> E-mails</a></li>
            <li><a href=""><i class="far fa-credit-card"></i> Bancos</a></li>
            <li><a href=""><i class="fas fa-server"></i> Servidores</a></li>
        </ul>
    </div>
    <div class="sidebar__footer">
        <ul>
            <li><a href=""><i class="fas fa-cog"></i><br>Ajustes</a></li>
            <li><a href="<?php echo base_url()?>auth/logout"><i class="fas fa-sign-out-alt"></i><br>Salir</a></li>
        </ul>
    </div>
</nav>