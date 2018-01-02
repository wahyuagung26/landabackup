<?php

require "config.php";

require_once "google-api/src/Google_Client.php";
require_once "google-api/src/contrib/Google_DriveService.php";

$client = new Google_Client();
$client->setClientId($clientId);
$client->setClientSecret($clientSecret);
$client->setRedirectUri($requestURI);
$client->setScopes(array('https://www.googleapis.com/auth/drive'));

$service = new Google_DriveService($client);

$authUrl = $client->createAuthUrl();

echo "Authorisation URL: <a href='" . $authUrl . "'>Click Here</a>\n";
echo "Please visit the URL above and then save the given value into config.php\n";
