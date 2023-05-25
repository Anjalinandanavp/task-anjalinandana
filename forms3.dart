import 'package:alertmessage/Task2/regpage.dart';
import 'package:flutter/material.dart';
class Mforms extends StatefulWidget {
  const Mforms({Key? key}) : super(key: key);

  @override
  State<Mforms> createState() => _MformsState();
}

class _MformsState extends State<Mforms> {
  @override
  OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
    return OutlineInputBorder( //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color:Colors.red,
          width: 3,
        )

    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color:Colors.red,
          width: 3,
        )
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login")),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Register Form",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(


              decoration: InputDecoration(


                  label: Text(
                    "Name",style: TextStyle(fontSize:15,color: Colors.black),

                  ),
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(fontSize: 10)),

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(

                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.contact_mail),
                  labelText: "Enter Your Email",
                  labelStyle: TextStyle(
                    color: Colors.red, //<-- SEE HERE
                  ),
                 border: OutlineInputBorder(
                     borderSide: BorderSide(
                       color:Colors.red,
                       width: 3,
                     )

                 )
                )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  label: Text(
                      "email"
                  ),
                  hintText: "Email"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.security),
                border: OutlineInputBorder(
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 1200,
              height: 40,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()),);
              },

                  child: Text("Register",style: TextStyle(color: Colors.white),),
                  style:ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.blue),
                  )
              ),
            ),
          ),


        ],

      ),

    );

  }

//create a function like this so that you can use it wherever you want
}
