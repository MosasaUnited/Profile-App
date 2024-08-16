import 'package:equatable/equatable.dart';

class ProjectsState extends Equatable {
  final List<bool> hovers;

  const ProjectsState(this.hovers);

  @override
  List<Object> get props => [hovers];
}
