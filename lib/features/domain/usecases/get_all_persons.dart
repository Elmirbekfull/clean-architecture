import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rickandmorty/core/usecases/usecase.dart';
import 'package:rickandmorty/features/domain/entities/person_enity.dart';
import 'package:rickandmorty/features/domain/repositories/person_repository.dart';
import '../../../core/error/failure.dart';

// ignore: camel_case_types
class getAllPersons extends UseCase<List<PersonEntity>, PagePersonParams> {
  final PersonRepository personRepository;
  getAllPersons({required this.personRepository});
  // ignore: annotate_overrides
  Future<Either<Failure, List<PersonEntity>>> call(
      PagePersonParams params) async {
    return await personRepository.getALLPerson(params.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;
  const PagePersonParams({required this.page});
  @override
  List<Object?> get props => [page];
}
