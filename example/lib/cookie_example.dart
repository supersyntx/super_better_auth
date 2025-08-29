import 'package:flutter/material.dart';
import 'package:super_better_auth/super_better_auth.dart';

/// Example demonstrating cookie management features
class CookieExample extends StatefulWidget {
  const CookieExample({super.key});

  @override
  State<CookieExample> createState() => _CookieExampleState();
}

class _CookieExampleState extends State<CookieExample> {
  Map<String, String> allCookies = {};
  Map<String, String?> authCookies = {};
  String? selectedCookieValue;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadCookies();
  }

  Future<void> _loadCookies() async {
    setState(() => isLoading = true);
    
    try {
      final client = SuperBetterAuth.client;
      
      // Get all cookies
      final cookies = await client.getCookies();
      
      // Get auth-specific cookies
      final auth = await client.getAuthCookies();
      
      setState(() {
        allCookies = cookies;
        authCookies = auth;
        isLoading = false;
      });
    } catch (e) {
      setState(() => isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading cookies: $e')),
        );
      }
    }
  }

  Future<void> _getCookieByName(String name) async {
    try {
      final client = SuperBetterAuth.client;
      final value = await client.getCookie(name);
      
      setState(() {
        selectedCookieValue = value;
      });
      
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Cookie: $name'),
            content: Text(value ?? 'Cookie not found'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error getting cookie: $e')),
        );
      }
    }
  }

  Future<void> _clearAllCookies() async {
    try {
      final client = SuperBetterAuth.client;
      await client.clearCookies();
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('All cookies cleared')),
        );
        _loadCookies();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error clearing cookies: $e')),
        );
      }
    }
  }

  Future<void> _clearCookieByName(String name) async {
    try {
      final client = SuperBetterAuth.client;
      await client.clearCookie(name);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Cookie "$name" cleared')),
        );
        _loadCookies();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error clearing cookie: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cookie Management'),
        actions: [
          IconButton(
            onPressed: _loadCookies,
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh Cookies',
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cookie Actions
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cookie Actions',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton.icon(
                                  onPressed: _loadCookies,
                                  icon: const Icon(Icons.refresh),
                                  label: const Text('Refresh'),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: ElevatedButton.icon(
                                  onPressed: _clearAllCookies,
                                  icon: const Icon(Icons.clear_all),
                                  label: const Text('Clear All'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red[100],
                                    foregroundColor: Colors.red[800],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () => _showCookieSearchDialog(),
                              icon: const Icon(Icons.search),
                              label: const Text('Get Cookie by Name'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Auth Cookies Section
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Authentication Cookies',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Common cookies used for authentication',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 16),
                          if (authCookies.isEmpty)
                            const Text('No authentication cookies found')
                          else
                            ...authCookies.entries.map((entry) => 
                              _buildCookieListTile(entry.key, entry.value, isAuth: true)
                            ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // All Cookies Section
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'All Cookies (${allCookies.length})',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          if (allCookies.isEmpty)
                            const Text('No cookies found')
                          else
                            ...allCookies.entries.map((entry) => 
                              _buildCookieListTile(entry.key, entry.value)
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildCookieListTile(String name, String? value, {bool isAuth = false}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        isAuth ? Icons.security : Icons.cookie,
        color: isAuth ? Colors.blue : Colors.orange,
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        value ?? 'null',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: 'monospace',
          color: value == null ? Colors.grey : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () => _getCookieByName(name),
            icon: const Icon(Icons.visibility),
            tooltip: 'View Cookie',
          ),
          IconButton(
            onPressed: () => _clearCookieByName(name),
            icon: const Icon(Icons.delete),
            tooltip: 'Clear Cookie',
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  void _showCookieSearchDialog() {
    final controller = TextEditingController();
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Get Cookie by Name'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Enter cookie name',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              if (controller.text.isNotEmpty) {
                _getCookieByName(controller.text);
              }
            },
            child: const Text('Get Cookie'),
          ),
        ],
      ),
    );
  }
}
