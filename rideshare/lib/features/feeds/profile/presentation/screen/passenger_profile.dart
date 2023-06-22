import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../location/presentation/widgets/select_button.dart';
import '../bloc/update_profile_bloc.dart';
import '../bloc/update_profile_state.dart';
import '../widgets/text_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _pickedImage;
  final String phoneNumber = '923789078';
  final String code = '+251';
  String _fullNameChanged = 'Sergio Ramasis';
  int _ageChanged = 30;
  _getFullNameChange(String value) {
    _fullNameChanged = value;
  }

  _getAgeChanged(String value) {
    _ageChanged = int.parse(value);
  }

  Future<void> _pickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _pickedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
      listener: (BuildContext context, UpdateProfileState state) {},
      builder: (BuildContext context, UpdateProfileState state) {
        if (state.isLoading) {
          return const CircularProgressIndicator();
        }
        if (state.isFailed) {
          return Scaffold(
            body: Center(
              child: ScaffoldMessenger(
                  child: Text(
                'Server Failure!',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                ),
              )),
            ),
          );
        }
        return Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 2.0.h,
                ),
                GestureDetector(
                  onTap: _pickImageFromGallery,
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: (_pickedImage != null)
                            ? NetworkImage(_pickedImage!.path)
                            : Image.network('assets/images/passenger.jpg')
                                .image,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: _pickImageFromGallery,
                            icon: SvgPicture.asset('images/camera.svg'),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.0.h),
                Text(
                  _fullNameChanged,
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF18172B),
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 2.0.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 1.0.h),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0.sp),
                          color: const Color(0xFFEFEFFA),
                        ),
                        child: CustomTextField(
                            onChanged: _getFullNameChange,
                            label: 'Full Name',
                            controller: TextEditingController(),
                            hintText: 'Full name')),
                  ],
                ),
                SizedBox(height: 2.0.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 1.0.h),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0.sp),
                          color: const Color(0xFFEFEFFA),
                        ),
                        child: CustomTextField(
                          onChanged: _getAgeChanged,
                          label: 'Age',
                          controller: TextEditingController(),
                          hintText: _ageChanged.toString(),
                        )),
                  ],
                ),
                SizedBox(height: 2.0.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 1.0.h),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0.sp),
                              color: const Color(0xFFEFEFFA),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14.0.sp, vertical: 8.0.sp),
                                hintText: code,
                                hintStyle: TextStyle(
                                  color: const Color(0xFF8090BA),
                                  fontSize: 15.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w),
                        Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: const Color(0xFFEFEFFA),
                            ),
                            child: TextField(
                              onChanged: (String value) {
                                // Handle the phone number input change
                              },
                              keyboardType: TextInputType.phone,
                              readOnly: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                    left: 20.sp,
                                  ),
                                  hintText: phoneNumber,
                                  hintStyle: TextStyle(
                                    color: const Color(0xFF8090BA),
                                    fontSize: 15.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0.h),
                Center(
                  child: SelectButton(
                    onPressed: () {
                      context.read<UpdateProfileBloc>().add(SaveChangesEvent(
                            age: _ageChanged,
                            fullName: _fullNameChanged,
                          ));
                    },
                    buttonName: 'Save',
                    leftPadding: 0.sp,
                    radius: 18.sp,
                    child: const Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text('Save'),
                        ),
                        Positioned(
                          right: 0,
                          child: Image(
                              image: AssetImage('assets/images/arrow.png')),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
