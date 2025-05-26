<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Home - Hara Krishna Clinic</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

       body {
    font-family: 'Poppins', sans-serif;
background: 
    linear-gradient(rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.35)),
    url('https://thumbs.dreamstime.com/b/emergency-room-entrance-ambulance-red-cross-sign-columbia-memorial-hospital-medical-arts-building-hudson-new-york-162624207.jpg?w=768');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    min-height: 100vh;
    color: white;
    display: flex;
    flex-direction: column;
}

        header {
            background-color: rgba(0, 119, 182, 0.85);
            color: white;
            padding: 30px 20px;
            text-align: center;
            font-size: 34px;
            font-weight: 600;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        }

        .tagline {
            text-align: center;
            font-size: 18px;
            margin-top: 8px;
            color: #bbe1fa;
        }

        main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 20px;
        }

        .card-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 25px;
            width: 100%;
            max-width: 600px;
            color: #333;
        }

        .nav-button {
            background-color: #0096c7;
            color: white;
            text-decoration: none;
            padding: 16px 36px;
            font-size: 18px;
            border-radius: 12px;
            width: 100%;
            text-align: center;
            font-weight: 500;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            transition: 0.3s ease;
        }

        .nav-button:hover {
            background-color: #0077b6;
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
        }

        .nav-button i {
            font-size: 20px;
        }

        footer {
            background-color: rgba(0, 119, 182, 0.85);
            color: white;
            text-align: center;
            padding: 15px 10px;
            font-size: 14px;
            box-shadow: 0 -4px 12px rgba(0, 0, 0, 0.3);
        }

        @media (max-width: 600px) {
            header {
                font-size: 26px;
            }

            .nav-button {
                font-size: 16px;
                padding: 14px 24px;
            }

            .card-container {
                padding: 30px;
            }
        }
    </style>
</head>
<body>



<header>
    Welcome to Hara krishna Hospital
    <div class="tagline">Your Health, Our Priority</div>
</header>

<main>
    <div class="card-container">
        <a href="doctorDetails" class="nav-button"><i class="fas fa-user-md"></i> View Doctor Details</a>
        <a href="book" class="nav-button"><i class="fas fa-calendar-check"></i> Book Appointment</a>
        <a href="list" class="nav-button"><i class="fas fa-list-alt"></i> View Appointment List</a>
    </div>
</main>

<footer>
    &copy; 2025 hara krishna Hospital | Designed with ❤️ for your care
</footer>

</body>
</html>
