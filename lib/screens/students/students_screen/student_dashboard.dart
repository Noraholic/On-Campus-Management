import 'package:material_ui/material_ui.dart';

class StudentsDashboard extends StatelessWidget {
  StudentsDashboard({super.key});
  Widget pageButton(String number, bool selected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: selected
            ? const Color.fromARGB(255, 160, 71, 138)
            : Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFFE9E3E6)),
      ),
      child: Text(
        number,
        style: TextStyle(color: selected ? Colors.white : Colors.black),
      ),
    );
  }

  final List<Map<String, dynamic>> students = [
    {
      'initials': 'AM',
      'name': 'Aarav Mehta',
      'email': 'aarav@northbridge.edu',
      'id': 'NX25-CS-041',
      'level': 'Year 3',
      'attendance': 94,
      'status': 'Active',
    },
    {
      'initials': 'MF',
      'name': 'Maya Fernandes',
      'email': 'maya@northbridge.edu',
      'id': 'NX25-DS-018',
      'level': 'Year 2',
      'attendance': 91,
      'status': 'Active',
    },
    {
      'initials': 'RK',
      'name': 'Rohan Kapoor',
      'email': 'rohan@northbridge.edu',
      'id': 'NX24-EE-112',
      'level': 'Year 4',
      'attendance': 86,
      'status': 'At risk',
    },
    {
      'initials': 'ZS',
      'name': 'Zoya Sheikh',
      'email': 'zoya@northbridge.edu',
      'id': 'NX26-BA-057',
      'level': 'Year 1',
      'attendance': 97,
      'status': 'Active',
    },
    {
      'initials': 'LC',
      'name': 'Liam Chen',
      'email': 'liam@northbridge.edu',
      'id': 'NX25-AR-009',
      'level': 'Year 3',
      'attendance': 89,
      'status': 'Active',
    },
    {
      'initials': 'AR',
      'name': 'Ananya Rao',
      'email': 'ananya@northbridge.edu',
      'id': 'NX24-CS-086',
      'level': 'Year 4',
      'attendance': 78,
      'status': 'Review',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,

                padding: const EdgeInsets.symmetric(horizontal: 22),

                child: Row(
                  children: [
                    const Icon(Icons.menu, size: 32, color: Color(0xFF302331)),

                    const SizedBox(width: 20),

                    const Expanded(
                      child: Text(
                        'Student management',

                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF421B3D),
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 17,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xFFE8E2E6)),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: const Text(
                        'اردو',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF421B3D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),

              Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: statBox(
                            'Enrolled students',
                            '12,842',
                            radius: const BorderRadius.only(
                              topLeft: Radius.circular(23),
                            ),
                          ),
                        ),
                        Expanded(
                          child: statBox(
                            'New this term',
                            '1,186',
                            radius: const BorderRadius.only(
                              topRight: Radius.circular(23),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: statBox(
                            'Graduating',
                            '2,031',
                            radius: const BorderRadius.only(
                              bottomLeft: Radius.circular(23),
                            ),
                          ),
                        ),
                        Expanded(
                          child: statBox(
                            'Needs attention',
                            '142',
                            warning: true,
                            radius: const BorderRadius.only(
                              bottomRight: Radius.circular(23),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),

                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search by name, ID or program...',

                    hintStyle: const TextStyle(
                      color: Color(0xFFA4A9B0),
                      fontSize: 14,
                    ),

                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF87939E),
                    ),

                    filled: true,
                    fillColor: const Color(0xFFF8FAFB),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: const BorderSide(color: Color(0xFFE5E1E5)),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: const BorderSide(color: Color(0xFFE5E1E5)),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),

                child: Row(
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {},

                      icon: const Icon(Icons.filter_alt_outlined),

                      label: const Text('Filter'),

                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF87939E),

                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 17,
                        ),

                        side: const BorderSide(color: Color(0xFFE5E1E5)),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    ElevatedButton.icon(
                      onPressed: () {},

                      icon: const Icon(Icons.add),

                      label: const Text(
                        'Add student',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF421B3D),
                        foregroundColor: Colors.white,

                        padding: const EdgeInsets.symmetric(
                          vertical: 17,
                          horizontal: 25,
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 850,
                  child: Column(
                    children: [
                      const SizedBox(height: 25),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        height: 55,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Color(0xFFE9E3E6)),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'All students',
                              style: TextStyle(
                                color: Color(0xFF421B3D),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),

                            const SizedBox(width: 8),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1EAF1),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: const Text(
                                '12,842',
                                style: TextStyle(
                                  color: Color(0xFF421B3D),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            const SizedBox(width: 25),

                            const Text('Active'),
                            const SizedBox(width: 25),
                            const Text('At risk'),
                            const SizedBox(width: 25),
                            const Text('Alumni'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 1050,
                  child: Column(
                    children: [
                      Container(
                        color: const Color(0xFFF8FAFB),
                        padding: const EdgeInsets.all(15),
                        child: const Row(
                          children: [
                            SizedBox(width: 220, child: Text('STUDENT')),
                            SizedBox(width: 150, child: Text('STUDENT ID')),
                            SizedBox(width: 100, child: Text('LEVEL')),
                            SizedBox(width: 230, child: Text('ATTENDANCE')),
                            SizedBox(width: 150, child: Text('STATUS')),
                            SizedBox(width: 50, child: Text('')),
                          ],
                        ),
                      ),
                      ...[
                        for (int i = 0; i < students.length; i++)
                          studentRow(students[i]),
                      ],
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Showing 1–6 of 12,842 students',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),

                  const SizedBox(height: 12),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_left),
                        ),

                        pageButton('1', true),
                        pageButton('2', false),
                        pageButton('3', false),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text('...'),
                        ),

                        pageButton('2140', false),

                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_right),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget statBox(
    String title,
    String number, {
    bool warning = false,
    required BorderRadius radius,
  }) {
    return Container(
      height: 115,
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE9E3E6)),
        borderRadius: radius,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 13, color: Color(0xFF9CA5AE)),
          ),

          const SizedBox(height: 10),

          Text(
            number,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: warning
                  ? const Color(0xFFC18A37)
                  : const Color(0xFF421B3D),
            ),
          ),
        ],
      ),
    );
  }

  Widget studentRow(Map<String, dynamic> student) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE9E3E6))),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student['name'],
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  student['email'],
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ),

          SizedBox(width: 150, child: Text(student['id'])),

          SizedBox(width: 100, child: Text(student['level'])),

          SizedBox(
            width: 230,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${student['attendance']}%'),
                const SizedBox(height: 6),
                LinearProgressIndicator(
                  value: (student['attendance'] as int) / 100,
                  color: const Color(0xFF3D9B91),
                  backgroundColor: const Color(0xFFE8E1E5),
                ),
              ],
            ),
          ),

          SizedBox(
            width: 150,
            child: Text(
              student['status'],
              style: TextStyle(
                color: student['status'] == 'Active'
                    ? Colors.green
                    : student['status'] == 'At risk'
                    ? Colors.orange
                    : Colors.blueGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          const SizedBox(width: 50, child: Icon(Icons.more_horiz)),
        ],
      ),
    );
  }
}
