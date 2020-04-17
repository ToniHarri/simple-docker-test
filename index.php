<?

$value = "World";

$db = new PDO(
    'mysql:host=database; dbname=test;
    charset=utf8mb4',
    'test_user',
    'test_user'
);

$databaseTest = ($db->query('SELECT * FROM dockerSample'))->fetchAll(PDO::FETCH_OBJ);

?>

<html>
    <body>
        <h1>Hello, <?= $value ?>!</h1>

        <?php foreach($databaseTest as $row): ?>
            <p>Hello, <?= $row->name ?></p>
        <?php endforeach; ?>
    </body>
</html>
