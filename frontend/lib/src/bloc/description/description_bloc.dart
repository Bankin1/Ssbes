import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ssbek/src/entities/description.dart';
import '../../repository/description_repository.dart';
import 'description_event.dart';
import 'description_state.dart';


class DescriptionBloc extends Bloc<DescriptionEvent, DescriptionState>{
  final DescriptionRepository _descriptionRepos = GetIt.instance<DescriptionRepository>();


  DescriptionBloc():super(DescriptionLoadingState()){
    on<DescriptionRequestedEvent>(_onDescriptionRequestedEvent);
  }
  _onDescriptionRequestedEvent(DescriptionRequestedEvent event, Emitter emit) async {
    emit(DescriptionLoadingState());
    Description description = await _descriptionRepos.getDescriptionById(event.descriptionId);
    emit(DescriptionUploadedState(description: description));
  }
}