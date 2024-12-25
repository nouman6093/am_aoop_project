<!DOCTYPE html>
<html>
<head>
    <title>About</title>
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
            padding: 2rem;
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
        }

        .card-body {
            background-color: var(--light-blue);
            padding: 2rem;
            border-radius: 15px;
        }

        .card img {
            width: 120px;
            height: 120px;
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
        }

        .btn-success {
            background-color: var(--dark-blue);
            border-color: var(--dark-blue);
        }

        .btn-primary:hover {
            background-color: var(--hover-blue);
            border-color: var(--hover-blue);
        }

        .btn-success:hover {
            background-color: #1C1C1C;
            border-color: #1C1C1C;
        }

        .card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .text-reset {
            text-decoration: none;
        }

        .text-reset:hover {
            color: var(--hover-blue);
        }

        .about-content {
            max-width: 800px;
            text-align: center;
            background-color: #FFF;
            border-radius: 10px;
            padding: 3rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .about-content h2 {
            color: var(--medium-blue);
            margin-bottom: 1rem;
        }

        .about-content p {
            color: var(--dark-blue);
            font-size: 1.1rem;
            line-height: 1.6;
        }

        .about-content p strong {
            font-weight: bold;
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
    <div class="about-content">
        <h2>About Evently</h2>
        <p>
            <strong>Evently</strong> is an innovative platform designed to make event planning simple, efficient, and enjoyable for everyone. Whether you're organizing a corporate event, a social gathering, or a community festival, Evently is here to help you every step of the way.
        </p>
        <p>
            Our mission is to connect people through events that inspire, educate, and entertain. We believe that events have the power to bring people together and create lasting memories.
        </p>
        <p>
            Our team is dedicated to providing top-notch event management tools, user-friendly interfaces, and a seamless experience for both organizers and participants. Join us today, and let Evently take your events to the next level!
        </p>
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