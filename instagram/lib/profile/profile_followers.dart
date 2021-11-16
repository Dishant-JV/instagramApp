import 'package:flutter/material.dart';
import '../profile_screen.dart';

class Followers extends StatefulWidget {
  final int index;

  const Followers({Key? key, this.index = 0}) : super(key: key);

  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  int ?index ;

  //int? index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 15, bottom: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      "dishant_7181",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: index == 0
                          ? Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.white))),
                              alignment: Alignment.center,
                              width: 196,
                              child: Text(
                                "512 Followers",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade600
                                              .withOpacity(0.5)))),
                              alignment: Alignment.center,
                              width: 196,
                              child: Text(
                                "512 Followers",
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9),
                                    fontSize: 16),
                              ),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: index == 1
                          ? Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.white))),
                              alignment: Alignment.center,
                              width: 196,
                              child: Text(
                                "412 Following",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade600
                                              .withOpacity(0.5)))),
                              alignment: Alignment.center,
                              width: 196,
                              child: Text(
                                "412 Following",
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9),
                                    fontSize: 16),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 12, left: 15, right: 15, bottom: 25),
                      width: double.infinity,
                      height: 38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white12),
                      child: Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.search,
                              color: Colors.white54,
                              size: 20,
                            ),
                            margin: EdgeInsets.only(left: 17),
                          ),
                          Container(
                            child: Text(
                              "Search",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 17),
                            ),
                            margin: EdgeInsets.only(left: 17),
                          )
                        ],
                      ),
                    ),
                    // index == 0? followers() : following(),
          index==0?followers():following(),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

followers() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 6),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey.shade600.withOpacity(0.2)))),
          height: 57,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo4.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 47,
                    width: 47,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 43, top: 2),
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: Text(
                        "18",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 11),
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Follow Requests",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      margin: EdgeInsets.only(right: 13),
                    ),
                    Container(
                      child: Text(
                        "Approve or ignore requests",
                        style: TextStyle(color: Colors.white54),
                      ),
                      margin: EdgeInsets.only(top: 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 15),
          child: Text(
            "Categories",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 18),
          height: 57,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo5.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 44,
                    width: 44,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo6.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 44,
                    width: 44,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Accounts You Don't follow back",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      margin: EdgeInsets.only(right: 13),
                    ),
                    Container(
                      child: Text(
                        "Kevik9090_@ and 178 others",
                        style: TextStyle(color: Colors.white54),
                      ),
                      margin: EdgeInsets.only(top: 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey.shade600.withOpacity(0.2)))),
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(bottom: 5),
          height: 70,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo4.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 44,
                    width: 44,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo7.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 45,
                    width: 45,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Least interacted with",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      margin: EdgeInsets.only(right: 13),
                    ),
                    Container(
                      child: Text(
                        "Bhavik_patel and 49 others",
                        style: TextStyle(color: Colors.white54),
                      ),
                      margin: EdgeInsets.only(top: 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 15),
          child: Text(
            "All Followers",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 20, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo2.JPG",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Maulik Patel",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "MB...Vaghasiya",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 28,
                width: 73,
                alignment: Alignment.center,
                child: Text(
                  "Remove",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo3.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Raj_mak",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "Raj makrubiya",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 28,
                width: 73,
                alignment: Alignment.center,
                child: Text(
                  "Remove",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo4.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "keyur 990",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "Keyur koladiya",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 28,
                width: 73,
                alignment: Alignment.center,
                child: Text(
                  "Remove",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo5.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "bhavik_vavadiya",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "Jay Saradar",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 28,
                width: 73,
                alignment: Alignment.center,
                child: Text(
                  "Remove",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo6.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "dax 56565__|||",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "Dax Ghoghari",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 28,
                width: 73,
                alignment: Alignment.center,
                child: Text(
                  "Remove",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 4, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo2.JPG",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Dishant_Unagar",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "Dishant",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 28,
                width: 73,
                alignment: Alignment.center,
                child: Text(
                  "Remove",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

following() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 2, left: 15),
          child: Text(
            "Categories",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 18),
          height: 57,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo4.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 44,
                    width: 44,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo5.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 44,
                    width: 44,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Least interacted With",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      margin: EdgeInsets.only(right: 13),
                    ),
                    Container(
                      child: Text(
                        "nikunj_rr34 and 50 others",
                        style: TextStyle(color: Colors.white54),
                      ),
                      margin: EdgeInsets.only(top: 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey.shade600.withOpacity(0.2)))),
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(bottom: 5),
          height: 70,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo6.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 44,
                    width: 44,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/demo7.jpg",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 45,
                    width: 45,
                    // margin: EdgeInsets.only(left: 10),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Most Shown in Feed",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      margin: EdgeInsets.only(right: 13),
                    ),
                    Container(
                      child: Text(
                        "gamdiyo and 59 others",
                        style: TextStyle(color: Colors.white54),
                      ),
                      margin: EdgeInsets.only(top: 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 15),
          child: Text(
            "Sorted by Default",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo.JPG",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Kitan Shah",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "kk koladiya",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                height: 28,
                width: 120,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo4.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Kiara_advani",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "kyarra",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                height: 28,
                width: 120,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo5.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Dhavani Bhanushali",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "Dhhavanni",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                height: 28,
                width: 120,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo6.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Ketrina kaif",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "kaif of shafe",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                height: 28,
                width: 120,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo7.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Boni Kapoor",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "Love of kapoor family",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                height: 28,
                width: 120,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo5.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Dhavani Bhanushali",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "Dhhavanni",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                height: 28,
                width: 120,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/demo4.jpg",
                            ),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      height: 55,
                      width: 55,
                      // margin: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Kiara_advani",
                              style: TextStyle(color: Colors.white),
                            ),
                            margin: EdgeInsets.only(right: 13),
                          ),
                          Container(
                            child: Text(
                              "kyarra",
                              style: TextStyle(color: Colors.white54),
                            ),
                            margin: EdgeInsets.only(top: 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                height: 28,
                width: 120,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white70)),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
