import 'package:flutter/foundation.dart';
import 'package:super_better_auth/core/super_better_auth.dart';
import 'package:super_better_auth/core/api/models/result/result.dart';
import 'package:super_better_auth/core/api/models/result/result_extension.dart';
import 'api/organization_client.dart';
import 'models/organization.dart';
import 'models/member.dart';
import 'models/invitation.dart';
import 'models/team.dart';
import 'api/models/requests/create_organization_request.dart';
import 'api/models/requests/update_organization_request.dart';
import 'api/models/requests/invite_member_request.dart';
import 'api/models/requests/update_member_role_request.dart';
import 'api/models/requests/create_team_request.dart';
import 'api/models/requests/update_team_request.dart';

extension ResultSuccessExtension<T> on Result<T> {
  bool get isSuccess => this is Success<T>;
}

/// Organization plugin for Super Better Auth
///
/// This plugin provides comprehensive organization management features including:
/// - Organization CRUD operations
/// - Member management and invitations
/// - Role-based access control
/// - Team management (optional)
/// - Active organization/team handling
class OrganizationPlugin {
  late final OrganizationClient _client;

  static OrganizationPlugin? _instance;

  OrganizationPlugin._internal() {
    _client = OrganizationClient(
      SuperBetterAuth.dioClient,
      baseUrl: SuperBetterAuth.baseUrl,
    );
  }

  /// Get the singleton instance of OrganizationPlugin
  static OrganizationPlugin get instance {
    _instance ??= OrganizationPlugin._internal();
    return _instance!;
  }

  // ORGANIZATION MANAGEMENT

  /// Create a new organization
  ///
  /// [name] - The organization name
  /// [slug] - The organization slug (must be unique)
  /// [logo] - Optional organization logo URL
  /// [metadata] - Optional metadata as key-value pairs
  /// [keepCurrentActiveOrganization] - Whether to keep current active org
  Future<Organization?> createOrganization({
    required String name,
    required String slug,
    String? logo,
    Map<String, dynamic>? metadata,
    bool? keepCurrentActiveOrganization,
  }) async {
    try {
      final request = CreateOrganizationRequest(
        name: name,
        slug: slug,
        logo: logo,
        metadata: metadata,
        keepCurrentActiveOrganization: keepCurrentActiveOrganization,
      );

      final result = await _client.createOrganization(body: request);
      return result.data?.organization;
    } catch (e) {
      if (kDebugMode) {
        print('Error creating organization: $e');
      }
      return null;
    }
  }

  /// Update an existing organization
  Future<Organization?> updateOrganization({
    String? name,
    String? slug,
    String? logo,
    Map<String, dynamic>? metadata,
    String? organizationId,
  }) async {
    try {
      final request = UpdateOrganizationRequest(
        name: name,
        slug: slug,
        logo: logo,
        metadata: metadata,
        organizationId: organizationId,
      );

      final result = await _client.updateOrganization(body: request);
      return result.data?.organization;
    } catch (e) {
      if (kDebugMode) {
        print('Error updating organization: $e');
      }
      return null;
    }
  }

