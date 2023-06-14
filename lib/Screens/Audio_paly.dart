import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Sound extends StatefulWidget {
  const Sound({Key? key}) : super(key: key);

  @override
  State<Sound> createState() => _SoundState();
}

class _SoundState extends State<Sound> {


  final player = AudioPlayer();


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      

      body: ElevatedButton(onPressed: ()async{


        // Catching errors at load time
        try {
          await player.setAudioSource(AudioSource.uri(Uri.parse(
              "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3")));
        } on PlayerException catch (e) {
          // iOS/macOS: maps to NSError.code
          // Android: maps to ExoPlayerException.type
          // Web: maps to MediaError.code
          // Linux/Windows: maps to PlayerErrorCode.index
          print("Error code: ${e.code}");
          // iOS/macOS: maps to NSError.localizedDescription
          // Android: maps to ExoPlaybackException.getMessage()
          // Web/Linux: a generic message
          // Windows: MediaPlayerError.message
          print("Error message: ${e.message}");
        } on PlayerInterruptedException catch (e) {
          // This call was interrupted since another audio source was loaded or the
          // player was stopped or disposed before this audio source could complete
          // loading.
          print("Connection aborted: ${e.message}");
        } catch (e) {
          // Fallback for all other errors
          print('An error occured: $e');
        }




      },



        child: Text("play me"),),
      
      
      
    ));
  }
}
