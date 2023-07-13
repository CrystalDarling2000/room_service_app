import 'package:flutter/material.dart';

class IconCard extends StatefulWidget {
  const IconCard({required this.text,required this.color,required this.svgIcon,super.key});

  final Text text;
  //final Icon icon;
  final Widget svgIcon;
  final Color color;
  //final Widget child;


  @override
  State<IconCard> createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  @override
  Widget build(BuildContext context) {
//     return Card(
//    elevation: 4,
//    shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(25.0),
//    ),
   
// );
    return Container(
      
      width: 135,
      height: 140,
      //decoration: BoxDecoration(border: Border.all()),
       //padding: new EdgeInsets.all(5.0),  
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 1,
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shape: RoundedRectangleBorder(
            side: BorderSide(
             color: Colors.white, //<-- SEE HERE
             width: 1
            ),
           borderRadius: BorderRadius.circular(5),
          ),
          
            child: Column(children: [
              // Text(widget.text.toString()),
              SizedBox(height: 20,),
              Center(child: Container(
               // height: 40,
                //width: 50,
                child: widget.svgIcon)
                ),
              SizedBox(height: 15,),
               Positioned(
                bottom: 300,
                //left: 15,
                        child:
                          widget.text,
                        ),
              // Positioned(
              //           child: Center(
              //             child: Container(
              //               width: 40,
              //               decoration: BoxDecoration(
              //                   // borderRadius: BorderRadius.only(
              //                   //     topRight: Radius.circular(60),
              //                   //     topLeft: Radius.circular(30),
              //                   //     bottomRight: Radius.elliptical(10, 70)),
              //                   color: Colors.white),
              //               child: Center(child: widget.svgIcon),
              //             ),
              //           )
              //       )
            ]),
          ),
        ),
      ),
    );
  }
}