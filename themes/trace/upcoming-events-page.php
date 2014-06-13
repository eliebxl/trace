<?php
/*
Template Name: Upcoming Events
*/
?>

<?php get_header(); ?>

<!-- .upcoming-events -->
<section class="section upcoming-events text-center">
  <h1><?php the_title(); ?></h1>
  <div class="filter text-center">
    <h3>
      <select class="event-filter">
        <option value="">Type &#9660;</option> 
        <option value="/category/conference/">Conference</option>
        <option value="/category/festival/">Festival</option>
        <option value="/category/exibhition/">Exibhition</option>
      </select>
    </h3>
  </div>
  
  <?php
  $today = getdate();
  
  $args = array(
    'post_type'    => 'event',
    'meta_key'     => 'wpcf-from-date',
    'meta_value'   => $today[0],
    'meta_compare' => '>'
  );
  $query = new WP_Query($args);
  ?>
  
  <?php if ($query->have_posts()) : ?>
    <div class="row">
      <?php $i = 0; ?>
      
      <?php while ($query->have_posts()) : $query->the_post(); ?>
        <?php $i++; ?>
        
        <?php if ($i > 3) : ?>
          <?php $i = 0; ?>
          
          </div>
          <div class="row">
        <?php endif; ?>
        
        <div class="col-sm-12 col-md-4 col-lg-4">
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
  
  <?php trace_paging(); ?>
</section><!-- /.upcoming-events -->

<?php get_footer(); ?>