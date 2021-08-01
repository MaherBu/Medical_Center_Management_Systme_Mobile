import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddSurgeryPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddSurgeryPageState();
  }

}
class AddSurgeryPageState extends State<AddSurgeryPage>{
  final _format = DateFormat("yyyy-MM-dd");

  String now = DateFormat("yyyy-MM-dd").format(DateTime.now());

  TextEditingController surgeryDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          "Add Surgery",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        backgroundColor: Color(0xff002765),
        // leading: Container(),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Patient Name:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xfff1f1f1),
                      ),
                      child: TextField(
                          // controller: modelController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(5.0),
                              hintText: 'Enter name')),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Surgery Type:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xfff1f1f1),
                      ),
                      child: TextField(
                        // controller: modelController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(5.0),
                              hintText: 'Type')),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Disease:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xfff1f1f1),
                      ),
                      child: TextField(
                        // controller: modelController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(5.0),
                              hintText: 'Enter Disease Name')),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Medical Center Name:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xfff1f1f1),
                      ),
                      child: TextField(
                        // controller: modelController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(5.0),
                              hintText: 'Enter name')),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xfff1f1f1),
                      ),
                      child: DateTimeField(
                        controller: surgeryDateController,
                        format: _format,
                        decoration: InputDecoration(
                          hintText: "DD/MM/YYYY",
                          hintStyle: TextStyle(fontSize: 13),
                          contentPadding: EdgeInsets.all(14),
                          // enabledBorder: OutlineInputBorder(
                          //   borderRadius:
                          //   BorderRadius.all(Radius.circular(20.0)),
                          //   borderSide: BorderSide(color: Colors.grey),
                          // ),
                          border: InputBorder.none,
                        ),
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                              context: context,
                              firstDate: DateTime(1900),
                              initialDate: currentValue ?? DateTime.now(),
                              lastDate: DateTime(2100));
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
                  Get.back();
                  // if(_form.currentState.validate()) {
                  //   if (emailController.text.isNotEmpty &&
                  //       passwordController.text.isNotEmpty) {
                  //     Get.to(()=>HomePage());
                  //     // _controller.loginUser(
                  //     //     emailController.text, passwordController.text);
                  //   }
                  // }
                  // else{
                  //   Get.snackbar("Error", "Fill Empty Fields");
                  // }
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
                      child: Text("Add Surgery",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}