// To parse this JSON data, do
//
//     final barcodeModel = barcodeModelFromJson(jsonString);

import 'dart:convert';

BarcodeModel barcodeModelFromJson(String str) =>
    BarcodeModel.fromJson(json.decode(str));

String barcodeModelToJson(BarcodeModel data) => json.encode(data.toJson());

class BarcodeModel {
  BarcodeModel({
    this.items,
  });

  List<Item>? items;

  factory BarcodeModel.fromJson(Map<String, dynamic> json) => BarcodeModel(
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    this.barcode,
    this.name,
    this.brand,
    this.ingredients,
    this.package,
    this.serving,
    this.categories,
    this.nutrients,
    this.dietLabels,
    this.dietFlags,
    this.packagingPhotos,
    this.allergens,
    this.brandList,
    this.countries,
    this.countryDetails,
    this.palmOilIngredients,
    this.ingredientList,
    this.hasEnglishIngredients,
    this.minerals,
    this.vitamins,
    this.traces,
    this.description,
    this.keywords,
  });

  String? barcode;
  String? name;
  String? brand;
  String? ingredients;
  Package? package;
  Serving? serving;
  List<String>? categories;
  List<Nutrient>? nutrients;
  DietLabels? dietLabels;
  List<dynamic>? dietFlags;
  PackagingPhotos? packagingPhotos;
  List<dynamic>? allergens;
  List<String>? brandList;
  List<String>? countries;
  CountryDetails? countryDetails;
  List<dynamic>? palmOilIngredients;
  List<String>? ingredientList;
  bool? hasEnglishIngredients;
  List<dynamic>? minerals;
  List<dynamic>? vitamins;
  List<dynamic>? traces;
  String? description;
  List<String>? keywords;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        barcode: json["barcode"],
        name: json["name"],
        brand: json["brand"],
        ingredients: json["ingredients"],
        package:
            json["package"] == null ? null : Package.fromJson(json["package"]),
        serving:
            json["serving"] == null ? null : Serving.fromJson(json["serving"]),
        categories: json["categories"] == null
            ? []
            : List<String>.from(json["categories"]!.map((x) => x)),
        nutrients: json["nutrients"] == null
            ? []
            : List<Nutrient>.from(
                json["nutrients"]!.map((x) => Nutrient.fromJson(x))),
        dietLabels: json["diet_labels"] == null
            ? null
            : DietLabels.fromJson(json["diet_labels"]),
        dietFlags: json["diet_flags"] == null
            ? []
            : List<dynamic>.from(json["diet_flags"]!.map((x) => x)),
        packagingPhotos: json["packaging_photos"] == null
            ? null
            : PackagingPhotos.fromJson(json["packaging_photos"]),
        allergens: json["allergens"] == null
            ? []
            : List<dynamic>.from(json["allergens"]!.map((x) => x)),
        brandList: json["brand_list"] == null
            ? []
            : List<String>.from(json["brand_list"]!.map((x) => x)),
        countries: json["countries"] == null
            ? []
            : List<String>.from(json["countries"]!.map((x) => x)),
        countryDetails: json["country_details"] == null
            ? null
            : CountryDetails.fromJson(json["country_details"]),
        palmOilIngredients: json["palm_oil_ingredients"] == null
            ? []
            : List<dynamic>.from(json["palm_oil_ingredients"]!.map((x) => x)),
        ingredientList: json["ingredient_list"] == null
            ? []
            : List<String>.from(json["ingredient_list"]!.map((x) => x)),
        hasEnglishIngredients: json["has_english_ingredients"],
        minerals: json["minerals"] == null
            ? []
            : List<dynamic>.from(json["minerals"]!.map((x) => x)),
        vitamins: json["vitamins"] == null
            ? []
            : List<dynamic>.from(json["vitamins"]!.map((x) => x)),
        traces: json["traces"] == null
            ? []
            : List<dynamic>.from(json["traces"]!.map((x) => x)),
        description: json["description"],
        keywords: json["keywords"] == null
            ? []
            : List<String>.from(json["keywords"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "barcode": barcode,
        "name": name,
        "brand": brand,
        "ingredients": ingredients,
        "package": package?.toJson(),
        "serving": serving?.toJson(),
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x)),
        "nutrients": nutrients == null
            ? []
            : List<dynamic>.from(nutrients!.map((x) => x.toJson())),
        "diet_labels": dietLabels?.toJson(),
        "diet_flags": dietFlags == null
            ? []
            : List<dynamic>.from(dietFlags!.map((x) => x)),
        "packaging_photos": packagingPhotos?.toJson(),
        "allergens": allergens == null
            ? []
            : List<dynamic>.from(allergens!.map((x) => x)),
        "brand_list": brandList == null
            ? []
            : List<dynamic>.from(brandList!.map((x) => x)),
        "countries": countries == null
            ? []
            : List<dynamic>.from(countries!.map((x) => x)),
        "country_details": countryDetails?.toJson(),
        "palm_oil_ingredients": palmOilIngredients == null
            ? []
            : List<dynamic>.from(palmOilIngredients!.map((x) => x)),
        "ingredient_list": ingredientList == null
            ? []
            : List<dynamic>.from(ingredientList!.map((x) => x)),
        "has_english_ingredients": hasEnglishIngredients,
        "minerals":
            minerals == null ? [] : List<dynamic>.from(minerals!.map((x) => x)),
        "vitamins":
            vitamins == null ? [] : List<dynamic>.from(vitamins!.map((x) => x)),
        "traces":
            traces == null ? [] : List<dynamic>.from(traces!.map((x) => x)),
        "description": description,
        "keywords":
            keywords == null ? [] : List<dynamic>.from(keywords!.map((x) => x)),
      };
}

