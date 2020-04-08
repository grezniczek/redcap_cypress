START TRANSACTION;

  	USE `REDCAP_DB_NAME`;
  	SET AUTOCOMMIT=0;
  	SET UNIQUE_CHECKS=0;
  	SET FOREIGN_KEY_CHECKS=0;
 
 	#We would ordinarily use truncate for speed, but we don't want to delete any projects that the end user has seeded
 	DELETE FROM redcap_projects WHERE project_id <= 13;

 	INSERT INTO redcap_projects 
 	(project_id,
	project_name,
	app_title,
	status,
	creation_time,
	production_time,
	inactive_time,
	created_by,
	draft_mode,
	surveys_enabled,
	repeatforms,
	scheduling,
	purpose,
	purpose_other,
	show_which_records,
	__SALT__,
	count_project,
	investigators,
	project_note,
	online_offline,
	auth_meth,
	double_data_entry,
	project_language,
	project_encoding,
	is_child_of,
	date_shift_max,
	institution,
	site_org_type,
	grant_cite,
	project_contact_name,
	project_contact_email,
	headerlogo,
	auto_inc_set,
	custom_data_entry_note,
	custom_index_page_note,
	order_id_by,
	custom_reports,
	report_builder,
	disable_data_entry,
	google_translate_default,
	require_change_reason,
	dts_enabled,
	project_pi_firstname,
	project_pi_mi,
	project_pi_lastname,
	project_pi_email,
	project_pi_alias,
	project_pi_username,
	project_pi_pub_exclude,
	project_pub_matching_institution,
	project_irb_number,
	project_grant_number,
	history_widget_enabled,
	secondary_pk,
	custom_record_label,
	display_project_logo_institution,
	imported_from_rs,
	display_today_now_button,
	auto_variable_naming,
	randomization,
	enable_participant_identifiers,
	survey_email_participant_field,
	survey_phone_participant_field,
	data_entry_trigger_url,
	template_id,
	date_deleted)
 	VALUES 
 	(1,'redcap_demo_cf3a51','Classic Database',1,'2018-06-18 16:44:57','2018-06-18 16:44:57',NULL,NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(2,'redcap_demo_1c4a85','Longitudinal Database (1 arm)',1,'2018-06-18 16:44:57','2018-06-18 16:44:57',NULL,NULL,0,0,1,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(3,'redcap_demo_7f15e9','Longitudinal Database (2 arms)',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,0,1,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(4,'redcap_demo_c4d958','Single Survey',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,1,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(5,'redcap_demo_7e90b8','Basic Demography',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(6,'redcap_demo_873cd7','Project Tracking Database',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(7,'redcap_demo_0e5478','Randomized Clinical Trial',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,1,0,NULL,NULL,NULL,NULL,NULL),
 	(8,'redcap_demo_20fc1b','Human Cancer Tissue Biobank',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(9,'redcap_demo_171eb7','Multiple Surveys (classic)',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,1,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,'email',NULL,NULL,NULL,NULL),
 	(10,'redcap_demo_dfe653','Multiple Surveys (longitudinal)',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,1,1,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,'email',NULL,NULL,NULL,NULL),
 	(11,'redcap_demo_670fb8','Piping Example Project',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,1,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(12,'redcap_demo_755f1a','Repeating Instruments',1,'2018-06-18 16:44:58','2018-06-18 16:44:58',NULL,NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL),
 	(13,'test_project','Test Project',0,'2018-06-18 16:57:12',NULL,NULL,2,0,1,1,0,2,'0',0,'74ac17fa39',1,NULL,NULL,1,'table',0,'English',NULL,NULL,364,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'Thomas','L','Jones','aldefouw@medicine.wisc.edu','Jones J',NULL,NULL,NULL,'2018-0305',NULL,1,NULL,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL);

COMMIT;