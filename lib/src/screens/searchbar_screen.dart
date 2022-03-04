import 'package:flutter/material.dart';
import 'package:flutter_master_temp/src/custom_widgets/searchbar/common_serchbar.dart';

class SearchBarScreen extends StatelessWidget {
  SearchBarScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('search bar'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SearchInput(
              textController: searchController,
              hintText: 'search',
              focusedBorderColor: Colors.deepPurpleAccent,
              allcontaintColor: Colors.deepPurpleAccent,
            ),
            SizedBox(height: 10),
            SearchInput(
              textController: searchController,
              hintText: 'search',
              focusedBorderColor: Colors.deepPurpleAccent,
              allcontaintColor: Colors.deepPurpleAccent,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 10),
            SearchInput(
              textController: searchController,
              hintText: 'search',
              focusedBorderColor: Colors.deepPurpleAccent,
              allcontaintColor: Colors.deepPurpleAccent,
              suffix: Icon(
                Icons.search,
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 10),
            SearchInput(
              textController: searchController,
              hintText: 'search',
              focusedBorderColor: Colors.deepPurpleAccent,
              allcontaintColor: Colors.deepPurpleAccent,
              enabledBorderRadius: 50,
              focusedBorderRadius: 50,
            ),
            SizedBox(height: 10),
            SearchInput(
              textController: searchController,
              hintText: 'search',
              focusedBorderColor: Colors.deepPurpleAccent,
              allcontaintColor: Colors.deepPurpleAccent,
              enabledBorderRadius: 50,
              focusedBorderRadius: 50,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 10),
            SearchInput(
              textController: searchController,
              hintText: 'search',
              focusedBorderColor: Colors.deepPurpleAccent,
              allcontaintColor: Colors.deepPurpleAccent,
              enabledBorderRadius: 50,
              focusedBorderRadius: 50,
              suffix: Icon(
                Icons.search,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
