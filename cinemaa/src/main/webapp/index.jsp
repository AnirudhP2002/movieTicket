<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            text-align: center;
            padding-top: 30px;
        }
        h1 {
            color: #333;
        }
        .movie-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            max-width: 1000px;
            margin: 0 auto;
        }
        .movie-item {
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s;
        }
        .movie-item:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .movie-image {
            width: 100%;
            max-height: 200px;
            object-fit: cover;
            border-radius: 10px;
        }
        .movie-title {
            margin-top: 20px;
            color: #333;
            font-size: 20px;
        }
        .book-link {
            display: inline-block;
            margin-top: 20px;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .book-link:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Welcome to Movie Booking</h1>
    <div class="movie-list">
        <div class="movie-item">
            <img class="movie-image" src="images/mk.jpeg" alt="M. Kumaran Son of Mahalakshmi">
            <h3 class="movie-title">M. Kumaran Son of Mahalakshmi</h3>
            <a class="book-link" href="booking.jsp?movie=M. Kumaran Son of Mahalakshmi">Book Now</a>
        </div>
        <div class="movie-item">
            <img class="movie-image" src="images/thilu mullu.jpg" alt="Thilu Mullu">
            <h3 class="movie-title">Thilu Mullu</h3>
            <a class="book-link" href="booking.jsp?movie=Thilu Mullu">Book Now</a>
        </div>
        <div class="movie-item">
            <img class="movie-image" src="images/vrm.jpg" alt="Vasool Raja">
            <h3 class="movie-title">Vasool Raja M.B.B.S</h3>
            <a class="book-link" href="booking.jsp?movie=Vasool Raja M.B.B.S">Book Now</a>
        </div>
        <div class="movie-item">
            <img class="movie-image" src="images/petta.jpeg" alt="petta">
            <h3 class="movie-title">Petta</h3>
            <a class="book-link" href="booking.jsp?movie=Petta">Book Now</a>
        </div>
        <div class="movie-item">
            <img class="movie-image" src="images/KGF2.jpg" alt="KGF 2">
            <h3 class="movie-title">KGF 2</h3>
            <a class="book-link" href="booking.jsp?movie=KGF 2">Book Now</a>
        </div>
         <div class="movie-item">
            <img class="movie-image" src="images/ccv.jpg" alt="ccv">
            <h3 class="movie-title">Chekka Chivantha Vaanam</h3>
            <a class="book-link" href="booking.jsp?movie=Chekka Chivantha Vaanam">Book Now</a>
        </div>
        <!-- Add more movies here as needed -->
    </div>
</body>
</html>
