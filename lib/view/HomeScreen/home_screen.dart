import 'package:cowcare/Const/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.heightBox,
            "Milk Production".text.size(22).bold.make(),
            "Is your dary farm Profitable ?".text.size(8).color(const Color(0xff6A6262)).make(),
            10.heightBox,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      5.heightBox,

                    'Milk'.text.size(22).fontWeight(FontWeight.w500).make(),
                    'Today 1 Feb'.text.color(const Color(0xff6A6262)).size(12).make(),

                      '200'.text.size(35).fontWeight(FontWeight.normal).make(),
                      'litter'.text.size(14).color(const Color(0xff6A6262)).make(),

                      5.heightBox,
                      'Today : 350 litter'.text.make(),
                      5.heightBox,

                      'Add Milk'.text.size(8).center.white.make().box.size(70, 20).padding(const EdgeInsets.all(3)).color(Colors.green).rounded.make()

                    ],

                  ).box.height(160).roundedSM.shadowSm.white.make(),
                ),
                10.widthBox,
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      10.heightBox,
                      'This month Income'.text.size(12).color(const Color(0xff6A6262)).make(),
                      // 2.heightBox,
                      '₹800000'.text.size(30).fontWeight(FontWeight.normal).make(),
                      'From 1 Feb 2023'.text.size(12).color(const Color(0xff6A6262)).make(),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          'Expenses:'.text.color(const Color(0xff6A6262)).make(),
                          '₹80000'.text.color(const Color(0xff6A6262)).make(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          'Remaining:'.text.color(const Color(0xff6A6262)).make(),
                          '₹80000'.text.color(const Color(0xff6A6262)).make(),
                        ],
                      ),
                      15.heightBox,
                      'More'.text.size(8).center.white.make().box.size(70, 20).padding(const EdgeInsets.all(3)).color(Colors.green).rounded.make()

                    ]
                  ).box.roundedSM.shadowSm.white.height(160).make(),

                ),

              ],),
            5.heightBox,
            'Note: The above price has nothing to do with the salary derived from the milk'.text.size(8).color(const Color(0xff6A6262)).make(),

            10.heightBox,
            "Pregnant Cows".text.size(22).fontWeight(FontWeight.w500).make(),
            10.heightBox,

            SizedBox(
              height: 150,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                return Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,

                      ),
                    ).box.p4.make(),
                    'Cow No 1'.text.size(12).make(),
                    '5m 12d'.text.size(10).color(const Color(0xff6A6262)).make()
                  ],
                ).box.size(150, 150).margin(const EdgeInsets.all(4)).roundedSM.shadowSm.white.make();
              } ,
                  separatorBuilder: (context, index){return const SizedBox(width: 0,);} ,
                  itemCount: 5),



            ),

            10.heightBox,
            'Animals Status'.text.size(22).fontWeight(FontWeight.w500).make(),
            10.heightBox,

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      const Icon(Icons.pets,size: 40,).box.size(45 , 45).make(),
                      'Open'.text.size(12).make(),
                      '20'.text.size(18).make()
                    ],
                  ).box.size(87, 90).white.shadowSm.roundedSM.make(),
                  10.widthBox,
                  Column(
                    children: [
                      const Icon(Icons.pets,size: 40,).box.size(45 , 45).make(),
                      'Insemination'.text.size(12).make(),
                      '20'.text.size(18).make()
                    ],
                  ).box.size(87, 90).white.shadowSm.roundedSM.make(),
                  10.widthBox,

                  Column(
                    children: [
                      const Icon(Icons.pets,size: 40,).box.size(45 , 45).make(),
                      'Pregnant'.text.size(12).make(),

                      '20'.text.size(18).make()
                    ],
                  ).box.size(87, 90).white.shadowSm.roundedSM.make(),
                  10.widthBox,

                  Column(
                    children: [
                      const Icon(Icons.pets,size: 40,).box.size(45 , 45).make(),
                      'Dry'.text.size(12).make(),
                      '20'.text.size(18).make()
                    ],
                  ).box.size(87, 90).white.shadowSm.roundedSM.make(),



                ],
              ).box.height(95).p4.make(),
            ),

            10.heightBox,
            'Animals types'.text.size(22).fontWeight(FontWeight.w500).make(),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Icon(Icons.pets,size: 40,).box.size(45 , 45).make(),
                    'Cow'.text.size(12).make(),
                    '20'.text.size(18).make()
                  ],
                ).box.size(87, 90).white.shadowSm.roundedSM.make(),
                10.widthBox,
                Column(
                  children: [
                    const Icon(Icons.pets,size: 40,).box.size(45 , 45).make(),
                    'Buffalo'.text.size(12).make(),
                    '20'.text.size(18).make()
                  ],
                ).box.size(87, 90).white.shadowSm.roundedSM.make(),
                10.widthBox,

                Column(
                  children: [
                    const Icon(Icons.pets,size: 40,).box.size(45 , 45).make(),
                    'Calf'.text.size(12).make(),

                    '20'.text.size(18).make()
                  ],
                ).box.size(87, 90).white.shadowSm.roundedSM.make(),
              ],
            ).box.height(95).p4.make(),

            100.heightBox,

          ],
        ),
      ),
    );
  }
}
