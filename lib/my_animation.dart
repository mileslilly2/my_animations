import 'package:flutter/material.dart';


class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});

  @override 
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  final List<double> sizes = const [
    100,
    200,
    300,
    400,
    500
  ];
  final List<double> tops = const [
    0,
    50,
    100,
    150,
    200
  ];
  final List<Color> colors = const [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue
  
  
  ];
  int iteration = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations Demo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.run_circle),
            onPressed: () {
              iteration < 4 ? iteration++ : iteration = 0;
              //

              setState(() {
                //iteration = (iteration + 1) % colors.length;
                iteration = iteration;
              });
            },
          )
        ],
      ),
      body: Center(
       child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: sizes[iteration],
        height: sizes[iteration],
        color: colors[iteration],
        margin: EdgeInsets.only(top: tops[iteration]),


            ),
      ),
    );
  }
}
       
     
         
   