<?php get_header(); 

 if ( have_posts() ) :
 get_template_part( 'content');
 else :
 get_template_part( 'content', 'none' );
 endif; 

 get_sidebar(); 

get_footer(); ?>
