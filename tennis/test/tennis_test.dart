import 'package:tennis/tennis.dart';
import 'package:test/test.dart';

void main() {
  test('Start game both player score should be Love : Love', () {
    // Arrange
    var expectedScore = "Love : Love";

    //Action
    var game = Tennis();
    var actualScore = game.score;

    //Assert
    expect(actualScore, expectedScore);
  });
  test('Player A win first ball score should be Fifteen : Love', () {
    // Arrange
    var expectedScore = "Fifteen : Love";

    //Action
    var game = Tennis();
    game.playerAwinBall();
    var actualScore = game.score;

    //Assert
    expect(actualScore, expectedScore);
  });

  test('Player B and Player A get one ball score should be Fifteen : Fifteen',
      () {
    // Arrange
    var expectedScore = "Fifteen : Fifteen";

    //Action
    var game = Tennis();
    game.playerBwinBall();
    game.playerAwinBall();
    var actualScore = game.score;

    //Assert
    expect(actualScore, expectedScore);
  });

  test(
      'Player A win two ball and Player B win one ball score should be Thirty : Fifteen',
      () {
    // Arrange
    var expectedScore = "Thirty : Fifteen";

    //Action
    var game = Tennis();
    game.playerBwinBall();
    game.playerAwinBall();
    game.playerAwinBall();
    var actualScore = game.score;

    //Assert
    expect(actualScore, expectedScore);
  });

  test(
      'Player A win three ball and Player B win one ball score should be Fourty : Fifteen',
      () {
    // Arrange
    var expectedScore = "Fourty : Fifteen";

    //Action
    var game = Tennis();
    game.playerBwinBall();
    game.playerAwinBall();
    game.playerAwinBall();
    game.playerAwinBall();
    var actualScore = game.score;

    //Assert
    expect(actualScore, expectedScore);
  });

  test('Player A win four ball score should be Player A Win', () {
    // Arrange
    var expectedScore = "Player A Win";

    //Action
    var game = Tennis();
    game.playerBwinBall();
    game.playerAwinBall();
    game.playerAwinBall();
    game.playerAwinBall();
    game.playerAwinBall();

    var actualScore = game.score;

    //Assert
    expect(actualScore, expectedScore);
  });

  test('Player A and Player B win three ball score should be Deuce', () {
    // Arrange
    var expectedScore = "Deuce";

    //Action
    var game = Tennis();
    game.playerBwinBall();
    game.playerAwinBall();
    game.playerAwinBall();
    game.playerAwinBall();
    game.playerBwinBall();
    game.playerBwinBall();

    var actualScore = game.score;

    //Assert
    expect(actualScore, expectedScore);
  });
}
