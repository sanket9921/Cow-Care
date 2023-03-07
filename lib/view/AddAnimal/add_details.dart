import 'package:cowcare/Const/const.dart';
import 'package:cowcare/view/AddAnimal/select_animal.dart';


class AddDetails extends StatefulWidget {
  const AddDetails({Key? key}) : super(key: key);

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.green,
        title: const Text('Cow Care'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.heightBox,
          "Take a Picture Of Animal".text.medium.size(16).make(),
          20.heightBox,
          const Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 80,
            ),
          ),
          10.heightBox,
          'Animal Type'.text.medium.size(14).make(),
          10.heightBox,
          "Enter the Name/No of animal".text.medium.size(14).make()

        ],
      ).box.padding(EdgeInsets.all(10.0)).make(),

    );
  }
}
