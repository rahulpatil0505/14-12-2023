import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_banastech/Screens/registration_screen.dart';
import '../widgets/custome_textform_field.dart';
import 'displaylist_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final TextStyle customTextStyle = GoogleFonts.roboto(
  //   fontSize: 12,
  //   fontWeight: FontWeight.normal,
  // );
  bool passwordVisible = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: 280,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 17, 39, 43),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60.0),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.montserrat(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text("Welcomeback",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                  width: size.width,
                  padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: size.height * 0.2,
                      top: size.height * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 9, right: 9),
                                  child: TextFormField(
                                    controller: _usernumberController,
                                    decoration: InputDecoration(
                                      labelText: 'Mobile No',
                                      hintText: "Mobile No.",
                                      hintStyle: TextStyle(fontSize: 14),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 17, 39, 43)),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 17, 39, 43)),
                                      ),
                                    ),
                                    keyboardType: TextInputType.number,
                                    maxLength: 10,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Mobile number is required ";
                                      }
                                      if (value.length < 10) {
                                        return "Enter valid Mobile No.";
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                CustomTextField(
                                  controller: _passwordController,
                                  hintText: "Password",
                                  labelText: "Password",
                                  obscureText: passwordVisible,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Password is required";
                                    }
                                  },
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordVisible = !passwordVisible;
                                      });
                                    },
                                    icon: Icon((passwordVisible != true)
                                        ? Icons.remove_red_eye_rounded
                                        : Icons.remove_red_eye_outlined),
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Forgot Password?",
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            child: MaterialButton(
                              color: Color.fromARGB(255, 17, 39, 43),
                              onPressed: () {
                                if (_usernumberController.text.isEmpty ||
                                    _passwordController.text.isEmpty) {
                                  _showErrorSnackbar("please Enter Details");
                                } else {
                                  if (_formKey.currentState!.validate()) {
                                    _usernumberController.clear();
                                    _passwordController.clear();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ListofUsersPage(),
                                        ));
                                  } else {
                                    _showErrorSnackbar(
                                        "Please Enter Correct Detais");
                                  }
                                }
                                ;
                              },
                              elevation: 0,
                              padding: const EdgeInsets.all(18),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Text("Login",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ))),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegistrationPage(),
                                  ));
                            },
                            child: RichText(
                              text: TextSpan(
                                  text: "Create Account :",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " Register",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
