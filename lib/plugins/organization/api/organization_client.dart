import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:super_better_auth/core/api/models/result/result.dart';
import 'package:super_better_auth/core/api/models/result/status_response.dart';
import 'package:super_better_auth/core/api/adapter.dart';

import 'models/requests/create_organization_request.dart';
import 'models/requests/update_organization_request.dart';
import 'models/requests/invite_member_request.dart';
import 'models/requests/update_member_role_request.dart';
import 'models/requests/create_team_request.dart';
import 'models/requests/update_team_request.dart';
import 'models/responses/organization_response.dart';
import 'models/responses/member_response.dart';
import 'models/responses/invitation_response.dart';
import 'models/responses/team_response.dart';
import 'models/responses/full_organization_response.dart';
import 'models/responses/check_slug_response.dart';
import '../models/organization.dart';
import '../models/member.dart';
import '../models/invitation.dart';
import '../models/team.dart';

part 'organization_client.g.dart';

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class OrganizationClient {
  factory OrganizationClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _OrganizationClient;

  // Organization management
  @POST('/organization/create')
  Future<Result<OrganizationResponse>> createOrganization({
    @Body() required CreateOrganizationRequest body,
  });

  @POST('/organization/update')
  Future<Result<OrganizationResponse>> updateOrganization({
    @Body() required UpdateOrganizationRequest body,
  });

  @POST('/organization/delete')
  Future<Result<StatusResponse>> deleteOrganization({
    @BodyExtra('organizationId') required String organizationId,
  });

  @GET('/organization/list')
  Future<Result<List<Organization>>> listOrganizations();

  @GET('/organization/get-full-organization')
  Future<Result<FullOrganizationResponse>> getFullOrganization({
    @Query('organizationId') String? organizationId,
    @Query('organizationSlug') String? organizationSlug,
    @Query('membersLimit') int? membersLimit,
  });

  @POST('/organization/set-active')
  Future<Result<StatusResponse>> setActiveOrganization({
    @BodyExtra('organizationId') String? organizationId,
    @BodyExtra('organizationSlug') String? organizationSlug,
  });

  @POST('/organization/check-slug')
  Future<Result<CheckSlugResponse>> checkSlug({
    @BodyExtra('slug') required String slug,
  });

  // Member management
  @POST('/organization/invite-member')
  Future<Result<InvitationResponse>> inviteMember({
    @Body() required InviteMemberRequest body,
  });

  @POST('/organization/remove-member')
  Future<Result<StatusResponse>> removeMember({
    @BodyExtra('memberIdOrEmail') required String memberIdOrEmail,
    @BodyExtra('organizationId') String? organizationId,
  });

  @POST('/organization/update-member-role')
  Future<Result<MemberResponse>> updateMemberRole({
    @Body() required UpdateMemberRoleRequest body,
  });

  @GET('/organization/list-members')
  Future<Result<List<Member>>> listMembers({
    @Query('organizationId') String? organizationId,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('sortBy') String? sortBy,
    @Query('sortDirection') String? sortDirection,
    @Query('filterField') String? filterField,
    @Query('filterOperator') String? filterOperator,
    @Query('filterValue') String? filterValue,
  });

  @GET('/organization/get-active-member')
  Future<Result<Member>> getActiveMember();

  @POST('/organization/add-member')
  Future<Result<MemberResponse>> addMember({
    @BodyExtra('userId') String? userId,
    @BodyExtra('role') required String role,
    @BodyExtra('organizationId') String? organizationId,
    @BodyExtra('teamId') String? teamId,
  });

  @POST('/organization/leave')
  Future<Result<StatusResponse>> leaveOrganization({
    @BodyExtra('organizationId') required String organizationId,
  });

  // Invitation management
  @POST('/organization/accept-invitation')
  Future<Result<StatusResponse>> acceptInvitation({
    @BodyExtra('invitationId') required String invitationId,
  });

  @POST('/organization/cancel-invitation')
  Future<Result<StatusResponse>> cancelInvitation({
    @BodyExtra('invitationId') required String invitationId,
  });

  @POST('/organization/reject-invitation')
  Future<Result<StatusResponse>> rejectInvitation({
    @BodyExtra('invitationId') required String invitationId,
  });

  @GET('/organization/get-invitation')
  Future<Result<Invitation>> getInvitation({@Query('id') required String id});

  @GET('/organization/list-invitations')
  Future<Result<List<Invitation>>> listInvitations({
    @Query('organizationId') String? organizationId,
  });

  @GET('/organization/list-user-invitations')
  Future<Result<List<Invitation>>> listUserInvitations();

  // Team management
  @POST('/organization/create-team')
  Future<Result<TeamResponse>> createTeam({
    @Body() required CreateTeamRequest body,
  });

  @GET('/organization/list-teams')
  Future<Result<List<Team>>> listTeams({
    @Query('organizationId') String? organizationId,
  });

  @POST('/organization/update-team')
  Future<Result<TeamResponse>> updateTeam({
    @Body() required UpdateTeamRequest body,
  });

  @POST('/organization/remove-team')
  Future<Result<StatusResponse>> removeTeam({
    @BodyExtra('teamId') required String teamId,
    @BodyExtra('organizationId') String? organizationId,
  });

  @POST('/organization/set-active-team')
  Future<Result<StatusResponse>> setActiveTeam({
    @BodyExtra('teamId') String? teamId,
  });

  @GET('/organization/list-user-teams')
  Future<Result<List<Team>>> listUserTeams();

  @POST('/organization/list-team-members')
  Future<Result<List<Member>>> listTeamMembers({
    @BodyExtra('teamId') String? teamId,
  });

  @POST('/organization/add-team-member')
  Future<Result<StatusResponse>> addTeamMember({
    @BodyExtra('teamId') required String teamId,
    @BodyExtra('userId') required String userId,
  });

  @POST('/organization/remove-team-member')
  Future<Result<StatusResponse>> removeTeamMember({
    @BodyExtra('teamId') required String teamId,
    @BodyExtra('userId') required String userId,
  });
}
