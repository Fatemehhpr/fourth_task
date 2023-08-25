import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourth_task/providers/controllerProvider.dart';
import 'package:fourth_task/screens/sendCodeScreen.dart';
import 'package:provider/provider.dart';

import '../services.dart';
import '../widgets/icon.dart';
import '../widgets/textField.dart';

class loginScreen extends StatelessWidget {
  final TextEditingController codeController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Container(
          width: 330,
          height: 600,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 80, 2, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                iconWidget(icon: CupertinoIcons.person_crop_circle_fill,),
                SizedBox(
                  height: 70,
                ),
                textfieldWidget(label: 'Login Code', controller: codeController),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 330,
                  height: 55,
                  child: ElevatedButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: Text('login'),
                    onPressed: () async{
                      await login((Provider.of<controllerProvider>(context, listen: false).getNumberController).text, codeController.text);
                      Navigator.pushNamed(context, '/refresh');
                      
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}