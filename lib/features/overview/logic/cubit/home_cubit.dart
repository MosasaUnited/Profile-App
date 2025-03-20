import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_app/features/overview/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit() : super(const HomeState(false));

  void setHover(bool isHoverd) {
  
    emit(HomeState(isHoverd));
  }
}