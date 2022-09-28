<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
</head>

<body>
    <?php
    if (isset($e_balita)) {
        foreach ($e_balita as $a) { ?>
    <form action="<?= base_url('operasi/edit_balita') ?>" method="POST">
        <input type="text" name="id" value="<?= $a['id'] ?>" readonly>
        <input type="text" name="nama" value="<?= $a['nama'] ?>" placeholder="masukan nama!">
        <input type="text" name="umur" value="<?= $a['umur'] ?>" placeholder="masukan umur!">
        <input type="text" name="tbadan" value="<?= $a['tingg'] ?>" placeholder=" masukan Tinggi badan!">
        <input type="text" name="berat" value="<?= $a['berat_badan'] ?>" placeholder="masukan berat badan!">
        <input type="text" name="jk" value="<?= $a['jenis_kelamin'] ?>" placeholder="masukan jenis Kelamin!">
        <button type="submit">Save data</button>
    </form>
    <?php }
    } ?>


</body>

</html>