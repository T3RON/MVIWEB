<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Name:  Auth Lang - English
 *
 * Author: Ben Edmunds
 * 		  ben.edmunds@gmail.com
 *         @benedmunds
 *
 * Author: Daniel Davis
 *         @ourmaninjapan
 *
 * Location: http://github.com/benedmunds/ion_auth/
 *
 * Created:  03.09.2013
 *
 * Description:  English language file for Ion Auth example views
 *
 */

// Errors
$lang['error_csrf'] = 'This form post did not pass our security checks.';

// Login
$lang['login_heading']         = 'ورود به سامانه';
$lang['login_subheading']      = 'لطفا با ایمیل / نام کاربری و رمز عبور خود وارد شوید.';
$lang['login_identity_label']  = 'ایمیل یا نام کاربری:';
$lang['login_password_label']  = 'گذرواژه:';
$lang['login_remember_label']  = 'مرا به خاطر بسپار:';
$lang['login_submit_btn']      = 'ورود';
$lang['login_forgot_password'] = 'رمز عبورم را فراموش کرده ام';

// Index
$lang['index_heading']           = 'کاربران';
$lang['index_subheading']        = 'در زیر لیستی از کاربران است.';
$lang['index_fname_th']          = 'نام';
$lang['index_lname_th']          = 'نام خانوادگی';
$lang['index_email_th']          = 'ایمیل';
$lang['index_groups_th']         = 'گروه';
$lang['index_status_th']         = 'وضعیت';
$lang['index_action_th']         = 'عملیات';
$lang['index_active_link']       = 'فعال';
$lang['index_inactive_link']     = 'غیر فعال';
$lang['index_create_user_link']  = 'ساخت کاربر جدید';
$lang['index_create_group_link'] = 'ساخت گروه جدید';

// Deactivate User
$lang['deactivate_heading']                  = 'غیر فعال کردن کاربر';
$lang['deactivate_subheading']               = 'مطمئنید که میخواهید کاربر\'%s\' را غیرفعال کند';
$lang['deactivate_confirm_y_label']          = 'بله:';
$lang['deactivate_confirm_n_label']          = 'خیر:';
$lang['deactivate_submit_btn']               = 'ثبت';
$lang['deactivate_validation_confirm_label'] = 'تائیدیه';
$lang['deactivate_validation_user_id_label'] = 'آیدی کاربر';

// Create User
$lang['create_user_heading']                           = 'ساخت کاربر';
$lang['create_user_subheading']                        = 'لطفا اطلاعات کاربران را در زیر وارد کنید';
$lang['create_user_fname_label']                       = 'نام:';
$lang['create_user_lname_label']                       = 'نام خانوادگی:';
$lang['create_user_identity_label']                    = 'هویت:';
$lang['create_user_company_label']                     = 'کمپانی:';
$lang['create_user_email_label']                       = 'ایمیل:';
$lang['create_user_phone_label']                       = 'موبایل:';
$lang['create_user_password_label']                    = 'گذرواژه:';
$lang['create_user_password_confirm_label']            = 'تایید گذرواژه:';
$lang['create_user_submit_btn']                        = 'افزودن کاربر';
$lang['create_user_validation_fname_label']            = 'نام';
$lang['create_user_validation_lname_label']            = 'نام خانوادگی:';
$lang['create_user_validation_identity_label']         = 'هویت';
$lang['create_user_validation_email_label']            = 'ایمیل';
$lang['create_user_validation_phone_label']            = 'موبایل';
$lang['create_user_validation_company_label']          = 'کمپانی';
$lang['create_user_validation_password_label']         = 'گذرواژه';
$lang['create_user_validation_password_confirm_label'] = 'تایید گذرواژه';

