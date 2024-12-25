<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Event</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://img.icons8.com/fluency/48/event.png" type="image/png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        :root {
            --light-blue: #ADD8E6;
            --medium-blue: #4682B4;
            --dark-blue: #003366;
            --hover-blue: #1E90FF;
            --background-color: #F0F8FF;
            --navbar-bg: #ADD8E6;
            --footer-bg: #F0F8FF;
            --footer-text: #003366;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: var(--background-color);
        }

        .navbar {
            background-color: var(--navbar-bg);
        }

        .navbar .navbar-brand, .navbar-nav .nav-link {
            color: var(--medium-blue);
        }

        .navbar .navbar-toggler-icon {
            background-color: #FFF;
        }

        .navbar-nav .nav-link:hover {
            color: var(--hover-blue);
        }

        .main {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 0;
            background-color: var(--background-color);
        }

        .login-card {
            background-color: var(--light-blue);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .login-card h3 {
            color: var(--medium-blue);
            margin-bottom: 20px;
        }

        .login-card input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .login-card input[type="submit"] {
            background-color: var(--medium-blue);
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-card input[type="submit"]:hover {
            background-color: var(--hover-blue);
        }

        footer {
            background-color: var(--footer-bg);
            color: var(--footer-text);
            text-align: center;
            padding: 1rem 0;
            width: 100%;
        }

        footer a {
            color: var(--footer-text);
        }

        footer a:hover {
            color: var(--hover-blue);
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">Evently</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact Us</a>
                </li>
            </ul>
            <div class="d-flex">
                <a href="index.jsp" class="btn btn-outline-danger ms-auto px-4 py-2">Logout</a>
            </div>
        </div>
    </div>
</nav>

<div class="container my-5">
    <!-- Events Section -->
    <div class="row mb-4">
        <div class="col-md-6 text-center">
            <img src="https://cdn-icons-png.freepik.com/512/7978/7978573.png" alt="Events" class="img-fluid rounded" style="max-width: 200px; border: 2px solid var(--medium-blue);">
        </div>
        <div class="col-md-6 d-flex flex-column justify-content-center align-items-center">
            <h2 class="text-center text-primary mb-3">Event Details</h2>
            <a href="EventDetails.jsp" class="btn btn-primary px-4 py-2">View Event Details</a>
        </div>
    </div>

    <!-- Divider -->
    <hr class="my-4">

    <!-- Transactions Section -->
    <div class="row">
        <div class="col-md-6 text-center order-md-2">
            <img src="https://cdn-icons-png.flaticon.com/512/8552/8552832.png" alt="Transactions" class="img-fluid rounded" style="max-width: 200px; border: 2px solid var(--medium-blue);">
        </div>
        <div class="col-md-6 d-flex flex-column justify-content-center align-items-center order-md-1">
            <h3 class="text-center text-primary mb-3">Transaction Details</h3>
            <a href="TransactionDetails.jsp" class="btn btn-primary px-4 py-2">View Transaction Details</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>