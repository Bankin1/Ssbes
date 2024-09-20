import '../entities/description.dart';

abstract class DescriptionRepository{
  Future<Description> getDescriptionByTeamId(int id);
}