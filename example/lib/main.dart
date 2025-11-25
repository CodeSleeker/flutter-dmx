import 'package:flutter/material.dart';
import 'package:flutter_dmx/flutter_dmx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> implements DmxListener {
  final _flutterDmx = FlutterDmx();

  @override
  void initState() {
    super.initState();
    _flutterDmx.setListener(this);
    _flutterDmx.dmxList.listen((dmxList) {
      //List of dmx data
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  _flutterDmx.setIpAddress('192.168.1.112');
                },
                child: Text('Set IP Address'),
              ),
              ElevatedButton(
                onPressed: () {
                  final dmxData = DmxFixture(
                    id: 1,
                    address: 1,
                    area: 'test',
                    colorMode: ColorMode.rgbw,
                    name: 'test',
                    channel: 7,
                    addressMode: AddressMode.seq,
                  );

                  _flutterDmx.setData(dmxData);
                },
                child: Text('Set data'),
              ),
              ElevatedButton(
                onPressed: () {
                  final command = DmxCommand(
                    brightness: 255,
                    color: DmxColor.red,
                    area: 'North Field',
                  );
                  _flutterDmx.controlByArea(command);
                  // or
                  _flutterDmx.set
                      .color(DmxColor.amber)
                      .brightness(255)
                      .sendByArea('North Field');
                },
                child: Text('Control by area'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onDmxList(List<DmxFixture> dmxList) {
    //List of dmx data
  }
}
