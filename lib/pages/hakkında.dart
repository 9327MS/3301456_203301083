import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class hakkinda extends StatefulWidget {
  const hakkinda({Key? key}) : super(key: key);

  @override
  State<hakkinda> createState() => _hakkindaState();
}
class _hakkindaState extends State<hakkinda>
    with SingleTickerProviderStateMixin{
 late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3),vsync: this);
        _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceInOut)..addListener(()=> this.setState ((){ }))
          ..addStatusListener((durum) {});

        _controller.forward();
  }
 @override
 void dispose() {
   _controller.dispose();
   super.dispose();
 }
 @override

  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
          title: Text('Hakkında'),
         ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
              'assets/indir.png'
              ),
              fit: BoxFit.fill,
              ),
             shape: BoxShape.rectangle,
            ),
    padding: EdgeInsets.only(left: 25, right: 10),
    alignment: Alignment.topCenter,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[

    Icon(
        Icons.code, color: Colors.green,size: 300,
        ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(padding: EdgeInsets.only(left: 5,right: 10) ,child: Icon(Icons.info,color: Colors.green,size: 50),),
           Text("Bu uygulama \nAhmet CEVAHİR ÇINAR'ın\nvizesi sayesinde oluşturulmuştur.",style: TextStyle(
                fontSize: _animation.value*25, color: Colors.white, fontWeight: FontWeight.bold,),
            ),
          ]
      ),
      SizedBox(height: 40),
      Text('Dikkat! Bu uygulama eksik ve alpha sürümündedir. Lütfen hataları bildirin ve tahammül gösterin.',style: TextStyle(
          fontSize: _animation.value*15, color: Colors.white, fontWeight: FontWeight.bold),),
      Icon(Icons.sentiment_very_satisfied,color: Colors.green,size: 30),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(padding: EdgeInsets.only(right: 5) ,child: Icon(Icons.account_circle,color: Colors.grey,size: 10),),
             Text('Mustafa Savaş iletişim için mail adresi = 203301083@ogr.selcuk.edu.tr',style: TextStyle(
              fontSize: _animation.value*10, color: Colors.grey, fontWeight: FontWeight.bold),),
          ]
      ),
            Container(
              padding: EdgeInsets.all(50),
              child: GestureDetector(
                  child: new  Text('GitHub linki',style: TextStyle(
                      fontSize: _animation.value*30, color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),),
                  onTap: ()  => launch('https://github.com/9327MS')
              ),

            ),
              ],
        )

    ),
    );



  }
}
