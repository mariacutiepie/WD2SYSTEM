<?php
require_once "database.class.php";

class Skills
{
    private $conn;
    public $user_id;
    public $skills;


    function __construct()
    {
        $db = new Database;
        $this->conn = $db->connect();
    }

    function addSkills()
    {
        $sql = "INSERT INTO skills (user_id, skills) VALUES (:user_id, :skills)";
        $query = $this->conn->prepare($sql);
        $query->bindParam(':user_id', $this->user_id);

        foreach ($this->skills as $skills) {
            $query->bindParam(':skills', $skills);
            $query->execute();
        }
        return true;
    }
    function acc()
    {
        $sql = "SELECT * FROM skills WHERE user_id = :user_id";
        $query = $this->conn->prepare($sql);
        $query->bindParam(':user_id', $this->user_id);

        $query->execute();
        return $query->fetchAll();
    }
}

