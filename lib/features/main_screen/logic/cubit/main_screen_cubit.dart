import 'package:flutter_bloc/flutter_bloc.dart';
part 'main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit() : super(MainScreenStateInitial()) {
    _initialize();
  }

  Future<void> _initialize() async {
    await Future.delayed(const Duration(milliseconds: 100));
    emit(MainScreenStateLoaded());
  }

  int currentIndex = 0;
  List<int> navigationStack = [0];

  void changeSegmentedButton(int index) {
    if (currentIndex != index) {
      currentIndex = index;
      navigationStack.add(currentIndex);
      emit(SegmentgedButtonStateChange());
    }
  }
}
