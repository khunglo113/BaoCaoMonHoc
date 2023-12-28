<?php
include "../vendor/PHPMailer/src/PHPMailer.php";
include "../vendor/PHPMailer/src/Exception.php";
include "../vendor/PHPMailer/src/OAuth.php";
include "../vendor/PHPMailer/src/POP3.php";
include "../vendor/PHPMailer/src/SMTP.php";
 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$mail = new PHPMailer(true);
print_r($mail);

try {
    //Server settings
    $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
    $mail->SMTPAuth = true;                               // Enable SMTP authentication
    $mail->Username = 'nhan3gasper@gmail.com';                 // SMTP username
    $mail->Password = 'kbpg tegt nagk zdeh';                           // SMTP password
    $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 587;                                    // TCP port to connect to
 
    //Recipients
    $mail->setFrom('nhan3gasper@gmail.com', 'TestMail');
    $mail->addAddress('nhan2gasper@gmail.com', 'Joe User');     // Add a recipient
//    $mail->addAddress('ellen@example.com');               // Name is optional
//    $mail->addReplyTo('info@example.com', 'Information');
    $mail->addCC('nhan3gasper@gmail.com');
//    $mail->addBCC('bcc@example.com');
 
    //Attachments
//    $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
//    $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
 
    //Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'TestMailllll';
    $mail->Body    = '123456789';
//    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
 
    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
}