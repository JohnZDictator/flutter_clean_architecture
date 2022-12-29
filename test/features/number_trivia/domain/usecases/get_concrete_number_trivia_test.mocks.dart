import 'package:clean_architecture_trivia_app/core/error/failures.dart';
import 'package:clean_architecture_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_trivia_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {
  MockNumberTriviaRepository() {
    throwOnMissingStub(this);
  }

  @override
  Future<Either<Failure, NumberTrivia>>? getConcreteNumberTrivia(int? number) =>
      (super.noSuchMethod(Invocation.method(#getConcreteNumberTrivia, [number]))
          as Future<Either<Failure, NumberTrivia>>?);

  @override
  String toString() => super.toString();
}
