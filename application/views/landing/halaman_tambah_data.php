<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
</head>

<body>
    <form action="<?= base_url('operasi/add_data') ?>" method="POST">
        <input type="text" name="nama" placeholder="masukan nama!">
        <input type="text" name="umur" placeholder="masukan umur!">
        <input type="text" name="tbadan" placeholder=" masukan Tinggi badan!">
        <input type="text" name="berat" placeholder="masukan berat badan!">
        <input type="text" name="jk" placeholder="masukan jenis Kelamin!">
        <button type="submit">Save data</button>
    </form>


</body>

</html>