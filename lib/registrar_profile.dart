import 'package:flutter/material.dart';
class RegistrarProfile extends StatefulWidget {
  const RegistrarProfile({ Key? key }) : super(key: key);

  @override
  _RegistrarProfileState createState() => _RegistrarProfileState();
}

class _RegistrarProfileState extends State<RegistrarProfile> {
   List doctors=[{
    'name':'Dr.Nafisa Mamoon',
    'img':'asset/u.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Registrar information'),
  centerTitle: true,
  backgroundColor: Colors.teal,
),
  body: 
  ListView.builder(
    
    itemCount: doctors.length,
    itemBuilder: (context,i){
    
return Card(
child: Column(
  children: [
    Row(  
     // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
        child: Image.asset(doctors[i]['img'],
        width: 130,
        ) 
        // CircleAvatar(
                  //radius: 50,
                 // backgroundImage: AssetImage(doctors[i]['img']),
              //  ),
                
        ),
        SizedBox(width:30,),
        Column(
          children: [
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 8,),
              Container(
                child: Text('${doctors[i]['name']}'),
              )
            ],
          ),
          SizedBox(width: 19,),
           Row(
            children: [
              Icon(Icons.phone,size:16,),
              SizedBox(width: 8,),
              Container(
                child: Text('02357649'),
              )
            ],
          ),
          ],
        )
      ],
    ),
    SizedBox(height: 12,),
    Container(
      margin: EdgeInsets.only(right: 340),
      child: Text('About',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
    ),
    SizedBox(height: 12,),
    Container(
      child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose',
      style: TextStyle(fontWeight: FontWeight.w300),),
    ),
    SizedBox(height: 12,),
    Container(
      margin: EdgeInsets.only(right: 340),
      child: Text('Email',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
    ),
    SizedBox(height: 12,),
    Container(
         margin: EdgeInsets.only(right: 280),
      child: Text('nof@gmail.com',style: TextStyle(fontWeight: FontWeight.w300),),
    ),
    SizedBox(height: 12,),
    SizedBox(height: 12,),
    Container(
      margin: EdgeInsets.only(right: 300),
      child: Text('Address',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
    ),
    SizedBox(height: 12,),
    Container(
         margin: EdgeInsets.only(right: 240),
      child: Text('omdurman-wdalbana',style: TextStyle(fontWeight: FontWeight.w300),),
    ),
    SizedBox(height: 12,),
    
  ],
),
);
    }
    )
    );
  }
}