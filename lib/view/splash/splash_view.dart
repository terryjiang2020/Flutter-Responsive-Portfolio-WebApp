import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/home/home.dart';
import 'package:flutter_portfolio/view/intro/components/animated_texts_componenets.dart';
import 'package:flutter_portfolio/view/splash/componenets/animated_loading_text.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(child: MyGesture()),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       AnimatedImageContainer(width: 100,height: 100,),
      //       SizedBox(height: defaultPadding,),
      //       AnimatedLoadingText(),
      //     ],
      //   ),
      // ),
    );
  }
}

class MyGesture extends StatelessWidget {
 const MyGesture({super.key});

 @override
 Widget build(BuildContext context) {
   // GestureDetector wraps the button
   return GestureDetector(
     // Our GestureDetector wraps a Container
     child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 100,height: 100,),
            SizedBox(height: defaultPadding,),
            AnimatedLoadingText(),
          ],
        ),
      ),
     // When the child is tapped
     onTap: () {
       const snackBar = SnackBar(content: Text('Tap!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
     },
     onTapUp: (details) {
      
       const snackBar = SnackBar(content: Text('Tap Up!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.kind: ${details.kind.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
     },
     onTapDown: (details) {
      
       const snackBar = SnackBar(content: Text('Tap Down!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.kind: ${details.kind.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
     },
     onDoubleTapDown: (details) {
      
       const snackBar = SnackBar(content: Text('Double Tap Down!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.kind: ${details.kind.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
     },
     onForcePressEnd: (details) {
      
       const snackBar = SnackBar(content: Text('Force Press End!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.pressure: ${details.pressure.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
     },
     onForcePressPeak: (details) {
      
       const snackBar = SnackBar(content: Text('Force Press Peak!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.pressure: ${details.pressure.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
     },
     onForcePressStart: (details) {
      
       const snackBar = SnackBar(content: Text('Force Press Start!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.pressure: ${details.pressure.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
     },
      onForcePressUpdate: (details) {

       const snackBar = SnackBar(content: Text('Force Press Start!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.pressure: ${details.pressure.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onHorizontalDragDown: (details) {
        
       const snackBar = SnackBar(content: Text('Horizontal Drag Down!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onHorizontalDragEnd: (details) {
        
       const snackBar = SnackBar(content: Text('Horizontal Drag End!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.primaryVelocity: ${details.primaryVelocity.toString()}');
       print('details.velocity: ${details.velocity.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onHorizontalDragStart: (details) {
        
       const snackBar = SnackBar(content: Text('Horizontal Drag Start!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.kind: ${details.kind.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
       print('details.sourceTimeStamp: ${details.sourceTimeStamp.toString()}');
      },
      onHorizontalDragUpdate: (details) {
        
       const snackBar = SnackBar(content: Text('Horizontal Drag Update!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.delta: ${details.delta.toString()}');
       print('details.primaryDelta: ${details.primaryDelta.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
       print('details.sourceTimeStamp: ${details.sourceTimeStamp.toString()}');
      },
      onVerticalDragDown: (details) {
        
       const snackBar = SnackBar(content: Text('Vertical Drag Down!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onVerticalDragEnd: (details) {
        
       const snackBar = SnackBar(content: Text('Vertical Drag End!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.primaryVelocity: ${details.primaryVelocity.toString()}');
       print('details.velocity: ${details.velocity.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onVerticalDragStart: (details) {
        
       const snackBar = SnackBar(content: Text('Vertical Drag Start!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.kind: ${details.kind.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
       print('details.sourceTimeStamp: ${details.sourceTimeStamp.toString()}');
      },
      onVerticalDragUpdate: (details) {
        
       const snackBar = SnackBar(content: Text('Vertical Drag Update!'));

       // Find the ScaffoldMessenger in the widget tree
       // and use it to show a SnackBar
       ScaffoldMessenger.of(context).showSnackBar(snackBar);

       print('details.toString(): ${details.toString()}');
       print('details.globalPosition: ${details.globalPosition.toString()}');
       print('details.delta: ${details.delta.toString()}');
       print('details.primaryDelta: ${details.primaryDelta.toString()}');
       print('details.localPosition: ${details.localPosition.toString()}');
       print('details.runtimeType: ${details.runtimeType.toString()}');
       print('details.sourceTimeStamp: ${details.sourceTimeStamp.toString()}');
      },
      onLongPressDown: (details) {
        
        const snackBar = SnackBar(content: Text('Long Press Down!'));
  
        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        print('details.toString(): ${details.toString()}');
        print('details.globalPosition: ${details.globalPosition.toString()}');
        print('details.kind: ${details.kind.toString()}');
        print('details.localPosition: ${details.localPosition.toString()}');
        print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onLongPressEnd: (details) {
        
        const snackBar = SnackBar(content: Text('Long Press End!'));
  
        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        print('details.toString(): ${details.toString()}');
        print('details.globalPosition: ${details.globalPosition.toString()}');
        print('details.velocity: ${details.velocity.toString()}');
        print('details.localPosition: ${details.localPosition.toString()}');
        print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onLongPressMoveUpdate: (details) {
        
        const snackBar = SnackBar(content: Text('Long Press Move Update!'));
  
        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        print('details.toString(): ${details.toString()}');
        print('details.globalPosition: ${details.globalPosition.toString()}');
        print('details.localOffsetFromOrigin: ${details.localOffsetFromOrigin.toString()}');
        print('details.localPosition: ${details.localPosition.toString()}');
        print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onLongPressStart: (details) {
        
        const snackBar = SnackBar(content: Text('Long Press Start!'));
  
        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
  
        print('details.toString(): ${details.toString()}');
        print('details.globalPosition: ${details.globalPosition.toString()}');
        print('details.localPosition: ${details.localPosition.toString()}');
        print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onSecondaryLongPressDown: (details) {
            
          const snackBar = SnackBar(content: Text('Secondary Long Press Down!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
  
          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.kind: ${details.kind.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onSecondaryLongPressEnd: (details) {
            
          const snackBar = SnackBar(content: Text('Secondary Long Press End!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
  
          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.velocity: ${details.velocity.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onSecondaryLongPressMoveUpdate: (details) {
            
          const snackBar = SnackBar(content: Text('Secondary Long Press Move Update!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.localOffsetFromOrigin: ${details.localOffsetFromOrigin.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onSecondaryLongPressStart: (details) {
            
          const snackBar = SnackBar(content: Text('Secondary Long Press Start!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
  
          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onSecondaryTapDown: (details) {
              
          const snackBar = SnackBar(content: Text('Secondary Tap Down!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
  
          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.kind: ${details.kind.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onSecondaryTapUp: (details) {
              
          const snackBar = SnackBar(content: Text('Secondary Tap Up!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.kind: ${details.kind.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onTertiaryLongPressDown: (details) {
        
        const snackBar = SnackBar(content: Text('Tertiary Long Press Down!'));
  
        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        print('details.toString(): ${details.toString()}');
        print('details.globalPosition: ${details.globalPosition.toString()}');
        print('details.kind: ${details.kind.toString()}');
        print('details.localPosition: ${details.localPosition.toString()}');
        print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onTertiaryLongPressEnd: (details) {
        
        const snackBar = SnackBar(content: Text('Tertiary Long Press End!'));
  
        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        print('details.toString(): ${details.toString()}');
        print('details.globalPosition: ${details.globalPosition.toString()}');
        print('details.velocity: ${details.velocity.toString()}');
        print('details.localPosition: ${details.localPosition.toString()}');
        print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onTertiaryLongPressMoveUpdate: (details) {
          
          const snackBar = SnackBar(content: Text('Tertiary Long Press Move Update!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.localOffsetFromOrigin: ${details.localOffsetFromOrigin.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onTertiaryLongPressStart: (details) {
          
          const snackBar = SnackBar(content: Text('Tertiary Long Press Start!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
  
          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onTertiaryTapDown: (details) {
          
          const snackBar = SnackBar(content: Text('Tertiary Tap Down!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.kind: ${details.kind.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
      onTertiaryTapUp: (details) {
          
          const snackBar = SnackBar(content: Text('Tertiary Tap Up!'));
    
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          print('details.toString(): ${details.toString()}');
          print('details.globalPosition: ${details.globalPosition.toString()}');
          print('details.kind: ${details.kind.toString()}');
          print('details.localPosition: ${details.localPosition.toString()}');
          print('details.runtimeType: ${details.runtimeType.toString()}');
      },
   );
 }
}

