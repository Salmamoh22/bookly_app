import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fectAllBooks() async {
    try {
      var data = await apiService.get(endpoint: '/books');
      List<BookModel> books =
          (data as List).map((book) => BookModel.fromJson(book)).toList();

      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
