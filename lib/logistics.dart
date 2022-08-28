import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/main.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: screenfour(),
    );
  }
}

class screenfour extends StatelessWidget {
  const screenfour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RACT-FOR NEW AGE'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text('logistic $index '),
              subtitle: Text('message $index'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://st2.depositphotos.com/3867453/5670/v/950/depositphotos_56709051-stock-illustration-letter-c-logo-icon-design.jpg'),
              ),
              trailing: Text('message sent'),
            );
          }),
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 3,
        ),
      ), 
    );
    ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('screen_2');
      },
      child: Text('get started'),
    );
  }
}
