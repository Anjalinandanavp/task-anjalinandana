import 'package:flutter/material.dart';

import 'Task3_loginform.dart';



class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  bool showpassword = true;
  bool checkvalue = true;

  void togglepassword() {
    setState(() {
      showpassword = !showpassword;
    });
  }

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var pssdContoller = TextEditingController();

  var name = '', email = '', pssd = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Account"),
        ),
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter your Name, Email and Password for sign up.',
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TaskLogin(),
                        ));
                  },
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                        child: Text(
                          "Already have account?",
                          style: TextStyle(color: Colors.green),
                        ),
                      ))),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    label: Text('Full Name'),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    label: Text('Email Address'),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: pssdContoller,
                  obscureText: showpassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    label: Text(
                      'Password',
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        togglepassword();
                      },
                      child: showpassword
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ),
              SizedBox(
                width: 1200,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          name = nameController.text;
                          email = emailController.text;
                          pssd = pssdContoller.text;

                          if (name.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Please enter ypur Full Name')));
                          } else if (email.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Please enter Email')));
                          } else if (pssd.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Please enter your Password')));
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green),
                      ),
                      child: Text(
                        'SIGN UP',
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: SizedBox(
                  width: 400,
                  child: Text(
                    "By creating an account, you agree to our Terms Conditions & Privacy Policy.",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Text("Or", style: TextStyle(fontSize: 18, color: Colors.black45)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 1200,
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    label: Text("CONNECT WITH FACEBOOK"),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 1200,
                  height: 40,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                      ),
                      label: Text("CONNECT WITH GOOGLE")),
                ),
              ),
            ],
          ),
        ]));
  }
}