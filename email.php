<?php include'header.php';

if (($_SERVER['REQUEST_METHOD'] === 'POST')) {
    header("Location: signup.php");
}
?>
<!-- Main -->
        <header class="major">
            <h2></h2>
            <p></p>
        </header>
        <div class="container">
<!--            <h3>Duplicate email</h3>-->
            <h4>Duplicate email address</h4>

            <form action="" method="post" enctype="multipart/form-data" style="padding : 0em 5em 0em 5em;">
                <p>
                    <b>Enter data again</b>
                </p>
                <input type="submit" value="Go back" name="Back"> &nbsp
            </form>

        </div>
<?php include'footer.php'; ?>