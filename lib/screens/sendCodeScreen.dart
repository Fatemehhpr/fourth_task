
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourth_task/providers/controllerProvider.dart';
import 'package:provider/provider.dart';

import '../services.dart';
import '../widgets/icon.dart';
import '../widgets/textField.dart';

class sendCodeScreen extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'sendCodePage',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff002955)
            ),
          ),
        ),
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
                iconWidget(icon: CupertinoIcons.envelope_circle_fill,),
                SizedBox(
                  height: 70,
                ),
                textfieldWidget(label: 'Phone Number', controller: phoneNumberController),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 330,
                  height: 55,
                  child: ElevatedButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: Text('send Code'),
                    onPressed: () async{
                      Provider.of<controllerProvider>(context, listen: false).setNumberController(phoneNumberController);
                      await sendCode(phoneNumberController.text);
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}