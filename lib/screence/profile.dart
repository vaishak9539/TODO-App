// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_ref/screence/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var size, width, height;
  final controllername = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPlace = TextEditingController();
  final controllerPhone = TextEditingController();
  final controllerDepartment = TextEditingController();
  final controllerGenter = TextEditingController();

  final formkey = GlobalKey<FormState>();
  Future<void> editProfile() async {
    final addData = await FirebaseFirestore.instance.collection("Profile").add({
      "Name": controllername.text,
      "Email": controllerEmail.text,
      "Place": controllerPlace.text,
      "Phone": controllerPhone.text,
      "Department": controllerDepartment.text,
      "Genter": controllerGenter.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 29, bottom: 10),
                        child: Text(
                          "name",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38),
                        child: Text(
                          "Email",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Place",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Phone",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Department",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Genter",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: width / 2.2,
                              height: height / 22,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffCFE2FF),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                controller: controllername,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: width / 2.2,
                              height: height / 22,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffCFE2FF),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                controller: controllerEmail,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: width / 2.2,
                              height: height / 22,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffCFE2FF),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                controller: controllerPlace,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: width / 2.2,
                              height: height / 22,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffCFE2FF),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                controller: controllerPhone,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: width / 2.2,
                              height: height / 22,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffCFE2FF),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                controller: controllerDepartment,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: width / 2.2,
                              height: height / 22,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffCFE2FF),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                controller: controllerGenter,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height / 10,
              ),
              InkWell(
                onTap: () {
                  editProfile();
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (ctx) => Home()));
                },
                child: Container(
                  height: height / 18,
                  width: width / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff325CF0)),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
