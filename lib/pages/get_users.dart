import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetUsers extends StatefulWidget {
  const GetUsers({super.key});
  @override
  State<GetUsers> createState() => _userState();
}

class _userState extends State<GetUsers> {
  // ignore: non_constant_identifier_names
  String DataFetched = "No data fetched";

  void _fetchData(fetchedData) {
    setState(() {
      DataFetched = fetchedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(DataFetched),
        ElevatedButton(
            onPressed: () async {
              var randomNumber = Random().nextInt(10) + 1;
              var url = Uri.http(
                  "jsonplaceholder.typicode.com", "/posts/$randomNumber");
              var response = await http.get(url);
              _fetchData(response.body);
            },
            child: Text("This will fetch data"))
      ],
    );
  }
}
