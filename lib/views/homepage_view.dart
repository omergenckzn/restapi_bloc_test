import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:restapi_bloc_test/models/city_model.dart';
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
            }, child: const Text('text'),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: ()async{
              CityModel? model = await api.getCity(4);
              if(model != null) {
              } else {

              }
            }, child: const Text('text'),
            ),
          ],
        ),
      ),
    );
  }
}
