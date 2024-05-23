import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:june/june.dart';
import 'package:save_me/Component/MyTextField.dart';
// import 'package:save_me/Pages/Signin/login.dart';
// import 'package:save_me/Pages/Signin/register2.dart';
// import 'package:save_me/component/GlobalFunction.dart';
import 'package:save_me/component/MyButtonNext.dart';
import 'package:save_me/component/MyText.dart';
import 'package:save_me/stores/use_register_data.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var namaController = TextEditingController();
  var jeniskelaminController = TextEditingController();
  var tanggalLahirController = TextEditingController();
  var notelpController = TextEditingController();

  List<String> jenkel = ["Pria", "Wanita"];
  String selectedJenkel = "Pria";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void goToRegister2() {
    June.getState(() => RegisterDataVM()).register1(
        email: emailController.text,
        nama: namaController.text,
        jenisKelamin: selectedJenkel,
        tanggalLahir: tanggalLahirController.text,
        noTelp: notelpController.text);
    context.pushNamed('register_2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: HexColor("#EB1C24"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //Container Logo Login
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image.asset(
                          //   "assets/images/favicon.png",
                          //   height: 70,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(
                                "Register",
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          // MyText(
                          //   "Sign in with your data that you entered during your registration.",
                          //   color: Colors.white,
                          // )
                        ],
                      ),
                    ),
                    // Form
                    Heading1(
                      "Email",
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        if (!value.contains('.')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Heading1("Nama",
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: namaController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Nama",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Heading1("Jenis Kelamin",
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white),
                    const SizedBox(
                      height: 3,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButtonFormField(
                        isExpanded: false,
                        value: selectedJenkel,
                        padding: const EdgeInsets.all(0),
                        decoration: InputDecoration(
                          labelText: "",
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none),
                        ),
                        items: jenkel
                            .map((value) => DropdownMenuItem(
                                  value: value,
                                  child: MyText(value,
                                      color: Colors.black, fontSize: 16),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(
                            () {
                              selectedJenkel =
                                  value!; // Load product data based on the selected vendor.
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Heading1("Tempat tanggal lahir",
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white),
                    const SizedBox(
                      height: 3,
                    ),
                    GestureDetector(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1945),
                            lastDate: DateTime.now());
                        if (pickedDate != null) {
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          setState(() {
                            tanggalLahirController.text = formattedDate;
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                      child: TextFormField(
                        enabled: false,
                        controller: tanggalLahirController,
                        keyboardType: TextInputType.datetime,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Tanggal Lahir",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          errorStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Heading1("No Telp",
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: notelpController,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "No Telp",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: TextStyle(color: Colors.white),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButtonNext(
                          text: "Login",
                          onPressed: () => context.goNamed('login'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                              goToRegister2();
                            }
                          },
                          child: const Text('Next'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
