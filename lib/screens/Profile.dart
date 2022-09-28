import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final int numTransactions;
  final int numIncomes;

  const Profile(this.numTransactions, this.numIncomes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      extendBody: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(bottom: 100),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(30),
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/imag/profile.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Text(
              "Guruvignesh M",
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Bengalore, India ",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      numTransactions.toString(),
                      style: _textStyle(),
                    ),
                    Text(
                      "Transactions",
                      style: _textStyle(),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text(
                      numIncomes.toString(),
                      style: _textStyle(),
                    ),
                    Text(
                      "Incomes",
                      style: _textStyle(),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1.5,
            ),
            Column(
              children: [
                ListTileProp(
                  text: "Account",
                  icon: Icons.person,
                ),
                ListTileProp(
                  text: "Location (DZ)",
                  icon: Icons.location_on_outlined,
                ),
                ListTileProp(
                  text: "Password",
                  icon: Icons.vpn_key_outlined,
                ),
                ListTileProp(
                  text: "Language",
                  icon: Icons.language,
                  last: true,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }

  TextStyle _textStyle() {
    return TextStyle(
      color: Colors.black.withOpacity(0.7),
      fontWeight: FontWeight.w600,
      fontSize: 16,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Profile',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 6,
    );
  }
}

class ListTileProp extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool last;
  const ListTileProp({
    Key key,
    this.icon,
    this.text,
    this.last = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: Colors.indigo,
          ),
          title: Text(text),
          trailing: Icon(Icons.navigate_next),
          onTap: () {},
        ),
        last
            ? SizedBox.shrink()
            : Divider(
                thickness: 1.5,
              ),
      ],
    );
  }
}
