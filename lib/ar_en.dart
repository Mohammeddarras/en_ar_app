import 'package:flutter/material.dart';

class Ar_En extends StatefulWidget {
  @override
  _Ar_EnState createState() => _Ar_EnState();
}

class _Ar_EnState extends State<Ar_En> {

  var lang = "en";

  final arlang = [
    "رياضية",
    "سياسية",
    "أقتصادية",
    "أجتماعية",
  ];

  final enlang = [
    "Sports",
    "Economics",
    "Politics",
    "Art",
  ];

  langPage(){
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: lang == "en" ? enlang.length : arlang.length,
          itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 10,
              margin: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: ListTile(
                  title: Text (lang == "en" ? enlang[index] : arlang[index],
                  style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ),
              ),
            ),
          );
          },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: lang == "en" ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text ("MLS"),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                       lang = "ar";
                      });
                    },
                    child: Text("عربي"),
                  ),

                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        lang = "en";
                      });
                    },
                    child: Text("English"),
                  ),
                  ]
                ),
                Expanded(child: langPage(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
