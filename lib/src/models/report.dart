class ReportModel {
  List<Reports>? reports;

  ReportModel({this.reports});

  ReportModel.fromJson(Map<String, dynamic> json) {
    if (json['reports'] != null) {
      reports = <Reports>[];
      json['reports'].forEach((v) {
        reports!.add(Reports.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (reports != null) {
      data['reports'] = reports!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reports {
  String? medicine;
  String? dose;
  String? totalDispensed;

  Reports({this.medicine, this.dose, this.totalDispensed});

  Reports.fromJson(Map<String, dynamic> json) {
    medicine = json['medicine'];
    dose = json['dose'];
    totalDispensed = json['totalDispensed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['medicine'] = medicine;
    data['dose'] = dose;
    data['totalDispensed'] = totalDispensed;
    return data;
  }
}
