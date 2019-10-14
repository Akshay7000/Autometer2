import 'package:flutter/material.dart';

import './page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String currentProfilePic = "https://scontent.fbho1-2.fna.fbcdn.net/v/t1.0-1/c0.93.240.240a/p240x240/64360662_1327603674083616_7522958690110930944_n.jpg?_nc_cat=104&_nc_oc=AQkNziVpXXGLd4MUqH1gi8UqZQf7VMxiNWeI23sqdwJGhzE7IyrK_-gXArWKnLeUGojzxy7ojEpPokP5b3emhYxb&_nc_ht=scontent.fbho1-2.fna&oh=119c962d66212178e89078725ba16ed6&oe=5DEF598E";
  //String otherProfilePic = "https://yt3.ggpht.com/-2_2skU9e2Cw/AAAAAAAAAAI/AAAAAAAAAAA/6NpH9G8NWf4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg";

  /*void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }*/

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

        appBar: new AppBar(title: new Text(""),
          backgroundColor: Colors.blue,),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountEmail: new Text("akshayaksh23484@gmail.com"),
                accountName: new Text("Akshay Patel"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(currentProfilePic),
                  ),
                  onTap: () => print("This is your current account."),
                ),
                otherAccountsPictures: <Widget>[
                 /* new GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(otherProfilePic),
                    ),
                    onTap: () => switchAccounts(),
                  ),*/
                ],
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new NetworkImage("https://scontent.fbho1-1.fna.fbcdn.net/v/t1.0-9/67661277_1368175313359785_7646067197437018112_n.jpg?_nc_cat=105&_nc_oc=AQl8w9rNsEhkoFfNMk8flgjAT1SsLeusn1QVtwf9l2cVPc4VGBBg-CnauhNaPE7IhchFXVdH7O524PC2XZUq7MY3&_nc_ht=scontent.fbho1-1.fna&oh=44d1911013515a86ee56100bef5563a7&oe=5E38294B"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              new ListTile(
                  title: new Text("Room One"),
                  trailing: new Icon(Icons.arrow_upward),
                  onTap: () {
                    Container(
                      padding: EdgeInsets.fromLTRB(1.0, 70.0, 0.0, 0.0),
                      child: LogoImage(),);
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Room One"))                    );
                  }
              ),
              new ListTile(
                  title: new Text("Room Two"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Room Two")));
                  }
              ),
              new Divider(),
              new ListTile(
                title: new Text("Cancel"),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        body: new Container(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
                  child: LogoImage(),

                  /*child: Text('Auto',
                      style: TextStyle(
                          fontSize: 60.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 90.0, 0.0, 0.0),
                  child: Text('Meter',
                      style: TextStyle(
                          fontSize: 60.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(175.0, 90.0, 0.0, 0.0),
                  child: Text('.',
                      style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                */),

                Container(
                    padding: EdgeInsets.only(top: 450.0, left: 40.0, right: 40.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 5.0),
                        Container(
                          alignment: Alignment(1.0, 0.0),
                          padding: EdgeInsets.only(top: 15.0, left: 20.0),

                        ),
                        SizedBox(height: 40.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blueAccent,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: InkWell(

                              onTap: ()
                              {Navigator.of(context).pushNamed('/signup');
                              },
                              child: Center(
                                child: Text(
                                  'Add Tenent',
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
            ),
          ),
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