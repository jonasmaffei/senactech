<?php
declare(strict_types=1);

header('Content-Type: application/json; charset=utf-8');

require_once __DIR__ . '/config.php';
$config = app_config();

$response = [
    'status' => 'ok',
    'app' => $config['app']['name'],
    'version' => $config['app']['version'],
    'php' => PHP_VERSION,
    'time' => gmdate('c'),
    'db' => [
        'status' => 'ok',
    ],
];

try {
    require __DIR__ . '/db.php';
    $pdo = db();
    $version = $pdo->query('SELECT VERSION() AS version')->fetchColumn();
    $tickets = (int) $pdo->query('SELECT COUNT(*) FROM chamados')->fetchColumn();

    $response['db']['version'] = $version;
    $response['db']['tickets'] = $tickets;
} catch (Throwable $e) {
    http_response_code(503);
    $response['status'] = 'error';
    $response['db']['status'] = 'error';
    $response['db']['message'] = 'Nao foi possivel conectar ao banco de dados.';
    error_log('NexaTech health error: ' . $e->getMessage());
}

echo json_encode(
    $response,
    JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES
) . PHP_EOL;
