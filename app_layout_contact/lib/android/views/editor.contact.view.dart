import 'package:app_layout_contact/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  EditorContactView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null ? Text("Novo Contato") : Text("Editar Contato"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Nome: "),
                initialValue: model?.name,
                onSaved: (val) {
                  model.name = val;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "E-mail: "),
                initialValue: model?.email,
                onSaved: (val) {
                  model.email = val;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Telefone: "),
                initialValue: model?.phone,
                onSaved: (val) {
                  model.phone = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: FlatButton.icon(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  icon: Icon(Icons.save, color: Theme.of(context).accentColor),
                  label: Text(
                    "Salvar",
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                ),
              )
              // FlatButton(
              //   color: Theme.of(context).primaryColor,
              //   onPressed: () {},
              //   child: Text(
              //     "Salvar",
              //     style: TextStyle(color: Theme.of(context).accentColor),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
