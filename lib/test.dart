
import 'package:flutter/material.dart';
class test extends StatefulWidget {
  const test({ Key? key }) : super(key: key);

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
    List doctors=[{
    'name':'Dr.Nafisa Mamoon',
    'img':'asset/u.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
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
    Container(
      child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose',
      style: TextStyle(fontWeight: FontWeight.w500),),
    ),
    SizedBox(height: 12,),
    Container(
      margin: EdgeInsets.only(right: 340),
      child: Text('Email',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
    ),
    Container(
         margin: EdgeInsets.only(right: 280),
      child: Text('nof@gmail.com',style: TextStyle(fontWeight: FontWeight.w500),),
    ),
    Row(
      children: [
        Container(
                  margin: EdgeInsets.only(left: 50),
                  child: TextButton(onPressed: (){
        },
        
         child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
         style: TextButton.styleFrom(
           primary: Colors.white,
backgroundColor: Colors.teal,
textStyle: TextStyle(
        wordSpacing: 2
),
elevation: 14,
shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
         ),
         ),
                ),
                SizedBox(width: 10,),
                Container(
              margin: EdgeInsets.only(left: 50),
              child: TextButton(onPressed: (){
   
    },
     child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
     style: TextButton.styleFrom(
       primary: Colors.white,
backgroundColor: Colors.teal,
textStyle: TextStyle(
    wordSpacing: 2
),
elevation: 6,
shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
     ),
     ),
            ),
      ],
    ),
  ],
),
);
    }
    )
    );
  }
}
/*
body: ListView.builder(
    itemCount: doctors.length,
    itemBuilder: (context,i){
      return Container(
        height: 250,
        child: Card(
color: Colors.teal[200],
child: Column(
  children: [
    Row(
      children: [
    Container(child: Image.asset(doctors[i]['img'],
   
    fit: BoxFit.cover,
    width: 200,
    height:200
    ),
    margin: EdgeInsets.only(top: 8),
    ),
    Column(
      children: [
        Container(child: Text('${doctors[i]['name']}',style: TextStyle(wordSpacing: 2,fontWeight: FontWeight.bold,
        fontSize: 20
        ),),
        
        margin: EdgeInsets.only(left: 30),
        ),
       
        Container(
          child: Text('heart specelized',style: TextStyle(wordSpacing: 4),),
          margin: EdgeInsets.only(left: 20,bottom: 70),
        )
      ],
    )
  ],
    )
  ],
)
        ),
      );
    }
    )
*/
////////////////////////////////////////////////////////////////////////////////
/*
import 'package:flutter/material.dart';
class DoctorDetail extends StatefulWidget {
  const DoctorDetail({ Key? key }) : super(key: key);

  @override
  _DoctorDetailState createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
    List doctors=[{
    'name':'Dr.Nafisa Mamoon',
    'img':'asset/u.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body:ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context,i){
        return Column(
children: [
  Container(
    child: 
    ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child:Image.asset(doctors[i]['img'],
    fit: BoxFit.fill, 
    )
    ),
    width: 430,
    height: 500,
  ),
  SizedBox(height: 20,),
  Container(
    child: Text('${doctors[i]['name']}',style: TextStyle(fontWeight: FontWeight.bold,wordSpacing: 3,fontSize: 20),),
    margin: EdgeInsets.only(right: 50),
    ),
    SizedBox(height: 20,),
    Container(
      child: Text('description:',
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
      ),
      margin: EdgeInsets.only(right: 290),
    ),
      SizedBox(height: 20,),
    Container(
      child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose' ,
      style: TextStyle(color: Colors.grey[600],wordSpacing: 3,fontSize: 15)
      ),
  margin: EdgeInsets.only(left: 10),
    ),
      SizedBox(height: 20,),
      Container(
      child: Text('address:',
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
      ),
      margin: EdgeInsets.only(right: 320),
    ),
    SizedBox(height: 20,),
     Container(
      child: Text('Omdurman,Wad-Albana',
      style: TextStyle(color: Colors.grey[600],wordSpacing: 3,fontSize: 15),
      ),
      margin: EdgeInsets.only(right: 220),
    ),
     SizedBox(height: 20,),
      Container(
      child: Text('phone:',
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      margin: EdgeInsets.only(right: 340),
    ),
    SizedBox(height: 20,),
      Container(
      child: Text('011468654',
      style: TextStyle(color: Colors.grey[600],wordSpacing: 3,fontSize: 15)),
      margin: EdgeInsets.only(right: 310),
    ),
],
          );
        }
        ) ,
    );
  }
}
*/