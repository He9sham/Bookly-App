import 'package:bookly_app/features/Search/presantation/view/widgets/search_view_body.dart';
import 'package:bookly_app/features/Search/presantation/view_model/Search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
    String searchQuery = '';
  @override
  void initState() {
    searchQuery = '';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchViewBody(
        onsearch: (value) {
          setState(() {
            searchQuery = value;
          });
           BlocProvider.of<SearchCubit>(context).fetchSearchBooks(searchQuery);
        },
      ),
    );
  }
}
