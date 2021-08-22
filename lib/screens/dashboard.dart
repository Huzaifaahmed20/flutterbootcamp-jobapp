import 'package:flutter/material.dart';
import 'package:job_app/colors.dart';
import 'package:job_app/company_logos.dart';
import 'package:job_app/model/jobs.dart';
import 'package:job_app/widgets/user_info.dart';

import '../app_styles.dart';

class DashboardScreen extends StatelessWidget {
  final List<Jobs> _jobs = [
    Jobs(
        'Flutter Developer Required', CompanyLogos.google, 'Karachi, Pakistan'),
    Jobs('Java Developer Required', CompanyLogos.facebook, 'Karachi, Pakistan'),
    Jobs('Full Stack Developer', CompanyLogos.adobe, 'Karachi, Pakistan'),
    Jobs('Sales Manager', CompanyLogos.facebook, 'Karachi, Pakistan'),
    Jobs('Project Manager', CompanyLogos.google, 'Karachi, Pakistan'),
    Jobs('React Develoepr Required', CompanyLogos.adobe, 'Karachi, Pakistan'),
    Jobs(
        'Angular Develoepr Required', CompanyLogos.google, 'Karachi, Pakistan'),
    Jobs('NodeJS Develoepr Required', CompanyLogos.facebook,
        'Karachi, Pakistan'),
    Jobs('MongoDB Develoepr Required', CompanyLogos.adobe, 'Karachi, Pakistan'),
    Jobs(
        'VueJS Develoepr Required', CompanyLogos.facebook, 'Karachi, Pakistan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/add-job');
        },
        backgroundColor: Color(0xffE5E5E5),
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            UserInfo(),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(
                    0xff8F8F9E,
                  ),
                ),
                enabledBorder: AppStyles.textFieldBorder,
                focusedBorder: AppStyles.textFieldBorder,
                hintText: 'Search keywords.',
                hintStyle: TextStyle(
                  color: Color(
                    0xff8F8F9E,
                  ),
                ),
                fillColor: Color(0xff1E1C24),
                filled: true,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _jobs.length,
                itemBuilder: (ctx, idx) {
                  final Jobs _job = _jobs[idx];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      color: Color(0xff201E27),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: ListTile(
                          leading: Image.network(
                            _job.companyLogo,
                          ),
                          title: Text(
                            _job.jobTitle,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            _job.location,
                            style: TextStyle(
                              color: Color(0xff8F8F9E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
