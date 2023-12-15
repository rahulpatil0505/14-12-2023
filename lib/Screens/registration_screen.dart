import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_banastech/Screens/login_screen.dart';
import '../widgets/custome_textform_field.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool passwordVisible = true;
  bool confrmpassword = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _confirmePwController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  // snackbar for showing error msg
  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  // function for clear textfields
  void clearTextFields() {
    _usernumberController.clear();
    _passwordController.clear();
    _nameController.clear();
    _emailController.clear();
    _confirmePwController.clear();
    _addressController.clear();
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
                height: 180,
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
                        "Registration",
                        style: GoogleFonts.montserrat(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text("Register Your Self",
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
                            height: 10,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextField(
                                  controller: _nameController,
                                  hintText: "Enter Name.",
                                  labelText: "Name",
                                  keyboardType: TextInputType.name,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Name Should ne required ";
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                CustomTextField(
                                  controller: _emailController,
                                  hintText: "Enter Email.",
                                  labelText: "Email ",
                                  keyboardType: TextInputType.name,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email is required ";
                                    }
                                    bool validEmail = RegExp(
                                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                        .hasMatch(value);
                                    if (!validEmail) {
                                      return "Enter a valid email address";
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                CustomTextField(
                                  controller: _addressController,
                                  hintText: "Enter Address",
                                  labelText: "Address",
                                  keyboardType: TextInputType.name,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email is required ";
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 8,
                                ),
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
                                  height: 8,
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
                                SizedBox(
                                  height: 8,
                                ),
                                CustomTextField(
                                  controller: _confirmePwController,
                                  hintText: "Confirm password",
                                  labelText: "Confirm password",
                                  obscureText: confrmpassword,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Password is required";
                                    }
                                  },
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        confrmpassword = !confrmpassword;
                                        if (_passwordController.text ==
                                            _confirmePwController.text) {
                                          _showErrorSnackbar(
                                              "Password and Confirm Password is not same");
                                        }
                                      });
                                    },
                                    icon: Icon((_confirmePwController != true)
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
                                    _passwordController.text.isEmpty ||
                                    _nameController.text.isEmpty ||
                                    _emailController.text.isEmpty ||
                                    _confirmePwController.text.isEmpty ||
                                    _addressController.text.isEmpty) {
                                  _showErrorSnackbar("Please Enter Details");
                                } else {
                                  if (_formKey.currentState!.validate()) {
                                    clearTextFields();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
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
                                  child: Text("Register",
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
                                    builder: (context) => LoginPage(),
                                  ));
                            },
                            child: RichText(
                              text: TextSpan(
                                  text: "Alredy Have An Account :",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " Login",
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
