<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define( 'DB_NAME', 'cms_tuan_3' );

/** Username của database */
define( 'DB_USER', 'root' );

/** Mật khẩu của database */
define( 'DB_PASSWORD', '' );

/** Hostname của database */
define( 'DB_HOST', 'localhost' );

/** Database charset sử dụng để tạo bảng database. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'KKs |w15aS*.3A,;({fIi;ACyYEI,MIv]g1HGZ_T@yE}5/;ci}AS[G@ZShq >HfP' );
define( 'SECURE_AUTH_KEY',  'H*$Lg@C:0?!N|[lqr-gP&BL&Fk1[aupt5EiAI;g=35MHLj^WnrYg/gHTe87Lmhgg' );
define( 'LOGGED_IN_KEY',    'Nse$.WJ~bM,XE&xa:gbHkVh31pb,|DG}q5k!Q7Q]YDMR%I~4uT8BJel3i cW!za/' );
define( 'NONCE_KEY',        'PC<qw|)*Wfk m,$.md]obt{T8I8vbZ+haqagy|Mj?;641@=IvB8+_*%aj>!O|[M_' );
define( 'AUTH_SALT',        '8&~s1{s984%l!Q+wS0ja-m/3Jbg+PeqN80+>AB-+%`S(2l8YZ~n+sd4d0$Sg%y2?' );
define( 'SECURE_AUTH_SALT', 'K6Ll;Ui<P,Vto1=uHF|FE>.]__TG@ljFE9M]nVCshCM,`d7wIu;aBr/V+H#m,`d$' );
define( 'LOGGED_IN_SALT',   'tcNWHON1k<-RYF{F8pQR:C9r9;XkIlFA9Gj7~~qKOqxy?VRv=@D [|M,Jq^.VNql' );
define( 'NONCE_SALT',       'z|a8MMPQC`jlj&QF08$WY<4>b>gkFLMB.lrn>{76lt,BlfP-@:+#a8[O+HTkb;-(' );

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix  = 'wp_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');
