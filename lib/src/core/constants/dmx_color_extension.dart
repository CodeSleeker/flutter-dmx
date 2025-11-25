part of 'dmx_color_library.dart';

extension DmxColorX on DmxColor {
  _DmxColorData get data {
    switch (this) {
      case DmxColor.red:
        return _DmxColorData.red;
      case DmxColor.green:
        return _DmxColorData.green;
      case DmxColor.blue:
        return _DmxColorData.blue;
      case DmxColor.white:
        return _DmxColorData.white;
      case DmxColor.warmWhite:
        return _DmxColorData.warmWhite;
      case DmxColor.coldWhite:
        return _DmxColorData.coldWhite;
      case DmxColor.amber:
        return _DmxColorData.amber;
      case DmxColor.lime:
        return _DmxColorData.lime;
      case DmxColor.cyan:
        return _DmxColorData.cyan;
      case DmxColor.magenta:
        return _DmxColorData.magenta;
      case DmxColor.yellow:
        return _DmxColorData.yellow;
      case DmxColor.orange:
        return _DmxColorData.orange;
      case DmxColor.pink:
        return _DmxColorData.pink;
      case DmxColor.purple:
        return _DmxColorData.purple;
      case DmxColor.uv:
        return _DmxColorData.uv;
      case DmxColor.royalBlue:
        return _DmxColorData.royalBlue;
      case DmxColor.deepRed:
        return _DmxColorData.deepRed;
      case DmxColor.deepGreen:
        return _DmxColorData.deepGreen;
      case DmxColor.deepBlue:
        return _DmxColorData.deepBlue;
    }
  }
}
