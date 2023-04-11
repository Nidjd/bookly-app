import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFuaturedBooks() async {
    emit(FeaturedBookLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(FeaturedBookFailure(failure.errMessage));
      },
      (books) {
        emit(FeaturedBookSuccess(books));
      },
    );
  }
}
