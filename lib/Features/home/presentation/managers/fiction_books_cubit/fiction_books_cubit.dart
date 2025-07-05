import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fiction_books_state.dart';

class FictionBooksCubit extends Cubit<FictionBooksState> {
  FictionBooksCubit(this.homeRepo) : super(FictionBooksInitial());
  final HomeRepo homeRepo;

    Future<void> fetchFictionBooks() async {
    emit(FictionBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FictionBooksFailure(failure.errorMessage)),
      (books) => emit(FictionBooksSuccess(books)),
    );
  }
}
