// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'navigation_menu_cubit.dart';

class NavigationMenuState extends Equatable {
  const NavigationMenuState(this.currentTabIndex);

  final int currentTabIndex;

  @override
  List<Object> get props => [currentTabIndex];

  NavigationMenuState copyWith({int? currentTabIndex}) {
    return NavigationMenuState(currentTabIndex ?? this.currentTabIndex);
  }
}
