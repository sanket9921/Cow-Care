import 'package:cowcare/Const/const.dart';
import 'package:camera/camera.dart';


class AddAnimal extends StatefulWidget {
  const AddAnimal({Key? key}) : super(key: key);

  @override
  State<AddAnimal> createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  @override
  void initState() {

    startCamera();

    super.initState();
  }
  void startCamera() async{
    cameras = await availableCameras();
    cameraController = CameraController(
        cameras[0],
        ResolutionPreset.high,
      enableAudio: false,
      
    );
    await cameraController.initialize().then((value){
      if(!mounted){
        return;
      }
      // to regresh widget
      setState(() {});
    }).catchError((e){print(e);});
  }

  @override
  void dispose() {
  cameraController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    if(cameraController.value.isInitialized){
      return Scaffold(
        appBar: AppBar(

        ),
        body: Stack(
          children: [
            CameraPreview(cameraController)
          ],
        ),
      );
    }
    else{
      return SizedBox();
    }


  }
}
