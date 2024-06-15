import 'dart:developer';

import 'package:get/get.dart';
import 'package:heli/controller/barcodeController.dart';
import 'package:heli/models/Barcode_model.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'result_model.dart';
export 'result_model.dart';

class ResultWidget extends StatefulWidget {
  String barcode;
  ResultWidget({
    Key? key,
    required this.barcode,
    this.scannedValue,
  }) : super(key: key);

  final String? scannedValue;

  @override
  _ResultWidgetState createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  late ResultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  BarcodeController controller = Get.find();

  BarcodeModel? barcode;
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF42BEA5),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            'Product Details',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: FutureBuilder<BarcodeModel>(
              future: controller.getBarcodeDate(barcode: widget.barcode),
              builder: (context, barcode) {
                if (barcode.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (barcode.data == null || barcode.data!.items == null) {
                  return Center(
                    child: Text("Product Not Found"),
                  );
                }
                BarcodeModel result = barcode.data!;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      // Text(
                      //   "ALLERGENS",
                      // ),
                      // Column(
                      //   children: List.generate(
                      //       result.items![0].allergens!.length, (index) {
                      //     return Text(
                      //         result.items![0].allergens![index].toString());
                      //   }),
                      // ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Nutrients",
                      ),
                      Image.network(result
                          .items![0].packagingPhotos!.nutrition!.display!),
                      Text(
                        "Nutrients",
                      ),
                      Column(
                        children: List.generate(
                            result.items![0].ingredientList!.length, (index) {
                          return Text(result.items![0].ingredientList![index]);
                        }),
                      ),
                      // Column(
                      //   children: List.generate(
                      //       result.items![0].nutrients!.length, (index) {
                      //     return nutrientUi(result.items![0].nutrients![index]);
                      //   }),
                      // ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Nutrients",
                      ),
                      Column(
                        children: List.generate(
                            result.items![0].nutrients!.length, (index) {
                          return nutrientUi(result.items![0].nutrients![index]);
                        }),
                      ),
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }

  nutrientUi(Nutrient nutrient) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nutrient.name!),
            Text(nutrient.description!),
            Text(nutrient.per100G.toString()),
          ],
        ),
      ),
    );
  }
}
