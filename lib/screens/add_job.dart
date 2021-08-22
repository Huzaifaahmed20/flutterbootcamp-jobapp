import 'package:flutter/material.dart';
import 'package:job_app/colors.dart';
import 'package:job_app/company_logos.dart';
import 'package:job_app/model/company.dart';

import '../app_styles.dart';

class AddJob extends StatelessWidget {
  final List<Company> _companies = [
    Company('Google', CompanyLogos.google),
    Company('Facebook', CompanyLogos.facebook),
    Company('Adobe', CompanyLogos.adobe)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
        ),
        title: Text(
          'Add new job',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: AppStyles.textFieldBorder,
                  focusedBorder: AppStyles.textFieldBorder,
                  hintText: 'Select Company',
                  hintStyle: TextStyle(
                    color: Color(
                      0xff8F8F9E,
                    ),
                  ),
                  fillColor: Color(0xff1E1C24),
                  filled: true,
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {},
                items: _companies.map(
                  (company) {
                    return DropdownMenuItem(
                      value: company.companyName,
                      child: Text(
                        company.companyName,
                      ),
                    );
                  },
                ).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: AppStyles.textFieldBorder,
                  focusedBorder: AppStyles.textFieldBorder,
                  hintText: 'Enter position name',
                  hintStyle: TextStyle(
                    color: Color(
                      0xff8F8F9E,
                    ),
                  ),
                  fillColor: Color(0xff1E1C24),
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  enabledBorder: AppStyles.textFieldBorder,
                  focusedBorder: AppStyles.textFieldBorder,
                  hintText: 'Describe Requirement...',
                  hintStyle: TextStyle(
                    color: Color(
                      0xff8F8F9E,
                    ),
                  ),
                  fillColor: Color(0xff1E1C24),
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/dashboard');
                },
                child: Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Submit Job',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
