import 'package:flutter/material.dart';
import 'package:super_better_auth/super_better_auth.dart';

/// A simple widget to display and manage organization membership
class OrganizationWidget extends StatefulWidget {
  final Function(Organization)? onOrganizationChanged;

  const OrganizationWidget({super.key, this.onOrganizationChanged});

  @override
  State<OrganizationWidget> createState() => _OrganizationWidgetState();
}

class _OrganizationWidgetState extends State<OrganizationWidget> {
  final orgPlugin = OrganizationPlugin.instance;
  List<Organization> organizations = [];
  Organization? activeOrganization;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadOrganizations();
  }

  Future<void> _loadOrganizations() async {
    setState(() => isLoading = true);

    try {
      final orgs = await orgPlugin.listOrganizations();
      setState(() {
        organizations = orgs;
        activeOrganization = orgs.isNotEmpty ? orgs.first : null;
        isLoading = false;
      });

      if (activeOrganization != null) {
        widget.onOrganizationChanged?.call(activeOrganization!);
      }
    } catch (e) {
      setState(() => isLoading = false);
    }
  }

  Future<void> _setActiveOrganization(Organization org) async {
    final success = await orgPlugin.setActiveOrganization(
      organizationId: org.id,
    );

    if (success) {
      setState(() => activeOrganization = org);
      widget.onOrganizationChanged?.call(org);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              SizedBox(width: 12),
              Text('Loading organizations...'),
            ],
          ),
        ),
      );
    }

    if (organizations.isEmpty) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                children: [
                  Icon(Icons.business, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Organizations',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text('No organizations found.'),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: _loadOrganizations,
                icon: const Icon(Icons.refresh, size: 16),
                label: const Text('Refresh'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(32),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              children: [
                Icon(Icons.business, size: 20),
                SizedBox(width: 8),
                Text(
                  'Active Organization',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<Organization>(
              value: activeOrganization,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                border: OutlineInputBorder(),
                isDense: true,
              ),
              items:
                  organizations
                      .map(
                        (org) => DropdownMenuItem(
                          value: org,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                org.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              if (org.slug.isNotEmpty)
                                Text(
                                  '@${org.slug}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
              onChanged: (org) {
                if (org != null) {
                  _setActiveOrganization(org);
                }
              },
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: _loadOrganizations,
                    icon: const Icon(Icons.refresh, size: 16),
                    label: const Text('Refresh'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => _showOrganizationDetails(context),
                    icon: const Icon(Icons.info, size: 16),
                    label: const Text('Details'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showOrganizationDetails(BuildContext context) {
    if (activeOrganization == null) return;

    showModalBottomSheet(
      context: context,
      builder:
          (context) =>
              OrganizationDetailsSheet(organization: activeOrganization!),
    );
  }
}

/// A bottom sheet showing organization details and member management
class OrganizationDetailsSheet extends StatefulWidget {
  final Organization organization;

  const OrganizationDetailsSheet({super.key, required this.organization});

  @override
  State<OrganizationDetailsSheet> createState() =>
      _OrganizationDetailsSheetState();
}

class _OrganizationDetailsSheetState extends State<OrganizationDetailsSheet> {
  final orgPlugin = OrganizationPlugin.instance;
  List<Member> members = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadMembers();
  }

  Future<void> _loadMembers() async {
    final memberList = await orgPlugin.listMembers(
      organizationId: widget.organization.id,
    );

    setState(() {
      members = memberList;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    widget.organization.logo != null
                        ? NetworkImage(widget.organization.logo!)
                        : null,
                child:
                    widget.organization.logo == null
                        ? Text(
                          widget.organization.name
                              .substring(0, 1)
                              .toUpperCase(),
                        )
                        : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.organization.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '@${widget.organization.slug}',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Members',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          if (isLoading)
            const Center(child: CircularProgressIndicator())
          else if (members.isEmpty)
            const Text('No members found.')
          else
            ...members
                .take(5)
                .map(
                  (member) => ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 16,
                      child: Text(
                        member.user?.name.isNotEmpty == true
                            ? member.user!.name.substring(0, 1).toUpperCase()
                            : 'U',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                    title: Text(
                      member.user?.name ?? 'Unknown User',
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Text(
                      member.role,
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing:
                        member.user != null
                            ? Text(
                              member.user!.email,
                              style: const TextStyle(fontSize: 12),
                            )
                            : null,
                  ),
                ),
          if (members.length > 5)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                '... and ${members.length - 5} more members',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                // You can navigate to a full organization management screen here
              },
              child: const Text('Manage Organization'),
            ),
          ),
        ],
      ),
    );
  }
}
