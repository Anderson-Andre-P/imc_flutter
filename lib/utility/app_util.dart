import 'dart:io';
import 'package:share_plus/share_plus.dart';

class AppUtil {
  static void onShareTap() {
    String share = "";

    if (Platform.isAndroid) {
      share = "https://play.google.com/store/apps";
    } else if (Platform.isIOS) {
      share = "https://apps.apple.com";
    }
    if (share.isNotEmpty) Share.share(share);
  }

  static List<String> measurementUnitList = [
    "Centímetro",
    "Pés-polegadas",
  ];

  static List<String> weightUnitList = [
    "Quilograma",
    "Libra",
  ];
}
