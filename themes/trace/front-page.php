<?php get_header(); ?>
<?php $current_post_id; ?>

<!-- .intro -->
<section class="section intro text-center">
  <div class="cover-bg">
    <div class="container">
      <?php while (have_posts()) : the_post(); ?>
        <?php $current_post_id = get_the_ID(); ?>
        
        <h1 class="logo-tagline"></h1>

        <?php the_content(); ?>
      <?php endwhile; ?>
    </div>
  </div>
</section><!-- /.intro -->

<!-- .upcoming-events -->
<section class="section upcoming-events front-page text-center">
  <div class="container">
    <div class="catch">
      <?php
      $upcoming_events_title = get_post_meta($current_post_id, 'wpcf-upcoming-events-title', true);
      $upcoming_events_body = get_post_meta($current_post_id, 'wpcf-upcoming-events-body', true);
      ?>
    
      <h2><?php echo $upcoming_events_title; ?></h2>
      <?php echo $upcoming_events_body; ?>
    </div>

    <?php
    $today = getdate();
    
    $args = array(
      'post_type'      => 'event',
      'meta_key'       => 'wpcf-from-date',
      'meta_value'     => $today[0],
      'meta_compare'   => '>',
      'posts_per_page' => 2
    );
    $query = new WP_Query($args);
    ?>
    
    <?php if ($query->have_posts()) : ?>
      <div class="row">
        <?php $i = 0; ?>
        
        <?php while ($query->have_posts()) : $query->the_post(); ?>
          <?php $i++; ?>
          
          <?php if ($i > 2) : ?>
            <?php $i = 0; ?>
            
            </div>
            <div class="row">
          <?php endif; ?>
          
          <div class="col-sm-12 col-md-6 col-lg-6">
            <div class="event-card">
              <?php
              $path_array = wp_get_attachment_image_src(get_post_thumbnail_id(get_the_ID()), 'thumbnail');
              $path = $path_array['0'];
              ?>
              
              <a href="<?php the_permalink(); ?>" style="background: url(<?php echo $path; ?>) no-repeat center; background-size: cover;" rel="bookmark">
                <div class="event-card-top">
                  <p class="event-card-date">
                    <?php echo date('d F, Y', get_post_meta(get_the_ID(), 'wpcf-from-date', true)); ?>
                    
                    <?php if (get_post_meta(get_the_ID(), 'wpcf-to-date', true) != '') : ?>
                      – <?php echo date('d F, Y', get_post_meta(get_the_ID(), 'wpcf-to-date', true)); ?>
                    <?php endif; ?>
                  </p>
                </div>
                
                <div class="event-card-bottom">
                  <h3 class="event-card-title"><?php the_title(); ?></h3>
                  <p class="event-card-author">By <?php the_author(); ?></p>
                </div>
              </a>
            </div>
          </div>
        <?php endwhile; ?>
      </div>
    <?php else : ?>
      <p><?php _e('Sorry, no events were found.', 'trace'); ?></p>
    <?php endif; ?>
    
    <?php wp_reset_postdata(); ?>
    <div class="call-for-action text-center">
      <a href="upcoming-events"><button class="btn btn-default">All Upcoming Events</button></a>
    </div>
  </div>
</section><!-- /.upcoming-events -->

<!-- .create-an-event -->
<section class="section create-an-event text-center">
  <div class="container">
    <div class="catch">
      <?php
      $create_an_event_title = get_post_meta($current_post_id, 'wpcf-create-an-event-title', true);
      $create_an_event_body = get_post_meta($current_post_id, 'wpcf-create-an-event-body', true);
      ?>
      
      <h2><?php echo $create_an_event_title; ?></h2>
      <?php echo $create_an_event_body; ?>
    </div>
    <div class="call-for-action text-center">
      <a href="archives"><button class="btn btn-default">Create an Event</button></a>
    </div>
  </div>
</section><!-- /.create-an-event -->

<!-- .event-archive -->
<section class="section event-archive text-center">
  <div class="container">
    <div class="catch">
      <?php
      $event_archive_title = get_post_meta($current_post_id, 'wpcf-event-archive-title', true);
      $event_archive_body = get_post_meta($current_post_id, 'wpcf-event-archive-body', true);
      ?>
      
      <h2><?php echo $event_archive_title; ?></h2>
      <?php echo $event_archive_body; ?>
    </div>
    <div class="call-for-action text-center">
      <a href="event"><button class="btn btn-default">Past Events</button></a>
    </div>
  </div>
</section><!-- /.event-archive -->

<?php get_footer(); ?>