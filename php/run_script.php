<?php
header('Content-Type: text/plain');

if (isset($_POST['prompt'])) {
    $prompt = escapeshellarg($_POST['prompt']);
    $command = escapeshellcmd("python3 fetch.py $prompt");
    $output = shell_exec($command);
    echo $output;
} else {
    echo "Prompt tidak diberikan.";
}
?>
