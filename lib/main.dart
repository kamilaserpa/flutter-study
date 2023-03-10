// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Transferências'),
          ),
          body: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('100,0'),
                  subtitle: Text('2340001'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('100,0'),
                  subtitle: Text('2340001'),
                ),
              ),
            ],
          ),
          floatingActionButton:
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        ),
      ),
    );
