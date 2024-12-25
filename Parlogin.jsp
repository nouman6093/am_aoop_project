<!DOCTYPE html>
<html>
<head>
    <title>Participant</title>
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
        }

        footer {
            background-color: var(--footer-bg);
            color: var(--footer-text);
            text-align: center;
            padding: 1rem 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        footer a {
            color: var(--footer-text);
        }

        footer a:hover {
            color: var(--hover-blue);
        }

        .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: var(--light-blue);
            border-radius: 15px;
            padding: 2rem;
            max-width: 300px;
            width: 100%;
            text-align: center;
        }

        .card img {
            width: 80px;
            height: 80px;
            margin-bottom: 1.5rem;
            border-radius: 50%;
            border: 3px solid #FFF;
        }

        .card-title, .card-text {
            color: var(--medium-blue);
        }

        .btn-primary {
            background-color: var(--medium-blue);
            border-color: var(--medium-blue);
            padding: 10px 20px;
            border-radius: 30px;
            font-size: 16px;
        }

        .btn-success {
            background-color: var(--dark-blue);
            border-color: var(--dark-blue);
            padding: 10px 20px;
            border-radius: 30px;
            font-size: 16px;
        }

        .btn-primary:hover {
            background-color: var(--hover-blue);
            border-color: var(--hover-blue);
        }

        .btn-success:hover {
            background-color: #1C1C1C;
            border-color: #1C1C1C;
        }

        .text-reset {
            text-decoration: none;
        }

        .text-reset:hover {
            color: var(--hover-blue);
        }

        .main div {
            display: flex;
            justify-content: space-between;
            width: 100%;
            max-width: 700px;
        }

        .card + .card {
            margin-left: 20px;
        }

        h3 {
            color: var(--medium-blue);
            margin-top: 20px;
        }

        button {
            background-color: var(--medium-blue);
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
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
            <ul class="navbar-nav">
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
        </div>
    </div>
</nav>

<div class="main">
    <div>
        <div class="card">
            <img src="https://cdn-icons-png.flaticon.com/512/5822/5822138.png" alt="Signup Image">
            <h3>Create account if you are a new user</h3>
            <a href="Psignup.jsp"><button>Sign Up</button></a>
        </div>
        <div class="card">
            <img src="https://static.vecteezy.com/system/resources/previews/021/919/677/non_2x/login-icon-in-trendy-flat-style-isolated-on-white-background-approach-symbol-for-your-web-site-design-logo-app-ui-illustration-eps10-flat-style-for-graphic-design-vector.jpg" alt="Login Image">
            <h3>Already a user? Please login</h3>
            <a href="Plogin.jsp"><button>Login</button></a>
        </div>
    </div>
</div>

<footer class="text-center text-lg-start">
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