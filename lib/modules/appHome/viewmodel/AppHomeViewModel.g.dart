// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppHomeViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NormalPostViewModel on _NormalPostViewModelBase, Store {
  final _$stateAtom = Atom(name: '_NormalPostViewModelBase.state');

  @override
  NormalPostState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(NormalPostState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$normalPostModelAtom =
      Atom(name: '_NormalPostViewModelBase.normalPostModel');

  @override
  List<NormalPostModel> get normalPostModel {
    _$normalPostModelAtom.reportRead();
    return super.normalPostModel;
  }

  @override
  set normalPostModel(List<NormalPostModel> value) {
    _$normalPostModelAtom.reportWrite(value, super.normalPostModel, () {
      super.normalPostModel = value;
    });
  }

  final _$postOwnerAtom = Atom(name: '_NormalPostViewModelBase.postOwner');

  @override
  List<PostOwner> get postOwner {
    _$postOwnerAtom.reportRead();
    return super.postOwner;
  }

  @override
  set postOwner(List<PostOwner> value) {
    _$postOwnerAtom.reportWrite(value, super.postOwner, () {
      super.postOwner = value;
    });
  }

  final _$postIdAtom = Atom(name: '_NormalPostViewModelBase.postId');

  @override
  int get postId {
    _$postIdAtom.reportRead();
    return super.postId;
  }

  @override
  set postId(int value) {
    _$postIdAtom.reportWrite(value, super.postId, () {
      super.postId = value;
    });
  }

  final _$getPostAsyncAction = AsyncAction('_NormalPostViewModelBase.getPost');

  @override
  Future<dynamic> getPost() {
    return _$getPostAsyncAction.run(() => super.getPost());
  }

  final _$_NormalPostViewModelBaseActionController =
      ActionController(name: '_NormalPostViewModelBase');

  @override
  dynamic abc() {
    final _$actionInfo = _$_NormalPostViewModelBaseActionController.startAction(
        name: '_NormalPostViewModelBase.abc');
    try {
      return super.abc();
    } finally {
      _$_NormalPostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state},
normalPostModel: ${normalPostModel},
postOwner: ${postOwner},
postId: ${postId}
    ''';
  }
}
