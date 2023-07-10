import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: chatscreen(),debugShowCheckedModeBanner: false,),
  
  );
  
}
class chatscreen extends StatelessWidget {
   chatscreen({super.key});
  var names = [
    "Messi",
    "Cristiano",
    "Grizzii",
    "Neymar",
    "Haaland",
    "Mbappe",
    "vinijr",
    "zizi",
    "Hazaard",
    "Ramos",
  ];
  var images =[
    "assets/virat.jpg",
    "assets/virat.jpg",
    "assets/virat.jpg",
    "assets/virat.jpg",
    "assets/virat.jpg",
    "assets/virat.jpg",
    "assets/virat.jpg",
    "assets/virat.jpg",
    "assets/virat.jpg",
    "assets/virat.jpg",

    /*"assets/cristiano.webp",
    "assets/cristiano.webp",
    "assets/cristiano.webp",
    "assets/cristiano.webp",
    "assets/cristiano.webp",
    "assets/cristiano.webp",
    "assets/cristiano.webp",
    "assets/cristiano.webp",
    "assets/virat.jpg"*/

  ];

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //backgroundColor:Color.fromARGB(255, 66, 139, 91),
        title: Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400),),
        actions: [
          Icon(Icons.photo_camera,color: Colors.white70,),
          SizedBox(width: 15,),
          Icon(Icons.search,color: Colors.white70,),
          SizedBox(width: 15,),
          Icon(Icons.more_vert,color: Colors.white70,) 
        ],
        ),
        body: ListView(
          children: List.generate(10, (index) => Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(images[index],),
            ),
            title: Text(names[index]),
          ))
        ),
        
      ));
    
  }
}