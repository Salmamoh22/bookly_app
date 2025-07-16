part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class FictionBooksInitial extends NewestBooksState {}

final class FictionBooksLoading extends NewestBooksState {}

final class FictionBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  const FictionBooksSuccess(this.books);
}

final class FictionBooksFailure extends NewestBooksState {
  final String errorMessage;
  const FictionBooksFailure(this.errorMessage);
}
