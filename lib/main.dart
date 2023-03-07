
import 'package:animations/animations.dart';
import 'package:cowcare/Const/const.dart';
import 'package:cowcare/Const/camera.dart';
import 'package:cowcare/view/AddAnimal/select_animal.dart';
import 'package:cowcare/view/HomeScreen/home_screen.dart';
import 'package:cowcare/view/allAnimal/all_animal_list.dart';


void main() => runApp(const MainPage());

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cow Care',
      // home: const AppBarExample(),
    home: TopNavigationBar(),

    );
  }
}


class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 5,

        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130.0),
        child: AppBar(

          backgroundColor: Colors.green,
        leading: const Icon(Icons.menu),



          title:  const Text('Cow Care',style: TextStyle(fontSize: 30),),

          bottom: const TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 7),
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(icon: Icon(Icons.home,size: 25,),text: "Home",),
              Tab(icon: Icon(Icons.home,size: 25,),text: "All Animal",),
              Tab(icon: Icon(Icons.home,size: 25,),text: "Add Animal",),
              Tab(icon: Icon(Icons.home,size: 25,),text: "Insemination",),
              Tab(icon: Icon(Icons.home,size: 25,),text: "Vaccination",),
            ],
          ),

        ),
      ),
          body: TabBarView(
            children: [
              const HomeScreen(),

              const AllAnimalList(),

            // Card(
            //   color: Colors.white,
            //   elevation: 10,
            //   child: OpenContainer(
            //     transitionType: ContainerTransitionType.fadeThrough,
            //     closedColor: Theme.of(context).cardColor,
            //     closedElevation: 0.0,
            //     openElevation: 4.0,
            //     // transitionDuration: Duration(milliseconds: 1500),
            //     openBuilder: (BuildContext context, VoidCallback _) => AddAnimal(),
            //     closedBuilder: (BuildContext _, VoidCallback openContainer) {
            //       return const ListTile(
            //         leading: Icon(Icons.album),
            //         title: Text("ITEM NAME"),
            //       );
            //     },
            //   ),
            // ),

              SelectAnimal(),

              "Insemination".text.size(15).center.bold.make(),
              "Vaccination".text.size(15).center.bold.make(),
            ],
          ),
    ));
  }


}
