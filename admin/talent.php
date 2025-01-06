<?php
session_start();
if (empty($_SESSION["user"])) {
    header("location: ../auth/login.php");
}

require_once '../classes/talent.class.php';
require_once '../tools/clean.php';

$talent = '';
$objTalent = new Talents;
$objTalent->user_id = $_SESSION['user']['user_id'];
$talent = $objTalent->fetchtalent();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $talentArray = $_POST['talent'];
    $objTalent->user_id = $_SESSION['user']['user_id'];
    $objTalent->talent = $talentArray;

    if ($objTalent->addtalent()) {
        echo "<script>window.location.href = 'certificate.php';</script>";
        exit;      
    } else {
        // Display an error message if something went wrong during insertion
        echo 'Something went wrong when adding the new product.';
    }
}
?>

<?php require_once "../includes/header.php"; ?>
<link rel="stylesheet" href="../style/talent.css">
<title>Profiling</title>
</head>

<body>
    <div class="container mt-5">
        <form action="" method="POST">
            <div class="image"></div>
            <br><br>
            <div class="form">
                <h3 class="text-center">Personal Skills</h3>
                <p>Personal skills or talent</p>
                <div class="skills-center">
                    <div id="dynamicInputs">
                        <!-- Initial input field with delete button -->
                        <div class="input-group mb-2">
                            <input type="text" name="talent[]" class="form-control"> &nbsp;
                            <i class="fa-solid fa-xmark delete-icon" style="cursor: pointer;"></i>
                        </div>
                    </div>
                </div>
                <div class="add">
                    <button type="button" class="icon-btn add-btn" onclick="addInputField()">
                        <div class="add-icon"></div>
                        <div class="btn-txt" style="color: white;">Add More</div>
                    </button>
                </div>
                <br>
                <div class="left">
                    <a href="addprofile.php">Skip</a>
                    <input type="submit" value="Proceed" name="submit">
                </div>
            </div>
        </form>
    </div>

    <script src="https://kit.fontawesome.com/66216b0ead.js" crossorigin="anonymous"></script>
    <script src="../js/talent.js"></script>
</body>

</html>
