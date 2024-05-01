

import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {

  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });

}

  const appMenuItems = <MenuItem> [

    MenuItem(
      title: 'Botones', 
      subTitle: 'Varios botones en Flutter', 
      link: '/buttons', 
      icon: Icons.smart_button_outlined
      ),

    MenuItem(
      title: 'Tarjetas', 
      subTitle: 'Un constructor estilizado', 
      link: '/cards', 
      icon: Icons.credit_card
      ),
    MenuItem(
      title: 'Progress Indicatos', 
      subTitle: 'Generales y controlados', 
      link: '/progress', 
      icon: Icons.refresh_outlined
      ),
    MenuItem(
      title: 'SnackBars y dialogos', 
      subTitle: 'Indicadores en pantalla', 
      link: '/snackbars', 
      icon: Icons.info_outline
      ),
    MenuItem(
      title: 'AnimatedContainer', 
      subTitle: 'Animación del widget', 
      link: '/animated', 
      icon: Icons.animation_rounded
      ),
    MenuItem(
      title: 'UI Controls', 
      subTitle: 'Controles switches', 
      link: '/ui-controls', 
      icon: Icons.control_point
      ),
    MenuItem(
      title: 'Tutorial', 
      subTitle: 'Tutorial para el usuario final', 
      link: '/tutorial', 
      icon: Icons.person_3
      ),
   

  ];