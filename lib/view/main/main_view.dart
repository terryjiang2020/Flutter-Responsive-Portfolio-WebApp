import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/main/components/navigation_bar.dart';
import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
// class MainView extends StatelessWidget {
//    const MainView({super.key, required this.pages});
//   final List<Widget> pages;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const CustomDrawer(),
//       body: Center(
//         child: Column(
//           children: [
//             kIsWeb && !Responsive.isLargeMobile(context) ? const SizedBox(height:defaultPadding*2,) : const SizedBox(height:defaultPadding/2,),
//              const SizedBox(
//                 height: 80,
//                 child: TopNavigationBar(),
//             ),
//             if(Responsive.isLargeMobile(context))  const Row(children: [Spacer(),NavigationButtonList(),Spacer()],),
//             Expanded(
//                 flex: 9,
//                 child: PageView(
//                   scrollDirection: Axis.vertical,
//                   physics: const NeverScrollableScrollPhysics(),
//                   controller: controller,
//                   children: [
//                     ...pages
//                   ],
//                 ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class MainView extends StatelessWidget {
   const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return MyGesture(pages: pages);
  }
}

class MyGesture extends StatelessWidget {
 const MyGesture({super.key, required this.pages});
  final List<Widget> pages;

 @override
 Widget build(BuildContext context) {
   // GestureDetector wraps the button
    return RawKeyboardListener(
      focusNode: FocusNode(),
      child: GestureDetector(
        // Our GestureDetector wraps a Container
        child: Listener(
          onPointerSignal: (PointerSignalEvent event) {
            if (event is PointerScrollEvent) {
              print('event.scrollDelta.dx: ${event.scrollDelta.dx}');
              print('event.scrollDelta.dy: ${event.scrollDelta.dy}');
              print('event.scrollDelta.distance: ${event.scrollDelta.distance}');
              print('event.scrollDelta.runtimeType: ${event.scrollDelta.runtimeType}');
              print('event.localPosition.dx: ${event.localPosition.dx}');
              print('event.localPosition.dy: ${event.localPosition.dy}');
              print('event.position.dx: ${event.position.dx}');
              print('event.position.dy: ${event.position.dy}');
            }
          },
          child: Scaffold(
            drawer: const CustomDrawer(),
            body: Center(
              child: Column(
                children: [
                  kIsWeb && !Responsive.isLargeMobile(context) ? const SizedBox(height:defaultPadding*2,) : const SizedBox(height:defaultPadding/2,),
                  const SizedBox(
                      height: 80,
                      child: TopNavigationBar(),
                  ),
                  if(Responsive.isLargeMobile(context))  const Row(children: [Spacer(),NavigationButtonList(),Spacer()],),
                  Expanded(
                      flex: 9,
                      child: PageView(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller,
                        children: [
                          ...pages
                        ],
                      ),
                  )
                ],
              ),
            ),
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
      ),
      onKey: (event) {
        print('event.character: ${event.character}');
        print('event.logicalKey.keyLabel: ${event.logicalKey.keyLabel}');
        print('event.logicalKey.keyId: ${event.logicalKey.keyId}');
      }
    );
 }
}

