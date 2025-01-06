<?php
require_once 'database.class.php';

class Edit {
    private $conn;

    function __construct()
    {
        $db = new Database;
        $this->conn = $db->connect();
    }
    function fetch_user($user_id){
        $sql = "SELECT * FROM infos WHERE user_id = :user_id";
        $query = $this->conn->prepare($sql);

        $query->bindParam(":user_id", $user_id);

        $query->execute();

        return $query->fetch();
    }
    function fetch_tao($user_id){
        $sql = "SELECT * FROM user WHERE user_id = :user_id";
        $query = $this->conn->prepare($sql);

        $query->bindParam(":user_id", $user_id);

        $query->execute();

        return $query->fetch();
    }

    function edit_user($user_id, $birthday, $bio, $contact, $address, $email){
        $sql = "UPDATE infos SET birthday = :birthday, bio = :bio, contact = :contact, address = :address, email = :email WHERE user_id = :user_id" ;
        $query = $this->conn->prepare($sql);
        $query->bindParam(':user_id', $user_id);
        $query->bindParam(':birthday', $birthday);
        $query->bindParam(':bio', $bio);
        $query->bindParam(':contact', $contact);
        $query->bindParam(':address', $address);
        $query->bindParam(':email', $email);


        $query->execute();
    }

    function team_members(){
        $sql = "SELECT * FROM user WHERE request_status = 'Accepted'";
        $query = $this->conn->prepare($sql);

        $query->execute();

        return $query->fetchAll();
    }

    function upload_profile_image($user_id, $file){
        // Validate file and prepare for upload
        $fileName = $file['name'];
        $fileTmpName = $file['tmp_name'];
        $fileSize = $file['size'];
        $fileError = $file['error'];
        $fileType = $file['type'];

        $fileExt = explode('.', $fileName);
        $fileActualExt = strtolower(end($fileExt));

        $allowed = ['jpg', 'jpeg', 'png', 'webp'];

        if (in_array($fileActualExt, $allowed)) {
            if ($fileError === 0) {
                if ($fileSize < 1000000) {
                    // Generate a unique file name
                    $fileNameNew = $user_id . "_profile_" . uniqid('', true) . "." . $fileActualExt;
                    $fileDestination = 'uploads/' . $fileNameNew;

                    // Move file to uploads directory
                    if (move_uploaded_file($fileTmpName, $fileDestination)) {
                        // Update database with the file path
                        $sql = "UPDATE infos SET profile_image = :profile_image WHERE user_id = :user_id";
                        $query = $this->conn->prepare($sql);
                        $query->bindParam(':profile_image', $fileDestination);
                        $query->bindParam(':user_id', $user_id);

                        if ($query->execute()) {
                            return true; // Successfully updated
                        } else {
                            throw new Exception("Failed to save image path to database.");
                        }
                    } else {
                        throw new Exception("Failed to move uploaded file.");
                    }
                } else {
                    throw new Exception("File size too large.");
                }
            } else {
                throw new Exception("Error uploading file.");
            }
        } else {
            throw new Exception("Invalid file type.");
        }
    }
}
    

?>