class CountryDetails {
  CountryDetails({
    this.englishSpeaking,
    this.nonEnglishSpeaking,
  });

  int? englishSpeaking;
  int? nonEnglishSpeaking;

  factory CountryDetails.fromJson(Map<String, dynamic> json) => CountryDetails(
        englishSpeaking: json["english_speaking"],
        nonEnglishSpeaking: json["non_english_speaking"],
      );

  Map<String, dynamic> toJson() => {
        "english_speaking": englishSpeaking,
        "non_english_speaking": nonEnglishSpeaking,
      };
}

class DietLabels {
  DietLabels({
    this.vegan,
    this.vegetarian,
    this.glutenFree,
  });

  GlutenFree? vegan;
  GlutenFree? vegetarian;
  GlutenFree? glutenFree;

  factory DietLabels.fromJson(Map<String, dynamic> json) => DietLabels(
        vegan:
            json["vegan"] == null ? null : GlutenFree.fromJson(json["vegan"]),
        vegetarian: json["vegetarian"] == null
            ? null
            : GlutenFree.fromJson(json["vegetarian"]),
        glutenFree: json["gluten_free"] == null
            ? null
            : GlutenFree.fromJson(json["gluten_free"]),
      );

  Map<String, dynamic> toJson() => {
        "vegan": vegan?.toJson(),
        "vegetarian": vegetarian?.toJson(),
        "gluten_free": glutenFree?.toJson(),
      };
}

class GlutenFree {
  GlutenFree({
    this.name,
    this.isCompatible,
    this.compatibilityLevel,
    this.confidence,
    this.confidenceDescription,
  });

  String? name;
  bool? isCompatible;
  int? compatibilityLevel;
  bool? confidence;
  String? confidenceDescription;

  factory GlutenFree.fromJson(Map<String, dynamic> json) => GlutenFree(
        name: json["name"],
        isCompatible: json["is_compatible"],
        compatibilityLevel: json["compatibility_level"],
        confidence: json["confidence"],
        confidenceDescription: json["confidence_description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "is_compatible": isCompatible,
        "compatibility_level": compatibilityLevel,
        "confidence": confidence,
        "confidence_description": confidenceDescription,
      };
}

class Nutrient {
  Nutrient({
    this.name,
    this.per100G,
    this.measurementUnit,
    this.rank,
    this.dataPoints,
    this.description,
  });

  String? name;
  double? per100G;
  String? measurementUnit;
  int? rank;
  int? dataPoints;
  String? description;

  factory Nutrient.fromJson(Map<String, dynamic> json) => Nutrient(
        name: json["name"],
        per100G: json["per_100g"]?.toDouble(),
        measurementUnit: json["measurement_unit"],
        rank: json["rank"],
        dataPoints: json["data_points"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "per_100g": per100G,
        "measurement_unit": measurementUnit,
        "rank": rank,
        "data_points": dataPoints,
        "description": description,
      };
}

class Package {
  Package({
    this.quantity,
    this.size,
  });

  dynamic quantity;
  String? size;

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        quantity: json["quantity"],
        size: json["size"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "size": size,
      };
}

class PackagingPhotos {
  PackagingPhotos({
    this.front,
    this.nutrition,
    this.ingredients,
  });

  Front? front;
  Front? nutrition;
  Front? ingredients;

  factory PackagingPhotos.fromJson(Map<String, dynamic> json) =>
      PackagingPhotos(
        front: json["front"] == null ? null : Front.fromJson(json["front"]),
        nutrition: json["nutrition"] == null
            ? null
            : Front.fromJson(json["nutrition"]),
        ingredients: json["ingredients"] == null
            ? null
            : Front.fromJson(json["ingredients"]),
      );

  Map<String, dynamic> toJson() => {
        "front": front?.toJson(),
        "nutrition": nutrition?.toJson(),
        "ingredients": ingredients?.toJson(),
      };
}

class Front {
  Front({
    this.small,
    this.thumb,
    this.display,
  });

  String? small;
  String? thumb;
  String? display;

  factory Front.fromJson(Map<String, dynamic> json) => Front(
        small: json["small"],
        thumb: json["thumb"],
        display: json["display"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "thumb": thumb,
        "display": display,
      };
}

class Serving {
  Serving({
    this.size,
    this.measurementUnit,
    this.sizeFulltext,
  });

  int? size;
  String? measurementUnit;
  String? sizeFulltext;

  factory Serving.fromJson(Map<String, dynamic> json) => Serving(
        size: json["size"],
        measurementUnit: json["measurement_unit"],
        sizeFulltext: json["size_fulltext"],
      );

  Map<String, dynamic> toJson() => {
        "size": size,
        "measurement_unit": measurementUnit,
        "size_fulltext": sizeFulltext,
      };
}
