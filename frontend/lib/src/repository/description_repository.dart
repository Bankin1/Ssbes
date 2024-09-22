import '../entities/description.dart';

abstract class DescriptionRepository{
  Future<Description> getDescriptionById(String id);
  Future<void> updateDescriptionById(String id, Description description);
}