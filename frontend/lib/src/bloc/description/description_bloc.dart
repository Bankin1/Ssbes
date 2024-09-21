import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/entities/description.dart';

import '../../repository/description_repository.dart';
import '../../repository/description_repository_mock.dart';
import 'description_event.dart';
import 'description_state.dart';


class DescriptionBloc extends Bloc<DescriptionEvent, DescriptionState>{
  final DescriptionRepository _descriptionRepository = DescriptionRepositoryMock();


  DescriptionBloc():super(DescriptionLoadingState()){
    on<DescriptionRequestedEvent>(_onDescriptionRequestedEvent);
  }
  _onDescriptionRequestedEvent(DescriptionRequestedEvent event, Emitter emit) async {
    emit(DescriptionLoadingState());
    Description description = await _descriptionRepository.getDescriptionById(event.descriptionId);
    emit(DescriptionUploadedState(description: description));
  }
}