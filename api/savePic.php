<?php
header('Content-Type: application/json');

require_once('../lib/config.php');

if ($config['file_format_date']) {
    $file = date('Ymd_His').'.jpg';
} else {
    $file = md5(time()).'.jpg';
}

$filename_tmp = $config['foldersAbs']['tmp'] . DIRECTORY_SEPARATOR . $file;


$data = $_POST['canvasimg'];
list($type, $data) = explode(';', $data);
list(, $data)      = explode(',', $data);
$data = base64_decode($data);


file_put_contents($filename_tmp, $data);

// send imagename to frontend
echo json_encode([
    'success' => 'image',
    'file' => $file,
]);

die;
