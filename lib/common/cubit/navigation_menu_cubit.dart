import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_menu_state.dart';

class NavigationMenuCubit extends Cubit<NavigationMenuState> {
  NavigationMenuCubit() : super(NavigationMenuState(0));

  onTabChange(int index) {
    emit(state.copyWith(currentTabIndex: index));
  }
}
