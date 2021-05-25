import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 8),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Text('A'),
                    backgroundColor: Colors.red,
                    radius: 36,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Iggy228'),
                      Text('987 followers'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 12),
              Text('Hi Iam Iggy'),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sledovať'),
              ),
            ],
          ),
        ),
        /*GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 9,
          itemBuilder: (_, index) {
            return Image.asset('images/cat2.png');
          },
        ),*/
      ],
    );
  }
}
