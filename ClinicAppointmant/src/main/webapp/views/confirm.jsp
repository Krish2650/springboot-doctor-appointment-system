<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Appointment Confirmed</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');

        body {
            font-family: 'Montserrat', sans-serif;
background: 
    linear-gradient(rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.35)),
    url('https://thumbs.dreamstime.com/b/emergency-room-entrance-ambulance-red-cross-sign-columbia-memorial-hospital-medical-arts-building-hudson-new-york-162624207.jpg?w=768');
            color: #2e3a59;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .confirmation-box {
            background: #fff;
            padding: 50px 60px;
            border-radius: 15px;
            box-shadow:
                0 4px 15px rgba(0, 0, 0, 0.1),
                0 6px 20px rgba(33, 97, 140, 0.3);
            max-width: 480px;
            text-align: center;
            animation: fadeInScale 0.6s ease forwards;
        }

        @keyframes fadeInScale {
            0% {
                opacity: 0;
                transform: scale(0.8);
            }
            100% {
                opacity: 1;
                transform: scale(1);
            }
        }

        h2 {
            color: #1a3e72;
            font-weight: 700;
            font-size: 2.8rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.15rem;
            color: #2e3a59;
            margin: 15px 0;
            line-height: 1.5;
        }

        b {
            color: #16507b;
        }

        a {
            display: inline-block;
            margin-top: 30px;
            background: #1a3e72;
            color: white;
            text-decoration: none;
            padding: 14px 38px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1.1rem;
            box-shadow: 0 8px 15px rgba(26, 62, 114, 0.3);
            transition: all 0.3s ease;
        }

        a:hover {
            background: #16507b;
            box-shadow: 0 15px 20px rgba(22, 80, 123, 0.4);
            transform: translateY(-3px);
        }

        @media (max-width: 520px) {
            .confirmation-box {
                padding: 40px 30px;
                max-width: 90vw;
            }

            h2 {
                font-size: 2rem;
            }

            p {
                font-size: 1rem;
            }

            a {
                padding: 12px 28px;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="confirmation-box">
        <h2>Appointment Confirmed!</h2>
        <p>Thank you, <b>${appointment.name}</b>.</p>
        <p>Your appointment on <b>${appointment.appointmentDate}</b> is now confirmed.</p>
        <a href="<c:url value='/home' />">Go Back to Home</a>
    </div>
</body>
</html>
