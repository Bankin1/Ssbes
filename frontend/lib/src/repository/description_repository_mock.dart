import 'package:ssbek/src/repository/description_repository.dart';
import '../entities/description.dart';

class DescriptionRepositoryMock implements DescriptionRepository{
  final List<Description> descriptionsList = [
    const Description(teamId: 0, tasks: "Энвелоупить", stack: "энвелоуп"),
    const Description(teamId: 1, tasks: "Решать задачи через ангйляй", stack: "ангуляй")
  ];

  @override
  Future<Description> getDescriptionByTeamId(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return descriptionsList.firstWhere((element) => element.teamId == id);
  }
}