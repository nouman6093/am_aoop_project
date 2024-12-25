<!DOCTYPE html>
<html lang="en">
<head>
    <title>Participant Signup</title>
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
            font-family: Arial, sans-serif;
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
            max-width: 450px;
            text-align: center;
        }

        .login-card h3 {
            color: var(--medium-blue);
            margin-bottom: 20px;
        }

        .login-card input {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
            background-color: #fff;
        }

        .login-card input[type="submit"] {
            background-color: var(--medium-blue);
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
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
            margin-top: auto;
        }

        footer a {
            color: var(--footer-text);
        }

        footer a:hover {
            color: var(--hover-blue);
        }

        .btn-logout {
            background-color: var(--medium-blue);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-logout:hover {
            background-color: var(--hover-blue);
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
                <a href="index.jsp" class="btn-logout ms-auto px-4 py-2">Logout</a>
            </div>
        </div>
    </div>
</nav>

<main class="main">
    <div class="login-card">
        <h3>Please enter your details below</h3>
        <form method="post" action="StoreP">
            <input id="text" type="text" name="Pname" placeholder="Full Name" required>
            <input id="text" type="text" name="Pusername" placeholder="Username" required>
            <input id="text" type="password" name="Ppassword" placeholder="Password" required>
            <input id="text" type="password" name="Cpassword" placeholder="Confirm Password" required>
            <input type="submit" value="Submit">
        </form>
    </div>
</main>

<footer>
    <section>
        <div class="container text-center">
            <div class="row mt-3">
                <div class="col-md-12 mx-auto mb-4">
                    <h6 class="text-uppercase fw-bold mb-2">
                        <i class="fas fa-gem me-3"></i>Evently
                    </h6>
                    <p>We help you set your events for you!</p>
                </div>
            </div>
        </div>
    </section>
    <div class="text-center p-2" style="background-color: rgba(0, 0, 0, 0.05);">
        2024 Copyright
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>