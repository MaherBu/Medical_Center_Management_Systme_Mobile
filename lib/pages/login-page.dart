import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_center_management/services/services.dart';

import 'home-page.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>{
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stack(
            //   children: [
            //     // this._backgroundImage(),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                "Welcome Doctor",
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xff002765),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Form(
              key: _form,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffffffff),
                        border:
                        Border.all(width: 0.2, color: const Color(0xff000000)),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.grey),
                          // ),
                          border: InputBorder.none,
                          hintText: 'Enter Email',
                        ),
                        validator: (val) {
                          if (val.isEmpty) return 'Field is Required';
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffffffff),
                        border:
                        Border.all(width: 0.2, color: const Color(0xff000000)),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          border: InputBorder.none,
                          hintText: 'Enter Password',
                        ),
                        validator: (val) {
                          if (val.isEmpty) return 'Field is Required';
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
              child: InkWell(
                onTap: () {
                  if(_form.currentState.validate()) {
                    if (emailController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      AppServices().loginDoctor(emailController.text, passwordController.text);
                      Get.to(()=>HomePage());
                      // _controller.loginUser(
                      //     emailController.text, passwordController.text);
                    }
                  }
                  else{
                    Get.snackbar("Error", "Fill Empty Fields");
                  }
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xff002765),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Center(
                      child: Text("Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Forget Password? ", style: TextStyle(fontSize: 14)),
                  Text(
                    "CLICK HERE",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff002765),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}