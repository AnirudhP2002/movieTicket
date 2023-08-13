<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>👾 Error 404 - Page Not Found 👾</title>
    <style>
        body {
            background-color: #000; /* Black - Classic geek theme */
            font-family: 'Courier New', monospace;
            color: #00FF00; /* LimeGreen - Green color for text */
        }
        .container {
            text-align: center;
            margin-top: 100px;
        }
        .error-image {
            width: 300px;
            height: auto;
        }
        .error-message {
            font-size: 36px;
            color: #fff;
            margin-top: 30px;
            font-weight: bold;
        }
        .description {
            font-size: 18px;
            color: #00FF00; /* LimeGreen - Green color for text */
            margin-top: 20px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }
        .binary {
            font-size: 14px;
            color: #00FF00; /* LimeGreen - Green color for binary digits */
        }
        .button {
            background-color: #008080; /* Teal - Geeky color for the button */
            border: none;
            color: white;
            padding: 14px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 30px;
            cursor: pointer;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease-in-out;
            position: relative;
            overflow: hidden;
        }
        .button:hover {
            background-color: #006666; /* Darker teal on hover */
            transform: scale(1.05);
        }
        .geeky-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%) rotate(-30deg);
            font-size: 24px;
            color: #fff;
            text-transform: uppercase;
            pointer-events: none;
            opacity: 0.2;
            z-index: -1;
        }
    </style>
</head>
<body>
    <div class="container">
        <img class="error-image" src="https://cdn.example.com/images/404_geek.png" alt="404 Not Found">
        <div class="error-message">👾 Error 404 - Page Not Found 👾</div>
        <div class="description">
            <p>"We regret to inform you that the details you entered are incorrect.</p>
            <p>Kindly review the provided information and ensure its accuracy before resubmitting."</p>
            <p class="binary">01000111 01101111 01101111 01100100 01100010 01111001 01100101</p>
            <p class="binary">01101110 01100111 01101000 01100101 01101100 01101100 01101111</p>
            <p class="binary">01110100 01101000 01100101 01110010 01100101 00100001</p>
            <p>Click the "Exit to Reality" button to go back to login page</p>
        </div>
        <a href="login.jsp" class="button">
            <span class="geeky-text">Exit to Reality</span>
            Exit to Reality
        </a>
    </div>
</body>
</html>
