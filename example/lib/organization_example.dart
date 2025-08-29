import 'package:flutter/material.dart';
import 'package:super_better_auth/super_better_auth.dart';

/// Example demonstrating organization management features
class OrganizationExample extends StatefulWidget {
  const OrganizationExample({super.key});

  @override
  State<OrganizationExample> createState() => _OrganizationExampleState();
}

class _OrganizationExampleState extends State<OrganizationExample> {
  final orgPlugin = OrganizationPlugin.instance;
  List<Organization> organizations = [];
  Organization? selectedOrg;
  List<Member> members = [];
  List<Invitation> invitations = [];
  List<Team> teams = [];

  @override
  void initState() {
    super.initState();
    _loadOrganizations();
  }

  Future<void> _loadOrganizations() async {
    final orgs = await orgPlugin.listOrganizations();
    setState(() {
      organizations = orgs;
      if (orgs.isNotEmpty) {
        selectedOrg = orgs.first;
        _loadOrganizationDetails();
      }
    });
  }

  Future<void> _loadOrganizationDetails() async {
    if (selectedOrg == null) return;

    // Load members
    final orgMembers = await orgPlugin.listMembers(
      organizationId: selectedOrg!.id,
    );

    // Load invitations
    final orgInvitations = await orgPlugin.listInvitations(
      organizationId: selectedOrg!.id,
    );

    // Load teams
    final orgTeams = await orgPlugin.listTeams(organizationId: selectedOrg!.id);

    setState(() {
      members = orgMembers;
      invitations = orgInvitations;
      teams = orgTeams;
    });
  }

  Future<void> _createOrganization() async {
    final nameController = TextEditingController();
    final slugController = TextEditingController();

    final result = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Create Organization'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Organization Name',
                  ),
                ),
                TextField(
                  controller: slugController,
                  decoration: const InputDecoration(labelText: 'Slug'),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Create'),
              ),
            ],
          ),
    );

    if (result == true &&
        nameController.text.isNotEmpty &&
        slugController.text.isNotEmpty) {
      final org = await orgPlugin.createOrganization(
        name: nameController.text,
        slug: slugController.text,
      );

      if (org != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Organization "${org.name}" created successfully!'),
          ),
        );
        _loadOrganizations();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to create organization')),
        );
      }
    }
  }

  Future<void> _inviteMember() async {
    final emailController = TextEditingController();
    String selectedRole = 'member';

    final result = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Invite Member'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email Address'),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: selectedRole,
                  decoration: const InputDecoration(labelText: 'Role'),
                  items: const [
                    DropdownMenuItem(value: 'member', child: Text('Member')),
                    DropdownMenuItem(value: 'admin', child: Text('Admin')),
                  ],
                  onChanged: (value) => selectedRole = value ?? 'member',
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Invite'),
              ),
            ],
          ),
    );

    if (result == true &&
        emailController.text.isNotEmpty &&
        selectedOrg != null) {
      final invitation = await orgPlugin.inviteMember(
        email: emailController.text,
        role: selectedRole,
        organizationId: selectedOrg!.id,
      );

      if (invitation != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invitation sent to ${emailController.text}')),
        );
        _loadOrganizationDetails();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to send invitation')),
        );
      }
    }
  }

  Future<void> _createTeam() async {
    final nameController = TextEditingController();

    final result = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Create Team'),
            content: TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Team Name'),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Create'),
              ),
            ],
          ),
    );

    if (result == true &&
        nameController.text.isNotEmpty &&
        selectedOrg != null) {
      final team = await orgPlugin.createTeam(
        name: nameController.text,
        organizationId: selectedOrg!.id,
      );

      if (team != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Team "${team.name}" created successfully!')),
        );
        _loadOrganizationDetails();
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Failed to create team')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Organization Management'),
        actions: [
          IconButton(
            onPressed: _createOrganization,
            icon: const Icon(Icons.add),
            tooltip: 'Create Organization',
          ),
        ],
      ),
      body: Column(
        children: [
          // Organization Selector
          Container(
            padding: const EdgeInsets.all(16),
            child: DropdownButtonFormField<Organization>(
              value: selectedOrg,
              decoration: const InputDecoration(
                labelText: 'Select Organization',
                border: OutlineInputBorder(),
              ),
              items:
                  organizations
                      .map(
                        (org) =>
                            DropdownMenuItem(value: org, child: Text(org.name)),
                      )
                      .toList(),
              onChanged: (org) {
                setState(() {
                  selectedOrg = org;
                });
                if (org != null) {
                  _loadOrganizationDetails();
                }
              },
            ),
          ),

          // Tabs for different sections
          if (selectedOrg != null)
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    const TabBar(
                      tabs: [
                        Tab(text: 'Members'),
                        Tab(text: 'Invitations'),
                        Tab(text: 'Teams'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Members Tab
                          Column(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.person_add),
                                title: const Text('Invite Member'),
                                onTap: _inviteMember,
                              ),
                              const Divider(),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: members.length,
                                  itemBuilder: (context, index) {
                                    final member = members[index];
                                    return ListTile(
                                      leading: CircleAvatar(
                                        child: Text(
                                          member.user?.name?.isNotEmpty == true
                                              ? member.user!.name
                                                  .substring(0, 1)
                                                  .toUpperCase()
                                              : 'U',
                                        ),
                                      ),
                                      title: Text(
                                        member.user?.name ?? 'Unknown',
                                      ),
                                      subtitle: Text('Role: ${member.role}'),
                                      trailing: Text(member.user?.email ?? ''),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),

                          // Invitations Tab
                          ListView.builder(
                            itemCount: invitations.length,
                            itemBuilder: (context, index) {
                              final invitation = invitations[index];
                              return ListTile(
                                leading: const Icon(Icons.mail_outline),
                                title: Text(invitation.email),
                                subtitle: Text(
                                  'Role: ${invitation.role} • Status: ${invitation.status}',
                                ),
                                trailing: Text(
                                  'Expires: ${invitation.expiresAt.toLocal().toString().split(' ')[0]}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              );
                            },
                          ),

                          // Teams Tab
                          Column(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.group_add),
                                title: const Text('Create Team'),
                                onTap: _createTeam,
                              ),
                              const Divider(),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: teams.length,
                                  itemBuilder: (context, index) {
                                    final team = teams[index];
                                    return ListTile(
                                      leading: const Icon(Icons.group),
                                      title: Text(team.name),
                                      subtitle: Text(
                                        'Created: ${team.createdAt.toLocal().toString().split(' ')[0]}',
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // No organization selected
          if (selectedOrg == null && organizations.isEmpty)
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.business, size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'No organizations found',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Create your first organization to get started',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
