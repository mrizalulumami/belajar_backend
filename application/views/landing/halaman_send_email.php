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
    echo $this->session->flashdata('email_sent');
    echo form_open('operasi/send_email');
    ?>
    <table>
        <tbody>
            <tr>
                <span>masukan email tujuan : </span> <input type="text" name="emailtuju"
                    placeholder="masukan email tujuan!">
            </tr>
            <br>
            <br>
            <tr>
                <span>masukan subject : </span> <input type="text" name="sub" placeholder="Ketikan subject">
            </tr>
            <br>
            <br>
            <tr>
                <span>masukan pesan : </span> <input type="text" name="message" placeholder="masukan berat badan!">
            </tr>
            <br>
            <br>
            <tr>
                <button type="submit">Kirim email</button>
            </tr>
        </tbody>
    </table>
    <?php
    echo form_close();
    ?>


</body>

</html>