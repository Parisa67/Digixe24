

import 'package:flutter/cupertino.dart';

@immutable
abstract class PageStatus{}

class PageLoading extends PageStatus{}

class PageCompleted extends PageStatus{
  //create get instance viewModel for show

}
class PageError extends PageStatus{
  final String message;

  PageError(this.message);
}