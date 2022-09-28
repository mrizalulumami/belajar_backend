<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
</head>

<body>
    <h1>Ini Halaman <?= $title ?></h1>
    <a type="button" href="<?= base_url('crud/hal_tambah_data') ?>">Tambah data</a>
    <table>
        <thead>
            <tr>
                <th>No.</th>
                <th>ID</th>
                <th>Nama</th>
                <th>Umur</th>
                <th>Tinggi badan</th>
                <th>Berat badan</th>
                <th>Jenis kelamin</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $i = 1;
            if (isset($balita)) {
                foreach ($balita as $a) { ?>
            <tr>
                <td><?= $i++ ?></td>
                <td><?= $a['id']; ?></td>
                <td><?= $a['nama']; ?></td>
                <td><?= $a['umur']; ?></td>
                <td><?= $a['tingg']; ?></td>
                <td><?= $a['berat_badan']; ?></td>
                <td><?= $a['jenis_kelamin']; ?></td>
                <td>
                    <a type="button" href="<?= base_url('crud/hal_edit_balita/') . $a['id'] ?>">Edit data</a>
                    <hr>
                    <a type="button" href="<?= base_url('operasi/delete_balita/') . $a['id'] ?>">Delete Data</a>
                    <hr>
                </td>
            </tr>
            <?php }
            } ?>
        </tbody>
    </table>

</body>

</html>