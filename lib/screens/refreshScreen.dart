import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourth_task/services.dart';
import 'package:provider/provider.dart';

import '../providers/controllerProvider.dart';

class refreshScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SizedBox(
                  width: 330,
                  height: 55,
                  child: ElevatedButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: Text('test'),
                    onPressed: () async{
                      //await searchMerchant(prefs.getString('accessToken'));
                      await searchMerchant(prefs.getString('wrong access token for test'));
                    },
                  ),
                )
      
    );
  }
}