import 'package:flutter/material.dart';

class LeaderboardPositionItem {
  final String username, time;
  final bool isYou;

  LeaderboardPositionItem({
    this.username = '',
    this.time = '',
    @required this.isYou,
  });
}

List demoLeaderboard = [
  LeaderboardPositionItem(
    username: "dylanwinner",
    time: "00:49:57",
    isYou: false,
  ),
  LeaderboardPositionItem(
    username: "justinwu",
    time: "00:58:02",
    isYou: false,
  ),
  LeaderboardPositionItem(
    username: "ellaxen",
    time: "00:59:38",
    isYou: false,
  ),
  LeaderboardPositionItem(
    username: "james_443",
    time: "01:10:14",
    isYou: false,
  ),
  LeaderboardPositionItem(
    username: "mynamejen",
    time: "01:14:59",
    isYou: false,
  ),
  LeaderboardPositionItem(
    username: "johndoe",
    time: "01:17:26",
    isYou: true,
  ),
  LeaderboardPositionItem(
    username: "jacob_ast",
    time: "01:19:57",
    isYou: false,
  ),
  LeaderboardPositionItem(
    username: "SLivv",
    time: "01:28:57",
    isYou: false,
  ),
  LeaderboardPositionItem(
    username: "emilyjackson",
    time: "01:37:15",
    isYou: false,
  ),
  LeaderboardPositionItem(
    username: "peterrrrr",
    time: "02:01:33",
    isYou: false,
  ),
];