import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final bool isHoverd;

  const HomeState(this.isHoverd);

  @override
  List<Object> get props => [isHoverd];
}
