import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.red,
              radius: 16,
            ),
            title: Text('Iggy228'),
          ),
          Image.asset('images/cat1.jpg'),
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_upward),
              ),
              Text('23'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_downward),
              ),
              Spacer(flex: 1),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
