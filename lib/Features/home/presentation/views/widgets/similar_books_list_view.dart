import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FThe_Jungle_Book_%25281967_film%2529&psig=AOvVaw1LwxZQIUJsr53b4kOXhCqz&ust=1752760602100000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCLivgMjXwY4DFQAAAAAdAAAAABAP",),
          );
        },
      ),
    );
  }
}
