import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/service_locator.dart';

import 'package:bookly_app/Features/home/data/repos/home_repo_imp.dart';

import 'package:bookly_app/Features/home/presentation/managers/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/managers/newest_books_cubit/newest_books_cubit.dart';

import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  NewestBooksCubit(getIt<HomeRepoImpl>())..fetchNewestBooks(),
        ),
        BlocProvider(
          create:
              (context) =>
                  FeaturedBooksCubit(getIt<HomeRepoImpl>())
                    ..fetchFeaturedBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
