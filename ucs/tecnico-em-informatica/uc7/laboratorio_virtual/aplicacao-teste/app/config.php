<?php
declare(strict_types=1);

function load_env_file(string $path): void
{
    if (!is_readable($path)) {
        return;
    }

    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    if ($lines === false) {
        return;
    }

    foreach ($lines as $line) {
        $line = trim($line);
        if ($line === '' || $line[0] === '#') {
            continue;
        }

        $parts = explode('=', $line, 2);
        if (count($parts) !== 2) {
            continue;
        }

        $key = trim($parts[0]);
        $value = trim($parts[1]);

        if ($key !== '' && getenv($key) === false) {
            putenv($key . '=' . $value);
        }
    }
}

function env_value(string $key, ?string $default = null): string
{
    $value = getenv($key);

    if ($value === false || $value === '') {
        if ($default !== null) {
            return $default;
        }

        throw new RuntimeException('Variavel de ambiente ausente: ' . $key);
    }

    return $value;
}

function app_config(): array
{
    static $config = null;

    if ($config !== null) {
        return $config;
    }

    load_env_file(getenv('APP_ENV_FILE') ?: '/etc/nexatech/app.env');

    $config = [
        'db' => [
            'host' => env_value('DB_HOST', '192.168.10.30'),
            'port' => env_value('DB_PORT', '3306'),
            'name' => env_value('DB_NAME', 'nexatech_app'),
            'user' => env_value('DB_USER', 'app_nexatech'),
            'pass' => env_value('DB_PASS'),
        ],
        'app' => [
            'name' => 'NexaTech - Controle de Chamados',
            'version' => '1.0.0',
        ],
    ];

    return $config;
}

return app_config();
