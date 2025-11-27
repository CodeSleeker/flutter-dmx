part of 'dmx_color_library.dart';

enum DmxColorData {
  red("#FF0000", 255, 0, 0),
  green("#00FF00", 0, 255, 0),
  blue("#0000FF", 0, 0, 255),

  white("#FFFFFF", 255, 255, 255),
  warmWhite("#FFF4E5", 255, 244, 229),
  coldWhite("#B4C8FF", 180, 200, 255),

  amber("#FFBF00", 255, 191, 0),
  lime("#BFFF00", 191, 255, 0),
  cyan("#00FFFF", 0, 255, 255),
  magenta("#FF00FF", 255, 0, 255),
  yellow("#FFFF00", 255, 255, 0),
  orange("#FF8000", 255, 128, 0),
  pink("#FF69B4", 255, 105, 180),
  purple("#800080", 128, 0, 128),

  uv("#8000FF", 128, 0, 255),
  royalBlue("#4169E1", 65, 105, 225),

  deepRed("#8B0000", 139, 0, 0),
  deepGreen("#008B00", 0, 139, 0),
  deepBlue("#00008B", 0, 0, 139);

  final String hex;
  final int r;
  final int g;
  final int b;

  const DmxColorData(this.hex, this.r, this.g, this.b);

  List<int> get rgb => [r, g, b];
}
