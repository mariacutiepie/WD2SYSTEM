<?php
require_once 'database.class.php';

class Delete
{
    private $conn;

    function __construct()
    {
        $db = new Database;
        $this->conn = $db->connect();
    }

    function delete_modal($project_id)
    {
        $sql = "SELECT * FROM projects WHERE project_id = :project_id";
        $query = $this->conn->prepare($sql);

        $query->bindParam(":project_id", $project_id);
        $query->execute();

        return $query->fetch();
    }

    function delete($project_id)
    {
        $sql = "UPDATE projects SET status = 'Deleted' WHERE project_id = :project_id";
        $query = $this->conn->prepare($sql);

        $query->bindParam(":project_id", $project_id);
        $query->execute();
    }
}
