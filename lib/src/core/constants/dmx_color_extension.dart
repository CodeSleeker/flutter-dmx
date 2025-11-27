part of 'dmx_color_library.dart';

extension DmxColorX on DmxColor {
  DmxColorData get data {
    switch (this) {
      case DmxColor.red:
        return DmxColorData.red;
      case DmxColor.green:
        return DmxColorData.green;
      case DmxColor.blue:
        return DmxColorData.blue;
      case DmxColor.white:
        return DmxColorData.white;
      case DmxColor.warmWhite:
        return DmxColorData.warmWhite;
      case DmxColor.coldWhite:
        return DmxColorData.coldWhite;
      case DmxColor.amber:
        return DmxColorData.amber;
      case DmxColor.lime:
        return DmxColorData.lime;
      case DmxColor.cyan:
        return DmxColorData.cyan;
      case DmxColor.magenta:
        return DmxColorData.magenta;
      case DmxColor.yellow:
        return DmxColorData.yellow;
      case DmxColor.orange:
        return DmxColorData.orange;
      case DmxColor.pink:
        return DmxColorData.pink;
      case DmxColor.purple:
        return DmxColorData.purple;
      case DmxColor.uv:
        return DmxColorData.uv;
      case DmxColor.royalBlue:
        return DmxColorData.royalBlue;
      case DmxColor.deepRed:
        return DmxColorData.deepRed;
      case DmxColor.deepGreen:
        return DmxColorData.deepGreen;
      case DmxColor.deepBlue:
        return DmxColorData.deepBlue;
    }
  }
}
