import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0a0a0a), //Colors.grey[900],
      appBar: AppBar(
        title: Container(
          width: 100,
          child: Image.asset("assets/logo.png"),
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          FlatButton(
            child: Text("Ajuda", style: TextStyle(color: Colors.white)),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Theme.of(context).accentColor,
                      validator: (text) {
                        if (text.isEmpty) {
                          return "E-mail inválido";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.grey[600],
                          filled: true,
                          labelText: "E-mail ou número de telefone",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _senhaController,
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      cursorColor: Theme.of(context).accentColor,
                      validator: (text) {
                        if (text.isEmpty) {
                          return "Senha inválida";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.grey[600],
                          filled: true,
                          labelText: "Senha",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (c) => HomeScreen()));
                            }
                          },
                          child: Text("Entrar",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(5))),
                    SizedBox(
                      height: 7,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Precisa de ajuda?",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Novo por aqui? inscreva-se agora",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
