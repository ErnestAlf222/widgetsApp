import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

// Listado de colores inmutable =>  valores inmutables
final colorListProvider = Provider((ref) => colorList);

// Un simple int => pieza de estado
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom) => estado de un objeto elaborado
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  // Sate o estado instancia de apptheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith( isDarkMode: !state.isDarkMode );

  }

  void changeColor( int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);

  }
}
