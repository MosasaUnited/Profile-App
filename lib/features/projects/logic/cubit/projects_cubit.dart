import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_app/features/projects/logic/cubit/projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit(int itemCount)
      : super(ProjectsState(List.generate(itemCount, (_) => false)));

  void setHover(int index, bool isHovered) {
    final newHovers = List<bool>.from(state.hovers);
    newHovers[index] = isHovered;
    emit(ProjectsState(newHovers));
  }
}
