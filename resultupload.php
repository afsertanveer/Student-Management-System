
<!DOCTYPE html>
<html>
<head>
<style>
.error {color: #FF0000;}
</style>

  <title></title>
  <link rel="icon" type="image/png" href="img/favicon.jpg"/>
  <link href="style2.css" rel="stylesheet" type="text/css" />
  

            <script type="text/javascript">
    function validate() {
    
    
      if(document.myForm.search.value=="")
              {
                   alert("Please Enter the ID");
                   document.myForm.search.focus();
                   return false;
              }
              else
              {
 
                var sid=document.getElementById("search").value;
                    var x=[];
                    var i;
                    x=sid.split('');
                    var count=0;
                    for(i=0;i<=x.length;i++)
                    {

                         
                             if(x[i]<'0' || x[i]>'9'){

                                alert( "Please Provide correct Id!" );
                          document.myForm.search.focus();
                            return false;  
                               }
                         
                         count++;

                    } 
                    if(count!=10)
                    {
                            alert( "Please check the id length!!" );
                          document.myForm.search.focus();
                            return false; 

                    }                  

              }


  }
</script>

</head>
<body>

  <?php
  $serr="";
if($_SERVER["REQUEST_METHOD"]=="POST"){
  
  if(empty($_POST["search"])){


    $serr="Please provide id";


  }

      else
      {
        $flag=0;
        $search=$_POST["search"];
           for($i=0;$i<strlen($search);$i++)
           {
                 if($search[$i]<'0' || $search[$i]>'9')
                 {
                  $serr="Invalid character in search";
                  $flag=1;
                  break;
                 }

           }
           if($flag==0){
           if(strlen($search)!=9)
           {
                   $serr="Invalid Id length";


           }
       }

      }

      $sem=$_POST["semester"];
  $con=new mysqli("localhost","root","","student_management_system");
  $sql="SELECT * from takensubject where student_id='$search'and semester_name='$sem'";
  $result =$con->query($sql);
    $x=$result->num_rows;
    
   if($x>0)
  {

    session_start();
    $_SESSION['id'] =$search;
    $_SESSION['sem']=$sem;
    header('location:givinggrade.php');
    

  }
  else
  {

              echo "<script type='text/javascript'>";
              echo "alert('Error occured')";
              echo "</script>";
  }
  

}
?>


  <?php include 'head1.php'; ?>
  <?php include 'menu2.php'; ?>
  <div id="id_search">
    <form action="" method="POST" name="myForm" onsubmit="return validate();"> 
  Student Id&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<input type="text" name="search" id="search">
  <span class="error"><?php echo $serr;?></span>
    
  <br><br>    
  Semester<input type="text" name="semester" id="semester">
  
  <br><br>    
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Search">
  
  </form>
  </div>
  
  
  
  
</body>
</html>