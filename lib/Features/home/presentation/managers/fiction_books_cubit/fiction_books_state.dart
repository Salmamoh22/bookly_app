part of 'fiction_books_cubit.dart';

sealed class FictionBooksState extends Equatable {
  const FictionBooksState();

  @override
  List<Object> get props => [];
}

final class FictionBooksInitial extends FictionBooksState {}

final class FictionBooksLoading extends FictionBooksState {}

final class FictionBooksSuccess extends FictionBooksState {
  final List<BookModel> books;
  const FictionBooksSuccess(this.books);
}

final class FictionBooksFailure extends FictionBooksState {
  final String errorMessage;
  const FictionBooksFailure(this.errorMessage);
}
