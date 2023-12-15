import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_banastech/Screens/login_screen.dart';

import 'userDetails_screen.dart';
import '../widgets/userlist.dart';

class ListofUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 39, 43),
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                )),
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(213, 37, 36, 36),
          title: Text(
            'User List',
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 1.0,
                    color: Color.fromARGB(255, 121, 137, 138),
                    shadowColor: Colors.white,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserDetailsScreen(
                                user: users[index],
                              ),
                            ));
                      },
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(users[index].photoUrl),
                      ),
                      title: Text("${users[index].name}",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Email: ${users[index].email}',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              )),
                          Text(
                            'Address: ${users[index].address}',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
