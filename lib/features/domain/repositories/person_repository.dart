import 'package:dartz/dartz.dart';
import 'package:rickandmorty/core/error/failure.dart';
import 'package:rickandmorty/features/domain/entities/person_enity.dart';

abstract class PersonRepository {
  // метод получение список персонажей
  Future<Either<Failure, List<PersonEntity>>> getALLPerson(int page);

  // метод поиск персонажей
  Future<Either<Failure, List<PersonEntity>>> searchPerson(String qury);
}
