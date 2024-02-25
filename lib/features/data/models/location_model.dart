import 'package:rickandmorty/features/domain/entities/person_enity.dart';

class LocationModel extends LocationEntity {
  LocationModel({required super.name, required super.url});
  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(name: json['name'], url: json['url']);
  }
}
