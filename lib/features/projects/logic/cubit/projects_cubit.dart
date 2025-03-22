import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_app/features/projects/logic/cubit/projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit()
      : super(
          ProjectsState(
            List.generate(
              12,
              (index) => false,
            ),
          ),
        );

  void onHover(int index, bool value) {
    final newHovers = List<bool>.from(state.hovers);
    newHovers[index] = value;
    emit(ProjectsState(newHovers));
  }
}
