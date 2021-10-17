<?php
session_start();
error_reporting(1);
date_default_timezone_set('Asia/Ho_Chi_Minh');
/* connect mysql */
$conn = mysqli_connect('localhost', 'unbahckh_huuloc', 'Tung852001$', 'unbahckh_huuloc') or die('Không thể kết nối đến cơ sở dữ liệu, vui lòng thử lại.');
mysqli_set_charset($conn, "utf8");

include_once 'Mailer/PHPMailerAutoload.php';

$check_settings         = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM table_settings WHERE settings_id = '1'"));
$settings_id            = $check_settings['settings_id'];
$settings_title         = $check_settings['settings_title'];
$settings_logo          = $check_settings['settings_logo'];
$settings_name          = $check_settings['settings_name'];
$settings_keyword       = $check_settings['settings_keyword'];
$settings_domain        = $check_settings['settings_domain'];
$settings_card24h      = $check_settings['settings_card24h'];
$settings_discount      = $check_settings['settings_discount'];
$settings_facebook      = $check_settings['settings_facebook'];
$settings_fanpage       = $check_settings['settings_fanpage'];
$settings_noti          = $check_settings['settings_noti'];
$settings_mail_account  = $check_settings['settings_mail_account'];
$settings_mail_password = $check_settings['settings_mail_password'];
$settings_token         = $check_settings['settings_token'];
$settings_status        = $check_settings['settings_status'];
$settings_callback      = $settings_domain.'modun/modun_recharge_callback.php';




$duysexy = false;
if (isset($_SESSION['login']) && $_SESSION['login'] == 'ok') {
    $check_user    = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM table_user WHERE user_username = '" . $_SESSION['user_username'] . "'"));
    $user_id       = $check_user['user_id'];
    $user_username = $check_user['user_username'];
    $user_fullname = $check_user['user_fullname'];
    $user_email    = $check_user['user_email'];
    $user_phone    = $check_user['user_phone'];
    $user_point    = $check_user['user_point'];
    $user_facebook = $check_user['user_facebook'];
    $user_location = $check_user['user_location'];
    $user_ip       = $check_user['user_ip'];
    $user_level    = $check_user['user_level'];
    $user_time     = $check_user['user_time'];
    $duysexy       = true;
    
}

function sendmail($mail_nhan, $ten_nhan, $chu_de, $noi_dung, $bcc){
    $mail = new PHPMailer();
    $mail->SMTPDebug = 0;
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = $settings_username_mail;
    $mail->Password = $settings_password_mail;
    $mail->SMTPSecure = 'TLS';
    $mail->Port = 587;
    $mail->setFrom($settings_username_mail, $bcc);
    $mail->addAddress($mail_nhan, $ten_nhan);
    $mail->addReplyTo($settings_username_mail, $bcc);
    $mail->isHTML(true);
    $mail->Subject = "$chu_de";
    $mail->Body    = $noi_dung;
    $mail->CharSet = 'UTF-8';
    $send = $mail->send();
    return $send;
}


function useragent($useragent)
{
    $str = substr($useragent, strpos($useragent, '(') + -9);
    $str = substr($str, -60, strpos($str, ')'));
    return $str;
}

function setSession($user_id, $user_username)
{
    $_SESSION['login']         = 'ok';
    $_SESSION['user_id']       = $user_id;
    $_SESSION['user_username'] = $user_username;
}

function logout()
{
    session_start();
    session_destroy();
    header('location: /');
}

function curl($url) {
    $ch = @curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    $head[] = "Connection: keep-alive";
    $head[] = "Keep-Alive: 300";
    $head[] = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7";
    $head[] = "Accept-Language: en-us,en;q=0.5";
    curl_setopt($ch, CURLOPT_USERAGENT, 'Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14');
    curl_setopt($ch, CURLOPT_HTTPHEADER, $head);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_TIMEOUT, 60);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Expect:'
    ));
    $page = curl_exec($ch);
    curl_close($ch);
    return $page;
}

function check_string($data)
{
    return str_replace(array('<',"'",'>','?','/',"\\",'--','eval(','<php'),array('','','','','','','','',''),htmlspecialchars(addslashes(strip_tags($data))));
}
function random($string, $int)
{  
    return substr(str_shuffle($string), 0, $int);
}
?>