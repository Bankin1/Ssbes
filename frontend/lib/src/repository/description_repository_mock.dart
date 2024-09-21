import 'package:ssbek/src/repository/description_repository.dart';
import '../entities/description.dart';

class DescriptionRepositoryMock implements DescriptionRepository{
  final List<Description> descriptionsList = [
    const Description(
        //id: "0",
        whatIDo: "энвелоуп"
    ),
    const Description(
        //id: "1",
        stackOfTechnology: "войд секс"
    )
  ];

  @override
  Future<Description> getDescriptionById(String id) async {
    // TODO
    await Future.delayed(const Duration(seconds: 1));
    throw UnimplementedError();
    //return descriptionsList.firstWhere((element) => element.id == id);
  }
}