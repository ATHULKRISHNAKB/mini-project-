import 'dart:developer';

import 'package:get/get.dart';
import 'package:heli/models/Barcode_model.dart';
import 'package:http/http.dart' as http;

class BarcodeController extends GetxController {
  Rx<BarcodeModel> barcodeData = Rx<BarcodeModel>(BarcodeModel());

  Future<BarcodeModel> getBarcodeDate({required String barcode}) async {
    var url = Uri.parse(
        'https://chompthis.com/api/v2/food/branded/barcode.php?code=${barcode}&api_key=AzqJQ6TZmDHhVT7e');
    http.Response response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        String data = response.body;
        return barcodeModelFromJson(data);
      } else {}
      return BarcodeModel();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
