import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:june/june.dart';
import 'package:save_me/Component/MyTextField.dart';
import 'package:save_me/component/GlobalFunction.dart';
import 'package:save_me/component/MyButton.dart';
import 'package:save_me/component/MyButtonNext.dart';
import 'package:save_me/component/MyText.dart';
import 'package:save_me/main.dart';
import 'package:save_me/stores/use_register_data.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Register2Screen extends StatefulWidget {
  const Register2Screen({super.key});

  @override
  State<Register2Screen> createState() => _Register2ScreenState();
}

class _Register2ScreenState extends State<Register2Screen> {
  final _formKey = GlobalKey<FormState>();

  var nodaruratController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var repasswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var data = June.getState(() => RegisterDataVM());
    print('=====================');
    print(data.email);
    print(data.nama);
    print(data.jenisKelamin);
    print(data.tanggalLahir);
    print(data.noTelp);
    print('=====================');
  }

  Future<void> handleRegister() async {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      var data = June.getState(() => RegisterDataVM());
      data.register2(
        noTelpDarurat: nodaruratController.value.text,
        username: usernameController.value.text,
        password: passwordController.value.text,
      );
      print('=====================');
      print(data.email);
      print(data.nama);
      print(data.jenisKelamin);
      print(data.tanggalLahir);
      print(data.noTelp);
      print(data.noTelpDarurat);
      print(data.username);
      print(data.password);
      print('=====================');
      AuthResponse res = await supabase.auth.signUp(
        password: data.password,
        email: data.email,
      );
      var res2 = await supabase.from('profile').insert(
        [
          {
            'id': res.user!.id,
            'email': data.email,
            'name': data.nama,
            'jenis_kelamin': data.jenisKelamin,
            'tanggal_lahir': data.tanggalLahir,
            'no_telp': data.noTelp,
            'no_telp_darurat': data.noTelpDarurat,
            'username': data.username,
            'password': data.password,
          },
        ],
      ).select();

      print(res2);

      context.pushReplacementNamed('home');
    }
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
                        ],
                      ),
                    ),
                    // Form
                    Heading1(
                      "No Darurat",
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: nodaruratController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Heading1("Username",
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Heading1("Password",
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Heading1("Re-password",
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: repasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (value != passwordController.value.text) {
                          return 'Password not match';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      MyButton(
                        width: getLength("width", context) * 40 / 100,
                        text: "Register",
                        onPressed: handleRegister,
                      ),
                    ]),

                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyButtonNext(
                          text: "Prev",
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(
                          height: 20,
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
