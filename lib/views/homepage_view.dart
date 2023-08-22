import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:restapi_bloc_test/services/city_info_api.dart';


class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {

  String text = "Testing";
  late final CityInfoApi api ;

  
  @override
  void initState() {
    api = CityInfoApi(Dio());
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          children: [
            Text(text),
            ElevatedButton(onPressed: (){
               api.getCity(1);
            }, child: Text('text'),
            )
          ],
        ),
      ),
    );
  }
}
