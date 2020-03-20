
<!-- Slider -->
<section>
    <div class="slideshow-container">
        <?php
        $q ="SELECT * FROM slides ORDER BY post_on";
        $r = mysqli_query($dbc,$q);
        $cnt = 0;

        while ($rows = mysqli_fetch_array($r,MYSQLI_ASSOC)){
            echo "<div class='mySlides' style='display: block;'>
                    <img src='admin/uploads/slides/{$rows['slide_image']}' class='Slides' >
                </div>
                    ";
                    $cnt++;
        }
        ?>
    </div><br>
    <!--.dot-->
    <div style="text-align:center">
        <?php
        for ($i=0; $i<$cnt;$i++){
            echo '<span class="dot"></span>';
        }
        ?>
    </div>
</section>
<!-- End Slider -->
