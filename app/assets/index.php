<?php

if ( $_REQUEST['code'] == 'joor0yee1oodeegooLishoh9A' ) {

  $to      = 'info@drylock.eu';
  $subject = 'Message from web';
  $_REQUEST['message'] . "\n\n" . $_REQUEST['email'];
  $headers = 'From: ' . $_REQUEST['name'] . ' <' . $_REQUEST['email'] . ">\r\n" .
      'Reply-To: ' . $_REQUEST['email'] . "\r\n" .
      'X-Mailer: PHP/' . phpversion();

  echo mail($to, $subject, $message, $headers);

} else {
    header('HTTP/1.0 404 Not Found');
    echo "<h1>404 Not Found</h1>";
    echo "The page that you have requested could not be found.";
    exit();
}
