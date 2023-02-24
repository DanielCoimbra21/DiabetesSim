// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:seriousgame/a_overlays/a2_bag_overlay/player_bag_manager.dart';
// import 'package:seriousgame/d_game_scenes/game_scene_generator.dart';



// Widget makeTestableWidget(Widget child) {
//   return MaterialApp(
//     home: child,
//   );
// }

// void main() {
//   group('Player Bag Widget tests', () {
//     testWidgets('Tabs and close button are correctly rendered', (tester) async {
//       DiabeteGameScene diabeteGame = DiabeteGameScene();
//       await tester.pumpWidget(makeTestableWidget(PlayerBag(game: diabeteGame)));

//       // Check there are 5 tabs icons
//       expect(find.byIcon(Icons.health_and_safety), findsOneWidget);
//       expect(find.byIcon(Icons.calendar_month), findsOneWidget);
//       expect(find.byIcon(Icons.person), findsOneWidget);
//       expect(find.byIcon(Icons.email), findsOneWidget);
//       expect(find.byIcon(Icons.school), findsOneWidget);

//       // Close button is also displayed
//       expect(find.byIcon(Icons.close), findsOneWidget);
//     });

//     testWidgets('Tap on Tabs', (tester) async {
//       DiabeteGame diabeteGame = DiabeteGame();
//       await tester.pumpWidget(makeTestableWidget(PlayerBag(game: diabeteGame)));

//       // Should initiate on first tab
//       expect(find.text('Outils de mesure'), findsOneWidget);

//       // Second tab
//       await tester.tap(find.byIcon(Icons.calendar_month));
//       await tester.pumpAndSettle();
//       expect(find.text('Planning de la journée'), findsOneWidget);

//       // Third tab
//       await tester.tap(find.byIcon(Icons.person));
//       await tester.pumpAndSettle();
//       expect(find.text('Situations des patients'), findsOneWidget);

//       // Fourth tab
//       await tester.tap(find.byIcon(Icons.email));
//       await tester.pumpAndSettle();
//       expect(find.text('Liste des professionnels'), findsOneWidget);

//       // Last tab
//       await tester.tap(find.byIcon(Icons.school));
//       await tester.pumpAndSettle();
//       expect(find.text('Collection d\'apprentissages'), findsOneWidget);
//     });
//   });
// }
