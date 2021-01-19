import 'dart:async';

import 'package:messenger/src/model/explore_model.dart';
import 'package:messenger/src/utils/repository.dart';
import 'package:rxdart/rxdart.dart';

class ProfileBloc {
  final _repository = Repository();

  final _friendProfileFetcher = PublishSubject<List<ExploreModel>>();
  final _profileFetcher = PublishSubject<List<String>>();

  Observable<List<ExploreModel>> get allProfileFriend =>
      _friendProfileFetcher.stream;

  Observable<List<String>> get allProfile => _profileFetcher.stream;

  fetchAllProfileFried() async {
    Timer(Duration(seconds: 1), () {
      _friendProfileFetcher.sink.add(explore);
    });
  }

  fetchAllProfile() async {
    List<String> images = await _repository.databaseImages();
    _profileFetcher.sink.add(images);
  }

  dispose() {
    _friendProfileFetcher.close();
    _profileFetcher.close();
  }

  List<ExploreModel> explore = [
    ExploreModel(
      id: 4,
      image: "assets/explore/4.png",
    ),
    ExploreModel(
      id: 1,
      image: "assets/explore/1.png",
    ),
    ExploreModel(
      id: 2,
      image: "assets/explore/2.png",
    ),
    ExploreModel(
      id: 3,
      image: "assets/explore/3.png",
    ),
    ExploreModel(
      id: 4,
      image: "assets/explore/4.png",
    ),
    ExploreModel(
      id: 5,
      image: "assets/explore/5.png",
    ),
    ExploreModel(
      id: 6,
      image: "assets/explore/6.png",
    ),
    ExploreModel(
      id: 7,
      image: "assets/explore/7.png",
    ),
    ExploreModel(
      id: 8,
      image: "assets/explore/8.png",
    ),
    ExploreModel(
      id: 9,
      image: "assets/explore/9.png",
    ),
    ExploreModel(
      id: 10,
      image: "assets/explore/10.png",
    ),
    ExploreModel(
      id: 11,
      image: "assets/explore/11.png",
    ),
    ExploreModel(
      id: 12,
      image: "assets/explore/12.png",
    ),
    ExploreModel(
      id: 13,
      image: "assets/explore/13.png",
    ),
    ExploreModel(
      id: 14,
      image: "assets/explore/14.png",
    ),
  ];
}

ProfileBloc profileBloc = ProfileBloc();