  /// Delete an organization
  Future<bool> deleteOrganization({required String organizationId}) async {
    try {
      final result = await _client.deleteOrganization(
        organizationId: organizationId,
      );
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error deleting organization: $e');
      }
      return false;
    }
  }

  /// List all organizations for the current user
  Future<List<Organization>> listOrganizations() async {
    try {
      final result = await _client.listOrganizations();
      return result.data ?? [];
    } catch (e) {
      if (kDebugMode) {
        print('Error listing organizations: $e');
      }
      return [];
    }
  }

  /// Get full organization details with members
  Future<(Organization?, List<Member>)> getFullOrganization({
    String? organizationId,
    String? organizationSlug,
    int? membersLimit,
  }) async {
    try {
      final result = await _client.getFullOrganization(
        organizationId: organizationId,
        organizationSlug: organizationSlug,
        membersLimit: membersLimit,
      );
      return (result.data?.organization, result.data?.members ?? []);
    } catch (e) {
      if (kDebugMode) {
        print('Error getting full organization: $e');
      }
      return (null, <Member>[]);
    }
  }

  /// Set active organization
  Future<bool> setActiveOrganization({
    String? organizationId,
    String? organizationSlug,
  }) async {
    try {
      final result = await _client.setActiveOrganization(
        organizationId: organizationId,
        organizationSlug: organizationSlug,
      );
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error setting active organization: $e');
      }
      return false;
    }
  }

  /// Check if organization slug is available
  Future<bool> checkSlug({required String slug}) async {
    try {
      final result = await _client.checkSlug(slug: slug);
      return result.data?.available ?? false;
    } catch (e) {
      if (kDebugMode) {
        print('Error checking slug: $e');
      }
      return false;
    }
  }

  // MEMBER MANAGEMENT

  /// Invite a member to the organization
  Future<Invitation?> inviteMember({
    required String email,
    required String role,
    String? organizationId,
    bool? resend,
    String? teamId,
  }) async {
    try {
      final request = InviteMemberRequest(
        email: email,
        role: role,
        organizationId: organizationId,
        resend: resend,
        teamId: teamId,
      );

      final result = await _client.inviteMember(body: request);
      return result.data?.invitation;
    } catch (e) {
      if (kDebugMode) {
        print('Error inviting member: $e');
      }
      return null;
    }
  }

  /// Remove a member from the organization
  Future<bool> removeMember({
    required String memberIdOrEmail,
    String? organizationId,
  }) async {
    try {
      final result = await _client.removeMember(
        memberIdOrEmail: memberIdOrEmail,
        organizationId: organizationId,
      );
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error removing member: $e');
      }
      return false;
    }
  }

  /// Update member role
  Future<Member?> updateMemberRole({
    required String role,
    required String memberId,
    String? organizationId,
  }) async {
    try {
      final request = UpdateMemberRoleRequest(
        role: role,
        memberId: memberId,
        organizationId: organizationId,
      );

      final result = await _client.updateMemberRole(body: request);
      return result.data?.member;
    } catch (e) {
      if (kDebugMode) {
        print('Error updating member role: $e');
      }
      return null;
    }
  }

  /// List organization members
  Future<List<Member>> listMembers({
    String? organizationId,
    int? limit,
    int? offset,
    String? sortBy,
    String? sortDirection,
    String? filterField,
    String? filterOperator,
    String? filterValue,
  }) async {
    try {
      final result = await _client.listMembers(
        organizationId: organizationId,
        limit: limit,
        offset: offset,
        sortBy: sortBy,
        sortDirection: sortDirection,
        filterField: filterField,
        filterOperator: filterOperator,
        filterValue: filterValue,
      );
      return result.data ?? [];
    } catch (e) {
      if (kDebugMode) {
        print('Error listing members: $e');
      }
      return [];
    }
  }

  /// Get active member
  Future<Member?> getActiveMember() async {
    try {
      final result = await _client.getActiveMember();
      return result.data;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting active member: $e');
      }
      return null;
    }
  }

  /// Add member directly (server-side only)
  Future<Member?> addMember({
    String? userId,
    required String role,
    String? organizationId,
    String? teamId,
  }) async {
    try {
      final result = await _client.addMember(
        userId: userId,
        role: role,
        organizationId: organizationId,
        teamId: teamId,
      );
      return result.data?.member;
    } catch (e) {
      if (kDebugMode) {
        print('Error adding member: $e');
      }
      return null;
    }
  }

  /// Leave organization
  Future<bool> leaveOrganization({required String organizationId}) async {
    try {
      final result = await _client.leaveOrganization(
        organizationId: organizationId,
      );
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error leaving organization: $e');
      }
      return false;
    }
  }

  // INVITATION MANAGEMENT

  /// Accept invitation
  Future<bool> acceptInvitation({required String invitationId}) async {
    try {
      final result = await _client.acceptInvitation(invitationId: invitationId);
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error accepting invitation: $e');
      }
      return false;
    }
  }

  /// Cancel invitation
  Future<bool> cancelInvitation({required String invitationId}) async {
    try {
      final result = await _client.cancelInvitation(invitationId: invitationId);
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error canceling invitation: $e');
      }
      return false;
    }
  }

  /// Reject invitation
  Future<bool> rejectInvitation({required String invitationId}) async {
    try {
      final result = await _client.rejectInvitation(invitationId: invitationId);
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error rejecting invitation: $e');
      }
      return false;
    }
  }

  /// Get invitation details
  Future<Invitation?> getInvitation({required String id}) async {
    try {
      final result = await _client.getInvitation(id: id);
      return result.data;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting invitation: $e');
      }
      return null;
    }
  }

  /// List organization invitations
  Future<List<Invitation>> listInvitations({String? organizationId}) async {
    try {
      final result = await _client.listInvitations(
        organizationId: organizationId,
      );
      return result.data ?? [];
    } catch (e) {
      if (kDebugMode) {
        print('Error listing invitations: $e');
      }
      return [];
    }
  }

  /// List user invitations
  Future<List<Invitation>> listUserInvitations() async {
    try {
      final result = await _client.listUserInvitations();
      return result.data ?? [];
    } catch (e) {
      if (kDebugMode) {
        print('Error listing user invitations: $e');
      }
      return [];
    }
  }

  // TEAM MANAGEMENT

  /// Create a new team
  Future<Team?> createTeam({
    required String name,
    String? organizationId,
  }) async {
    try {
      final request = CreateTeamRequest(
        name: name,
        organizationId: organizationId,
      );

      final result = await _client.createTeam(body: request);
      return result.data?.team;
    } catch (e) {
      if (kDebugMode) {
        print('Error creating team: $e');
      }
      return null;
    }
  }

  /// List organization teams
  Future<List<Team>> listTeams({String? organizationId}) async {
    try {
      final result = await _client.listTeams(organizationId: organizationId);
      return result.data ?? [];
    } catch (e) {
      if (kDebugMode) {
        print('Error listing teams: $e');
      }
      return [];
    }
  }

  /// Update team
  Future<Team?> updateTeam({
    required String teamId,
    String? name,
    String? organizationId,
  }) async {
    try {
      final request = UpdateTeamRequest(
        teamId: teamId,
        name: name,
        organizationId: organizationId,
      );

      final result = await _client.updateTeam(body: request);
      return result.data?.team;
    } catch (e) {
      if (kDebugMode) {
        print('Error updating team: $e');
      }
      return null;
    }
  }

  /// Remove team
  Future<bool> removeTeam({
    required String teamId,
    String? organizationId,
  }) async {
    try {
      final result = await _client.removeTeam(
        teamId: teamId,
        organizationId: organizationId,
      );
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error removing team: $e');
      }
      return false;
    }
  }

  /// Set active team
  Future<bool> setActiveTeam({String? teamId}) async {
    try {
      final result = await _client.setActiveTeam(teamId: teamId);
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error setting active team: $e');
      }
      return false;
    }
  }

  /// List user teams
  Future<List<Team>> listUserTeams() async {
    try {
      final result = await _client.listUserTeams();
      return result.data ?? [];
    } catch (e) {
      if (kDebugMode) {
        print('Error listing user teams: $e');
      }
      return [];
    }
  }

  /// List team members
  Future<List<Member>> listTeamMembers({String? teamId}) async {
    try {
      final result = await _client.listTeamMembers(teamId: teamId);
      return result.data ?? [];
    } catch (e) {
      if (kDebugMode) {
        print('Error listing team members: $e');
      }
      return [];
    }
  }

  /// Add team member
  Future<bool> addTeamMember({
    required String teamId,
    required String userId,
  }) async {
    try {
      final result = await _client.addTeamMember(
        teamId: teamId,
        userId: userId,
      );
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error adding team member: $e');
      }
      return false;
    }
  }

  /// Remove team member
  Future<bool> removeTeamMember({
    required String teamId,
    required String userId,
  }) async {
    try {
      final result = await _client.removeTeamMember(
        teamId: teamId,
        userId: userId,
      );
      return result.isSuccess;
    } catch (e) {
      if (kDebugMode) {
        print('Error removing team member: $e');
      }
      return false;
    }
  }
}
