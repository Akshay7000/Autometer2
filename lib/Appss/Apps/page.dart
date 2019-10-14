import 'package:flutter/material.dart';

class Page extends StatelessWidget {

  final String title;

  Page(this.title);

  @override
  Widget build(BuildContext context) {
    /*return new Scaffold(
      appBar: new AppBar(title: new Text(title), backgroundColor: Colors.redAccent,),
      body: Container(
        padding: EdgeInsets.only(top: 120.0, left: 150.0, right: 40.0),
        //child: new Text(),
        child: LogoImage(),
      ),*/


        return new Scaffold(
        appBar: new AppBar(title: new Text(title), backgroundColor: Colors.redAccent,),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200.0,

                color: Colors.redAccent,
              child: Container(
                padding: EdgeInsets.fromLTRB(160.0, 0.0, 160.0, 0.0) ,
                child: LogoImage(),

              ),
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
                              'View Records',
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
    AssetImage assetImage = AssetImage('images/profile.png');
    Image image = Image(image: assetImage, width: 120.0, height: 120.0,);
    return Container(child: image,);
  }

}