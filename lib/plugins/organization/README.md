# Organization Plugin for Super Better Auth

This plugin provides comprehensive organization management features for Flutter applications using Better Auth backend. It includes organization CRUD operations, member management, invitations, role-based access control, and team management.

## Features

### Organization Management
- ✅ Create organizations
- ✅ Update organization details
- ✅ Delete organizations
- ✅ List user organizations
- ✅ Get full organization details with members
- ✅ Set active organization
- ✅ Check slug availability

### Member Management
- ✅ Invite members via email
- ✅ Add members directly (server-side)
- ✅ Remove members
- ✅ Update member roles
- ✅ List organization members
- ✅ Get active member details
- ✅ Leave organization

### Invitation System
- ✅ Send invitations
- ✅ Accept invitations
- ✅ Cancel invitations
- ✅ Reject invitations
- ✅ Get invitation details
- ✅ List organization invitations
- ✅ List user invitations

### Team Management (Optional)
- ✅ Create teams within organizations
- ✅ Update team details
- ✅ Delete teams
- ✅ List organization teams
- ✅ Set active team
- ✅ List user teams
- ✅ Add/remove team members
- ✅ List team members

### Role-Based Access Control
- ✅ Built-in roles: owner, admin, member
- ✅ Custom role support
- ✅ Permission-based access control
- ✅ Organization-level and team-level permissions

## Installation

The organization plugin is included in the Super Better Auth package. Simply import it:

```dart
import 'package:super_better_auth/super_better_auth.dart';
```

## Basic Usage

### Initialize the Plugin

```dart
// The organization plugin is automatically available through the client
final orgClient = SuperBetterAuth.client.organization;

// Or use the standalone plugin instance
final orgPlugin = OrganizationPlugin.instance;
```

### Organization Management

#### Create an Organization

```dart
final organization = await orgPlugin.createOrganization(
  name: "My Organization",
  slug: "my-org",
  logo: "https://example.com/logo.png",
  metadata: {"plan": "pro"},
);
```

#### List Organizations

```dart
final organizations = await orgPlugin.listOrganizations();
```

#### Get Full Organization Details

```dart
final (organization, members) = await orgPlugin.getFullOrganization(
  organizationId: "org-id",
);
```

#### Set Active Organization

```dart
final success = await orgPlugin.setActiveOrganization(
  organizationId: "org-id",
);
```

#### Check Slug Availability

```dart
final isAvailable = await orgPlugin.checkSlug(slug: "my-new-org");
```

### Member Management

#### Invite a Member

```dart
final invitation = await orgPlugin.inviteMember(
  email: "user@example.com",
  role: "member",
  organizationId: "org-id", // Optional, uses active org if not provided
);
```

#### List Members

```dart
final members = await orgPlugin.listMembers(
  organizationId: "org-id",
  limit: 50,
  offset: 0,
);
```

#### Update Member Role

```dart
final member = await orgPlugin.updateMemberRole(
  role: "admin",
  memberId: "member-id",
);
```

#### Remove Member

```dart
final success = await orgPlugin.removeMember(
  memberIdOrEmail: "user@example.com",
);
```

### Invitation Management

#### Accept Invitation

```dart
final success = await orgPlugin.acceptInvitation(
  invitationId: "invitation-id",
);
```

#### List User Invitations

```dart
final invitations = await orgPlugin.listUserInvitations();
```

### Team Management

#### Create a Team

```dart
final team = await orgPlugin.createTeam(
  name: "Development Team",
  organizationId: "org-id",
);
```

#### List Teams

```dart
final teams = await orgPlugin.listTeams();
```

#### Add Team Member

```dart
final success = await orgPlugin.addTeamMember(
  teamId: "team-id",
  userId: "user-id",
);
```

## Advanced Usage

### Using the REST Client Directly

You can access the underlying REST client for more advanced usage:

```dart
import 'package:super_better_auth/super_better_auth.dart';

// Access the organization client directly
final client = SuperBetterAuth.client.organization;

// Create organization with full request control
final result = await client.createOrganization(
  body: CreateOrganizationRequest(
    name: "My Org",
    slug: "my-org",
    metadata: {"custom": "data"},
  ),
);

// Handle the result
final organization = result.data?.organization;
if (result.isSuccess && organization != null) {
  print("Organization created: ${organization.name}");
} else {
  print("Error: ${result.error}");
}
```

### Custom Error Handling

```dart
try {
  final organization = await orgPlugin.createOrganization(
    name: "Test Org",
    slug: "test-org",
  );
  
  if (organization != null) {
    print("Success: ${organization.name}");
  } else {
    print("Failed to create organization");
  }
} catch (e) {
  print("Error: $e");
}
```

## Models

### Organization

```dart
class Organization {
  final String id;
  final String name;
  final String slug;
  final String? logo;
  final Map<String, dynamic>? metadata;
  final DateTime createdAt;
  final DateTime? updatedAt;
}
```

### Member

```dart
class Member {
  final String id;
  final String userId;
  final String organizationId;
  final String role;
  final DateTime createdAt;
  final User? user;
}
```

### Invitation

```dart
class Invitation {
  final String id;
  final String email;
  final String inviterId;
  final String organizationId;
  final String role;
  final String status;
  final DateTime expiresAt;
  final DateTime createdAt;
  final String? teamId;
  final User? inviter;
  final Organization? organization;
}
```

### Team

```dart
class Team {
  final String id;
  final String name;
  final String organizationId;
  final DateTime createdAt;
  final DateTime? updatedAt;
}
```

## Backend Setup

This plugin works with the Better Auth organization plugin. Make sure your backend is configured with:

```typescript
import { betterAuth } from "better-auth"
import { organization } from "better-auth/plugins"

export const auth = betterAuth({
  plugins: [
    organization({
      // Configuration options
      allowUserToCreateOrganization: true,
      membershipLimit: 100,
      // ... other options
    })
  ]
})
```

## Database Schema

The plugin requires the following database tables:

- `organization` - Organization details
- `member` - Organization members
- `invitation` - Member invitations
- `team` (optional) - Teams within organizations
- `teamMember` (optional) - Team membership
- `session` - Extended with `activeOrganizationId` and `activeTeamId`

## Error Handling

All methods return appropriate types that can be null in case of errors. Use the debug mode to see detailed error information:

```dart
import 'package:flutter/foundation.dart';

// Errors are automatically logged in debug mode
if (kDebugMode) {
  // Error details will be printed to console
}
```

## Contributing

Feel free to contribute to this plugin by submitting issues or pull requests to the main Super Better Auth repository.

## License

This plugin is part of the Super Better Auth package and follows the same license terms.
