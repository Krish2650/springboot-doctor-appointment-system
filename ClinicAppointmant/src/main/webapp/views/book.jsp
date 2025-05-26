<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Appointment - Hara Krishna Hospital</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            width: 100%;
            font-family: Arial, sans-serif;
            overflow-x: hidden;
            background: 
                linear-gradient(rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.35)),
                url('https://thumbs.dreamstime.com/b/emergency-room-entrance-ambulance-red-cross-sign-columbia-memorial-hospital-medical-arts-building-hudson-new-york-162624207.jpg?w=768');
            background-size: cover;
            background-position: center;
        }

        header {
            background-color: #0077b6;
            color: white;
            padding: 20px 0;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        form {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 420px;
        }

        h2 {
            text-align: center;
            color: #023e8a;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #333;
        }

        input,
        button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        input:focus {
            border-color: #0077b6;
            outline: none;
        }

        button {
            background-color: #0096c7;
            color: white;
            border: none;
            margin-top: 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0077b6;
        }

        .admin-link {
            text-align: center;
            margin-top: 20px;
        }

        .admin-link a {
            text-decoration: none;
            color: #0077b6;
            font-weight: bold;
        }

        .admin-link a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            form {
                padding: 20px;
            }

            h2 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>

<header>Hara Krishna Hospital</header>

<main>
    <form action="save" method="post">
        <h2>Book an Appointment</h2>

        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required />

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required />

        <label for="phone">Phone:</label>
        <input type="text" name="phone" id="phone" required />

        <label for="appointmentDate">Appointment Date:</label>
        <input type="date" name="appointmentDate" id="appointmentDate" required />

        <button type="submit">Book Now</button>

        <div class="admin-link">
            <a href="list">View All Appointments (Admin)</a>
        </div>
    </form>
</main>

</body>
</html>
