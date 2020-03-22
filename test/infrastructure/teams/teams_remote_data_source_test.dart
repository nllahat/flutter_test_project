import 'dart:convert';

import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:my_proj/config_reader.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:my_proj/infrastructure/teams/team_model.dart';
import 'package:my_proj/infrastructure/teams/teams_remote_data_source.dart';

import '../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  TeamsRemoteDataSource dataSource;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = TeamsRemoteDataSource(client: mockHttpClient);
  });

  void setUpMockHttpClientSuccess200() {
    when(mockHttpClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response(fixture('teams.json'), 200));
  }

  void setUpMockHttpClientFailure404() {
    when(mockHttpClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response('Something went wrong', 404));
  }

  group('getTeamsByLeagueId', () {
    final leagueId = 2;
    Iterable l = json.decode(fixture('teams.json'));
    final List<Team> teams =
        l.map((teamJson) => TeamModel.fromJson(teamJson)).toList();

    test(
      '''should perform a GET request on a URL with league id
       being the endpoint and with application/json header''',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        dataSource.getTeamsByLeagueId(leagueId);
        // assert
        verify(mockHttpClient.get(
          '${ConfigReader.getRapidAPIRootUrl()}/v2/teams/league/$leagueId',
          headers: {
            'Content-Type': 'application/json',
            'x-rapidapi-host': ConfigReader.getRapidAPIHost(),
            'x-rapidapi-key': ConfigReader.getRapidAPISecret()
          },
        ));
      },
    );

/*     test(
      'should return NumberTrivia when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.getConcreteNumberTrivia(tNumber);
        // assert
        expect(result, equals(tNumberTriviaModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.getConcreteNumberTrivia;
        // assert
        expect(() => call(tNumber), throwsA(TypeMatcher<ServerException>()));
      },
    ); */
  });
}
