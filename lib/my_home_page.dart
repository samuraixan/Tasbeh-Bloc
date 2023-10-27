import 'package:bloc_example/zikr_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/zikrlar_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final tasbehList = [
    'Subhanalloh',
    'Alhamdulillah',
    'Allohu Akbar',
    'Astag`firulloh'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('TASBEH'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  itemCount: tasbehList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Center(
                            child: Text(
                              tasbehList[index],
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  BlocProvider(
                                    create: (context) => ZikrlarBloc(),
                                    child: ZikrPage(title: tasbehList[index]),
                                  )));
                        },
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
