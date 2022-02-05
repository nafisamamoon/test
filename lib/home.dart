import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: SingleChildScrollView(
    child: Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue,
        Colors.blue
        ],
        begin: Alignment.topLeft,
        end: Alignment.centerRight
        ),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(flex: 2,child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36.0,horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             //Image.asset('asset/doctor.jpg',height: 200,width: 400,)
           Text('Welcome',style: TextStyle(
              color: Colors.white,
              fontSize: 46.0,
              fontWeight: FontWeight.w800
            ),
            ),
            SizedBox(height: 10.0,),
            Text('have a nice experiences',style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w300
            ),
            )
          ],),
        ),),
         Expanded(flex: 5,
         child: Container(
           width: double.infinity,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(40),
               topRight: Radius.circular(40),
               )
           ),
           child: Padding(
             padding: const EdgeInsets.all(24.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
TextField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none
    ),
    filled: true,
    fillColor: Color(0xFFe7edeb),
    hintText: 'E-mail',
    prefixIcon: Icon(Icons.email,color: Colors.grey[600],)
  ),
),
SizedBox(height: 20.0,),
TextField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none
    ),
    filled: true,
    fillColor: Color(0xFFe7edeb),
    hintText: 'Password',
    prefixIcon: Icon(Icons.lock,color: Colors.grey[600],)
  ),
),
SizedBox(height: 50.0,),
Container(
  width: double.infinity,
  child: RaisedButton(onPressed: (){},
  color: Colors.blue[800],
  child: Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: Text('login',style: TextStyle(color: Colors.white,fontSize: 16.0),),
    ),
  ),
)
               ],
             ),
           ),
         ),),
      ],),
    ),
  ),
);
  }
}