import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
    
    static const name = 'buttons_screen'; 

  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_rounded),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {

  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;

    return   SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,       
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            // const ElevatedButton(onPressed: null, child:  Text('Elevated Disabled')),
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.access_alarm_rounded), label: const  Text('Elevated Icon')),
            FilledButton(onPressed: (){}, child: const Text('Field')),
            FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.egg_rounded), label: const  Text('Eggs')),
            OutlinedButton(onPressed: (){}, child: const Text('Outlined')),
            OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.diamond_sharp), label: const Text('Dinner')),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.downloading)),

            IconButton(onPressed: () {}, 
                       icon: const Icon(Icons.app_registration_rounded),
                       style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(colors.primary),
                        iconColor: const MaterialStatePropertyAll(Colors.white)
                       ),
                      ),
            // Botón personalizado
            const CustomButton(),


          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {

  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

  final colors = Theme.of(context).colorScheme;
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child:  InkWell(
          
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),
          
            ),
          ),
        ),
      ),
    );
  }
}