import 'package:flame_test/flame_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:seriousgame/a_overlays/a1_game_overlays/a1_1_game_bundles/a1_1_1_game_bundle_left/a1_1_1_1_sound/sound_button_controller.dart';
import 'package:seriousgame/a_overlays/a1_game_overlays/a1_1_game_bundles/a1_1_1_game_bundle_left/a1_1_1_3_configuration/config_button_controller.dart';
import 'package:seriousgame/a_overlays/a1_game_overlays/a1_1_game_bundles/a1_1_1_game_bundle_left/a1_1_1_4_game_dialogs/dialog_controller.dart';
import 'package:seriousgame/a_overlays/a1_game_overlays/a1_1_game_bundles/a1_1_1_game_bundle_left/game_bundle_left_manager.dart';
import 'package:seriousgame/a_overlays/a1_game_overlays/a1_1_game_bundles/game_bundles_manager.dart';
import 'package:seriousgame/a_overlays/a2_bag_overlay/measure_tool_controller.dart';
import 'package:seriousgame/a_overlays/a4_feedback/feedback_controller.dart';
import 'package:seriousgame/b_game_objects/b2_map_objects/b3_bag_objects/contact_controller.dart';
import 'package:seriousgame/d_game_scenes/game_scene_generator.dart';
import 'package:seriousgame/e_game_controllers/e_1_scenes_controller/game_scenes_controller.dart';
import 'package:seriousgame/e_game_controllers/e_2_score_controller/player_score_controller.dart';
import 'package:seriousgame/e_game_controllers/e_3_bag_controller/notes_controller.dart';
import 'package:seriousgame/e_game_controllers/e_3_bag_controller/player_bag_controller.dart';

void main() {
  group('HUD tests', () {
    final GameScenesController gameController = GameScenesController();
    final GameSoundController gameSoundController = GameSoundController();
    final PlayerBagController bagController = PlayerBagController();
    final PlayerScoreController scoreController = PlayerScoreController();
    final GameDialogController gameDialogController = GameDialogController();
    final FeedBackController feedBackController = FeedBackController();
    final ConfigButtonController configButtonController =
        ConfigButtonController();
    final MeasureToolController measureToolController = MeasureToolController();
    final ContactsController contactsController = ContactsController();
    final NotesController notesController = NotesController();

    gameController.gameSoundController = gameSoundController;
    gameController.bagController = bagController;
    gameController.scoreController = scoreController;
    gameController.gameDialogController = gameDialogController;
    gameController.configButtonController = configButtonController;
    gameController.notesController = notesController;
    gameController.measureToolController = measureToolController;
    gameDialogController.gameSceneController = gameController;
    gameController.contactsController = contactsController;
    gameController.feedBackController = feedBackController;

    gameController.start();
    bagController.start();
    scoreController.start();
    gameDialogController.start();
    gameSoundController.start();
    configButtonController.start();
    feedBackController.start();

    test('HUD is correctly initialized', () {
      DiabeteGameScene diabeteGame = DiabeteGameScene(
        sceneTmx: 'assets/tmx/scene_1.tmx',
        sceneName: 'scene_1',
        previousMissionName: 'mission_1',
        gameScenesController: gameController,
        soundTrackName: 'assets/sounds/scene_1.mp3',
        gameSoundController: gameSoundController,
      );
    });
  });
}
