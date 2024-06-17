<!DOCTYPE html>
<html>
<head>
    <title>Stepping Stone</title>
    <link rel="icon" href="img/logo.jpg" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" media="all">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/carousel.js"></script>
    <script src="js/button.js"></script>
    <script src="js/dropdown.js"></script>
    <script src="js/tab.js"></script>
    <script src="js/tooltip.js"></script>
    <script src="js/popover.js"></script>
    <script src="js/collapse.js"></script>
    <script src="js/modal.js"></script>
    <script src="js/scrollspy.js"></script>
    <script src="js/alert.js"></script>
    <script src="js/transition.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <div id="header">
        <img src="../img/logo.jpg" alt="Stepping Stone Logo">
        <label>Stepping Stone</label>
    </div>

    <?php include('../function/admin_login.php'); ?>
    
    <div id="admin">
        <form method="post" class="well">
            <center>
                <legend>Administrator</legend>
                <table>
                    <tr>
                        <td><input type="text" name="username" placeholder="Username"></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="password" placeholder="Password"></td>
                    </tr>
                </table>
                <br><br>
                <input type="submit" name="enter" value="Enter" class="btn btn-primary" style="width:200px;">
                <button type="button" class="btn btn-secondary" onclick="window.location.href='../index.php';" style="width:200px; margin-top: 10px;">Back</button>
            </center>
        </form>
    </div>
</body>
</html>
