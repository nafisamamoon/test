import 'package:flutter/material.dart';
import 'package:photo/all_patient_admin.dart';
class AddPatient extends StatefulWidget {
  const AddPatient({ Key? key }) : super(key: key);

  @override
  _AddPatientState createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  send(){
    var formdata=_formkey.currentState;
    if(formdata!.validate()){
       showDialog(context: context, builder:(context){
return AlertDialog(
    actions: [
      FlatButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: Text('ok'))
    ],
 title: Text('successful '),
    content: Text('The doctor added successfully'),
);
      });
    }else{
      print('not');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Add Patients'),
  centerTitle: true,
  backgroundColor: Colors.teal[300],
      ),
      
      body: SingleChildScrollView(
  child:   Container(
  
    padding:EdgeInsets.only(top: 120),
  
    child:   Form(
      key: _formkey,
      child: Column(

        children: [
    TextFormField(
       validator:(text){
    if(text!.isEmpty){
return "ادخل هذا الحقل";
    }
return null;
  },
      maxLength: 15,
       decoration: InputDecoration(
         hintText: 'Patient Name',
         labelText: 'Patient Name',
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
       ),
    ),
  
    SizedBox(height: 18,),
  
    TextFormField(
       validator:(text){
    if(text!.isEmpty){
return "ادخل هذا الحقل";
    }
return null;
  },
       decoration: InputDecoration(
         hintText: 'Address',
         labelText: 'Adress',
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
       ),
  
    ),
       SizedBox(height: 18,),
  
    TextFormField(
       validator:(text){
    if(text!.isEmpty){
return "ادخل هذا الحقل";
    }
return null;
  },
       decoration: InputDecoration(
         hintText: 'Photo',
         labelText: 'Photo',
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
       ),
  
    ),
       SizedBox(height: 18,),
  
    TextFormField(
       validator:(text){
    if(text!.isEmpty){
return "ادخل هذا الحقل";
    }
return null;
  },
       decoration: InputDecoration(
         hintText: 'medical history',
         labelText: 'medical history',
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
       ),
  
    ),
  
      SizedBox(height: 18,),
  
    TextFormField(
  validator:(text){
    if(text!.length < 10){
return "رقم الهاتف اقل من 10";
    }
    if(text.length > 10){
return "رقم الهاتف اكبر من 10";
    }
return null;
  },
    keyboardType: TextInputType.phone,
  
       decoration: InputDecoration(
    
  
         hintText: 'Patient Phone',
  
    
  
         labelText: 'Patient Phone',
  
    
  
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
  
    
  
       ),
  
    
  
    ),
     
      SizedBox(height: 18,),
  
    TextFormField(
  validator:(text){
    if(text!.length < 10){
return "رقم الهاتف اقل من 10";
    }
    if(text.length > 10){
return "رقم الهاتف اكبر من 10";
    }
return null;
  },
    keyboardType: TextInputType.phone,
  
       decoration: InputDecoration(
    
  
         hintText: 'Companion Phone',
  
    
  
         labelText: 'Companion Phone',
  
    
  
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
  
    
  
       ),
  
    
  
    ),
  
      SizedBox(height: 18,),
  
      TextFormField(
   validator:(text){
    if(text!.isEmpty){
return "ادخل هذا الحقل";
    }
return null;
  },
    keyboardType:TextInputType.number ,
  
       decoration: InputDecoration(
  
    
  
         hintText: 'Age',
  
    
  
         labelText: 'Age',
  
    
  
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
  
    
  
       ),
  
    
  
    ),
  
     SizedBox(height: 18,),
  
      TextFormField(
   validator:(text){
    if(text!.isEmpty){
return "ادخل هذا الحقل";
    }
return null;
  },
    maxLines: 10,
  
       decoration: InputDecoration(
  
    
  
         hintText: 'Diagnosis',
  
    
  
         labelText: 'Diagnosis',
  
    
  
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
  
    
  
       ),
  
    
  
    ),
   SizedBox(height: 18,),
  
  Container(
    width: 230,
    height: 50,
    child: TextButton(onPressed: (){
     send();
    },
     child: Text('add new Patient',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
  )
        ],
  
    
  
      )
  
    
  
      ),
  
  ),
),
    );
  }
}