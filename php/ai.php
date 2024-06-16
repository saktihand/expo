<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GlowRX Dashboard</title>
    <link rel="stylesheet" href="../css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="shortcut icon" href="../Logo/Logo.png"/>
    <link rel="stylesheet" href="https://pyscript.net/releases/2024.6.1/core.css">
    <style>
        .chat-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .chat-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .chat-box {
            display: flex;
            flex-direction: column;
            height: 400px;
            overflow-y: auto;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #fff;
            margin-bottom: 20px;
        }

        .chat-input {
            display: flex;
        }

        .chat-input input {
            flex: 1;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 10px 0 0 10px;
            outline: none;
        }

        .chat-input button {
            padding: 10px;
            border: none;
            background-color: #709FB0;
            color: white;
            border-radius: 0 10px 10px 0;
            cursor: pointer;
        }

        .chat-input button:hover {
            background-color: #0056b3;
        }

        .message {
            padding: 10px;
            border-radius: 10px;
            margin-bottom: 10px;
            max-width: 70%;
        }

        .message.user {
            background-color: #709FB0;
            color: white;
            align-self: flex-end;
        }

        .message.bot {
            background-color: #f1f1f1;
            color: black;
            align-self: flex-start;
        }
    </style>
    <script>
        function runPythonScript() {
            var prompt = document.getElementById("userPrompt").value;
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "run_script.php", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var outputDiv = document.getElementById("chatBox");
                    var userMessage = document.createElement("div");
                    userMessage.className = "message user";
                    userMessage.innerText = prompt;
                    outputDiv.appendChild(userMessage);

                    var botMessage = document.createElement("div");
                    botMessage.className = "message bot";
                    botMessage.innerText = xhr.responseText;
                    outputDiv.appendChild(botMessage);

                    document.getElementById("userPrompt").value = "";
                    outputDiv.scrollTop = outputDiv.scrollHeight;
                }
            };
            xhr.send("prompt=" + encodeURIComponent(prompt));
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body>
    <div class="sidebar">
        <div class="logo">
            <img src="../foto/logo.png" alt="">
            <span>GlowRX</span>
        </div>
        <nav>
            <ul>
                <li><i class='bx bxs-dashboard'></i><a href="index.php">Dashboard</a></li>
                <li><i class='bx bx-bar-chart-alt-2'></i><a href="analytic.php">Analytics</a></li>
                <li><i class='bx bx-store-alt'></i><a href="produk.php">Product</a></li>
                <li><i class='bx bx-bulb'></i><a href="ai.php">Recommendation AI</a></li>
                <li><i class='bx bx-bar-chart-alt'></i><a href="report.php">Report</a></li>
                <li><i class='bx bx-happy-alt'></i><a href="profile.php">Profile</a></li>
                <li><i class='bx bxs-log-out'></i><a href="../index.php">Logout</a></li>
            </ul>
        </nav>
        <div class="user-info">
            <img src="../foto/manager.jpg" alt="User">
            <span>Adi Prasetyo<br>Manager</span>
        </div>
    </div>
    <div class="main-content">
        <header class="chat-header">
            <h1>Recommendation AI</h1>
        </header>
        <div class="chat-container">
            <div id="chatBox" class="chat-box"></div>
            <div class="chat-input">
                <input type="text" id="userPrompt" placeholder="Enter your prompt here">
                <button class="nav-button" onclick="runPythonScript()">Generate</button>
            </div>
        </div>
    </div>
</body>
</html>
