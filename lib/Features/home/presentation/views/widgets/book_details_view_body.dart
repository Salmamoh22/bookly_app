import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
  

    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .33),
                  child: CustomBookImage(
                    imageUrl:
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FThe_Jungle_Book_%25281967_film%2529&psig=AOvVaw1LwxZQIUJsr53b4kOXhCqz&ust=1752760602100000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCLivgMjXwY4DFQAAAAAdAAAAABAP",
                  ),
                ),
                const SizedBox(height: 43),
                Text(
                  "The Jungle Book",
                  style: Styles.textStyle30.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: .7,
                  child: Text(
                    "Rudyard Kipling",
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center, rating: 4,count: 250,),
                const SizedBox(height: 37),
                const BooksAction(),
                Expanded(child: const SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
