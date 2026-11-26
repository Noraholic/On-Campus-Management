import 'package:material_ui/material_ui.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 230,
            color: Color(0xff482541),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  SizedBox(height: 30),
                  Center(
                    child: Icon(
                      Icons.school,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                  SizedBox(height: 10),

                  Center(
                    child: Text(
                      'NEXORA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Center(
                    child: Text(
                      'Smart Campus',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Color(0xff713B68),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Row(
                      children: [
                        Icon(Icons.home, color: Colors.white),
                        SizedBox(width: 15),
                        Text(
                          'Dashboard',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  
                   Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(Icons.people, color: Colors.white),
                        SizedBox(width: 15),
                        Text('Teachers',
                            style: TextStyle(
                              color: Colors.white)
                         ),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(Icons.groups, color: Colors.white),
                        SizedBox(width: 15),
                        Text('Students',
                            style: TextStyle(
                              color: Colors.white)
                          ),
                      ],
                    ),
                  ),
                  
                   Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(Icons.account_balance,
                            color: Colors.white),
                        SizedBox(width: 15),
                        Text('Departments',
                            style: TextStyle(
                              color: Colors.white)
                          ),
                      ],
                    ),
                  ),
                  
                   Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(Icons.grid_view, color: Colors.white),
                        SizedBox(width: 15),
                        Text('Classes & Sections',
                            style: TextStyle(
                              color: Colors.white)
                          ),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month,
                            color: Colors.white),
                        SizedBox(width: 15),
                        Text('Attendance',
                            style: TextStyle(
                              color: Colors.white)
                         ),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(Icons.bar_chart, color: Colors.white),
                        SizedBox(width: 15),
                        Text('Reports',
                            style: TextStyle(
                              color: Colors.white)
                          ),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(Icons.settings, color: Colors.white),
                        SizedBox(width: 15),
                        Text('Settings',
                            style: TextStyle(
                              color: Colors.white)
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),

                  Divider(color: Colors.white54),

                  Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(Icons.logout, color: Colors.white),
                        SizedBox(width: 15),
                        Text('Logout',
                            style: TextStyle(
                              
                          color: Colors.white)),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          
          Expanded(
            child: Container(
              color: Color(0xffFAF8FB),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           SizedBox(
                            width: 980,
                            height: 45,
                             child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search here...',
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xff482541),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),

                          Row(
                            children: [
                               Icon(
                                Icons.notifications_none,
                                color: Color(0xff482541),
                                size: 27,
                              ),
                              SizedBox(width: 20),

                              Icon(
                                Icons.account_circle,
                                color: Color(0xff482541),
                                size: 30,
                              ),
                              SizedBox(width: 8),

                              Text(
                                'Admin',
                                style: TextStyle(
                                  color: Color(0xff482541),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down),

                            ],
                          ),

                        ],
                      ),
                      SizedBox(height: 30),
                      
                      Text(
                        'Welcome Back, Admin!',
                        style: TextStyle(
                          color: Color(0xff482541),
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),

                      Text(
                        "Here's what's happening in your campus today.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 25),
                      
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.groups,
                                      color: Color(0xff713B68),
                                      size: 35),
                                  SizedBox(height: 8),

                                  Text('125',
                                      style: TextStyle(
                                        color: Color(0xff482541),
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      )
                                   ),
                                  Text('Total Students',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      )
                                    ),
                                ],
                              ),
                            ),
                          ),
                          
                          SizedBox(width: 12),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.person_add,
                                      color: Color(0xff713B68),
                                      size: 35),
                                  SizedBox(height: 8),

                                  Text('24',
                                      style: TextStyle(
                                        color: Color(0xff482541),
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      )
                                      ),
                                  Text('Total Teachers',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      )
                                      ),
                                ],
                              ),
                            ),
                          ),
                          
                          SizedBox(width: 12),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.account_balance,
                                      color: Color(0xff713B68),
                                      size: 35),
                                  SizedBox(height: 8),

                                  Text('8',
                                      style: TextStyle(
                                        color: Color(0xff482541),
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  Text('Departments',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      )
                                    ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 12),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.calendar_month,
                                      color: Color(0xff713B68),
                                      size: 35),
                                  SizedBox(height: 8),

                                  Text('98%',
                                      style: TextStyle(
                                        color: Color(0xff482541),
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  Text('Attendance Rate',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      )
                                    ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                       SizedBox(height: 25),
                       
                       Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(
                                    'Quick Actions',
                                    style: TextStyle(
                                      color: Color(0xff482541),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 15),

                                  Row(
                                    children: [
                                       Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Color(0xff482541),
                                            foregroundColor: Colors.white,
                                            padding: EdgeInsets.all(15),
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(Icons.person_add),
                                              Text('Add Teacher'),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),

                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Color(0xff482541),
                                            foregroundColor: Colors.white,
                                            padding: EdgeInsets.all(15),
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(Icons.people),
                                              Text('Total Teachers'),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                   SizedBox(height: 10),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Color(0xff482541),
                                            foregroundColor: Colors.white,
                                            padding: EdgeInsets.all(15),
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(Icons.grid_view),
                                              Text('Manage Classes'),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),

                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Color(0xff482541),
                                            foregroundColor: Colors.white,
                                            padding: EdgeInsets.all(15),
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(Icons.bar_chart),
                                              Text('Reports'),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 235,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xff713B68),
                                borderRadius: BorderRadius.circular(12),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Text(
                                    'NEXORA',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(
                                    'Smart Campus',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 15),

                                  Text(
                                    'Building a smarter and more '
                                    'connected campus.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                 SizedBox(height: 15),

                                  Text(
                                    'Explore More  →',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 25),
                      
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Recent Activity',
                                    style: TextStyle(
                                      color: Color(0xff482541),
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(),

                                  ListTile(
                                    leading: Icon(
                                      Icons.person_add,
                                      color: Color(0xff713B68),
                                    ),
                                    title: Text(
                                      'New teacher added: Sara Khan',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    subtitle: Text('2 hours ago'),
                                  ),
                                  Divider(),

                                  ListTile(
                                    leading: Icon(
                                      Icons.groups,
                                      color: Color(0xff713B68),
                                    ),
                                    title: Text(
                                      'New student registered: Ahmed Raza',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    subtitle: Text('3 hours ago'),
                                  ),
                                  Divider(),

                                  ListTile(
                                    leading: Icon(
                                      Icons.calendar_month,
                                      color: Color(0xff713B68),
                                    ),
                                    title: Text(
                                      'Attendance updated for Class 10-A',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    subtitle: Text('5 hours ago'),
                                  ),

                                ],
                              ),
                            ),
                          ),
                         SizedBox(width: 15),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(
                                    'Upcoming Events',
                                    style: TextStyle(
                                      color: Color(0xff482541),
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(),

                                  ListTile(
                                    leading: Text(
                                      '25\nNov',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff713B68),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    title: Text(
                                      'Parent Teacher Meeting',
                                      style: TextStyle(fontSize: 13),
                                    ),

                                    subtitle: Text(
                                      '10:00 AM - 12:00 PM',
                                    ),
                                  ),
                                  Divider(),

                                  ListTile(
                                    leading: Text(
                                      '28\nNov',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff713B68),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    title: Text(
                                      'Mid Term Exams',
                                      style: TextStyle(fontSize: 13),
                                    ),

                                    subtitle: Text('All Day'),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
