import 'package:flutter/material.dart';
import 'mailtest_function.dart';
import 'validate_password.dart';
void main(){
  runApp(const App());
}
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController password=TextEditingController();
  final GlobalKey <FormState>_key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(


              appBar: AppBar(title:const Text("mail test",style: TextStyle(color: Colors.white70),),backgroundColor: Colors.black87,),

body: Container(

  width: double.infinity,
  height: double.infinity,
  decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.purpleAccent,Colors.deepPurple])),
  child:   Form(
    key: _key,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(100, 200, 100, 200),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            key: const ValueKey("email ID"),
            decoration: const InputDecoration(hintText: "enter the email ID"),
          validator: (value)=>mail_validator.validate(value?? ""),
          ),
          TextFormField(

            controller: password,
            key: const ValueKey("password"),
            decoration: const InputDecoration(hintText: "enter the password"),
            validator: (value)=>validate_password.vaidate(value?? ""),
          ),
          const SizedBox(width: 400,height: 50,),
          ElevatedButton(
            key: const ValueKey("Button"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black87)
              ,onPressed: (){
              _key.currentState?.validate();
          }, child:const Text("Login") )
        ],
      ),
    ),
  ),
),
            );





  }
}


