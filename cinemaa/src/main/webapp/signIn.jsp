<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>SignIn Page - Movie Ticket Booking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #1a1a1a;
            background-image: url("images/movie.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        .container {
            max-width: 400px;
            margin-top: 100px;
        }

        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
            background-color: #333;
            color: #fff;
        }

        .form-label {
            font-weight: bold;
            color: #fff;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            color: #fff;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        h1 {
            text-align: center;
            color: #007bff;
            font-size: 36px;
            margin-bottom: 30px;
            text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
 <div class="container">
        <div class="card shadow">
            <div class="card-body">
            	<h1>Enter the Sign in details</h1>
            	<script>
                    const urlParams = new URLSearchParams(window.location.search);
                    const userExist = urlParams.get('userExist');
                    if (userExist === 'true') {
                        alert('User already exist');
                    }
                </script>
				<form action="SignInServlet" method="post">
				
					<div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="email" id="email" name="email" class="form-control" required>
                    </div>
                    
            		<div class="mb-3">
                        <label for="username" class="form-label">Name:</label>
                        <input type="text" id="username" name="username" class="form-control" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="password" class="form-label">Password:</label>
                        <input type="password" id="password" name="password" class="form-control" required>
                    </div>
                    
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">submit</button>
                    </div>
				</form>
			</div>
		</div>
	</div>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>