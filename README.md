# flutter_dmx

A simple and flexible DMX control plugin for Flutter.

This plugin provides a high-level and low-level API for interacting with DMX controllers, including area-based control, fixture targeting, raw packet sending, and automatic fixture list updates.

## Features

* Set DMX controller IP address
* Set universe
* Send raw DMX packets
* Control lights by:
    * fixture ID
    * fixture name
    * area/group name
* Turn all fixtures on/off
* Set global brightness or color
* Listen to live fixture updates
* Fluent command builder (e.g., .set.color().brightness())
* Register DMX event listeners

## Getting Started
```
import 'package:flutter_dmx/flutter_dmx.dart';
```

### Instantiate
```
FlutterDmx dmx = FlutterDmx();
```

## Setting the Controller IP
```
await dmx.setIpAddress("192.168.1.50");
```

## Setting universe
```
await dmx.setUniverse(0)
```

## Controlling Fixtures

### By ID
```
dmx.controlById(
  DmxCommand(
    id: 1,
    color: DmxColor.red,
    brightness: 90,
  ),
);
```

### By Name
```
dmx.controlByName(
  DmxCommand(
    name: "Spotlight A",
    color: DmxColor.blue,
    brightness: 90,
  ),
);
```

### By Area
```
dmx.controlByArea(
  DmxCommand(
    area: "Stage Left",
    color: DmxColor.warmWhite,
    brightness: 100,
  ),
);
```

## Global Controls
```
await dmx.turnAllOn();
await dmx.turnAllOff();
await dmx.setAllBrightness(80);
await dmx.setAllColor(DmxColor.magenta);
```

## Using the Fluent Command Builder
#### The builder lets you write cleaner code:

### Control By Id
```
dmx.set
  .color(DmxColor.orange)
  .brightness(80)
  .sendById(1);
```

### Control By Area
```
dmx.set
  .color(DmxColor.red)
  .brightness(80)
  .sendByArea('North Field');
```

### Control By Name
```
dmx.set
  .color(DmxColor.red)
  .brightness(80)
  .sendByName('Pole1');
```

## Listening to Fixture Updates
```
dmx.dmxList.listen((fixtures) {
  print("Updated fixtures: $fixtures");
});
```

## Sending Raw DMX Packets
```
dmx.sendPackets([
  DmxPacket(
    address: 1,
    byteData: [255, 120, 0],
  ),
]);
```

## Using a DMX Listener (Low-Level Events)
```
class MyController with DmxListener {
  final FlutterDmx dmx = FlutterDmx();

  MyController() {
    dmx.setListener(this);
  }

  @override
  void onDmxList(List<DmxFixture> list) {
    print("Fixture list updated: $list");
  }
}
```

## Logging (Optional)
flutter_dmx includes a simple built-in logger for debugging DMX commands and fixture updates.
Logging is off by default.

### Enable Logging
```
FlutterDmx().enableLogging(true);
```

### Disable Logging
```
FlutterDmx().enableLogging(false);
```

### Example Output
```
[FlutterDmx] Sending command: id=3, brightness=150, color=blue
[FlutterDmx] Dmx list updated, total count: 12
[Android][FlutterDmx] Applying command to fixture id: 3 index: 0
```

### Recommended
```
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterDmx().enableLogging(kDebugMode);
  runApp(const MyApp());
}
```

## Persistence (Optional)

The plugin includes a lightweight storage helper that lets you persist values such as:
* Controller IP address
* Stored DMX fixtures
* Any additional plugin-related settings

Persistence is opt-in, nothing is stored unless you explicitly call it.

### Enabling Persistence
Usually in main() or initState()
```
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  FlutterDmx().persist(); //place below Logging
  runApp(const MyApp());
}
```
or
```
@override
void initState() {
  super.initState();
  dmx.persist(); // up to you where to place it
}
```

## Models and Constants
### DmxFixture
```
DmxFixture(
  id: 1,
  name: "Spot 1",
  address: 10,
  area: "Stage Left",
  colorMode: ColorMode.rgbw,
  channel: 4,
);
```

### DmxCommand
```
DmxCommand(
  id: 3,
  color: DmxColor.deepBlue,
  brightness: 80,
);
```

### Enums
```
DmxColor.red
ColorMode.rgb
AddressMode.seq
```

## Example Setup
```
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> implements DmxListener {
  final FlutterDmx dmx = FlutterDmx();

  @override
  void initState() {
    super.initState();
    dmx.setListener(this);
    dmx.setIpAddress("192.168.1.50");
  }

  @override
  void onDmxList(List<DmxFixture> dmxList) {
    print("Fixtures updated: $dmxList");
  }
}
```

## What’s Next

* Scene programming support

* Pattern effects (strobes, chases)

* Scheduled commands

## ❤️ Support This Plugin

If this plugin has helped you in your project, consider giving it a 👍 on pub.dev. It's a simple gesture, but it really helps others discover the plugin and motivates ongoing development.