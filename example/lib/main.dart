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
    _flutterDmx.enableLogging(true);
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
                    id: 0,
                    address: 1,
                    area: 'north',
                    colorMode: ColorMode.rgbw,
                    name: 'pole1',
                    channel: 7,
                    addressMode: AddressMode.seq,
                    count: 2,
                  );

                  _flutterDmx.setData(dmxData);
                },
                child: Text('Set data 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  final dmxData = DmxFixture(
                    id: 1,
                    address: 15,
                    area: 'mid',
                    colorMode: ColorMode.rgbw,
                    name: 'pole2',
                    channel: 7,
                  );

                  _flutterDmx.setData(dmxData);
                },
                child: Text('Set data 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  final dmxData = DmxFixture(
                    id: 2,
                    address: 22,
                    area: 'south',
                    colorMode: ColorMode.rgbw,
                    name: 'pole2',
                    channel: 7,
                  );

                  _flutterDmx.setData(dmxData);
                },
                child: Text('Set data 3'),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final command = DmxCommand(
                        brightness: 50,
                        color: DmxColor.green,
                        id: 0,
                      );
                      _flutterDmx.controlById(command);
                    },
                    child: Text('Control by id'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      _flutterDmx.set
                          .color(DmxColor.amber)
                          .brightness(50)
                          .sendById(1);
                    },
                    child: Text('Send by id'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final command = DmxCommand(
                        brightness: 80,
                        color: DmxColor.red,
                        area: 'south',
                      );
                      _flutterDmx.controlByArea(command);
                    },
                    child: Text('Control by area'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      _flutterDmx.set
                          .color(DmxColor.amber)
                          .brightness(50)
                          .sendByArea('north');
                    },
                    child: Text('Send by area'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final command = DmxCommand(
                        brightness: 50,
                        color: DmxColor.blue,
                        name: 'pole2',
                      );
                      _flutterDmx.controlByName(command);
                    },
                    child: Text('Control by name'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      _flutterDmx.set
                          .color(DmxColor.red)
                          .brightness(20)
                          .sendByName('pole2');
                    },
                    child: Text('Send by name'),
                  ),
                ],
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  _flutterDmx.setAllBrightness(0);
                },
                child: Text('Set all brightness'),
              ),
              ElevatedButton(
                onPressed: () {
                  _flutterDmx.setAllColor(DmxColor.pink);
                },
                child: Text('Set all color'),
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
