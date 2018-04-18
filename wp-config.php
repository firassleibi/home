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
define('DB_NAME', 'blog');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'AmUFd[Du[@=E2[k>MzO*!L?U}/vx=.<,^:CieA~8^(LXzR`#dxFuAunrbZ3KD<EL');
define('SECURE_AUTH_KEY',  'Ot7o=pPl/5oLd]fH/seSmcee1hR(p]W3f)CD{~zLNh_Ogn&P8r-3fyh{o2J6W]O^');
define('LOGGED_IN_KEY',    '<5r[2uStfact!asg.*XJQ-=Te1Qq<%qGgWai*@*fO*KS$3CSOlQKx!j3C6sRD^|,');
define('NONCE_KEY',        'bL?Q;zf}v5pj};=M$x*-|mp$uT_  AfA6/nn_F.nkA7d(tdfTpb.>}0ZZ)N~Ko/,');
define('AUTH_SALT',        '9mz;>rYr%xwe+sOE3eaa[0kjdypB?yX?7Caa}4SN5x6v3t<E-%bQN1MW!/xb0V)s');
define('SECURE_AUTH_SALT', 'f;;upI#@N:2a}U>-iqM<QAouckrjUsZ>**GDAT1.;rn]Zo9[&Tv4<_G4sF+.(]rB');
define('LOGGED_IN_SALT',   'OgB~DAFKitb$tF]|9e#6G>Sg*NU6w[(TIUrI,]ap?no OTdi[E++eQrbiw%SNZlj');
define('NONCE_SALT',       'z@)%Z1qdB[4|uU*CeX!{I!7W1DAA$ e}-]F:v?w8ZeU=~cA3q];BlX4,1f%y&A~{');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
