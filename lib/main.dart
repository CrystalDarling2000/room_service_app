import 'package:flutter/material.dart';
import 'package:room_service/card.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        //backgroundColor: Color.fromARGB(255, 28, 99, 22),
        title: Text('Room Service'),
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.circle_notifications_rounded)),
          Image.asset('assets/images/person.JPG')
        ],
        backgroundColor: Color.fromARGB(255, 1, 14, 2),
        
        ),
      body: Column(children: [

        Container(
          height: 180,
          width: 900,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image(image: AssetImage('assets/images/roomservice.JPG')),
          ),
        ),
        SizedBox(height: 50,),

        // Container(
        //   decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20))
        //   ),
        //   child: Image.asset('assets/images/roomservice.JPG')
        //   ),

        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(image: AssetImage('assets/images/roomservice.jpg'),fit: BoxFit.cover)
        //   ),
        // )
       Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconCard(
                  text: Text("Cleaning", style: TextStyle(color: Colors.black, fontSize:14,fontWeight: FontWeight.w500)),
                  color: Colors.white54,
                  // icon: Icon(
                  //   Icons.check_box_outline_blank_rounded,
                  //   size: 80,
                  // ),
                  svgIcon: SvgPicture.asset('assets/images/clean_icon.svg'),
                ),
                  IconCard(
                  text: Text("Bed Linen", style: TextStyle(color: Colors.black, fontSize:14,fontWeight: FontWeight.w500)),
                  color: Colors.white54,
                  // icon: Icon(
                  //   Icons.enhanced_encryption,
                  //   size: 80,
                  // ),
                  svgIcon: Center(child: SvgPicture.asset('assets/images/bed_icon.svg')),
                ),
                  IconCard(
                  text: Text("Towel", style: TextStyle(color: Colors.black, fontSize:14,fontWeight: FontWeight.w500)),
                  color:Colors.white54,
                  // icon: Icon(
                  //   Icons.snowshoeing_sharp,
                  //   size: 80,
                  // ),
                  svgIcon: SvgPicture.asset('assets/images/towel_icon.svg',
                  // height: 600,
                  // width: 200,
                  // fit: BoxFit.scaleDown,
                  ),
                ),
        ],),

          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          IconCard(
                  text: Text("Blankets", style: TextStyle(color: Colors.black, fontSize:14,fontWeight: FontWeight.w500)),
                  color: Colors.white54,
                  // icon: Icon(
                  //   Icons.check_box_outline_blank_rounded,
                  //   size: 80,
                  // ),
                  svgIcon: SvgPicture.asset('assets/images/blankets_icon.svg'),
                ),
                  IconCard(
                  text: Text("Dental Kit", style: TextStyle(color: Colors.black, fontSize:14,fontWeight: FontWeight.w500)),
                  color: Colors.white54,
                  // icon: Icon(
                  //   Icons.enhanced_encryption,
                  //   size: 80,
                  // ),
                  svgIcon: Center(child: SvgPicture.asset('assets/images/dental_icon.svg')),

                ),
                  IconCard(
                  text: Text("Slippers", style: TextStyle(color: Colors.black, fontSize:14,fontWeight: FontWeight.w500)),
                  color:Colors.white54,
                  // icon: Icon(
                  //   Icons.snowshoeing_sharp,
                  //   size: 80,
                  // ),
                  svgIcon: SvgPicture.asset('assets/images/slipper_icon.svg',
                  // height: 600,
                  // width: 200,
                  // fit: BoxFit.scaleDown,
                  ),
                ),
        ],),

        Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(
            height: 160,
            width: 200,
            child: Card(
              child: Stack(children: [
                 // Icon(Icons.dinner_dining_outlined,size: 70,),
                 SvgPicture.asset('assets/images/plater_icon.svg',fit: BoxFit.cover,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Bring Me',style: TextStyle(fontWeight: FontWeight.bold),)),
                      SizedBox(height: 50,),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset('assets/images/meal_arrow.svg'))
                  // Positioned(
                  //   bottom: 120,
                  //   left: 50,
                  //   child: Icon(Icons.arrow_forward))
                  ],)
              ],),
            //color: Color.fromARGB(255, 219, 165, 94),margin: EdgeInsets.all(4),elevation: 4,shadowColor: Colors.amberAccent,
            )
            ),
            Container(
            height: 160,
            width: 200,
            child: Card(child: Stack(children: [
            //Icon(Icons.local_bar,size: 70,),
            SvgPicture.asset('assets/images/bar_icon.svg',fit: BoxFit.cover,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //direction: Axis.horizontal,
              
              children: [
                     Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Mini Bar',style: TextStyle(fontWeight: FontWeight.bold),)),
                   SizedBox(height: 50,),
                   Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset('assets/images/meal_arrow.svg'))
                  // Positioned(
                  //   bottom: 120,
                  //   left: 50,
                  //   child: Icon(Icons.arrow_forward))
                  ],),
                 
            ],),
            //color: Color.fromARGB(255, 20, 185, 177),margin: EdgeInsets.all(4),elevation: 4,
            )
            ),
        ],)
      ]),
      bottomNavigationBar:BottomNavigationBar(
        //backgroundColor: Colors.white,
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 30,
        //selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            label: 'HOME',
            icon: SvgPicture.asset('assets/images/bottom_nav_1_a.svg')
            //backgroundColor: Colors.white54
          ),
          BottomNavigationBarItem(
            label: 'RECOMMEDATION', 
                  
            //backgroundColor: Colors.black,
            // icon: Icon(Icons.add_chart)
            icon: SvgPicture.asset('assets/images/bottom_nav_2.svg')
            ),
            BottomNavigationBarItem(
              label: 'MY MESSAGES',
              // icon: Icon(Icons.message),
             //backgroundColor: Colors.white54,
             icon: SvgPicture.asset('assets/images/bottom_nav_3.svg')
              ),
              BottomNavigationBarItem(
                label: 'SETTINGS',
                // icon: Icon(Icons.settings),
               //backgroundColor: Colors.white54,
               icon: SvgPicture.asset('assets/images/bottom_nav_4.svg')
                )
        ],
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },
        selectedItemColor:Colors.black
        ),
 
    );
  }
}
