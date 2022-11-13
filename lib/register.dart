import 'package:flutter/material.dart';
import 'package:shift/login.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _passwordconfirmation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'Sign up',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full name',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Terry Harve',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                  }),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'eg. loop@gmail.com',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                  }),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _password,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: '******',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  if (value.length < 6) {
                    return 'Password is too short';
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordconfirmation,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'confirm password ',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: '******',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter confirmation password';
                  }
                  if (value != _password.text) {
                    return 'Password not matching';
                  }
                  if (value.length < 6) {
                    return 'Password is too short';
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 40.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () async {
                  if (_form.currentState!.validate()) {}
                },
                color: Theme.of(context).accentColor,
                child: const Text(
                  'NEXT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text('Do you have account?'),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
