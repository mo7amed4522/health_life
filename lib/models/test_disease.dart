// ignore_for_file: prefer_collection_literals

class TestDiseases {
  String? status;
  String? message;
  List<Data>? data;

  TestDiseases({this.status, this.message, this.data});

  TestDiseases.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name;
  String? description;
  List<String>? causes;
  Symptoms? symptoms;

  Data({this.name, this.description, this.causes, this.symptoms});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    causes = json['causes'].cast<String>();
    symptoms =
        json['symptoms'] != null ? Symptoms.fromJson(json['symptoms']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['description'] = description;
    data['causes'] = causes;
    if (symptoms != null) {
      data['symptoms'] = symptoms!.toJson();
    }
    return data;
  }
}

class Symptoms {
  List<String>? one;
  List<String>? two;
  List<String>? three;

  Symptoms({this.one, this.two, this.three});

  Symptoms.fromJson(Map<String, dynamic> json) {
    one = json['one'].cast<String>();
    two = json['two'].cast<String>();
    three = json['three'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['one'] = one;
    data['two'] = two;
    data['three'] = three;
    return data;
  }
}
