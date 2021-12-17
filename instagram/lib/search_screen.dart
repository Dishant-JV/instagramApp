import 'package:flutter/material.dart';
import 'package:instagram/show_image.dart';

class Search extends StatefulWidget {
  final bool ? isFocus;
  const Search({Key? key, this.isFocus}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  get isFocus => widget.isFocus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  FocusNode mmm=FocusNode();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 35,
                 margin: EdgeInsets.only(top: 12,left: 12,right: 12,bottom: 5),
                 child: Form(child: TextFormField(
                   focusNode: mmm,
                onTap: (){
                     setState(() {
                       if(isFocus == false){
                         return mmm.unfocus();
                       }
                     });
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: Icon(Icons.search_sharp,color: Colors.white54,size: 20,),
                    hintText:"Search",
                    hintStyle: TextStyle(color: Colors.white54,fontSize: 16),
                    filled: true,
                    fillColor: Colors.grey.shade800.withOpacity(0.6),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    border: OutlineInputBorder(
                    )
                  ,contentPadding: EdgeInsets.only(top: 6,bottom: 6,),
                ),
              ),
            ),
          ), //Image.asset("assets/images/demo2.JPG")
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              FocusScope.of(context).unfocus();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                                img: "assets/images/demo3.jpg",
                                nimg: "",
                              )));
                            },
                            child: Container(
                              child: Image.asset(
                                "assets/images/demo3.jpg",
                                fit: BoxFit.cover,
                              ),
                              height: 135,
                              width: 130,
                              decoration: BoxDecoration(
                                  border: Border(
                                    left:
                                    BorderSide(width: 2.5, color: Colors.black),
                                    right: BorderSide(
                                        width: 2.5, color: Colors.black),
                                    bottom: BorderSide(
                                        width: 2.5, color: Colors.black),)),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                                img: "",
                                nimg: "https://images.news18.com/ibnlive/uploads/2021/08/1628511415_lion.jpg",
                              )));
                            },
                            child: Container(
                              child: Image.network(
                                "https://images.news18.com/ibnlive/uploads/2021/08/1628511415_lion.jpg",
                                fit: BoxFit.cover,
                              ),
                              height: 135,
                              width: 130,
                              decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                        width: 2.5, color: Colors.black),
                                    bottom: BorderSide(
                                        width: 2.5, color: Colors.black),)),
                            ),
                          ),                    ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                                img: "",
                                nimg: "https://i.pinimg.com/474x/f3/74/ec/f374ecc7910923c8d3b49b4933164457.jpg",
                              )));
                            },
                            child: Container(
                              child: Image.network(
                                "https://i.pinimg.com/474x/f3/74/ec/f374ecc7910923c8d3b49b4933164457.jpg",
                                fit: BoxFit.cover,
                              ),
                              height: 135,
                              width: 130,
                              decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                        width: 2.5, color: Colors.black),
                                    bottom: BorderSide(
                                        width: 2.5, color: Colors.black),)),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                                img: "",
                                nimg: "https://cdn.sharechat.com/heroen_4d615b05-0015-4fd9-9ab1-d5dab3ee0f5e-b466fa6b-ce53-4a61-bdd8-5440ccbb01de_cmprsd_40.jpg",
                              )));
                            },
                            child: Container(
                              child: Image.network(
                                "https://cdn.sharechat.com/heroen_4d615b05-0015-4fd9-9ab1-d5dab3ee0f5e-b466fa6b-ce53-4a61-bdd8-5440ccbb01de_cmprsd_40.jpg",
                                fit: BoxFit.cover,
                              ),
                              height: 135,
                              width: 130,
                              decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                        width: 2.5, color: Colors.black),
                                    bottom: BorderSide(
                                        width: 2.5, color: Colors.black),)),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                                img: "",
                                nimg: "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg",
                              )));
                            },
                            child: Container(
                              child: Image.network(
                                "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg",
                                fit: BoxFit.cover,
                              ),
                              height: 270,
                              width: 130,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 2.5, color: Colors.black),
                                  right: BorderSide(
                                      width: 2.5, color: Colors.black),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                            img: "",
                            nimg: "https://themumbaicity.com/wp-content/uploads/2021/06/anu.jpg",
                          )));
                        },
                        child: Container(
                          child: Image.network(
                            "https://themumbaicity.com/wp-content/uploads/2021/06/anu.jpg",
                            fit: BoxFit.cover,
                          ),
                          height: 135,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border(
                                left:
                                BorderSide(width: 2.5, color: Colors.black),
                                right: BorderSide(
                                    width: 2.5, color: Colors.black),
                                bottom: BorderSide(
                                    width: 2.5, color: Colors.black),)),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                            img: "",
                            nimg: "https://images.hindustantimes.com/img/2021/10/24/550x309/kohli-t20-wc-new-getty_1635068337484_1635068341564.jpg",
                          )));
                        },
                        child: Container(
                          child: Image.network(
                            "https://images.hindustantimes.com/img/2021/10/24/550x309/kohli-t20-wc-new-getty_1635068337484_1635068341564.jpg",
                            fit: BoxFit.cover,
                          ),
                          height: 135,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    width: 2.5, color: Colors.black),
                                bottom: BorderSide(
                                    width: 2.5, color: Colors.black),)),
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                            img: "",
                            nimg: "https://5.imimg.com/data5/SELLER/Default/2020/10/PX/KF/AW/20193325/ink-pen-500x500.jpg",
                          )));
                        },
                        child: Container(
                          child: Image.network(
                            "https://5.imimg.com/data5/SELLER/Default/2020/10/PX/KF/AW/20193325/ink-pen-500x500.jpg",
                            fit: BoxFit.cover,
                          ),
                          height: 135,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    width: 2.5, color: Colors.black),
                                bottom: BorderSide(
                                    width: 2.5, color: Colors.black),)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                            img: "",
                            nimg: "https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202103/sanjanaganesanphoto3-x1349.jpg?NpRedFCnLtEJQL6Qk3h6MpIW2vmVM6qT",
                          )));
                        },
                        child: Container(
                          child: Image.network(
                            "https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202103/sanjanaganesanphoto3-x1349.jpg?NpRedFCnLtEJQL6Qk3h6MpIW2vmVM6qT",
                            fit: BoxFit.cover,
                          ),
                          height: 135,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border(
                                left:
                                BorderSide(width: 2.5, color: Colors.black),
                                right: BorderSide(
                                    width: 2.5, color: Colors.black),
                                bottom: BorderSide(
                                    width: 2.5, color: Colors.black),)),
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                            img: "",
                            nimg: "https://c.ndtvimg.com/2020-03/bthb68ug_virat-kohli-afp_625x300_27_March_20.jpg",
                          )));
                        },
                        child: Container(
                          child: Image.network(
                            "https://c.ndtvimg.com/2020-03/bthb68ug_virat-kohli-afp_625x300_27_March_20.jpg",
                            fit: BoxFit.cover,
                          ),
                          height: 135,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    width: 2.5, color: Colors.black),
                                bottom: BorderSide(
                                    width: 2.5, color: Colors.black),)),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                            img: "",
                            nimg: "https://pbs.twimg.com/profile_images/1314858644622647303/-6z-iDDV_400x400.jpg",
                          )));
                        },
                        child: Container(
                          child: Image.network(
                            "https://pbs.twimg.com/profile_images/1314858644622647303/-6z-iDDV_400x400.jpg",
                            fit: BoxFit.cover,
                          ),
                          height: 135,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    width: 2.5, color: Colors.black),
                                bottom: BorderSide(
                                    width: 2.5, color: Colors.black),)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                            img: "",
                            nimg: "https://thescoopbeats.com/wp-content/uploads/2021/11/Kiara-Advani.jpg",
                          )));
                        },
                        child: Container(
                          child: Image.network(
                            "https://thescoopbeats.com/wp-content/uploads/2021/11/Kiara-Advani.jpg",
                            fit: BoxFit.cover,
                          ),
                          height: 270,
                          width: 260,
                          decoration: BoxDecoration(
                              border: Border(
                                left:
                                BorderSide(width: 2.5, color: Colors.black),
                                right: BorderSide(
                                    width: 2.5, color: Colors.black),
                                bottom: BorderSide(
                                    width: 2.5, color: Colors.black),)),
                        ),
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                                img: "",
                                nimg: "https://b.zmtcdn.com/data/pictures/7/3800017/ba50a5176f9b3abf84a4b734543474a2.jpg?fit=around|771.75:416.25&crop=771.75:416.25;*,*",
                              )));
                            },
                            child: Container(
                              child: Image.network(
                                "https://b.zmtcdn.com/data/pictures/7/3800017/ba50a5176f9b3abf84a4b734543474a2.jpg?fit=around|771.75:416.25&crop=771.75:416.25;*,*",
                                fit: BoxFit.cover,
                              ),
                              height: 135,
                              width: 130,
                              decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                        width: 2.5, color: Colors.black),
                                    bottom: BorderSide(
                                        width: 2.5, color: Colors.black),)),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Images(
                                img: "assets/images/demo4.jpg",
                                nimg: "",
                              )));
                            },
                            child: Container(
                              child: Image.asset(
                                "assets/images/demo4.jpg",
                                fit: BoxFit.cover,
                              ),
                              height: 135,
                              width: 130,
                              decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                        width: 2.5, color: Colors.black),
                                    bottom: BorderSide(
                                        width: 2.5, color: Colors.black),)),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
