import 'package:cowcare/Const/const.dart';

class AllAnimalList extends StatelessWidget {
  const AllAnimalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.heightBox,
        Row(
          children:  [
            'All Animals'.text.size(22).bold.make(),
            const Spacer(),
            const Icon(Icons.search,size: 30,).box.padding(EdgeInsets.only(right: 12)).make(),
          ],
        ),
        'Total: 10'.text.size(16).make(),
        10.heightBox,

        Row(
          children:  [
            const CircleAvatar(
              radius: 40,
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                ),
            ),
            Column(
              children: [
                "Cow no 1".text.size(18).make(),
                Row(
                  children: [
                    const Icon(Icons.pets,size: 12,),
                    5.widthBox,
                    'Pregnant'.text.size(12).make(),
                  ],
                )
              ],
            ).box.padding(EdgeInsets.all(8.0)).make(),
            Spacer(),
            Icon(Icons.arrow_right)

          ],
        )

      ],
    ).box.padding(EdgeInsets.all(8.0)).make();
  }
}
