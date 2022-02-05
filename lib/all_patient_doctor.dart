import 'package:flutter/material.dart';
import 'package:photo/doctor_profile.dart';
import 'package:photo/patient_detail.dart';
class ALLpatientDoctor extends StatefulWidget {
  const ALLpatientDoctor({ Key? key }) : super(key: key);

  @override
  _ALLpatientDoctorState createState() => _ALLpatientDoctorState();
}

class _ALLpatientDoctorState extends State<ALLpatientDoctor> {
  List doctors=[{
    'name':'nafisa',
    'img':'asset/u.jpg'
    },
   {
    'name':'hiba',
    'img':'asset/k.jpg'
    }, 
    {
    'name':'ahmed',
    'img':'asset/u.jpg'
    },
      {
    'name':'ahmed',
    'img':'asset/u.jpg'
    },
      {
    'name':'ahmed',
    'img':'asset/u.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('All Patients'),
  centerTitle: true,
  backgroundColor: Colors.teal[300],
),
drawer: Drawer(
  child: Column(
    children: [
      Container(
        color: Colors.teal[300],
        width: double.infinity,
        height: 250,
        child: Container(
          margin: EdgeInsets.only(top: 60),
          child: Column(
            
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asset/doctor.jpg'),
                
              ),
                SizedBox(height: 14,),
              Text('nafisa@gmail.com',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,wordSpacing: 2),),
              SizedBox(height: 14,),
              Text('nafisa',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,wordSpacing: 2),),
              SizedBox(height: 14,),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 35,top: 10),
        child:Column(
          children: [
       ListTile(
              title: Text('profile'),
              leading: Icon(Icons.person),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Doctor_Profile()));
              },
            ),
            ListTile(
              title: Text('All patient'),
              leading: Icon(Icons.sick),
              onTap: (){
                 Navigator.of(context).pop();
              },
            ),
             
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
              onTap: (){},
            ),
            ],)
      )
    ],
  ),
  ),
body: ListView.builder(
    itemCount: doctors.length,
    itemBuilder: (context,i){
      
        return Card(
          child: Row(
            children: [
        Container(
          margin: EdgeInsets.only(top: 15,bottom: 15),
          child:  CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(doctors[i]['img']),
                  
                ),
        ),
          Column(
          children: [
            Container(child: Text('${doctors[i]['name']}',style: TextStyle(wordSpacing: 2,fontWeight: FontWeight.bold,
            fontSize: 20
            ),),
            
            margin: EdgeInsets.only(left: 70),
            //padding: EdgeInsets.only(top: 20),
            ),
            Container(
              margin: EdgeInsets.only(left: 50),
              child: TextButton(onPressed: (){
   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PatientDetail()));
    },
     child: Text('view more info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
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
            )
            ],
          ),
        );
      
    }
    ),
    );
  }
}