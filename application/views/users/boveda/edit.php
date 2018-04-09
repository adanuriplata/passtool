<div class="boveda">
    <h1>Edicion de passwords</h1>
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
            <td><input type="text" value="<?php echo $cuenta->sm_login; ?>"></td>
            <td><input type="text" value="<?php echo $cuenta->sm_password; ?>"></td>
            <td>
                <div class="botones">
                    <a href="">Ver</a>
                    <a href="<?php echo base_url();?>/boveda/edit">Editar</a>
                    <a href="<?php echo $cuenta->sm_password; ?>">Eliminar</a>
                </div>
            </td>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>