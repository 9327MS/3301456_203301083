import 'dart:convert';
import 'package:bitkim/model/weather.dart';
import 'package:bitkim/pages/ekran.dart';
import 'package:bitkim/pages/arakaynak.dart';
import 'package:bitkim/pages/haftalikhava.dart';
import 'package:bitkim/pages/sehrdenem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/services/api.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
var ilkgunmax;
var ilkgun;
var ikigun;
var ucgun;
var dortgun;
var besgun;
var altigun;
var ilkgunort;
var ilkgunmin;
var ikigunmax;
var ikigunort;
var ikigunmin;
var ucgunmax;
var ucgunort;
var ucgunmin;
var dortgunmax;
var dortgunort;
var dortgunmin;
var besgunmax;
var besgunort;
var besgunmin;
var altigunmax;
var altigunort;
var altigunmin;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String city = "";
  List<Weather> weatherList = [];

  @override

  void initState() {
    getWeatherData(sehiri);
    super.initState();
  }
  static const Color niceBlue = Color(0xff00b4d8);
  static const Color niceDarkBlue = Color(0xff184e77);
  static const Color niceVeryDarkBlue = Color(0xff023e8a);
  static const Color niceWhite = Color(0xffcaf0f8);
  static const Color niceTextDarkBlue = Color(0xff14213d);
  @override
  Widget build(BuildContext context) {
    if (weatherList.isEmpty) {
      return  new Scaffold(
        backgroundColor: Colors.transparent,
          body: Center(
          child:
          LoadingAnimationWidget.twistingDots(
          leftDotColor: niceBlue,
          rightDotColor: Colors.white,
           size: 165,),
    ),
    );
    } else {
      final screenSize = MediaQuery
          .of(context)
          .size;
      return Container(

        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: buildBackGroundColorGradient(weatherList[0].status),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: buildAppBarWidget(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Image.network(weatherList[0].icon,
                  width: MediaQuery.of(context).size.height / 4),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                "${double.parse(weatherList[0].degree).round().toString()}°C",
                style: TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.w300,
                  color: buildTextColor(weatherList[0].status),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          icon: Icon(Icons.bar_chart),
                      iconSize: 40,
                      color: buildTextColor(weatherList[0].status),
                        tooltip: 'Grafik',
                        onPressed: ()
                        {

                          ilkgunmax =double.parse("${double.parse(weatherList[0].max).round()}");
                          ilkgunmin =double.parse( "${double.parse(weatherList[0].min).round()}");
                          ilkgunort=(ilkgunmax+ilkgunmin)/2;
                          ilkgun=weatherList[0].day;
                          ikigunmax =double.parse("${double.parse(weatherList[1].max).round()}");
                          ikigunmin =double.parse( "${double.parse(weatherList[1].min).round()}");
                          ikigunort=(ikigunmax+ikigunmin)/2;
                          ikigun=weatherList[1].day;
                          ucgunmax =double.parse("${double.parse(weatherList[2].max).round()}");
                          ucgunmin =double.parse( "${double.parse(weatherList[2].min).round()}");
                          ucgunort=(ucgunmax+ucgunmin)/2;
                          ucgun=weatherList[2].day;
                          dortgunmax =double.parse("${double.parse(weatherList[3].max).round()}");
                          dortgunmin =double.parse( "${double.parse(weatherList[3].min).round()}");
                          dortgunort=(dortgunmax+dortgunmin)/2;
                          dortgun=weatherList[3].day;
                          besgunmax =double.parse("${double.parse(weatherList[5].max).round()}");
                          besgunmin =double.parse( "${double.parse(weatherList[5].min).round()}");
                          besgunort=(besgunmax+besgunmin)/2;
                          besgun=weatherList[4].day;
                          altigunmax=double.parse("${double.parse(weatherList[6].max).round()}");
                          altigunmin =double.parse( "${double.parse(weatherList[6].min).round()}");
                          altigunort=(altigunmax+altigunmin)/2;
                          altigun=weatherList[5].day;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => BarChartSample3()));
                        },
                      ),
                      Text(
                        'Haftalık grafik',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                          color: buildTextColor(weatherList[0].status),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Text(weatherList[0].description,textAlign: TextAlign.center,style:
                        TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w300,
                            color: buildTextColor(weatherList[0].status),overflow: TextOverflow.clip ),softWrap: true),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: weatherList.length - 1,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            buildWeatherListText(weatherList[index + 1].day),
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              fontSize: 20.0,
                              color: Colors.white
                            ),
                          ),
                          Image.network(
                            weatherList[index + 1].icon,
                            height: 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "${double.parse(weatherList[index + 1].min).round()}° -",
                                style: const TextStyle(
                                   fontSize: 22.0,
                                    color: Colors.white
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "${double.parse(weatherList[index + 1].max).round()}°",
                                style: const TextStyle(
                                  fontSize: 22.0,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.transparent,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  List<Color> buildBackGroundColorGradient(String weather) {
    if (weather.toLowerCase() == "snow") {
      return [niceWhite, niceDarkBlue];
    } else if (weather.toLowerCase() == "rain") {
      return [niceBlue, niceDarkBlue];
    } else {
      return [niceWhite, niceBlue];
    }
  }

  Color buildTextColor(String weather) {
    if (weather.toLowerCase() == "snow") {
      return niceTextDarkBlue;
    } else if (weather.toLowerCase() == "rain") {
      return Colors.white;
    } else {
      return Colors.white;
    }
  }

  void getWeatherData(String cityData) {
    ApiService.getWeatherDataByCity(cityData).then((data) {
      Map resultBody = json.decode(data.body);
      if (resultBody['success'] == true) {
        setState(() {
          city = resultBody['city'];
          Iterable result = resultBody['result'];
          weatherList =
              result.map((watherData) => Weather(watherData)).toList();
        });
      }
    });
  }

  AppBar buildAppBarWidget() {
    return AppBar(
      leadingWidth: 60,
      leading: ElevatedButton.icon(
          onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => ekran())),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text('GERİ'),
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent, shadowColor: Colors.white)
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            weatherList[0].day,
            style: TextStyle(
              fontSize: 16.0,
              color: buildTextColor(weatherList[0].status),
            ),
          ),
          Text(
            weatherList[0].date,
            style: TextStyle(
              fontSize: 16.0,
              color: buildTextColor(weatherList[0].status),
            ),
          ),
        ],
      ),
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.location_pin,
                      color: buildTextColor(weatherList[0].status)),
                  tooltip: 'Şehir değiştir',
                  onPressed: ()
                  {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => sehr()));
                  },
                ),
                Text(
                  city.toUpperCase(),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: buildTextColor(weatherList[0].status),
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 15.0,
        ),
      ],
    );
  }

  String buildWeatherListText(String day) {
    switch (day.toLowerCase()) {
      case "pazartesi":
        return "Pazartesi";
      case "salı":
        return "Salı           ";
      case "çarşamba":
        return "Çarşamba";
      case "perşembe":
        return "Perşembe";
      case "cuma":
        return "Cuma        ";
      case "cumartesi":
        return "Cumartesi ";
      case "pazar":
        return "Pazar      ";
      default:
        return "?";
    }
  }
}