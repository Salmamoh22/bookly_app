import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:equatable/equatable.dart';

part 'fiction_books_state.dart';

class FictionBooksCubit extends Cubit<FictionBooksState> {
  FictionBooksCubit() : super(FictionBooksInitial());
}
