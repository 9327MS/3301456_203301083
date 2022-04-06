import 'package:bitkim/bildirim.dart';
import 'package:bitkim/hakk%C4%B1nda.dart';
import 'package:bitkim/hakkında.dart';
import 'package:flutter/material.dart';
import 'cklist.dart';
import 'package:bitkim/cklist.dart';

class ekran extends StatefulWidget {
  ekran({Key? key});

  @override
  _ekranState createState() => _ekranState();
}

class _ekranState extends State<ekran> {
  List<String> ckinfo = [
               'Gölgede yetişen bitkiler kategorisinde yer alan yıllık Ametist çiçeği, sıcak ve gölgeli yerleri sever.Bu yüzden evlerde sık sık balkonlarda yetiştirilir.  Bu kadar sık yetiştirilmesinin bir sebebi de çok hoş bir görünümü olmasıdır.Ametist kelimesi Latince kelimeden gelir. ametustos, ayık anlamına gelir, bu çiçeği (ve adaşı kristalini) ruhsal bilgelik ve berraklığa bağlar. Ama aynı zamanda popüler bir hayranlık anlamı da var. Sinek kuşları, ametist çiçeğinin parlak yeşil tepelerin üzerinde ortaya çıkan safir çiçeklerinden hoşlanır. Bunları, rengine hayran kalacağınız ve sessiz, meditatif zaman geçirebileceğiniz saksılara veya kaya bahçelerine yerleştirin.',
               'Papatya ülkemize özgü bir çiçektir. Ana vatanı Türkiye’dir. Bu bitki, ilkbahardan haziran ayının sonuna kadar çiçek açar. Boyu ortalama 25 cm’dir. Sapları yoktur.Beyaz renkteki yaprakları ise ince ve parçalıdır. Çiçeğin orta kısmında sarı bir yuvarlak bulunur. Bu özelliği nedeniyle halk arasında sarı papatya ismiyle de anılır.Papatya çiçeğinin anlamı çok merak ediliyor. Seviyor, sevmiyor fallarıyla aklımıza kazınan bu çiçek aslında temiz bir kalbi simgeler. İnsanlar genellikle temiz hislerini yansıtmak amacıyla birbirlerine papatya hediye ederler.',
               'Gül, evlerimizin, iş yerlerimizin olmazsa olmazları arasında yer almaktadır. Mis kokusu, zarif duruşu ile en çok sevilen çiçek konumundadır. Anavatanı Anadolu, İran ve Çin dir ama başka yerlerde de yetişir. Çok güzel ve kıymetlidir. Park ve bahçelerin süslenmesinde kullanıldığı gibi odaları, balkon ve terasları süsler. Kesme çiçekçilikte çok talep edilen bir çiçektir.',
               'Zambak bitkisi bahçelere çok yakışan, doğrudan gün ışığına ihtiyaç duymadığı için hemen hemen her yerde bulunabilen bir bitkidir. Mayıs aylarında açan çiçekler çok hoş görünmekle birlikte kış aylarını yapraklı geçirmektedirler. Zambak bitkisinden yağ elde edildiğinde zambak yağı da bir şifa deposudur. Evler kadar bahçelerde de yetiştirilebilen zambak çiçeği, saksı bitkisi olarak satışa sunulmaktadır. Doğru bakıldığında uzun süre evinizde misafir olarak kalacaktır. Bu nedenle yetiştirme koşullarını bilmek, su isteğini ve güneş şartını takip etmek gerekmektedir.',
               'Lale çiçeği, genellikle çok çabuk büyüyen ve bakımı da bir o kadar kolay olan bir bitkidir. Bu nedenle de çiçekçilerin vitrinlerinde çok fazla görebildiğimiz bitki türleri arasında yer alır. Zambakgiller (Liliaceae) familyasından Lale cinsi, rengarenk ve zarif çiçekleri ile dikkat çeken bir süs bitkisidir. Lale mevsimlik çiçek açan bitkilerdendir. Sadece bir kez çiçeklendikten sonra solmaya başlar. Bu nedenle toprak değişimi gibi işlemlere gerek duyulmaz Etli ve yeşil 2-8 yaprağı vardır. Çiçekler, saplar ucunda çoğunlukla bir, bazen ikidir.Kırmızı, sarı ve ara tonlarda renklere sahiptir.',
               'Nergis çiçeği narin bir yapıya sahip olan çiçek türüdür. Eğer etrafınızda bir nergis çiçeği varsa onu görmeden önce kokusunu alırsınız.  Bu çiçeğin sapları, yaprakları ve kısacası her bölümü çok hassas olduğu için çocuklu aileler için önerilmez. Nergis görünüm ile etkileyici bir yapıya sahip iken bir yandan da çok hassastır ,ayrıca çabucak solar. Nergis çiçeği, saygı duyma anlamıyla bilindiğinden, hayatta değer verilen bireylere verilecek bir çiçek türüdür. Nergis çiçeğinin değişik çeşitleri bulunsa da genel olarak hepsinin anlamı aynıdır. Bu çiçek; aşk ve güzellik çiçeği olarak da nitelendirilir. Yaprakları solarsa ya da zarar görürse kendiliğinden yenilenir.',
               'Orkide çiçeği, Salepgiller familyasına ait destansı güzelliğe sahip bir çiçektir, asaletin ve özenin simgesidir. Tropikal iklimleri seven orkide dünyanın her yerinde yetişme imkanına sahiptir. Dünyada en geniş ikinci familyaya sahiptir. Bu zarif çiçeğin yaprakları sıralı, pul şeklinde ve damarlı olur.',
               'Barış çiçeğinin bir diğer adı da kaşık çiçeğidir. Hatta kaşık çiçeği ismi ile daha çok bilinmektedir. Menekşeden sonra evlerde en sık rastladığımız bitki barış çiçeğidir. Çiçeklerinin oldukça zarif ve güzel bir görünüme sahip olduğunu söylemek mümkündür. Bakımı kolay salon çiçekleri arasında yer almaktadır. Fakat evde küçük bir çocuğunuz ya da bir evcil hayvanınız varsa bu çiçeğe çok dikkat etmeniz gerekmektedir. Çünkü çiçeğin yapraklarında zehir bulunma ihtimali mevcuttur.',
                        ],
  cksu = [
    'Yazın 2-4 günde bir sulanmalıdır, kışın genellikle her 7-10 günde bir sulanır.Kullanılan su kireçli olmamalı ve çok soğuk olmamalıdır, tercihen oda sıcaklığında olmalıdır.Ametist bahçede açık havada yetiştiriliyorsa, sabahın erken saatlerinde veya akşam geç saatlerde sulanmalı, asla günün en sıcak saatlerinde ve güneş altında sulanmamalıdır.',
    'Papatyanın toprağı ne çok kuru ne de çok sulu olmalıdır. Toprağın her zaman nemli olduğundan emin olmalısınız. Susuzluğa karşı dayanıklı bir bitkidir. Ancak fazla sulama yapmak çiçeğin solmasına neden olabilir.Çiçeğin sağlıklı bir gelişim göstermesi için 2-3 günde bir sulama işlemi yapmanız yeterli olacaktır.',
    'Güzel çiçekler yetiştirmek için güllerin suya ihtiyacı vardır. Sık sulama yapmamız gerekir, özellikle  yazın haftada en az iki kere, kış aylarında ise haftada 1 kere sulanmalıdır. Yazın pazertesi ve perşembe kışın is pazertesi sulanabilir.',
    'Zambak toprağının sürekli nemli kalması en iyisidir. İki günde bir sulama önerilmesinin yanında sıcak yaz aylarında sulama sıklığı ve miktarı artırılabilir. Aşırı sulama, çiçeğin solmasına sebebiyet vereceği için dikkat edilmelidir.',
    'Lale çiçeği, suyu seven bir bitkidir. Fakat topak kurudukça sulama yapılmalıdır. Lale çiçeği haftada iki kere olmak kaydıyla üstten sulama yapılmalıdır. Özellikle yazın suya fazla ihtiyaç duymaktadır. Su toprağın her tarafını eşit şekilde ıslatmalısınız. Sulama miktarı çok yoğun olmamalı ve mümkünse aynı kap ile yapılmalıdır.',
    'Gelişim ve çiçeklenme döneminde toprağın kurumasına izin vermemek, aşırı sulamadan kaçınmak gerekir. Toprağı kurumayacak şekilde nemli tutulmalıdır. 3-4 günde bir kontrol edilerek sulanır.',
    'Genel olarak 4 ile 7 günde 1 olacak şekilde, toprağın her zaman nemli kalacağı bir süre seçilir ve bu sürede sulamalar yapılır. Kışın 7 günde 1 suluyorsanız yaz sıcakları geldiğinde bu süreyi 4 günde 1 olacak şekilde ayarlayabilirsiniz.',
    'Barış çiçeğinin toprağı sürekli nemli tutulmalı, kurumasına izin verilmemeli. Bu nedenle yaz aylarında daha sık, kış aylarında ise haftada 1-2 kez olacak şekilde sulama yapılabilir. Ancak dikkat, çiçeklenme dönemleri olan ilkbahar ve sonbahar aylarında, çiçeklenmeye başlamasını istediğiniz zaman sulama sıklığını azaltın ve toprağın kurumasını bekleyip tamamen kuruyunca sulama yapın. Hatta bu süreçte daha az aydınlık bir alana taşıyın. Sulama ve ortam düzeni değişen bitkinizin 2 hafta içinde çiçeklenmeye başladığını göreceksiniz. Çiçeklenen bitkinizi yeniden eski düzeninde, hep toprağı nemli kalacak şekilde sulamaya özen gösterin. ',
  ],
  ckbk = [
  'Saksıda yetiştirilecekse kesinlikle drenaj deliği olan bir saksı seçilmelidir. Optimum yetiştirme sıcaklığı ortalama 18 ° C, 13-16 ° Cnin altında, bitki acı çekiyor ve çiçeklenme duruyor. Soğuk akımlardan ve sıcaklıktaki ani değişikliklerden korkar. Büyüme aşamasında çiçeklenmeyi teşvik etmek için her 15 günde bir yüksek fosfor içeriğine sahip bir gübre ile gübrelenmelidir.',
  'Papatya nın ekileceği saksı çok derin olmamalıdır. Saksıda papatya yetiştirmek için killi toprak tercih edebilirsiniz. Toprak sıkı ve sert olmalıdır. Papatyalar 2 yıllık çiçekler olduğundan saksı değişimi yapılmasına gerek yoktur.Bu çiçeğin, güneşi çok sevdiği için kapalı mekan yerine balkon, bahçe, teras gibi alanlarda yetiştirilmesi önerilir. Kuru ve nemli bölgelerde yetişebilir.',
  'Gübreleme olarak, yılda bir veya iki defa gübre veya kompost uygulamak gerekebilir. Gülleri budamak gerekir. Aksi takdirde, aşırı büyük, odunsu ve hastalıklara duyarlı olacaklardır. Her yıl zayıf, hastalıklı veya yaşlı olan sürgünleri çıkarmanız gerekecektir. Kışın bulunacağı ortamın sıcaklığı 12 derece altına düşmemelidir.',
  'Zambak, bakımı kolay bir çiçektir. Doğrudan güneş ışığına ihtiyaç duymaz. Dolayısıyla karanlık evlerde bile kolaylıkla yetiştirilebilir. Bununla birlikte, çok soğuk ve çok sıcak ortamı sevmez. Cereyan alan, kışın çok soğuk yazın ise çok sıcak olan ortamlarda sağlıklı gelişim gösteremez.',
  'Lale çiçeği kışın oda sıcaklığı 12 derecenin altına düşmediği ortamda bakılmalıdır,Lale çiçeği, rüzgardan etkilenir. Bu nedenle rüzgardan korumak gerekir. Rüzgar çiçeği sallar ve köklere hava girip çiçeğin ölmesine sebebiyet verir. Lale çiçeğinin toprağı havaların artık sıcaklaşmaya başladığı dönemde Nisan ortalarında değiştirilebilir. Değişim yapacağınız zaman saksı boyutunuda bir derece olarak büyütebilirsiniz.Lale çiçeğine  aşırı sulama, rüzgarlı ortam, hava deliksiz saksı kullanımı,  kalitesiz ve verimsiz toprak kullanımı ve mantar gibi hastalıklar zarar vermektedir.',
  'Mevsimlik çiçekler olduklarından toprak ve saksı değişimine ihtiyaç duyulmaz.Çok geniş olmayan bir saksı seçimiyle başlamak gerekir. Doğal gübreli, vitamin ve mineral oranı yüksek topraklar nergisler için uygundur. Nergisin büyüdüğü saksıyı yarı gölgeli ortamda bulundurmalısınız. Güneş ışığını şiddetli şekilde almamalıdır.',
  'Orkide, güneş ışığını doğrudan almayı sevmez. Bu nedenle kendisini aydınlık ama doğrudan güneş ışığının gelmediği bir noktada konumlandırmanız gerekmektedir. Orkide saksısının şeffaf ve küçük olmasına özen göstermelidir. Saksıda drenaj deliklerinin bulunduğundan emin olun. Orkideye özel satılan toprak ve gübre tercih edilmelidir. Orkidenizin yerini sık sık değiştirmemeye özen gösterin. Oda sıcaklığının 15 ila 25 derece arasında olmasına da özen göstermeniz yararlı olacaktır.',
  'Barış çiçeği her ortama oldukça kolay bir şekilde uyum sağlayabilen bir çiçektir. Gölge ve yarı gölge alanlardan hoşlanır. Direkt güneş ışığını sevmez. Toprağı torf ve lif bakımından zengin olmalıdır böyle çok daha verimli bir şekilde yetişir. Kendisi için en uygun sıcaklık aralığı ise 10 ila 28 derece arasında değişen sıcaklıklardır. Barış çiçeği yer değiştirmeyi çok sevmez, bu nedenle yaklaşık 2-3 yılda bir saksısını değiştirmeniz bile yeterli olacaktır.',
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
        leadingWidth: 130,
        leading: ElevatedButton.icon(
        onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => cklist())),
            icon: const Icon(Icons.arrow_left_sharp),
            label: const Text('Çiçek değiştir'),
            style: ElevatedButton.styleFrom(
            elevation: 0, primary: Colors.transparent, shadowColor: Colors.white)
        ),
          actions: <Widget>[
          IconButton(
           icon: const Icon(Icons.info),
           tooltip: 'Hakkında',
            onPressed: () {
             Navigator.push(context,MaterialPageRoute(builder: (context) => hakkinda() ));
            }
         )
        ],
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
         title: Text('Bitkim'),
         ),
    bottomNavigationBar: BottomAppBar(
      color: Colors.green,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Hoşgeldiniz  '),
      Text(isims),
    ],
    ),
    ),
         body: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage(
                'assets/plant-background-whatspaper-1.jpg'
            ),
            fit: BoxFit.fill,
            ),
              shape: BoxShape.rectangle,
          ),
          alignment: Alignment.topCenter,
           child: SingleChildScrollView(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   IconButton(
                     icon: Icon(Icons.notifications_none),
                     iconSize: 35,
                     color: Colors.white,
                     tooltip: 'Bildirimler',
                     onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (context) => bildirim() ));
                     },
                   ),
                   IconButton(
                     icon: Icon(Icons.feedback),
                     iconSize: 35,
                     color: Colors.white,
                     tooltip: 'Geri bildirim',
                     onPressed: () {
                     },
                   ),
                 ],
               ),
             Text(ciceko,style: TextStyle(fontSize: 23,
                 fontStyle: FontStyle.italic,
                 fontWeight: FontWeight.bold),),
             Text(cicek,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
             Container(
               width: 350,
               height: 300,
               decoration: BoxDecoration(
                 image:  DecorationImage(
                   image: AssetImage(
                     resim
                   ),
                   fit: BoxFit.cover,
                 ),
                 border: Border.all(
                   color: Colors.white,
                   width: 2.5,
                 ),
                 borderRadius: BorderRadius.circular(8),
               ),
             ),
             SizedBox(height: 5,),
             Container(
               padding: EdgeInsets.only(left: 10,right: 7,top:4,bottom: 10),
               width: 350,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.topLeft,
                     end: Alignment.bottomRight,
                     colors: [Colors.white, Colors.green]),
                 border: Border.all(
                   color: Colors.green,
                   width: 3,
               ),
                 borderRadius: BorderRadius.circular(10),
             ),
                 child: Text(ckinfo[ckin],style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
             ),
             SizedBox(height: 5,),
             Container(
               padding: EdgeInsets.only(left: 10,right: 7,top:4,bottom: 10),
               width: 350,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.centerLeft,
                     end: Alignment.centerRight,
                     colors: [Colors.white, Colors.blue]),
                 border: Border.all(
                   color: Colors.blue,
                   width: 3,
                 ),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Row(
                   mainAxisAlignment:  MainAxisAlignment.start,
                   children: <Widget>[
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text('Nasıl \nsulanmalı ?' ,style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold)),
                     Icon(Icons.water_drop,color: Colors.blue[300],size: 50,),
                     SizedBox(),
                   ],
                 ),
                 Container(
                   width: 250,
                 child: Text(cksu[ckin],style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold,overflow: TextOverflow.clip ),softWrap: true),
                 )
               ]
             )

             ),
             SizedBox(height: 5,),
             Container(
                 padding: EdgeInsets.only(left: 10,right: 7,top:4,bottom: 10),
                 width: 350,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,
                       colors: [Color(0xFF8D6E63), Colors.white]),
                   border: Border.all(
                     color: Color(0xFF8D6E63),
                     width: 3,
                   ),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                     mainAxisAlignment:  MainAxisAlignment.start,
                     children: <Widget>[
                       Container(
                         width: 250,
                         child: Text(ckbk[ckin],style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold,overflow: TextOverflow.clip ),softWrap: true),
                       ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text('   Nasıl \n? bakılmalı' ,style: TextStyle(fontSize: 15, color: Colors.brown[400], fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                           Icon(Icons.compost,color: Colors.brown[400],size: 50,),
                           SizedBox(),
                         ],
                       ),
                     ]
                 )

             ),
          ],
             ),
         ),
    ),
    );
    }
}

