import 'package:mockito/mockito.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:my_proj/domain/teams/team_failure.dart';
import 'package:my_proj/infrastructure/core/exceptions.dart';
import 'package:my_proj/infrastructure/teams/team_model.dart';
import 'package:my_proj/infrastructure/teams/teams_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_proj/infrastructure/teams/teams_repository.dart';

class MockTeamRemoteDataSource extends Mock implements TeamsRemoteDataSource {}

void main() {
  MockTeamRemoteDataSource mockTeamRemoteDataSource;
  TeamsRepository teamsRepository;

  setUp(() {
    mockTeamRemoteDataSource = MockTeamRemoteDataSource();
    teamsRepository =
        TeamsRepository(teamsRemoteDataSource: mockTeamRemoteDataSource);
  });

  group('getAll', () {
    final leagueId = '2';
    final teamModel = TeamModel(teamId: 123, teamName: 'team', logo: 'url string');
    final teamModels = [teamModel].toList();
    final team = teamModel.toDomain();
    final teams = [team].toList();
    test(
      'should return remote data when the call to remote data source is successful',
      () async {
        // arrange
        when(mockTeamRemoteDataSource.getTeamsByLeagueId(any))
            .thenAnswer((_) async => teamModels);
        // act
        final Either<TeamFailure, List<Team>> result =
            await teamsRepository.getAll(leagueId);
        final List<Team> resultTeams = result.getOrElse(null);
        // assert
        verify(mockTeamRemoteDataSource.getTeamsByLeagueId(leagueId));
        expect(resultTeams[0], equals(teams[0]));
      },
    );

    test(
      'should return server failure when the call to remote data source is unsuccessful',
      () async {
        // arrange
        when(mockTeamRemoteDataSource.getTeamsByLeagueId(any))
            .thenThrow(ServerException());
        // act
        final result = await teamsRepository.getAll(leagueId);
        // assert
        verify(mockTeamRemoteDataSource.getTeamsByLeagueId(leagueId));
        expect(result, equals(Left(TeamFailureUnexpected())));
      },
    );
  });
}
