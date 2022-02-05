import 'package:flutter/material.dart';
import 'package:photo/doctor_profile.dart';
import 'package:photo/patient_detail.dart';
import 'package:photo/patient_detail_admin.dart';
class ALLPatientAdminAdmin extends StatefulWidget {
  const ALLPatientAdminAdmin({ Key? key }) : super(key: key);

  @override
  _ALLPatientAdminAdminState createState() => _ALLPatientAdminAdminState();
}

class _ALLPatientAdminAdminState extends State<ALLPatientAdminAdmin> {
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
   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PatientDetailAdmin()));
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