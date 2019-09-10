<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_cms10092019' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'PiKq19V,Y<G*t_Ys8lx8kL6Wd-@V oH{C}GkXknF*>?t}~1a|~zB:,ksG**jErO+' );
define( 'SECURE_AUTH_KEY',  'H.Q~r~IR,JC5bSuc$1F6h>>%zEOlWT0%!J*K|(oIU6*+U:IIFNzT*HpB{bW5a`9N' );
define( 'LOGGED_IN_KEY',    'fg Yb(8jfP;MfzFpZtyzTT-z;HL}6*lL>Mnd0Cds;V*/;H(Jlm7mFXg); OxU`|V' );
define( 'NONCE_KEY',        '*@!%?~#Q#1H-%Y3&yk!fl~}l^X<XqtQg>DJ<A<6gej9/uU{^AM1JP/)$3k+]o}}<' );
define( 'AUTH_SALT',        'MtmC +?D/:d3CtERSG2>nLx;tl*5*wTYwY#*,m%6r!8m?Gr}oEV2GPjQ* 1/Rd?8' );
define( 'SECURE_AUTH_SALT', 'nFD1E.[Q(z:pfx39J#96{bEwM#G$P2Kb;LTb|Vury(6jj_Red2v,7$$vX|-PY`&7' );
define( 'LOGGED_IN_SALT',   'U+1H@^ywea{3/!Pd5)G$bXV+rj#u|@~?OGO ^S1gBiQxQ5S[9Fo/V{v:0-H<m0s3' );
define( 'NONCE_SALT',       'l2$7M.k&ZHm v;mTXz*kHr<HlG3*H%hbSw.~AlvY%^2gT,+JD4UrEO#G<67&OWpE' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
