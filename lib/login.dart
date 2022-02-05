import 'package:flutter/material.dart';
import 'package:photo/admin.dart';
class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image(image: AssetImage('asset/doctor.jpg'),
              fit: BoxFit.fill,
              height: 40,
              )
              ),
           Container(
            
            margin: EdgeInsets.only(top: 290),
            height: 350,
            child: Card(
              color: Colors.white,
              elevation: 19,
            /*  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)
              ),*/
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'email',
                        hintStyle: TextStyle(fontSize: 20,wordSpacing: 2),
                        prefixIcon: Icon(Icons.email)
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(fontSize: 20,wordSpacing: 2),
                          prefixIcon: Icon(Icons.lock
                      ),
                    ),
                  ),),
                  SizedBox(height: 60,),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>admin()));
                    },
                    child: Text('login',style: TextStyle(fontSize: 30,wordSpacing: 2,fontWeight: FontWeight.w900),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal[300],
                      fixedSize: Size(370, 70),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                    )
                ],
              ),
            ),
          ),]
        ),
      )
    );
  }
}
