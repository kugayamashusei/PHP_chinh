<?php
    require_once('../../connection.php');

    // upload file
	$target_dir = "../../img/";  // thư mục chứa file upload
	$thumbnail="";

	$target_file = $target_dir . basename($_FILES["thumbnail"]["name"]); // link sẽ upload file lên

	$status_upload = move_uploaded_file($_FILES["thumbnail"]["tmp_name"], $target_file);

	if ($status_upload) { // nếu upload file không có lỗi 
	    $thumbnail = basename( $_FILES["thumbnail"]["name"]);
	}
    
    $title = $_POST['title'];
    $description = $_POST['description'];
    $contents = $_POST['contents'];
    $category_id = 1;
    $author_id = 1;
    $status = 1;
    $created_at = "2020-04-21 09:30:51";
    $query = "INSERT INTO posts (title,description,contents,thumbnail,category_id,author_id,status,created_at) 
    VALUES ('".$title."', '".$description."','".$contents."','".$thumbnail."','".$category_id."','".$author_id."','".$status."','".$created_at."');";

    $status = $conn->query($query);
    var_dump($status);
    if($status == true)
    {
        setcookie('msg', 'Thêm mới thành công', time() + 5);
        header('Location: post.php');
    }
    else
    {
        setcookie('msg', 'Thêm mới không thành công', time() + 5);
        header('Location: post_add.php');
    }
?>