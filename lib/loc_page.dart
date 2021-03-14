import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocPage extends StatefulWidget {
  @override
  _LocPageState createState() => _LocPageState();
}

class _LocPageState extends State<LocPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'.tr()),
        actions: [
          IconButton(
              icon: Icon(Icons.alt_route,color: Colors.indigo,),
              onPressed: () {
                setState(() {
                  EasyLocalization.of(context).setLocale(Locale("en", "EN"));
                });
              },
          ),

          IconButton(
            icon: Icon(Icons.autorenew,color: Colors.indigo,),
            onPressed: () {
              setState(() {
                EasyLocalization.of(context).setLocale(Locale("ar", "AR"));
              });
            },
          ),
        ],
      ),

      body: Center(
        child: Text('details'.tr(),
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
    );
  }
}
