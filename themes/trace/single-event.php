<?php get_header(); ?>

<?php if (have_posts()) : ?>
  <?php while (have_posts()) : the_post(); ?>
    <?php
    $path_array = wp_get_attachment_image_src(get_post_thumbnail_id(get_the_ID()), 'large');
    $path = $path_array['0'];
    ?>
    
    <div class="event-cover">
      <div class="filter-linear">
        <p class="event-cover-author">By <?php the_author(); ?></p>
        <h1 class="event-cover-title big-title"><?php the_title(); ?></h1>
      </div>
      <div class="event-cover-image" style="background-image: url(<?php echo $path; ?>);"></div>
    </div>
    
    
    <div class="container">
      <?php the_content(); ?>
      <h5><button class="btn btn-primary"><?php echo getPostLikeLink( get_the_ID() ); ?></button></h5>
      <div class="practical-infos">
        <div class="row">
          <div class="date col-sm-6 col-md-3 col-lg-3 text-center">
            <div class="icons"></div>
            <p class="event-card-date">
              <?php echo date('d F, Y', get_post_meta(get_the_ID(), 'wpcf-from-date', true)); ?>
              
              <?php if (get_post_meta(get_the_ID(), 'wpcf-to-date', true) != '') : ?>
                – <?php echo date('d F, Y', get_post_meta(get_the_ID(), 'wpcf-to-date', true)); ?>
              <?php endif; ?>
            </p>
          </div>
          <div class="location col-sm-6 col-md-3 col-lg-3 text-center">
            <div class="icons"></div>
            <p><?php echo get_post_meta(get_the_ID(), 'wpcf-address', true); ?></p>
          </div>
          <div class="price col-sm-6 col-md-3 col-lg-3 text-center">
            <div class="icons"></div>
            <p><?php echo get_post_meta(get_the_ID(), 'wpcf-price', true); ?>€</p>
          </div>
          <div class="links col-sm-6 col-md-3 col-lg-3 text-center">
            <div class="icons"></div>
            <p><?php echo get_post_meta(get_the_ID(), 'wpcf-url', true); ?></p>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
            <?php echo get_post_meta(get_the_ID(), 'wpcf-google-map', true); ?>
          </div>
        </div>
      </div>

      <?php comments_template(); ?>
    </div>
  <?php endwhile; ?>
<?php else : ?>
    <p><?php _e('Sorry, the event was not found.', 'trace'); ?></p>
<?php endif; ?>

<?php get_footer(); ?>