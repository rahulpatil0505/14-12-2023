import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/userlist.dart';
import 'displaylist_screen.dart';

class UserDetailsScreen extends StatefulWidget {
  final User user;

  UserDetailsScreen({required this.user});

  @override
  _UserDetailsScreenState createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListofUsersPage(),
                )),
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 17, 39, 43),
          title: Text(
            'User Details',
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 1.5,
                child: Container(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            width: 225,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "Name :",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ))),
                                Text('${widget.user.name}',
                                    style: const TextStyle(fontSize: 19)),
                                RichText(
                                  text: TextSpan(
                                      text: "Email :",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      )),
                                ),
                                Text('${widget.user.email}',
                                    style: const TextStyle(fontSize: 19)),
                                RichText(
                                  text: TextSpan(
                                      text: "Position :",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      )),
                                ),
                                Text("${widget.user.designation}",
                                    style: const TextStyle(fontSize: 19)),
                                RichText(
                                  text: TextSpan(
                                      text: "Address :",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      )),
                                ),
                                Text(
                                  '${widget.user.address}',
                                  style: const TextStyle(
                                    fontSize: 19,
                                  ),
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                )
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(widget.user.photoUrl),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                    const SizedBox(height: 16.0),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
