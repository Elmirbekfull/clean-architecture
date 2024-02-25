import 'package:rickandmorty/features/data/models/location_model.dart';
import 'package:rickandmorty/features/domain/entities/person_enity.dart';

class PersonModel extends PersonEntity {
  // ignore: use_super_parameters
  const PersonModel(
      {required id,
      required name,
      required status,
      required spacies,
      required type,
      required gender,
      required origin,
      required location,
      required image,
      required episode,
      required created})
      : super(
          id: id,
          name: name,
          status: status,
          spacies: spacies,
          type: type,
          gender: gender,
          origin: origin,
          location: location,
          image: image,
          episode: episode,
          created: created,
        );

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
        id: json['id'],
        name: json['name'],
        status: json['status'],
        spacies: json['spacies'],
        type: json['type'],
        gender: json['gender'],
        origin: json['origin'] != null
            ? LocationModel.fromJson(json['origin'])
            : null,
        location: json['location'] != null
            ? LocationModel.fromJson(json['location'])
            : null,
        image: json['image'],
        episode:
            (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
        created: DateTime.parse(json['created'] as String));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'status': status,
      'spacies': spacies,
      'type': type,
      'gender': gender,
      'origin': origin,
      'location': location,
      'image': image,
      'episode': episode,
      'created': created,
    };
  }
}
