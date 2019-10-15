<?php
 add_theme_support( 'post-thumbnails' );
 function sideright_widgets_init() {

register_sidebar( array(
 'name' => 'Witget_side',
 'id' => 'sidebar-1',
 'before_widget' => '<div>',
 'after_widget' => '</div>',
 'before_title' => '<h3>',
 'after_title' => '</h3>',
 ) );
 
}
add_action( 'widgets_init', 'sideright_widgets_init' );