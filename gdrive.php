<?php
set_time_limit(0);
ini_set('memory_limit', '1024M');

require_once "google-api/src/Google_Client.php";
require_once "google-api/src/contrib/Google_DriveService.php";
require_once "config.php";

function sendToDrive($fileName, $clientId, $clientSecret, $authCode, $requestURI)
{
    if ($authCode == "") {
        die("You need to run getauthcode.php first!\n\n");
    }

    $client = new Google_Client();
    $client->setClientId($clientId);
    $client->setClientSecret($clientSecret);
    $client->setRedirectUri($requestURI);
    $client->setScopes(array("https://www.googleapis.com/auth/drive"));

    $service = new Google_DriveService($client);

    /**
     * Save access token
     */
    if (!file_exists("token.json")) {
        $accessToken = $client->authenticate($authCode);
        file_put_contents("token.json", $accessToken);
    } else {
        $accessToken = file_get_contents("token.json");
    }

    $client->setAccessToken($accessToken);

    if (file_exists($fileName)) {

        $file = new Google_DriveFile();
        $file->setTitle($fileName);
        $file->setDescription("Backup database tanggal " . date("d-m-Y"));
        $file->setMimeType("application/gzip");

        $data        = file_get_contents($fileName);
        $createdFile = $service->files->insert($file, array('data' => $data, 'mimeType' => "application/gzip"));

        unlink($fileName);
    }
}
