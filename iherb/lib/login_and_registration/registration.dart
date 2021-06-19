import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';


class Registration extends StatefulWidget {
  static String id = 'registration';
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController name = TextEditingController();
  TextEditingController surename = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  // _makePostRequest() async {
  //   // set up POST request arguments
  //   final url = Uri.parse('http://192.168.137.1:5000/registration');
  //   Map<String, String> headers = {"Content-type": "application/json"};
  //   String json = '{'
  //       '"name": "${name.text}",'
  //       '"surename": "${surename.text}",'
  //       '"fatherName": "${fathername.text}",'
  //       '"phoneNo": "${phone_no.text}",'
  //       '"email": "${email.text}",'
  //       '"password": "${password.text}",'
  //       '"confirmPassword": "${confirmpassword.text}",'
  //       '"faculty": "$faculty",'
  //       '"course": "$course",'
  //       '"group": "${group.text}",'
  //       '"hostelNo": "$hostel_no",'
  //       '"roomNo": "${room_no.text}",'
  //       '"position": "$position"'
  //       '}';
  //   // make POST request
  //   Response response = await post(url, headers: headers, body: json);
  //   // check the status code for the result
  //   int statusCode = response.statusCode;
  //   // this API passes back the id of the new item added to the body
  //   String body = response.body;
  //   //   {
  //   //   name: 'jay',
  //   //   surename: 'jaybhakhar@gmail.com',
  //   //   fatherName: '123456'
  //   //   faculty: 1,
  //   //   course: 2,
  //   //   group: 'ap-31',
  //   //   phoneNo: '+79961011395',
  //   //   email: 'jaybhakhar@gmail.com',
  //   //   password: '123465',
  //   //   confirmPassword: '123456', #while not ready forget password
  //   //   hostelNo: 1,
  //   //   roomNo: 12,
  //   //   position: 1
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      child: Icon(
                        Icons.account_circle_sharp,
                        size: 120,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: name,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                            BorderSide(color: Colors.blue, width: 1.5),
                          ),
                          labelText: 'Name',
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: surename,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                            BorderSide(color: Colors.blue, width: 1.5),
                          ),
                          labelText: 'Surename ',
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please Enter Surename';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                            BorderSide(color: Colors.blue, width: 1.5),
                          ),
                          labelText: 'Email',
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please a Enter';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'Please a valid Email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: password,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                            BorderSide(color: Colors.blue, width: 1.5),
                          ),
                          labelText: 'Password',
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please a Enter Password';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: confirmpassword,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                            BorderSide(color: Colors.blue, width: 1.5),
                          ),
                          labelText: 'Confirm Password',
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please re-enter password';
                          }
                          if (password.text != confirmpassword.text) {
                            return "Password does not match";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blueAccent,
                        onPressed: () {
                            Navigator.popAndPushNamed(context, "/home");
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        textColor: Colors.white,
                        child: Text("Registration"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}