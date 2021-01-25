import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEditable = false;
  TextEditingController namectrl = TextEditingController(text: "Jane Doe");
  TextEditingController dobctrl =
      TextEditingController(text: "08 September 1980");
  TextEditingController phctrl =
      TextEditingController(text: "+38 050 231 45 67");
  TextEditingController emailctrl =
      TextEditingController(text: "janedoel983@gmail.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.green,
        ),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          InkWell(
            child: Icon(Icons.edit, color: Colors.green),
            onTap: () {
              setState(() {
                isEditable = true;
              });
            },
            onDoubleTap: () {
              setState(() {
                isEditable = false;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _proflehead(),
            Text(
              'Jane Doe',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            profileForm(context),
            SizedBox(
              height: 40,
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.login_outlined,
                      size: 30,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Log out',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    )
                  ],
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _proflehead() => Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 120, left: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade500.withOpacity(0.6),
                        child: IconButton(
                          icon: Icon(Icons.flip_camera_ios_outlined,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      );

  Widget profileForm(context) => Form(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Name',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                width: MediaQuery.of(context).size.width * 3,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: namectrl,
                  enabled: isEditable,
                  decoration: InputDecoration(
                    // labelText: 'Jane Doe',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                      borderSide:
                          new BorderSide(color: Colors.white, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Birth Date',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                width: MediaQuery.of(context).size.width * 3,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: dobctrl,
                  enabled: isEditable,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_today_outlined,
                        color: Colors.green),
                    // labelText: '08 September 1980',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                      borderSide:
                          new BorderSide(color: Colors.white, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Phone Number',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                width: MediaQuery.of(context).size.width * 3,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: phctrl,
                  enabled: isEditable,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.done_all, color: Colors.green),
                    // labelText: '+38 050 231 45 67',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                      borderSide:
                          new BorderSide(color: Colors.white, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Email',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                width: MediaQuery.of(context).size.width * 3,
                child: TextFormField(
                  controller: emailctrl,
                  enabled: isEditable,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.done_all, color: Colors.green),
                    // labelText: 'janedoel983@gmail.com',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                      borderSide:
                          new BorderSide(color: Colors.white, width: 2.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
