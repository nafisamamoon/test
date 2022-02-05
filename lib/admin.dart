
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:photo/add_doctor.dart';
import 'package:photo/add_registrar.dart';
import 'package:photo/admin_profile.dart';
import 'package:photo/all_patient_admin.dart';
import 'package:photo/doctor_detail.dart';
import 'package:photo/login.dart';
import 'package:photo/registrar_information.dart';
class admin extends StatefulWidget {
  
 // const admin({ Key? key }) : super(key: key);

  @override
  _adminState createState() => _adminState();
}

class _adminState extends State<admin> {
  List doctors=[{
    'name':'Dr.nafisa',
    'img':'asset/u.jpg'
    },
   {
    'name':'Dr.hiba',
    'img':'asset/k.jpg'
    }, 
    {
    'name':'Dr.ahmed',
    'img':'asset/u.jpg'
    },
      {
    'name':'Dr.ahmed',
    'img':'asset/u.jpg'
    },
      {
    'name':'Dr.ahmed',
    'img':'asset/u.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.teal[300],
appBar: AppBar(
  title: Text('All Doctors'),
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminProfile()));
              },
            ),
            ListTile(
              title: Text('Add Registrar'),
              leading: Icon(Icons.person_add_alt_1_rounded),
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddRegistrar()));
              },
            ),
              ListTile(
              title: Text('View Registrar information'),
              leading: Icon(Icons.person_add_alt_1_rounded),
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegistrarInfo()));
              },
            ),
            ListTile(
              title: Text('Add doctors'),
              leading: Icon(Icons.local_hospital),
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddDoctor()));
              },
            ),
             ListTile(
              title: Text('All doctors'),
              leading: Icon(Icons.medical_services),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('All patient'),
              leading: Icon(Icons.sick),
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ALLPatientAdminAdmin()));
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
      return InkWell(
        onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorDetail()));
        },
        child: Card(
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
              child: Text('heart specelized',style: TextStyle(wordSpacing: 4,fontWeight: FontWeight.w500),),
              margin: EdgeInsets.only(left: 50),
            ),
            Container(
              margin: EdgeInsets.only(left: 50),
              child: TextButton(onPressed: (){
   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorDetail()));
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
            ),
           
            ],
            
          ),
        ),
      );
    }
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddDoctor()));
      },
       backgroundColor: Colors.teal[300],
            child: Icon(Icons.add),
      ),
    );
  }
}


/*return ListTile(
              title: Text('${doctors[i]['name']}'),
                FloatingActionButton(onPressed: (){

            },
            backgroundColor: Colors.teal[300],
            child: Icon(Icons.add),
            )
            );*/