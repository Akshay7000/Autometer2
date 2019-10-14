import 'package:flutter/material.dart';
import 'Signup.dart';
import 'Appss/Apps/home_page.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  get routes => null;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new MyHomePage(),
        '/home_page': (BuildContext context) => new HomePage(),

        },
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 70.0, 0.0, 0.0),
            child: LogoImage(),
            ),
            /*Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 190.0, 0.0, 0.0),
                    child: Text('Auto',
                        style: TextStyle(
                            fontSize: 60.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 250.0, 0.0, 0.0),
                    child: Text('Meter',
                        style: TextStyle(
                            fontSize: 60.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(175.0, 250.0, 0.0, 0.0),
                    child: Text('.',
                        style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  )
                ],
              ),
            ),*/
            Container(
                padding: EdgeInsets.only(top: 50.0, left: 40.0, right: 40.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),

                    ),
                    //SizedBox(height: 10.0),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Text('Create an Account',
                          style: TextStyle(fontFamily: 'RobotoSlab',
                              fontSize: 32.0, color: Color(0xffe76577))),
                    ),
                    SizedBox(height: 80.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.blueAccent,
                        color: Colors.blue,
                        elevation: 7.0,
                        child: InkWell(
                        
                          onTap: ()
                          {Navigator.of(context).pushNamed('/home_page');
                          },
                            child: Center(
                            child: Text(
                              'Login with Google',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                //fontFamily: 'Montserrat'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                )
            ),

          ],
        )
    );
  }
}
class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(image: assetImage, width: 350.0, height: 350.0,);
    return Container(child: image,);
  }

}