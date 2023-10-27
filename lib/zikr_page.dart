import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/zikrlar_bloc.dart';

class ZikrPage extends StatelessWidget {
  final String title;

  const ZikrPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ZikrlarBloc>().add(ZikrlarQoshishEvent());
      },
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 100),
            SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      context.read<ZikrlarBloc>().add(ZikrlarYangilashEvent());
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    child: const Icon(Icons.refresh, size: 30,))),
            const SizedBox(height: 70),
            BlocBuilder<ZikrlarBloc, ZikrlarState>(
              builder: (context, state) {
                if (state is ZikrlarInitial) {
                  return Text('${state.count}',
                      style: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold));
                } else if (state is ZikrlarQoshishState){
                  return Text('${state.count}',
                      style: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold));
                } else if (state is ZikrlarYangilashState) {
                  return Text('${state.count}',
                      style: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold));
                }
                return const SizedBox();
              },
            ),
            const SizedBox(height: 100),
            Center(child: Text(title, style: const TextStyle(
                fontSize: 33, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
