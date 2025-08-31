import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            maxLength: 11,
            controller: phoneController,
            cursorColor: Colors.deepOrange,

            decoration: InputDecoration(
              helper: Text("Enter your phone number"),
              hintText: " Number",
              labelText: "Phone Number",
              prefixIcon: Icon(Icons.phone),
              suffixIcon: Icon(Icons.check),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),

              ///focus border
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red, width: 1.5),
              ),
              filled: true,
              contentPadding: EdgeInsets.all(20),

              fillColor: Colors.red.shade50,
            ),
          ),
          TextField(
          controller: passwordController,
            obscureText: true,
            cursorColor: Colors.deepOrange,

            /*          keyboardType: TextInputType.number,
                    maxLength: 11,*/
            decoration: InputDecoration(
              helper: Text("Enter your Password "),
              hintText: " Password",
              labelText: "Password",
              helperStyle: TextStyle(color: Colors.blue),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),

              ///focus border
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red, width: 1.5),
              ),
              filled: true,
              contentPadding: EdgeInsets.all(20),

              fillColor: Colors.red.shade50,
            ),
          ),
          SizedBox(height: 50,
          )

        ],
      ),
    );
  }
}
