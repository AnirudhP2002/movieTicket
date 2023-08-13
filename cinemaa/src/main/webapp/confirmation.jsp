<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            text-align: center;
            padding-top: 30px;
        }
        .confirmation-box {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .confirmation-title {
            font-size: 24px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        .confirmation-details {
            text-align: left;
            margin-bottom: 20px;
        }
        .confirmation-details span {
            font-weight: bold;
        }
        .confirmation-message {
            font-size: 18px;
            color: #333;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .back-link:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="confirmation-box">
        <div class="confirmation-title">Booking Confirmation</div>
        <div class="confirmation-details">
            <span>Name:</span> <%= request.getParameter("name") %><br>
            <span>Email:</span> <%= request.getParameter("email") %><br>
            <span>Movie:</span> <%= request.getParameter("movie") %><br>
          
            <!-- Add more booking details here as needed -->
        </div>
        <div class="confirmation-message">
            Thank you for booking! Your seats for <%= request.getParameter("movie") %> have been reserved.<br>
            We've sent a confirmation email to <%= request.getParameter("email") %> with the booking details.
        </div>
        <a class="back-link" href="login.jsp">Back to Movie List</a>
    </div>
</body>
</html>
