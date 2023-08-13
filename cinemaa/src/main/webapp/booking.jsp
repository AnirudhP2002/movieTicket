<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Booking - <%= request.getParameter("movie") %></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: radial-gradient(circle, #f06, #f00, #06f);
            background-size: 400% 400%;
            animation: gradientAnimation 10s ease infinite;
            text-align: center;
            padding-top: 30px;
        }
        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }
        .booking-form {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .booking-title {
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            color: #4CAF50;
            margin-bottom: 30px;
            animation: fadeIn 2s ease;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        .booking-form label {
            display: block;
            text-align: left;
            margin-bottom: 10px;
            color: #666;
        }
        .booking-form input[type="text"],
        .booking-form input[type="email"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            background-color: #f9f9f9;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        .booking-form input[type="text"]:focus,
        .booking-form input[type="email"]:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 4px rgba(76, 175, 80, 0.8);
        }
        .booking-form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .booking-form input[type="submit"]:hover {
            background-color: #45a049;
        }
        /* Seat Selection Styles */
        .seat-grid {
            display: grid;
            grid-template-columns: repeat(10, 40px); /* 10 seats per row */
            gap: 5px;
            justify-content: center;
            margin-top: 30px;
        }
        .seat {
            width: 40px;
            height: 40px;
            border: 1px solid #ccc;
            border-radius: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: background-color 0.3s;
            font-weight: bold;
            color: #333;
        }
        .seat.available {
            background-color: #f9f9f9;
        }
        .seat.selected {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <div class="booking-form">
        <div class="booking-title">
            Booking for <%= request.getParameter("movie") %>
        </div>
        <form id="bookingForm" action="confirmation.jsp" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            <!-- Add more booking form fields as needed -->
            <input type="hidden" name="movie" value="<%= request.getParameter("movie") %>">
            <input type="hidden" name="selectedSeats" id="selectedSeats" value="">
			<!-- Seat Selection Grid -->
			<label for="seat">Seats:</label>
    <div class="seat-grid" id="seatGrid">
        <!-- Generate seats from A1 to J10 -->
        <% for (char row = 'A'; row <= 'J'; row++) {
               for (int seatNum = 1; seatNum <= 10; seatNum++) {
                   String seatId = String.valueOf(row) + seatNum;
                   %>
                   <div class="seat available" data-seat="<%= seatId %>"><%= seatId %></div>
               <%}
           }%>
    </div>

    <script>
        const seats = document.querySelectorAll(".seat");
        const selectedSeatsInput = document.getElementById("selectedSeats");

        // Event listener for seat selection
        seats.forEach(seat => {
            seat.addEventListener("click", function() {
                if (!this.classList.contains("booked")) {
                    this.classList.toggle("selected");
                    updateSelectedSeats();
                }
            });
        });

        // Function to update the selected seats field in the form
        function updateSelectedSeats() {
            const selectedSeats = Array.from(document.querySelectorAll(".seat.selected"));
            const selectedSeatsText = selectedSeats.map(seat => seat.getAttribute("data-seat")).join(",");
            selectedSeatsInput.value = selectedSeatsText;
        }
    </script>
    <br><br>
    	<h3>SCREEN THIS WAY</h6>
    <br><br>
            <input type="submit" value="Book Now">
        </form>
    </div>

    
</body>
</html>
