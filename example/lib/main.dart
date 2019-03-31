import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:multislider_plugin/src/multislider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MultiSlider Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MultiSliderSample(),
    );
  }
}

class MultiSliderSample extends StatefulWidget {
  @override
  _MultiSliderSampleState createState() => _MultiSliderSampleState();
}

class _MultiSliderSampleState extends State<MultiSliderSample> {

  double _lowerValue = 20.0;
  double _upperValue = 80.0;
  double _lowerValue1 = 20.0;
  double _upperValue1 = 80.0;
  double _lowerValue2 = 20.0;
  double _upperValue2 = 80.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      top: false,
      bottom: false,
      child: new Scaffold(
        appBar: new AppBar(title: new Text('MultiSlider Sample')),
        body: new Container(

          padding: const EdgeInsets.only(
              top: 60.0, left: 10.0, right: 10.0, bottom: 60.0),
          child: new Column(
              children: <Widget>[]..add(

                //
                // Simple example
                //
                new MultiSlider(
                  min: 0.0,
                  max: 100.0,
                  lowerValue: _lowerValue,
                  upperValue: _upperValue,
                  overlayColor: Colors.blue,
                  showValueIndicator: true,
                  valueIndicatorMaxDecimals: 2,
                  thumbColor: Colors.blue,
                  activeTickMarkColor: Colors.red,
                  inactiveTrackColor: Colors.black,                  thumbImageAsset: 'images/ic_emoji.png',
                  onChanged: (double newLowerValue, double newUpperValue) {
                    setState(() {
                      _lowerValue = newLowerValue;
                      _upperValue = newUpperValue;
                    });
                  },
                  onChangeStart:
                      (double startLowerValue, double startUpperValue) {
                    print(
                        'Range start value: $startLowerValue and $startUpperValue');
                  },
                  onChangeEnd: (double newLowerValue, double newUpperValue) {
                    print(
                        'Range end value: $newLowerValue and $newUpperValue');
                  },
                ),
              )
              // Add some space
                ..add(
                  new SizedBox(height: 24.0),
                )
              //

                ..add(
                  //
                  // Simple example
                  //
                  new MultiSlider(
                    min: 0.0,
                    max: 100.0,
                    lowerValue: _lowerValue1,
                    upperValue: _upperValue1,
                    overlayColor: Colors.blue,
                    showValueIndicator: true,
                    valueIndicatorMaxDecimals: 2,
                    thumbColor: Colors.black,
                    activeTickMarkColor: Colors.red,
                    inactiveTrackColor: Colors.black,
                    onChanged: (double newLowerValue, double newUpperValue) {
                      setState(() {
                        _lowerValue1 = newLowerValue;
                        _upperValue1= newUpperValue;
                      });
                    },
                    onChangeStart:
                        (double startLowerValue, double startUpperValue) {
                      print(
                          'Range start value: $startLowerValue and $startUpperValue');
                    },
                    onChangeEnd: (double newLowerValue, double newUpperValue) {
                      print(
                          'Range end value: $newLowerValue and $newUpperValue');
                    },
                  ),
                )
              // Add some space
                ..add(
                  new SizedBox(height: 24.0),
                )
              //

                ..add(
                  //
                  // Simple example
                  //
                  new MultiSlider(
                    min: 0.0,
                    max: 100.0,
                    lowerValue: _lowerValue2,
                    upperValue: _upperValue2,
                    divisions: 10,
                    overlayColor: Colors.black,
                    activeTickMarkColor: Colors.red,
                    thumbColor: Colors.red,
                    onChanged: (double newLowerValue, double newUpperValue) {
                      setState(() {
                        _lowerValue2 = newLowerValue;
                        _upperValue2 = newUpperValue;
                      });
                    },
                    onChangeStart:
                        (double startLowerValue, double startUpperValue) {
                      print(
                          'Range start value: $startLowerValue and $startUpperValue');
                    },
                    onChangeEnd: (double newLowerValue, double newUpperValue) {
                      print(
                          'Range end value: $newLowerValue and $newUpperValue');
                    },
                    showValueIndicator: true
                  ),
                )
              // Add some space
                ..add(
                  new SizedBox(height: 24.0),
                )
            //
          ),
        ),
      ),
    );
  }
}