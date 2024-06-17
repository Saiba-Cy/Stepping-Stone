<?php
session_start(); // Start the session
require 'vendor/autoload.php';

require 'vendor/phpmailer/phpmailer/src/Exception.php';
require 'vendor/phpmailer/phpmailer/src/PHPMailer.php';
require 'vendor/phpmailer/phpmailer/src/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

 // Ensure Composer autoload is included

include('db/dbconn.php');

if (isset($_POST['signup'])) {
    $firstname = $_POST['firstname'];
    $mi = $_POST['mi'];
    $lastname = $_POST['lastname'];
    $address = $_POST['address'];
    $country = $_POST['country'];
    $zipcode = $_POST['zipcode'];
    $mobile = $_POST['mobile'];
    $telephone = $_POST['telephone'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Check if email already exists
    $query = $conn->query("SELECT * FROM `customer` WHERE `email` = '$email'");
    $check = $query->num_rows;

    // Function to generate OTP
    function generateOTP($length = 6) {
        $characters = '0123456789';
        $otp = '';
        for ($i = 0; $i < $length; $i++) {
            $otp .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $otp;
    }

    // Generate OTP
    $otp = generateOTP();
    $verified = 0;

    if ($check == 1) {
        echo "<script>alert('EMAIL ALREADY EXIST')</script>";
    } else {
        // Insert customer details into the database
        $conn->query("INSERT INTO customer (firstname, mi, lastname, address, country, zipcode, mobile, telephone, email, password, otp, verified)
        VALUES ('$firstname', '$mi', '$lastname', '$address', '$country', '$zipcode', '$mobile', '$telephone', '$email', '$password', '$otp', '$verified')")
        or die(mysqli_error($conn));

        $mail = new PHPMailer(true);

        try {
            // Server settings
            $mail->SMTPDebug = 0;
            $mail->isSMTP();
            $mail->Host = 'smtp.office365.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'lj_budlao@outlook.com'; // Update with your SMTP username
            $mail->Password = 'luckyjame2023'; // Update with your SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;

            // Recipients
            $mail->setFrom('lj_budlao@outlook.com', 'The Stepping Stone'); // Update with your details
            $mail->addAddress($email);

            // Content
            $mail->isHTML(true);
            $mail->Subject = 'Your OTP for Registration';
            $mail->Body = 'Hello ' . $firstname . ', your OTP for email verification is: ' . $otp;

            $mail->send();

            // Store OTP and user email in session
            $_SESSION['otp'] = $otp;
            $_SESSION['email'] = $email;
            echo "<script>alert('Successfully Created')</script>";
            // Redirect to OTP verification page
            header('Location: otp.php');
            exit();
        } catch (Exception $e) {
            // Log error for debugging
            error_log("Error sending email: " . $e->getMessage(), 0);
            echo "Message could not be sent. Please try again later.";
        }
        
        
    }
}
?>
