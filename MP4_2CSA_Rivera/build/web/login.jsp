
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
    <!-- Head -->
    <head>
        <!-- Metas -->
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Document Title -->
        <title>Login</title>

        <!-- Styles -->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <style>
            a:link {
                color: green;
                background-color: transparent;
                text-decoration: none;
            }

            a:visited {
                color: pink;
                background-color: transparent;
                text-decoration: none;
            }

            a:hover {
                color: white;
                background-color: transparent;
                text-decoration: underline;
            }

            a:active {
                color: yellow;
                background-color: transparent;
                text-decoration: underline;
            }
        </style>
    </head>

    <br />&nbsp;<br /><br />&nbsp;<br /><br />&nbsp;<br />

    <!-- Body -->
    <body>

        <div class="container">

            <!-- Section contact -->
            <section id="contact">
                <!-- Section title -->
                <div align="center">
                    <h1>Login</h1>
                    <h5>Please enter your username and password</h5>
                </div>

                <!-- Form -->
                <form action="JdbcController" method="post" id="contact-form">
                    <!-- Name -->
                    <div class="form-group">
                        <label for="name">Username</label>
                        <input
                            type="email"
                            id="name"
                            name="user"
                            placeholder="Enter your username..."
                            />
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                        <label for="email" class="required">Password</label>
                        <input
                            type="password"
                            id="email"
                            name="pass"
                            placeholder="Enter your password..."
                            required
                            />

                        <!-- Button -->
                        <button type="submit" id="submit" class="btn">Login</button>

                </form>
            </section>

            <br><br><br><br><br>

            <!-- Footer -->
            <footer id="footer">
                Submitted by Patrick Louis T. Rivera, for ICS2609 Machine Problem 4.
            </footer>
        </div>

        <br>
    </body>
</html>

