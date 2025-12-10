# flutter_dmx

A simple and flexible DMX control plugin for Flutter.

This plugin provides a high-level and low-level API for interacting with DMX controllers, including area-based control, fixture targeting, raw packet sending, and automatic fixture list updates.

## Features

* Set DMX fixture(s)
* Set DMX controller IP address
* Set universe
* Send raw DMX packets
* Control lights by:
    * fixture ID
    * fixture name
    * area/group name
* Turn all fixtures on/off
* Set global brightness or color
* Set Scene
* Play/Stop scene
* Listen to live fixture updates
* Listen to scene updates
* Fluent command builder (e.g., .set.color().brightness(), .scene(id).play())
* Register DMX event listeners

## Getting Started
```
import 'package:flutter_dmx/flutter_dmx.dart';
```

### Instantiate
```
FlutterDmx dmx = FlutterDmx();
```

## Setting DMX Data
```
await dmx.setData(
  DmxFixture(
    id: 0,
    address: 1,
    area: 'North',
    colorMode: ColorMode.rgbw,
    name: 'Pole1',
    channel: 7,
    addressMode: AddressMode.seq,
    count: 2
  )
);
```

## Setting Scene
```
final commands = [
  DmxCommand(
    brightness: 100,
    color: DmxColor.red,
    area: 'north',
  ),
  DmxCommand(
    brightness: 100,
    color: DmxColor.green,
    name: 'pole2',
  ),
  DmxCommand(
    brightness: 100,
    color: DmxColor.blue,
    id: 0,
    index: 1,
  ),
];
final scene = Scene(
  id: 0,
  name: 'scene1',
  steps: [
    SceneStep(
      commands: commands,
      durationMs: 1000,
    ),
  ],
);
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
    index: 1, // optional: targets a specific instance of a multi-count fixture
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
  .index(1) // optional: targets a specific instance of a multi-count fixture
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

### Scene Command Builder
```
// Play scene with ID 0
dmx.scene(0).play();

// Stop scene with ID 1
dmx.scene(1).stop();
```

## Scene Methods
```
// Play scene with ID 0
dmx.playScene(0);

// Stop scene with ID 1
dmx.stopScene(1);
```

## Listening to Fixture Updates
```
dmx.dmxList.listen((fixtures) {
  // List of fixture
});
```

## Listening to Scene Updates
```
dmx.scenes.listen((scenes){
  // List of scene
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
    // List of dmx data
  }

  @override
  void onScenes(List<Scene> scenes) {
    // List of scene
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

### SceneStep
```
SceneStep(
  durationMs: 1000,
  commands: [
    DmxCommand(
      brightness: 0,
      color: DmxColor.blue,
      id: 0,
    ),
  ]
);
```

### Scene
```
Scene(
  id: 0,
  name: 'scene1',
  loop: true,
  steps: [
    SceneStep(
      commands: [
        DmxCommand(
          brightness: 0,
          color: DmxColor.blue,
          id: 0,
        ),
      ],
      durationMs: 1000,
    ),
  ],
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
  @override
  void onScenes(List<Scene> scenes) {
    print("Scenes updated: $scenes");
  }
}
```

## What’s Next

* Pattern effects (strobes, chases)

* Scheduled commands

## 🤝 Contributions

Contributions are always welcome!

If you find a bug or have a feature request but aren’t sure how to implement it, feel free to open an issue, I’m happy to take a look. [Open an Issue](https://github.com/CodeSleeker/flutter-dmx/issues)

If you’ve already fixed something or added a new feature, go ahead and submit a pull request. Let’s make this plugin better together! [Submit a Pull Request](https://github.com/CodeSleeker/flutter-dmx/pulls)

## ❤️ Support This Plugin

If this plugin has helped you in your project, consider giving it a 👍 on pub.dev. It's a simple gesture, but it really helps others discover the plugin and motivates ongoing development.

Maintaining this plugin takes real time and effort: code updates, testing across platforms, fixing issues, adding new features, and keeping up with Flutter and Android/iOS changes. If you’d like to support the work that goes into keeping this project alive and improving, you can do so here:

[![Buy Me A Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/codesleeker)

Your support directly helps with maintaining the plugin and pushing new updates. Thank you! 🙌