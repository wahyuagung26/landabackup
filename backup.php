<?php
use Ifsnop\Mysqldump as IMysqldump;

require "vendor/autoload.php";
require "config.php";
require "gdrive.php";

$host = $_SERVER['HTTP_HOST'];

try {

    $date    = date("d-m-Y");
    $tmpName = [];
    foreach ($dbList as $key => $val) {
        $namaFile  = $val['dbname'] . '_' . $date . '.sql';
        $tmpName[] = $namaFile;

        $dump = new IMysqldump\Mysqldump('mysql:host=' . $val['host'] . ';dbname=' . $val['dbname'], $val['username'], $val['password']);
        $dump->start('tmpbck/' . $namaFile);
    }

    $zipname = $host . '_' . $date . '.zip';
    $zip     = new ZipArchive;
    if (true === ($zip->open($zipname, ZipArchive::CREATE))) {
        foreach ($tmpName as $key => $value) {
            $zip->addFile('tmpbck/' . $value, $value);
        }
        $zip->close();
    }

    /** Kirim ke google drive */
    sendToDrive($zipname, $clientId, $clientSecret, $authCode, $requestURI);

} catch (\Exception $e) {
    echo 'mysqldump-php error: ' . $e->getMessage();
}
