// ignore: unused_import
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade600,
      
      appBar: AppBar(
        backgroundColor: Colors.amber.shade700,
        title: const Text("Input 999999"),
        
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Container(
            width: MediaQuery.of(context).size.width*0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Username"),
                UsernameText(),
                Text(nameController.text),
                const SizedBox(height: 8,),
                const Text("Password"),
                PasswordText(),
                Text(passwordController.text),
                ElevatedButton.icon(onPressed: (){
                  debugPrint("Ping");
                  if(_formKey.currentState!.validate()){
                    debugPrint("WOWza.");
                  }
                

                }, icon: Icon(Icons.logout_rounded), label: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField UsernameText() {
    return TextFormField(
      validator: (value){
        if(value!.isEmpty){
          return "กรอกสิบัก humnoi";
        }
        return null;
      },
            controller: nameController,
            decoration: const InputDecoration(
              icon: Icon(Icons.perm_identity),
              labelText: "Username",
              hintText: "ใส่ชื่อผู้ใช้",
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purpleAccent),
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlue),
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(24))),
            ),
            onChanged: (value){
              setState(() {});
            },
          );
  }

  TextFormField PasswordText() {
    return TextFormField(
      validator: (value){
        if(value!.isEmpty){
          return "กรอกสิบัก humyai";
        }
        return null;
      },
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.key_sharp),
              labelText: "Password",
              hintText: "ใส่รหัสผ่าน",
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purpleAccent),
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlue),
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(24))),
            ),
            onChanged: (value){
              setState(() {});
            },
          );
  }
}
