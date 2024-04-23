import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
        
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);

      },
    );
  }
}


// ListLile
class _CustomListTile extends StatelessWidget {
  final MenuItem menuItem;

  const _CustomListTile({
    required this.menuItem,
  });


  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary,),
      onTap: () {

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonScreen(),
        //   ),
        // );
        Navigator.pushNamed(context, menuItem.link);
        
      },
     
    );
  }
}


