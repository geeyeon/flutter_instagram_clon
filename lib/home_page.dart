import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;
  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title : Center(
            child: Text('Instagram Clon',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold ),
          ))
        ),
        body: _bildBody() ,
    );
  }

  Widget _bildBody() {
    return Padding(
      padding: EdgeInsets.all(8.8),
      child: SafeArea(child:
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0),),
                Text('Welcome Instagram',
                style:TextStyle(fontSize: 24.8)),
                Padding(padding: EdgeInsets.all((8.0))),
                Text('Please Follow if you want to see images and videos.',
                style:TextStyle(fontSize: 10)),
                Padding(padding: EdgeInsets.all((16.0))),

                SizedBox(//Card(
                    width: 260.0,
                    child:Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(4.0)),
                          SizedBox(
                            width: 80.0,
                            height : 80.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(user.photoUrl),
                            )
                          ),
                          Padding(padding: EdgeInsets.all((7.0))),
                          Text(user.email , style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(user.displayName),
                          Padding(padding: EdgeInsets.all((7.0))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('https://images.unsplash.com/photo-1513073945753-eb763d2a99de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
                                    fit: BoxFit.cover),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('https://images.unsplash.com/photo-1531168010535-64a9823f7eb4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                                    fit: BoxFit.cover),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('https://images.unsplash.com/photo-1526677504211-233c8477c61b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                                    fit: BoxFit.cover),
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                          Text('Facebook friends'),
                          Padding(padding: EdgeInsets.all(4.0)),
                          RaisedButton(
                            child: Text('Follow'),
                           color: Colors.blueAccent,
                            textColor: Colors.white,
                           onPressed: (){},
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                        ],
                    ) ,
                  ),
                )],

          ),
          ),
        )),
    );
  }
}
