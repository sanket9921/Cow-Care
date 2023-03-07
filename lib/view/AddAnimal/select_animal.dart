import 'package:animations/animations.dart';
import 'package:cowcare/Const/camera.dart';
import 'package:cowcare/Const/const.dart';
import 'package:cowcare/view/AddAnimal/add_details.dart';

class SelectAnimal extends StatelessWidget {
  const SelectAnimal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        10.heightBox,
        "Select Animal".text.size(22).medium.make().box.padding(const EdgeInsets.all(8.0)).make(),
        10.heightBox,
     Expanded(

       child: GridView.builder(

            itemCount: 3,
           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
             crossAxisSpacing: 10,
             mainAxisSpacing: 10,
           ),
           itemBuilder: (context, index) {


             return
               InkWell(
               child: Column(
                 children: [
                   6.heightBox,
                   const CircleAvatar(
                     radius: 57,
                   ),
                   10.heightBox,
                   "Cow".text.size(22).color(const Color(0xff514B4B)).make(),
                 ],
               ).box.white.roundedSM.shadowSm.make().onTap(() {

                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const AddDetails()),);
               }),
             );



             //   OpenContainer(
             //
             //   transitionType: ContainerTransitionType.fadeThrough,
             //   closedColor: Theme.of(context).cardColor,
             //   openElevation: 100,
             //   closedBuilder:(context, action) {
             //      return Column(
             //        children: [
             //          6.heightBox,
             //          const CircleAvatar(
             //            radius: 57,
             //          ),
             //          10.heightBox,
             //          "Cow".text.size(22).color(const Color(0xff514B4B)).make(),
             //        ],
             //      ).box.white.roundedSM.shadowSm.make();
             //    },
             //   openBuilder: (BuildContext context, void Function({Object? returnValue}) action) => const AddDetails()
             //
             //
             // );

             },
       ),
     )
    ]
    ).box.padding(const EdgeInsets.all(8.0)).make();
  }
}
