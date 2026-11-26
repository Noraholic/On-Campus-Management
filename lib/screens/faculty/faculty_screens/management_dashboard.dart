
import 'package:material_ui/material_ui.dart';

class ManagementDashboard extends StatefulWidget {
  const ManagementDashboard({super.key});

  @override
  State<ManagementDashboard> createState() =>
      _ManagementDashboardState();
}

class _ManagementDashboardState extends State<ManagementDashboard> {
  final Color primaryPurple = const Color(0xFF482541);
  final Color secondaryPurple = const Color(0xFF713B68);
  final Color backgroundColor = const Color(0xFFF4F6FA);

  final TextEditingController searchController = TextEditingController();

  String searchText = '';

  final List<Map<String, String>> documents = [
    {
      'name': 'Campus Policies.pdf',
      'type': 'PDF Document',
      'size': '2.4 MB',
      'date': 'Nov 20, 2026',
      'status': 'Indexed',
    },
    {
      'name': 'Faculty Handbook.docx',
      'type': 'Word Document',
      'size': '1.8 MB',
      'date': 'Nov 18, 2026',
      'status': 'Indexed',
    },
    {
      'name': 'Admission Guidelines.pdf',
      'type': 'PDF Document',
      'size': '3.2 MB',
      'date': 'Nov 16, 2026',
      'status': 'Processing',
    },
    {
      'name': 'Student Rules.pdf',
      'type': 'PDF Document',
      'size': '1.2 MB',
      'date': 'Nov 14, 2026',
      'status': 'Indexed',
    },
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isDesktop = constraints.maxWidth >= 1100;
        final bool isMobile = constraints.maxWidth < 600;

        return Scaffold(
          backgroundColor: backgroundColor,

          drawer: isDesktop
              ? null
              : Drawer(
                  width: 260,
                  backgroundColor: primaryPurple,
                  child: buildSidebar(),
                ),

          body: Row(
            children: [
              if (isDesktop)
                SizedBox(
                  width: 245,
                  child: buildSidebar(),
                ),

              Expanded(
                child: Column(
                  children: [
                    buildHeader(context, isDesktop, isMobile),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(isMobile ? 15 : 28),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildPageTitle(isMobile),
                              const SizedBox(height: 25),
                              buildStatusBanner(isMobile),
                              const SizedBox(height: 22),
                              buildStatistics(isMobile),
                              const SizedBox(height: 28),
                              buildUploadSection(),
                              const SizedBox(height: 28),

                              // Document Library full available width
                              buildDocumentLibrary(isMobile),

                              const SizedBox(height: 25),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // SIDEBAR
  Widget buildSidebar() {
    return Container(
      color: primaryPurple,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 25),

            const Text(
              'NEXORA',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'AI SMART CAMPUS',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white70,
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    sidebarItem(Icons.dashboard, 'Dashboard'),
                    sidebarItem(Icons.people, 'Faculty'),
                    sidebarItem(Icons.meeting_room, 'Room Allocation'),
                    sidebarItem(Icons.inventory_2, 'Resources'),
                    sidebarItem(Icons.school, 'Admissions'),
                    sidebarItem(
                      Icons.menu_book,
                      'Knowledge Base',
                      selected: true,
                    ),
                    sidebarItem(Icons.qr_code_scanner, 'Visitor Portal'),
                    sidebarItem(Icons.manage_accounts, 'User Management'),
                    const SizedBox(height: 15),
                    sidebarItem(Icons.settings, 'Settings'),
                    sidebarItem(Icons.help_outline, 'Help & Support'),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            const Divider(color: Colors.white24),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Administrator',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sidebarItem(
    IconData icon,
    String title, {
    bool selected = false,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: selected ? secondaryPurple : Colors.transparent,
        borderRadius: BorderRadius.circular(9),
      ),
      child: ListTile(
        dense: true,
        leading: Icon(icon, color: Colors.white70, size: 21),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        onTap: () {
          Navigator.of(context).maybePop();
        },
      ),
    );
  }

  // HEADER
  Widget buildHeader(
    BuildContext context,
    bool isDesktop,
    bool isMobile,
  ) {
    return Container(
      height: 75,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 10 : 25,
      ),
      color: Colors.white,
      child: Row(
        children: [
          if (!isDesktop)
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),

          if (isDesktop)
            const Text(
              'Management Panel',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

          if (!isDesktop)
            const Expanded(
              child: Text(
                'NEXORA',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          if (isDesktop) const Spacer(),

          if (!isMobile)
            SizedBox(
              width: isDesktop ? 230 : 170,
              height: 40,
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  setState(() {
                    searchText = value.toLowerCase();
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search documents...',
                  prefixIcon: const Icon(Icons.search, size: 19),
                  filled: true,
                  fillColor: const Color(0xFFF4F6FA),
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),

          const SizedBox(width: 8),

          CircleAvatar(
            radius: 18,
            backgroundColor: secondaryPurple,
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
          ),

          if (!isMobile) ...[
            const SizedBox(width: 9),
            const Text(
              'Management',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ],
        ],
      ),
    );
  }

  // PAGE TITLE
  Widget buildPageTitle(bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Knowledge Base',
          style: TextStyle(
            fontSize: isMobile ? 23 : 28,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF172B4D),
          ),
        ),
        const SizedBox(height: 7),
        const Text(
          'Manage campus knowledge and AI documents.',
          style: TextStyle(
            color: Color(0xFF64748B),
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  // AI STATUS BANNER
  Widget buildStatusBanner(bool isMobile) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryPurple, secondaryPurple],
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.auto_awesome,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Campus Knowledge is Healthy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  'Your AI knowledge system is ready.',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 12),
                buildReadyBadge(),
              ],
            )
          : Row(
              children: [
                const Icon(
                  Icons.auto_awesome,
                  color: Colors.white,
                  size: 35,
                ),
                const SizedBox(width: 18),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Campus Knowledge is Healthy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Your AI knowledge system is ready.',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                buildReadyBadge(),
              ],
            ),
    );
  }

  Widget buildReadyBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'AI READY',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
      ),
    );
  }

  // STATISTICS
  Widget buildStatistics(bool isMobile) {
    final cards = [
      statCard('Total Documents', '2,842', Icons.description),
      statCard('Indexed Documents', '2,790', Icons.check_circle),
      statCard('Processing', '12', Icons.sync),
    ];

    if (isMobile) {
      return Column(
        children: [
          for (final card in cards) ...[
            card,
            const SizedBox(height: 12),
          ],
        ],
      );
    }

    return Row(
      children: [
        for (int i = 0; i < cards.length; i++) ...[
          Expanded(child: cards[i]),
          if (i != cards.length - 1)
            const SizedBox(width: 15),
        ],
      ],
    );
  }

  Widget statCard(
    String title,
    String value,
    IconData icon,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF4ECF2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: secondaryPurple,
              size: 25,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // UPLOAD SECTION
  Widget buildUploadSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Upload Knowledge Sources',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Upload PDF, DOCX or TXT documents for AI processing.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 22),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 25),
            decoration: BoxDecoration(
              color: const Color(0xFFFAF8FB),
              border: Border.all(
                color: const Color(0xFFD8C8D5),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Icon(
                  Icons.cloud_upload_outlined,
                  color: secondaryPurple,
                  size: 45,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Drag and drop your files here',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 7),
                const Text(
                  'Supported formats: PDF, DOCX, TXT',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'File upload functionality will be connected later.',
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.upload_file),
                  label: const Text('Browse Files'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // DOCUMENT LIBRARY - FULL WIDTH CUSTOM TABLE
  Widget buildDocumentLibrary(bool isMobile) {
    final filteredDocuments = documents.where((document) {
      return document['name']!
          .toLowerCase()
          .contains(searchText);
    }).toList();

    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Document Library',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            if (isMobile)
              Column(
                children: filteredDocuments
                    .map((document) => mobileDocumentCard(document))
                    .toList(),
              )
            else
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      // TABLE HEADER
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xFFF7F4F7),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: tableHeading('Document'),
                            ),
                            Expanded(
                              flex: 2,
                              child: tableHeading('Type'),
                            ),
                            Expanded(
                              flex: 1,
                              child: tableHeading('Size'),
                            ),
                            Expanded(
                              flex: 2,
                              child: tableHeading('Updated'),
                            ),
                            Expanded(
                              flex: 2,
                              child: tableHeading('AI Status'),
                            ),
                          ],
                        ),
                      ),

                      // TABLE ROWS
                      if (filteredDocuments.isEmpty)
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text('No documents found.'),
                        )
                      else
                        ...filteredDocuments.map((document) {
                          return Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              vertical: 17,
                              horizontal: 10,
                            ),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFFE8EDF3),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.description,
                                        color: secondaryPurple,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          document['name']!,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: tableText(document['type']!),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: tableText(document['size']!),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: tableText(document['date']!),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: statusBadge(
                                      document['status']!,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                    ],
                  );
                },
              ),

            if (isMobile && filteredDocuments.isEmpty)
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text('No documents found.'),
              ),
          ],
        ),
      ),
    );
  }

  Widget tableHeading(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Color(0xFF172B4D),
      ),
    );
  }

  Widget tableText(String value) {
    return Text(
      value,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 12,
        color: Color(0xFF64748B),
      ),
    );
  }

  // MOBILE DOCUMENT CARD
  Widget mobileDocumentCard(Map<String, String> document) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF8FB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.description,
                color: secondaryPurple,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  document['name']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '${document['type']}  •  ${document['size']}',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                document['date']!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
              statusBadge(document['status']!),
            ],
          ),
        ],
      ),
    );
  }

  // STATUS BADGE
  Widget statusBadge(String status) {
    final bool indexed = status == 'Indexed';

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: indexed
            ? const Color(0xFFE6F6EF)
            : const Color(0xFFFFF3DD),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: indexed ? Colors.green : Colors.orange,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
