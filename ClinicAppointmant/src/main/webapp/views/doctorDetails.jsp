<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Details - Hara Krishna Hospital</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.35)),
            url('https://thumbs.dreamstime.com/b/emergency-room-entrance-ambulance-red-cross-sign-columbia-memorial-hospital-medical-arts-building-hudson-new-york-162624207.jpg?w=768');
            background-size: cover;
            background-position: center;
        }

        header {
            background-color: #0077b6;
            color: white;
            padding: 20px 0;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        header p {
            font-size: 16px;
            margin-top: 5px;
            font-weight: normal;
        }

        main {
            padding: 40px 20px 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .doctor-card {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
            padding: 25px 20px;
            width: 250px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .doctor-card:hover {
            transform: scale(1.07);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
            z-index: 5;
        }

        .doctor-card h3 {
            color: #023e8a;
            margin-bottom: 10px;
            font-size: 20px;
        }

        .doctor-card p {
            margin: 6px 0;
            color: #555;
            font-size: 14px;
        }

        a.card-link {
            text-decoration: none;
        }

        .button-container {
            text-align: center;
            margin-top: 40px;
        }

        a.back {
            display: inline-block;
            background-color: #0096c7;
            color: white;
            text-decoration: none;
            padding: 12px 25px;
            border-radius: 6px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        a.back:hover {
            background-color: #0077b6;
        }

        footer {
            background-color: #0077b6;
            color: white;
            text-align: center;
            padding: 15px;
            font-size: 14px;
            margin-top: 50px;
        }

        @media (max-width: 600px) {
            .doctor-card {
                width: 90%;
            }
        }
    </style>
</head>
<body>

<header>
    Welcome to Hara Krishna Hospital
    <p>Your Health, Our Priority</p>
</header>

<main>
    <a href="book?doctor=PriyaSharma" class="card-link">
        <div class="doctor-card">
            <h3>Dr. Priya Sharma</h3>
            <p>MBBS, MD - General Medicine</p>
            <p>15 years experience</p>
            <p>Cardiology & Internal Medicine</p>
        </div>
    </a>

    <a href="book?doctor=ArjunVerma" class="card-link">
        <div class="doctor-card">
            <h3>Dr. Arjun Verma</h3>
            <p>BDS, MDS - Orthodontics</p>
            <p>10 years experience</p>
            <p>Dental & Oral Care</p>
        </div>
    </a>

    <a href="book?doctor=MeenaJoshi" class="card-link">
        <div class="doctor-card">
            <h3>Dr. Meena Joshi</h3>
            <p>MBBS, MS - Gynaecology</p>
            <p>12 years experience</p>
            <p>Women's Health</p>
        </div>
    </a>

    <a href="book?doctor=JPalReddy" class="card-link">
        <div class="doctor-card">
            <h3>Dr. J. Pal Reddy</h3>
            <p>MBBS, MS - Neuro Surgery</p>
            <p>18 years experience</p>
            <p>Neuro Surgeon & Neuro Specialist</p>
        </div>
    </a>
</main>

<div class="button-container">
    <a href="/" class="back">Back to Home</a>
</div>

<footer>
    © 2025 Hara Krishna Hospital | Designed with ❤️ for your care
</footer>

</body>
</html>
