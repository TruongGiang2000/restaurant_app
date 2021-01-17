import 'package:flutter/cupertino.dart';
import 'package:restaurant_app/enums/devices_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
  var ortientation = mediaQueryData.orientation;

  double deviceWidth = 0;
  if (ortientation == Orientation.landscape) {
    deviceWidth = mediaQueryData.size.height;
  } else {
    deviceWidth = mediaQueryData.size.width;
  }

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }
  return DeviceScreenType.Mobile;
}
