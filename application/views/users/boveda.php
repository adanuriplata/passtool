<div class="boveda">
    <h1>Boveda de passwords</h1>
    <a href="<?php echo base_url();?>boveda/boveda/add" class="boveda__button-add">Agregar Cuenta</a>
    <table class="boveda_table">
        <thead>
            <th>#</th>
            <th>Cuenta</th>
            <th>Usuario</th>
            <th>Password</th>
            <th>Opciones</th>
        </thead>
        <tbody>
        <?php foreach ($cuentas as $cuenta): ?>
            <td><?php echo $cuenta->id_account; ?></td>
            <td><?php echo $cuenta->account_name; ?></td>
            <td><?php echo $cuenta->sm_login; ?></td>
            <td><?php echo $cuenta->sm_password; ?></td>
            <td>
                <div class="botones">
                    <a href="">Ver</a>
                    <a href="<?php echo base_url();?>boveda/boveda/edit">Editar</a>
                    <a href="<?php echo $cuenta->sm_password; ?>">Eliminar</a>
                </div>
            </td>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>