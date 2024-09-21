import '../entities/description.dart';

abstract class DescriptionRepository{
  Future<Description> getDescriptionById(String id);
}