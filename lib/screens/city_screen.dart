part of weather;

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          height: double.infinity,
          width: double.infinity,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/city_background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 50.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Container(
            constraints: BoxConstraints.expand(),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: kTextFieldInputDecoration,
                      onChanged: (value) {
                        cityName = value;
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context, cityName);
                      },
                      child: Text(
                        'Get Weather',
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
