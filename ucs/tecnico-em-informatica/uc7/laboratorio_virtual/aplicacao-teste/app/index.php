<?php
declare(strict_types=1);

require_once __DIR__ . '/config.php';
$config = app_config();
$app = $config['app'];
$error = null;
$tickets = [];
$dbOk = false;

try {
    require __DIR__ . '/db.php';
    $pdo = db();
    $dbOk = true;

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $titulo = trim((string) ($_POST['titulo'] ?? ''));
        $descricao = trim((string) ($_POST['descricao'] ?? ''));

        if ($titulo === '' || $descricao === '') {
            $error = 'Preencha o titulo e a descricao.';
        } else {
            $stmt = $pdo->prepare(
                'INSERT INTO chamados (titulo, descricao, status) VALUES (:titulo, :descricao, :status)'
            );
            $stmt->execute([
                ':titulo' => $titulo,
                ':descricao' => $descricao,
                ':status' => 'aberto',
            ]);
            header('Location: index.php');
            exit;
        }
    }

    $tickets = $pdo->query(
        'SELECT id, titulo, descricao, status, criado_em FROM chamados ORDER BY id DESC'
    )->fetchAll();
} catch (Throwable $e) {
    error_log('NexaTech app error: ' . $e->getMessage());
    $error = 'Banco de dados indisponivel. Execute a configuracao do banco (Aula 27) e tente novamente.';
}

function h(string $value): string
{
    return htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
}

$statusLabels = [
    'aberto' => 'Aberto',
    'em_andamento' => 'Em andamento',
    'resolvido' => 'Resolvido',
];
?>
<!doctype html>
<html lang="pt-BR">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= h($app['name']) ?></title>
    <link rel="stylesheet" href="assets/style.css">
</head>
<body>
<header class="topbar">
    <div>
        <span class="brand">NexaTech</span>
        <span class="subtitle">Controle de Chamados</span>
    </div>
    <span class="badge <?= $dbOk ? 'ok' : 'off' ?>">
        Banco: <?= $dbOk ? 'conectado' : 'indisponivel' ?>
    </span>
</header>

<main class="container">
    <section class="card">
        <h1>Chamados da NexaTech</h1>
        <p class="muted">
            Aplicacao de teste da UC7 para validar Apache, PHP, MariaDB e a integracao
            entre o APP01 e o DB01.
        </p>

        <?php if ($error !== null): ?>
            <div class="alert"><?= h($error) ?></div>
        <?php endif; ?>

        <form method="post" class="form">
            <label>
                Titulo
                <input type="text" name="titulo" maxlength="120" required>
            </label>
            <label>
                Descricao
                <textarea name="descricao" rows="3" required></textarea>
            </label>
            <button type="submit">Abrir chamado</button>
        </form>
    </section>

    <section class="card">
        <h2>Chamados cadastrados</h2>
        <?php if (!$dbOk): ?>
            <p class="muted">Configure o banco no DB01 e rode o deploy novamente para ver os chamados.</p>
        <?php elseif ($tickets === []): ?>
            <p class="muted">Nenhum chamado cadastrado.</p>
        <?php else: ?>
            <table>
                <thead>
                <tr>
                    <th>#</th>
                    <th>Titulo</th>
                    <th>Descricao</th>
                    <th>Status</th>
                    <th>Criado em</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($tickets as $ticket): ?>
                    <tr>
                        <td><?= (int) $ticket['id'] ?></td>
                        <td><?= h((string) $ticket['titulo']) ?></td>
                        <td><?= h((string) $ticket['descricao']) ?></td>
                        <td><span class="status"><?= h($statusLabels[$ticket['status']] ?? (string) $ticket['status']) ?></span></td>
                        <td><?= h((string) $ticket['criado_em']) ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        <?php endif; ?>
        <p class="small">
            Teste de conexao: <a href="health.php">health.php</a>
        </p>
    </section>
</main>

<footer class="footer">
    <?= h($app['name']) ?> v<?= h($app['version']) ?> - UC7
</footer>
</body>
</html>
