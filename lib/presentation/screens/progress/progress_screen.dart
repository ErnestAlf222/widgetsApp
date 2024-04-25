import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';
  
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox( height: 30),
          Text('Circular Progress Indicator'),
          
          Padding(
            padding: EdgeInsets.all(25.0),
            child: CircularProgressIndicator( strokeWidth: 6, backgroundColor: Colors.black45,),
          ),
          SizedBox( height: 30),
          Text(' Circular y línear Controlado'),
          SizedBox( height: 10),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}


class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((element) => element < 100),
      builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 8,
                  backgroundColor: Colors.black12),
              const SizedBox(height: 20),
              Expanded(child: LinearProgressIndicator(value: progressValue)),
            ],
          ),
        );
      },
    );
  }
}
