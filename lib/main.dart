import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPageView(),
    );
  }
}

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController _pageController = PageController(initialPage: 0);
  //int _currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 172, 170, 173),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Container(
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Color.fromARGB(255, 172, 170, 173)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter))),
                    child: Image.asset(
                      'assets/images/abcd.png',
                      width: 300,
                    )),
                Text('Track Your Work\nAnd Get The Result',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
                Text(
                    'Remember to keep track of your \nprofesional accomplishments',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Align(
                      child: TextButton(
                        onPressed: () {},
                        child: Text('SKIP',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    ),
                    Spacer(),
                    Align(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(30),
                          child: Text(
                            textAlign: TextAlign.center,
                            'NEXT',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 182, 192),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Container(
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Color.fromARGB(255, 240, 182, 192),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter))),
                    child: Image.asset(
                      'assets/images/aaa.png',
                      width: 300,
                    )),
                Text('Stay Organized\n With Team',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
                Text(
                    'But understanding the contribution \n our colleagues make to our teams\n and companies',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Align(
                      child: TextButton(
                        onPressed: () {},
                        child: Text('SKIP',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    ),
                    Spacer(),
                    Align(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                          //  margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(30),
                          child: Text(
                            textAlign: TextAlign.center,
                            'NEXT',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 151, 223, 233),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Container(
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Color.fromARGB(255, 151, 223, 233),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter))),
                    child: Image.asset(
                      'assets/images/aaaa.png',
                      width: 300,
                    )),
                Text('Get Notified When\n Work Happens',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
                Text(
                    'Take cntrol of notifications,\ncollaborate live or on your own time',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    //  margin: EdgeInsets.all(10),
                    padding: EdgeInsets.fromLTRB(80, 20, 80, 20),

                    margin: EdgeInsets.all(50),
                    child: Text(
                      textAlign: TextAlign.center,
                      'START',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
