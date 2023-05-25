import 'package:flutter/material.dart';
class MyForms extends StatefulWidget {
  const MyForms({Key? key}) : super(key: key);

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Demo"),
          backgroundColor: Colors.teal,
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                maxLength: 10,

                decoration: InputDecoration(


                  hintText: "Name",


                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: "Email",

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: "Password",

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: "Url",

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: "Phone number",

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: "Calories",

                ),

              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(onPressed: () {},

                    child: Text("Submit",style: TextStyle(color: Colors.blue),),
                    style:ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.white54),
                    )
                ),
              ),
            ),


          ],
        )
    );
  }
}
