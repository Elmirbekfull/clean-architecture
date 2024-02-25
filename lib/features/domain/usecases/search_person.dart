// ignore: camel_case_types
// ignore_for_file: annotate_overrides

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rickandmorty/core/error/failure.dart';
import 'package:rickandmorty/core/usecases/usecase.dart';
import 'package:rickandmorty/features/domain/entities/person_enity.dart';
import 'package:rickandmorty/features/domain/repositories/person_repository.dart';

class SearchPerson extends UseCase<List<PersonEntity>, SearchPersonParams> {
  final PersonRepository personRepository;
  SearchPerson({required this.personRepository});
  Future<Either<Failure, List<PersonEntity>>> call(
      SearchPersonParams params) async {
    return await personRepository.searchPerson(params.guery);
  }
}

class SearchPersonParams extends Equatable {
  final String guery;
  const SearchPersonParams({required this.guery});

  @override
  List<Object?> get props => [guery];
}
