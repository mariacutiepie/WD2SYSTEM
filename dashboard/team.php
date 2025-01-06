<?php
require_once '../classes/user.class.php';

$objAccept = new Edit();

$team_members = $objAccept->team_members();
?>
<style>
    /* Global Styles */
    /* body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
} */


    /* Section */
    .project {
        padding: 60px 0;
        /* background-color: #ffffff; */
    }

    .project__bg {
        /* background: linear-gradient(to right, #007bff, #00bcd4); */
        padding: 30px 0;

    }

    .project__container {
        max-width: 1200px;
        margin: 0 auto;
        text-align: center;

    }

    .project__title {
        font-size: 32px;
        color: #333;
        margin-bottom: 20px;
        /* text-transform: uppercase; */
        color: white;
    }

    .project__data {
        margin-bottom: 40px;
    }

    .team-action .button {
        /* background-color: #007bff; */
        color: white;
        padding: 12px 30px;
        text-decoration: none;
        font-size: 16px;
        border-radius: 8px;
        display: inline-flex;
        align-items: center;
    }

    .button--flex .project__icon {
        margin-left: 8px;
    }

    /* Team Members Section */
    .team-members .members-list {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .member-item {
        /* background-color: #e9ecef; */
        padding: 10px 20px;
        margin: 5px;
        /* border-radius: 8px;
        box-shadow: 0 4px 8px rgba(74, 74, 74, 0.1); */
    }

    .name {
        font-size: 18px;
        font-weight: bold;
    }

    /* Requests Section */
    .requests-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    .requests-table th,
    .requests-table td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    .requests-table th {
        background-color: #007bff;
        color: white;
        text-transform: uppercase;
    }

    .btn {
        padding: 8px 15px;
        border-radius: 5px;
        font-size: 14px;
        text-decoration: none;
        margin-right: 10px;
        display: inline-block;
        transition: background-color 0.3s ease;
    }

    .btn-success {
        background-color: #28a745;
        color: white;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    .btn-danger {
        background-color: #dc3545;
        color: white;
    }

    .btn-danger:hover {
        background-color: #c82333;
    }

    /* Mobile Responsive */
    @media screen and (max-width: 768px) {
        .project__container {
            padding: 20px;
        }

        .project__title {
            font-size: 24px;
        }

        .button--flex .project__icon {
            margin-left: 5px;
        }

        .requests-table {
            font-size: 14px;
        }

        .team-members .members-list {
            flex-direction: column;
        }

        .member-item {
            width: 100%;
            margin-bottom: 10px;
        }


    }
</style>
<?php if ($user_details['is_admin'] == 1) { ?>
    <div class="modal-container">
    </div>
    <section class="project section" id="team">

        <div class="project__bg">
            <div class="project__container container d-flex align-items-center justify-content-center flex-column">

                <!-- Add a Member Section -->
                <div class="project__data team-action">
                    <h2 class="project__title">Add a Member to your Team!</h2>
                    <a href="../admin/setup.php" class="button button--flex button--primary">Add now
                        <i class="uil uil-plus-circle project__icon button__icon"></i>
                    </a>
                </div>

                <!-- Team Members List Section -->
                <div class="project__data team-members">
                    <h4 class="project__title" style="font-size: 27px;">Your Team Members</h4>
                    <div class="members-list">
                        <?php foreach ($fetchimg as $fi) { ?>
                            <div class="member-item">
                                <div class="card" style="width: 19rem; height: 29rem; background-color: #ffffff17; color: white; ">
                                    <?php
                                    echo '<img class="img-fluid" style="width: 350px; height: 350px; object-fit: cover;" src="uploads/' . $fi['user_id'] . '_test.jpg">';
                                    ?>
                                    <div class="card-body">
                                        <h5 class="card-title"><?= $fi['firstname'] . " " . $fi['lastname']; ?></h5>
                                        <p class="card-text"><?= $fi['email'] ?></p>
                                        <a href="../admin-views/viewprofile.php" class="btn btn-dark">View Profile</a>
                                        <a href="#" class="btn btn-danger">Deactivate</a>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>


                <!-- Requests Section -->
                <div class="project__data requests">
                    <h2 class="project__title">Pending Requests</h2>
                    <table class="requests-table">
                        <thead>
                            <?php if (!empty($pending_requests)) { ?>
                                <tr>
                                    <th class="p-2">Name</th>
                                    <th class="p-2">Action</th>
                                </tr>
                            <?php
                            } ?>
                        </thead>
                        <tbody>
                            <?php if (empty($pending_requests)) { ?>
                                <tr>
                                    <p class="search" style="text-align: center; font-weight: 500; margin-top:40px;">No Pending Requests</p>
                                </tr>
                            <?php
                            } ?>
                            <?php foreach ($pending_requests as $pr) { ?>
                                <tr>
                                    <td class="p-2"><?= $pr['firstname'] . ' ' . $pr['lastname'] ?></td>
                                    <td class="p-2">
                                        <a href="#" class="btn btn-success accept" data-id="<?= $pr['user_id'] ?>">Accept</a>
                                        <a href="#" class="btn btn-danger decline" data-id="<?= $pr['user_id'] ?>">Decline</a>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            <?php } ?>
            </div>
        </div>
    </section>