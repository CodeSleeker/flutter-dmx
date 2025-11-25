/// Predefined colors used in DMX control.\
///
/// Some colors map to RGB values internally depending on fixture capability.
/// These are used when sending high-level commands.
///
/// Includes both common and extended lighting colors.
enum DmxColor {
  red,
  green,
  blue,

  white,
  warmWhite,
  coldWhite,

  amber,
  lime,
  cyan,
  magenta,
  yellow,
  orange,
  pink,
  purple,

  uv,
  royalBlue,

  deepRed,
  deepGreen,
  deepBlue,
}
