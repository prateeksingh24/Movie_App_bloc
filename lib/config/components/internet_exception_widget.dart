import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .15,
        ),
        const Icon(
          Icons.cloud_off,
          color: Colors.red,
          size: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text("We're unable to show results",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
        ),
        ElevatedButton(onPressed: onPress, child: const Text("RETRY"))
      ],
    );
  }
}
