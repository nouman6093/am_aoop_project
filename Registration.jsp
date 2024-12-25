<!DOCTYPE html>
<html lang="en">

<head>
    <title>Register Event</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://img.icons8.com/fluency/48/event.png" type="image/png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
            font-family: 'Arial', sans-serif;
        }

        .navbar {
            background-color: var(--navbar-bg);
        }

        .navbar .navbar-brand,
        .navbar-nav .nav-link {
            color: var(--medium-blue);
            font-weight: bold;
        }

        .navbar .navbar-toggler-icon {
            background-color: #FFF;
        }

        .navbar-nav .nav-link:hover {
            color: var(--hover-blue);
        }

        .main-content {
            flex-grow: 1;
            padding: 50px 0;
            background-color: var(--background-color);
            text-align: center;
        }

        .form-container {
            background-color: var(--light-blue);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
        }

        .form-container h3 {
            color: var(--dark-blue);
            margin-bottom: 20px;
        }

        .form-container input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 1rem;
        }

        .form-container input[type="submit"] {
            background-color: var(--medium-blue);
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-container input[type="submit"]:hover {
            background-color: var(--hover-blue);
        }

        footer {
            background-color: var(--footer-bg);
            color: var(--footer-text);
            text-align: center;
            padding: 1rem 0;
            width: 100%;
            margin-top: 30px;
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
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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

<div class="main-content">
    <div class="form-container">
        <h3>Register for Event</h3>
        <form method="post" action="Register">
            <label for="ename">Event Name:</label><br>
            <input type="text" id="ename" name="ename" required><br><br>

            <label for="enum">Event No:</label><br>
            <input type="text" id="enum" name="enum" required><br><br>

            <label for="cardno">Card No:</label><br>
            <input type="text" id="cardno" name="cardno" required><br><br>

            <label for="edate">Expiry Date:</label><br>
            <input type="text" id="edate" name="edate" required><br><br>

            <label for="cvv">CVV No:</label><br>
            <input type="password" id="cvv" name="cvv" required><br><br>

            <label for="cname">Card Holder's Name:</label><br>
            <input type="text" id="cname" name="cname" required><br><br>

            <input type="submit" value="Proceed for Payment">
        </form>
    </div>
</div>

<footer>
    <p>&copy; 2024 Evently. All rights reserved.</p>
    <a href="contact.jsp">Contact Us</a>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>