# MultiSlider
An extension to Flutter materal slider to select a range.

<img src="https://github.com/princ-bhardwaj/MultiSlider/blob/master/MultiSliderDemo.gif" width="220" alt="Flutter MultiSlider" />
<br/><br/>


## Usage

Use this code to add a child widget:

```sh
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
```


## License

   Copyright 2019 Prince Bhardwaj

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.