// Edit User
$lang['edit_user_heading']                           = 'Edit User';
$lang['edit_user_subheading']                        = 'Please enter the users information below.';
$lang['edit_user_fname_label']                       = 'First Name:';
$lang['edit_user_lname_label']                       = 'Last Name:';
$lang['edit_user_company_label']                     = 'Company Name:';
$lang['edit_user_email_label']                       = 'Email:';
$lang['edit_user_phone_label']                       = 'Phone:';
$lang['edit_user_password_label']                    = 'Password: (if changing password)';
$lang['edit_user_password_confirm_label']            = 'Confirm Password: (if changing password)';
$lang['edit_user_groups_heading']                    = 'Member of groups';
$lang['edit_user_submit_btn']                        = 'Save User';
$lang['edit_user_validation_fname_label']            = 'First Name';
$lang['edit_user_validation_lname_label']            = 'Last Name';
$lang['edit_user_validation_email_label']            = 'Email Address';
$lang['edit_user_validation_phone_label']            = 'Phone';
$lang['edit_user_validation_company_label']          = 'Company Name';
$lang['edit_user_validation_groups_label']           = 'Groups';
$lang['edit_user_validation_password_label']         = 'Password';
$lang['edit_user_validation_password_confirm_label'] = 'Password Confirmation';

// Create Group
$lang['create_group_title']                  = 'Create Group';
$lang['create_group_heading']                = 'Create Group';
$lang['create_group_subheading']             = 'Please enter the group information below.';
$lang['create_group_name_label']             = 'Group Name:';
$lang['create_group_desc_label']             = 'Description:';
$lang['create_group_submit_btn']             = 'Create Group';
$lang['create_group_validation_name_label']  = 'Group Name';
$lang['create_group_validation_desc_label']  = 'Description';

// Edit Group
$lang['edit_group_title']                  = 'Edit Group';
$lang['edit_group_saved']                  = 'Group Saved';
$lang['edit_group_heading']                = 'Edit Group';
$lang['edit_group_subheading']             = 'Please enter the group information below.';
$lang['edit_group_name_label']             = 'Group Name:';
$lang['edit_group_desc_label']             = 'Description:';
$lang['edit_group_submit_btn']             = 'Save Group';
$lang['edit_group_validation_name_label']  = 'Group Name';
$lang['edit_group_validation_desc_label']  = 'Description';

// Change Password
$lang['change_password_heading']                               = 'Change Password';
$lang['change_password_old_password_label']                    = 'Old Password:';
$lang['change_password_new_password_label']                    = 'New Password (at least %s characters long):';
$lang['change_password_new_password_confirm_label']            = 'Confirm New Password:';
$lang['change_password_submit_btn']                            = 'Change';
$lang['change_password_validation_old_password_label']         = 'Old Password';
$lang['change_password_validation_new_password_label']         = 'New Password';
$lang['change_password_validation_new_password_confirm_label'] = 'Confirm New Password';

// Forgot Password
$lang['forgot_password_heading']                 = 'Forgot Password';
$lang['forgot_password_subheading']              = 'Please enter your %s so we can send you an email to reset your password.';
$lang['forgot_password_email_label']             = '%s:';
$lang['forgot_password_submit_btn']              = 'Submit';
$lang['forgot_password_validation_email_label']  = 'Email Address';
$lang['forgot_password_username_identity_label'] = 'Username';
$lang['forgot_password_email_identity_label']    = 'Email';
$lang['forgot_password_email_not_found']         = 'No record of that email address.';

// Reset Password
$lang['reset_password_heading']                               = 'Change Password';
$lang['reset_password_new_password_label']                    = 'New Password (at least %s characters long):';
$lang['reset_password_new_password_confirm_label']            = 'Confirm New Password:';
$lang['reset_password_submit_btn']                            = 'Change';
$lang['reset_password_validation_new_password_label']         = 'New Password';
$lang['reset_password_validation_new_password_confirm_label'] = 'Confirm New Password';

// Activation Email
$lang['email_activate_heading']    = 'Activate account for %s';
$lang['email_activate_subheading'] = 'Please click this link to %s.';
$lang['email_activate_link']       = 'Activate Your Account';

// Forgot Password Email
$lang['email_forgot_password_heading']    = 'Reset Password for %s';
$lang['email_forgot_password_subheading'] = 'Please click this link to %s.';
$lang['email_forgot_password_link']       = 'Reset Your Password';

// New Password Email
$lang['email_new_password_heading']    = 'New Password for %s';
$lang['email_new_password_subheading'] = 'Your password has been reset to: %s';

