<?php
require_once __DIR__ . '/../client/SwaggerClient-php/vendor/autoload.php';

$client = new GuzzleHttp\Client();
$config = Swagger\Client\Configuration::getDefaultConfiguration();
$apiInstance = new Swagger\Client\Api\EmployeeApi($client, $config);

try {
    $result = $apiInstance->getEmployeeById(1234);
    echo '<pre>' , var_dump($result) , '</pre>';
} catch (Exception $e) {
    echo 'Exception when calling EmployeeApi->addEmployee: ', $e->getMessage(), PHP_EOL;
}