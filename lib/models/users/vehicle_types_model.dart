// ignore_for_file: lines_longer_than_80_chars

import 'package:onoy_kg/models/users/vehicle_types_results.dart';

class VehicleTypes {

  VehicleTypes.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <VehicleTypesResult>[];
      json['results'].forEach((v) {
        results.add( VehicleTypesResult.fromJson(v));
      });
    }
  }

  VehicleTypes({required this.count, required this.next, required this.previous, required this.results});
  late int count;
  late int next;
  late int previous;
  late List<VehicleTypesResult> results;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    // ignore: unnecessary_null_comparison
    if (results != null) {
      data['results'] = results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
