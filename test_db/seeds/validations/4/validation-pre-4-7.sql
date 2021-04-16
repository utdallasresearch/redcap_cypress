START TRANSACTION;

USE `REDCAP_DB_NAME`;
SET AUTOCOMMIT=0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

TRUNCATE TABLE redcap_actions;
TRUNCATE TABLE redcap_alerts;
TRUNCATE TABLE redcap_alerts_recurrence;
TRUNCATE TABLE redcap_alerts_sent;
TRUNCATE TABLE redcap_alerts_sent_log;
TRUNCATE TABLE redcap_auth;
TRUNCATE TABLE redcap_auth_history;
TRUNCATE TABLE redcap_auth_questions;
TRUNCATE TABLE redcap_config;
TRUNCATE TABLE redcap_crons;
TRUNCATE TABLE redcap_crons_history;
TRUNCATE TABLE redcap_dashboard_ip_location_cache;
TRUNCATE TABLE redcap_data;
TRUNCATE TABLE redcap_data_access_groups;
TRUNCATE TABLE redcap_data_access_groups_users;
TRUNCATE TABLE redcap_data_dictionaries;
TRUNCATE TABLE redcap_data_quality_resolutions;
TRUNCATE TABLE redcap_data_quality_rules;
TRUNCATE TABLE redcap_data_quality_status;
TRUNCATE TABLE redcap_ddp_log_view;
TRUNCATE TABLE redcap_ddp_log_view_data;
TRUNCATE TABLE redcap_ddp_mapping;
TRUNCATE TABLE redcap_ddp_preview_fields;
TRUNCATE TABLE redcap_ddp_records;
TRUNCATE TABLE redcap_ddp_records_data;
TRUNCATE TABLE redcap_docs;
TRUNCATE TABLE redcap_docs_to_edocs;
TRUNCATE TABLE redcap_edocs_metadata;
TRUNCATE TABLE redcap_ehr_access_tokens;
TRUNCATE TABLE redcap_ehr_datamart_revisions;
TRUNCATE TABLE redcap_ehr_fhir_logs;
TRUNCATE TABLE redcap_ehr_import_counts;
TRUNCATE TABLE redcap_ehr_user_map;
TRUNCATE TABLE redcap_ehr_user_projects;
TRUNCATE TABLE redcap_esignatures;
TRUNCATE TABLE redcap_events_arms;
TRUNCATE TABLE redcap_events_calendar;
TRUNCATE TABLE redcap_events_forms;
TRUNCATE TABLE redcap_events_metadata;
TRUNCATE TABLE redcap_events_repeat;
TRUNCATE TABLE redcap_external_links;
TRUNCATE TABLE redcap_external_links_dags;
TRUNCATE TABLE redcap_external_links_exclude_projects;
TRUNCATE TABLE redcap_external_links_users;
TRUNCATE TABLE redcap_external_module_settings;
TRUNCATE TABLE redcap_external_modules;
TRUNCATE TABLE redcap_external_modules_downloads;
TRUNCATE TABLE redcap_external_modules_log;
TRUNCATE TABLE redcap_external_modules_log_parameters;
TRUNCATE TABLE redcap_folders;
TRUNCATE TABLE redcap_folders_projects;
TRUNCATE TABLE redcap_history_size;
TRUNCATE TABLE redcap_history_version;
TRUNCATE TABLE redcap_instrument_zip;
TRUNCATE TABLE redcap_instrument_zip_authors;
TRUNCATE TABLE redcap_instrument_zip_origins;
TRUNCATE TABLE redcap_ip_banned;
TRUNCATE TABLE redcap_ip_cache;
TRUNCATE TABLE redcap_library_map;
TRUNCATE TABLE redcap_locking_data;
TRUNCATE TABLE redcap_locking_labels;
TRUNCATE TABLE redcap_locking_records;
TRUNCATE TABLE redcap_locking_records_pdf_archive;
TRUNCATE TABLE redcap_log_event;
TRUNCATE TABLE redcap_log_event2;
TRUNCATE TABLE redcap_log_event3;
TRUNCATE TABLE redcap_log_event4;
TRUNCATE TABLE redcap_log_event5;
TRUNCATE TABLE redcap_log_view;
TRUNCATE TABLE redcap_log_view_requests;
TRUNCATE TABLE redcap_messages;
TRUNCATE TABLE redcap_messages_recipients;
TRUNCATE TABLE redcap_messages_status;
TRUNCATE TABLE redcap_messages_threads;
TRUNCATE TABLE redcap_metadata;
TRUNCATE TABLE redcap_metadata_archive;
TRUNCATE TABLE redcap_metadata_prod_revisions;
TRUNCATE TABLE redcap_metadata_temp;
TRUNCATE TABLE redcap_mobile_app_devices;
TRUNCATE TABLE redcap_mobile_app_files;
TRUNCATE TABLE redcap_mobile_app_log;
TRUNCATE TABLE redcap_mycap_messages;
TRUNCATE TABLE redcap_mycap_participants;
TRUNCATE TABLE redcap_mycap_projectfiles;
TRUNCATE TABLE redcap_mycap_projects;
TRUNCATE TABLE redcap_mycap_syncissuefiles;
TRUNCATE TABLE redcap_mycap_syncissues;
TRUNCATE TABLE redcap_new_record_cache;
TRUNCATE TABLE redcap_outgoing_email_counts;
TRUNCATE TABLE redcap_page_hits;
TRUNCATE TABLE redcap_project_checklist;
TRUNCATE TABLE redcap_projects;
TRUNCATE TABLE redcap_projects_external;
TRUNCATE TABLE redcap_projects_templates;
TRUNCATE TABLE redcap_projects_user_hidden;
TRUNCATE TABLE redcap_pub_articles;
TRUNCATE TABLE redcap_pub_authors;
TRUNCATE TABLE redcap_pub_matches;
TRUNCATE TABLE redcap_pub_mesh_terms;
TRUNCATE TABLE redcap_pub_sources;
TRUNCATE TABLE redcap_queue;
TRUNCATE TABLE redcap_randomization;
TRUNCATE TABLE redcap_randomization_allocation;
TRUNCATE TABLE redcap_record_counts;
TRUNCATE TABLE redcap_record_dashboards;
TRUNCATE TABLE redcap_record_list;
TRUNCATE TABLE redcap_reports;
TRUNCATE TABLE redcap_reports_access_dags;
TRUNCATE TABLE redcap_reports_access_roles;
TRUNCATE TABLE redcap_reports_access_users;
TRUNCATE TABLE redcap_reports_edit_access_dags;
TRUNCATE TABLE redcap_reports_edit_access_roles;
TRUNCATE TABLE redcap_reports_edit_access_users;
TRUNCATE TABLE redcap_reports_fields;
TRUNCATE TABLE redcap_reports_filter_dags;
TRUNCATE TABLE redcap_reports_filter_events;
TRUNCATE TABLE redcap_reports_folders;
TRUNCATE TABLE redcap_reports_folders_items;
TRUNCATE TABLE redcap_sendit_docs;
TRUNCATE TABLE redcap_sendit_recipients;
TRUNCATE TABLE redcap_sessions;
TRUNCATE TABLE redcap_surveys;
TRUNCATE TABLE redcap_surveys_emails;
TRUNCATE TABLE redcap_surveys_emails_recipients;
TRUNCATE TABLE redcap_surveys_emails_send_rate;
TRUNCATE TABLE redcap_surveys_erase_twilio_log;
TRUNCATE TABLE redcap_surveys_login;
TRUNCATE TABLE redcap_surveys_participants;
TRUNCATE TABLE redcap_surveys_pdf_archive;
TRUNCATE TABLE redcap_surveys_phone_codes;
TRUNCATE TABLE redcap_surveys_queue;
TRUNCATE TABLE redcap_surveys_queue_hashes;
TRUNCATE TABLE redcap_surveys_response;
TRUNCATE TABLE redcap_surveys_scheduler;
TRUNCATE TABLE redcap_surveys_scheduler_queue;
TRUNCATE TABLE redcap_surveys_short_codes;
TRUNCATE TABLE redcap_surveys_themes;
TRUNCATE TABLE redcap_todo_list;
TRUNCATE TABLE redcap_two_factor_response;
TRUNCATE TABLE redcap_user_allowlist;
TRUNCATE TABLE redcap_user_information;
TRUNCATE TABLE redcap_user_rights;
TRUNCATE TABLE redcap_user_roles;
TRUNCATE TABLE redcap_validation_types;
TRUNCATE TABLE redcap_web_service_cache;


# Dump of table redcap_actions
# ------------------------------------------------------------



# Dump of table redcap_alerts
# ------------------------------------------------------------



# Dump of table redcap_alerts_recurrence
# ------------------------------------------------------------



# Dump of table redcap_alerts_sent
# ------------------------------------------------------------



# Dump of table redcap_alerts_sent_log
# ------------------------------------------------------------



# Dump of table redcap_auth
# ------------------------------------------------------------

LOCK TABLES `redcap_auth` WRITE;
/*!40000 ALTER TABLE `redcap_auth` DISABLE KEYS */;

INSERT INTO `redcap_auth` (`username`, `password`, `password_salt`, `legacy_hash`, `temp_pwd`, `password_question`, `password_answer`, `password_question_reminder`, `password_reset_key`)
VALUES
	('test_admin','ca1f5afb1654d7e2006eb78bb2bae3f41d5c87b101ecdc62025bb670536c839ec90274ab7dc5a370d76b8d798bf90ea02a71ad813c9f8b7cbc118f0209512511','pTq4KY6%-j@!u&FvP3pnrpM-rX.PUTS&rQj6y$2k-v6iFefcTqnrgfieBKBNeNMusZ7ZM3CS77CQZ4cmGmT4vXFhUK&wNdMB*@^K',0,0,1,'e473f91fcd0c1d4c8661247950fde6b08bd0e71cb254074522071a1baaefbf29626aafda245cf031a9a04356b21b4d07ebec23b31c79c6920c869de7f9f0a2bb',NULL,NULL),
	('test_deleteuser','8ac494955c20897888552e142af4612dc88e930ee223893b6329f663494a3d5d7025435e20d2725e5dc3c0c6195ad0aae9166e7142ebec2b91b0dd980e3e0349','i$k6U!-t7#noAyW2Eczj5R#Q%pzEj7-cRTBk$Nv-JWYCnk!ZHEtGDb%8F@W.wKHLYL%~iCsx4fM^uo@pM@t6dBA~j.4#C29HVN*E',0,0,1,'7c69351d2dc03f53b5963af8fc05e4203e4f57fef95ee460196d5da5076438fbc8265f67fb7d87ff57a235c1ce70013d74defbbde01bd7b7728f833f1b3720f9',NULL,NULL),
	('test_user','e9e76aefeff502580201214defad1c165e1731cef8dce94c0c72a5a90096caad833732cd3138cd5f6b2aa46bd06b667cd1a748d17aa3c8bd89e4b48e657ee803','#*dRqjBXLP#9AJ!A%t.g6btDMwuWoZLo@Kqmw66biPIR&@RYmy7fMDIDpyQxEK-#CbWII^~CLZ.DXxUdIHQuyY@VHwF9oI8EEYq-',0,0,1,'b9f90749fca859c7f873db98d19726638462b15d5b86c7cdb333048644bf5f02355fd13b508c606e73437af6a078837df23d07d3afe5b47334966d90c719c9d4',NULL,NULL),
	('test_user_b','c39b89a8c20e6d63ae65e77dbbad8c7f5b10850bf17495cdf2585c11202a2516f47b4e1d6c5993059a4cb72dd923053f2650f935b222b24af68f3533ce522bcf','rbcb^krwHL#mjiPjytizo%UeE~ykQ2nj$7drG%n8GJ8o5UTGC$nRY@KeIGFBLL%skbhtZkYFP-*!9PVjoLXtN.MZQW4pHWqhq^9B',0,1,1,'fed42ebd7a546098ddc5a9de005e75302b1246943b94b72cbe5103a9cbd7e5ffb59a9f08538d81afab8fa3a82f012702eaff5fade8f97209f247d66de806ca70',NULL,'b204bbab201698a7f566270f145c5c917bfa4fe8fb96e69ed1c3531307990a2bf8a12e497639005d9730d73dd6ba1faa41028be4897c3c84a505624ee95b15db'),
	('test_user_c','38ec1784929d5003c9978dbb244c1374779f6b35c5b8471d2b45bae99e75adbf0c9758a0bfe9b7a50c72d5fcbb08744c77cc66bd22edf0adb6e965dadb65b67b','kWDXbD!.rXHz!~Lia^7d~kgtpW#HQUDf#CGy&H.e5YK^U3^$2eGckiStR@whoeL!q~LCzk5ow%V!D~~wXm.Hm-U*F2@jSvzPfa2e',0,0,1,'ae7e4a342341c98df03c356ec17f8bcf5a412c1d5ddd7e574698d0eba0ff0bb98788a63f20bfa9d383d20a55248b75f34976114835f6a364a505a3e06ce415d7',NULL,NULL);

/*!40000 ALTER TABLE `redcap_auth` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_auth_history
# ------------------------------------------------------------

LOCK TABLES `redcap_auth_history` WRITE;
/*!40000 ALTER TABLE `redcap_auth_history` DISABLE KEYS */;

INSERT INTO `redcap_auth_history` (`username`, `password`, `timestamp`)
VALUES
	('test_admin','eb7a82d87578a250fe742450cbaacb693ef52ac9e9a49aeda3d45642282ba301fa6de66cd70dfc27f1a9e6bd9f375602aa009d20f225e865df5bd4c2865aa19c','2020-09-18 15:10:17'),
	('test_admin','ca1f5afb1654d7e2006eb78bb2bae3f41d5c87b101ecdc62025bb670536c839ec90274ab7dc5a370d76b8d798bf90ea02a71ad813c9f8b7cbc118f0209512511','2020-09-18 15:10:17'),
	('test_user','379768db389cbdac38c4d6a1b077feb1381ff3252f6b3d771f544c77ad2d9b0750eff91910fcbd63bbbc2c88b9f4f950c199bdbaeb11193b3714f830a942ee59','2020-09-18 15:10:17'),
	('test_user_b','d3fa05a3baf0ddadb39f8010e90ddcb48480bfd17903af0f61c2d6275470931cb50a69fb52d30cebb3f5fa767db5c1de7560fab7e2b35674ad54ecf453b0c51a','2020-09-18 15:10:17'),
	('test_user','e9e76aefeff502580201214defad1c165e1731cef8dce94c0c72a5a90096caad833732cd3138cd5f6b2aa46bd06b667cd1a748d17aa3c8bd89e4b48e657ee803','2020-09-18 15:10:17'),
	('test_user_b','e438dbb5b95ffda94e14910d1d5fe985bf77dbc206593ca331965cba541e14db061f1dce8295e8cc975fe5c3f32f4967f4f7aaca1b52976209f2e0840a21da04','2020-09-18 15:10:17'),
	('test_user_c','d0d56d850fe5fb287e28d2e4fba3959f4e7b379ce20274a14521a2652a59af394571cf834f505706451ad7448aac466172c507bca1932311f57b35945fcede69','2020-09-23 15:10:42'),
	('test_user_c','38ec1784929d5003c9978dbb244c1374779f6b35c5b8471d2b45bae99e75adbf0c9758a0bfe9b7a50c72d5fcbb08744c77cc66bd22edf0adb6e965dadb65b67b','2020-09-23 15:11:06'),
	('test_deleteuser','39c0553cb504dd7d5dfa9a233ed8d0fc829aa41eb90500e948ce744a7f2c5f26f074297e02ce275976af03d7d64a46c1a557c645b95a1c3915b70324e73e9ae4','2020-09-23 15:11:46'),
	('test_deleteuser','8ac494955c20897888552e142af4612dc88e930ee223893b6329f663494a3d5d7025435e20d2725e5dc3c0c6195ad0aae9166e7142ebec2b91b0dd980e3e0349','2020-09-23 15:12:12');

/*!40000 ALTER TABLE `redcap_auth_history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_auth_questions
# ------------------------------------------------------------

LOCK TABLES `redcap_auth_questions` WRITE;
/*!40000 ALTER TABLE `redcap_auth_questions` DISABLE KEYS */;

INSERT INTO `redcap_auth_questions` (`qid`, `question`)
VALUES
	(1,'What was your childhood nickname?'),
	(2,'In what city did you meet your spouse/significant other?'),
	(3,'What is the name of your favorite childhood friend?'),
	(4,'What street did you live on in third grade?'),
	(5,'What is your oldest sibling\'s birthday month and year? (e.g., January 1900)'),
	(6,'What is the middle name of your oldest child?'),
	(7,'What is your oldest sibling\'s middle name?'),
	(8,'What school did you attend for sixth grade?'),
	(9,'What was your childhood phone number including area code? (e.g., 000-000-0000)'),
	(10,'What is your oldest cousin\'s first and last name?'),
	(11,'What was the name of your first stuffed animal?'),
	(12,'In what city or town did your mother and father meet?'),
	(13,'Where were you when you had your first kiss?'),
	(14,'What is the first name of the boy or girl that you first kissed?'),
	(15,'What was the last name of your third grade teacher?'),
	(16,'In what city does your nearest sibling live?'),
	(17,'What is your oldest brother\'s birthday month and year? (e.g., January 1900)'),
	(18,'What is your maternal grandmother\'s maiden name?'),
	(19,'In what city or town was your first job?'),
	(20,'What is the name of the place your wedding reception was held?'),
	(21,'What is the name of a college you applied to but didn\'t attend?');

/*!40000 ALTER TABLE `redcap_auth_questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_config
# ------------------------------------------------------------

LOCK TABLES `redcap_config` WRITE;
/*!40000 ALTER TABLE `redcap_config` DISABLE KEYS */;

INSERT INTO `redcap_config` (`field_name`, `value`)
VALUES
	('aafAccessUrl',''),
	('aafAllowLocalsCreateDB','off'),
	('aafAud',''),
	('aafDisplayOnEmailUsers','off'),
	('aafIss',''),
	('aafPrimaryField','cn'),
	('aafScopeTarget',''),
	('alerts_allow_email_freeform','1'),
	('alerts_allow_email_variables','1'),
	('alerts_allow_phone_freeform','1'),
	('alerts_allow_phone_variables','1'),
	('alerts_email_freeform_domain_allowlist',''),
	('allow_create_db_default','1'),
	('allow_kill_mysql_process','0'),
	('allow_outbound_http','1'),
	('amazon_s3_bucket',''),
	('amazon_s3_endpoint',''),
	('amazon_s3_key',''),
	('amazon_s3_secret',''),
	('api_enabled','1'),
	('api_token_request_type','admin_approve'),
	('auth_meth_global','table'),
	('auto_prod_changes','0'),
	('auto_prod_changes_check_identifiers','0'),
	('auto_report_stats','1'),
	('auto_report_stats_last_sent','2000-01-01'),
	('autologout_timer','30'),
	('aws_quickstart','0'),
	('azure_app_name',''),
	('azure_app_secret',''),
	('azure_container',''),
	('azure_quickstart','0'),
	('bioportal_api_token',''),
	('bioportal_api_url','https://data.bioontology.org/'),
	('bioportal_ontology_list',''),
	('bioportal_ontology_list_cache_time',''),
	('certify_text_create',''),
	('certify_text_prod',''),
	('clickjacking_prevention','0'),
	('cross_domain_access_control',''),
	('data_entry_trigger_enabled','1'),
	('db_character_set','utf8mb4'),
	('db_collation','utf8mb4_unicode_ci'),
	('default_datetime_format','M-D-Y_24'),
	('default_number_format_decimal','.'),
	('default_number_format_thousands_sep',''),
	('display_nonauth_projects','1'),
	('display_project_logo_institution','0'),
	('display_project_xml_backup_option','1'),
	('display_today_now_button','1'),
	('dkim_private_key','-----BEGIN ENCRYPTED PRIVATE KEY-----\nMIIFDjBABgkqhkiG9w0BBQ0wMzAbBgkqhkiG9w0BBQwwDgQInprtyJEfSO0CAggA\nMBQGCCqGSIb3DQMHBAi31iWcJv7TOQSCBMhHdDN6hxoBRM4/GIOa/P9PcZZpt09H\nrQuMPwTjtKevmv5ebNXAtCAxqG9G1bVGPMLDe8oG9UydcC/Q7r9BNzAM+U83dsRr\nghWfgkcrDVi4lzhEhL47Sm8PxuQQrSoOzjRZfp0O4j6tD3VAN3uOTqJcvzmlr+La\nn09MZ1Gxdx6mJezdNE9ynIFjTggDqowTpEqKEyYXoICRE3EFoHqMy79iFMQa9FTd\nIzK0wYkvzrC5ZIxHXrihWnr2UhtPKg9XaMQizZFrutHFj5hPf4oMY5lKHJg8QxKN\nzsr0dGV33t4X0SPYkhzSvNbNZXQrQaPRgJw4QNXJM+CRtai79UOGKDfbGUTZqbeB\nXnIzHwVJlrKWGD017tqPwLtxCHJWho3hsvYsACiIHQMh//fLuzdbgOl+lPlefLjA\n4Ue3NsdMw0w+RG3mTmgVuw/cK48zX1DQnI1PPWDBi/wolwhrqyFlVTCztcZcK3ry\nabM27tmhfQz12nxmsaqqyHTkHBnRZZy4IC6siTe9CZZYEq0Dg/CKOJLMbO/yf8P5\nGM2dxFvKuVw+1g6EnzrARl8v2j9s5EPM4Zag1PsxXhbHFONz3LpP7Iz1N+z/orRU\ntg/QieMjePYlZ5A4AZR8WID0YtJW7wIjmBcmb8qB3VUrbbIcCkgZaauttiYwDSrL\nDEumeyfnZDL/Zz0/1qtU2Xs7F19vh+qUNpEy3SYeCroTp1Tm0eicAufi877SJpff\naCIrJbUX/6/W+0nzshCKIRDULycf+CSsWCxuMmVz2ihR/Y0ANU1TfzxSvVAug7tM\nU+4Hq299p+AHwxVXuso5INUMkP0ymBfspFgaBWl39smsjKl8gj4p0vaO56p82rb1\nGKrK1EWYe8bbJmHghx7akA48Vpm75MlC9JdTOEFs70W/2ABRNAs5mEYhKWnGI3du\nwrtP7FAIK4t4eYJ8XDDAymIDoMvVH2MOwZnJEnAML38P3yymbbcTdJFRjH7kB+yN\nF77qU3TAxiZMXTTx8Zbn1QZAr89U46kv0rOhpjMJJ9Fu7tQbi5lhJQKBSE3tNIJh\nV9tgjjT4B/M/VMHnHgNAq7YNKaie8wI3IMKZafZCDYVHHkf3nze1TPbhFT2JhbSE\nSEiiUcXu5H2QmnvVFuDOGpTr1XR1aVumNrvll2Acel3PqgX4XbTNIfjReBmOGAGX\ne6hnGGv+SeyN1L3oWNX8syZ1/c1O0ak/L+l90GxSrnUosf8AvcfIZttE9HwXc/El\nZYcFl6ndLBJ5QtKQMdHUyhzQ4L9w/Wnmag/cudPDqJmjk39IskZFGG4GncWvTqY+\nOu7GFra1WkEOOz7rK8pDrOxslmALVYseGpbcujRC0JVEGDF3Ha+AyU3i9I0us0FT\nH2XILkM6we5LWJyTpTBzh390dCgXVbpUq72scs2YnyER4dIj3bKYJ2DlJN9zo1fx\nIc0zFjpyG49Qr3W6jKKofAZ+v8kxP/R5aldBufj0yKMBEpF7V6wuqEpK9+02mGLP\nVGPtKuGOQWC9NDscfePSTal3FmvA/P2prQ4Ne6NrohM87wDmlWV6BO+Y4Yn5jpAn\nqvBzjtSj0QaPIOPV4939Wnea4EyaO43mAJrAylnJYbS0kfchLVyT3mO3mvpJVnSp\ntIc=\n-----END ENCRYPTED PRIVATE KEY-----\n'),
	('drw_upload_option_enabled','1'),
	('dts_enabled_global','0'),
	('edoc_field_option_enabled','1'),
	('edoc_path',''),
	('edoc_storage_option','0'),
	('edoc_upload_max',''),
	('email_alerts_converter_enabled','0'),
	('email_domain_allowlist',''),
	('enable_edit_prod_events','0'),
	('enable_edit_prod_repeating_setup','1'),
	('enable_edit_survey_response','0'),
	('enable_field_attachment_video_url','1'),
	('enable_http_compression','1'),
	('enable_ontology_auto_suggest','1'),
	('enable_plotting','2'),
	('enable_plotting_survey_results','1'),
	('enable_projecttype_forms','1'),
	('enable_projecttype_singlesurvey','1'),
	('enable_projecttype_singlesurveyforms','1'),
	('enable_survey_text_to_speech','1'),
	('enable_url_shortener','1'),
	('enable_url_shortener_redcap','1'),
	('enable_user_allowlist','0'),
	('external_module_alt_paths',''),
	('external_modules_allow_activation_user_request','1'),
	('external_modules_project_custom_text',''),
	('external_modules_unsafe_edoc_references_checked','1'),
	('external_modules_updates_available',''),
	('external_modules_updates_available_last_check',''),
	('fhir_break_the_glass_ehr_usertype','SystemLogin'),
	('fhir_break_the_glass_enabled',''),
	('fhir_break_the_glass_token_password',''),
	('fhir_break_the_glass_token_username',''),
	('fhir_break_the_glass_token_usertype','EMP'),
	('fhir_break_the_glass_username_token_base_url',''),
	('fhir_client_id',''),
	('fhir_client_secret',''),
	('fhir_convert_timestamp_from_gmt','0'),
	('fhir_custom_text',''),
	('fhir_data_fetch_interval','24'),
	('fhir_data_mart_create_project','0'),
	('fhir_ddp_enabled','0'),
	('fhir_display_info_project_setup','1'),
	('fhir_ehr_mrn_identifier',''),
	('fhir_endpoint_authorize_url',''),
	('fhir_endpoint_base_url',''),
	('fhir_endpoint_token_url',''),
	('fhir_include_email_address','0'),
	('fhir_source_system_custom_name','EHR'),
	('fhir_standalone_authentication_flow','standalone_launch'),
	('fhir_stop_fetch_inactivity_days','7'),
	('fhir_url_user_access',''),
	('fhir_user_rights_super_users_only','1'),
	('field_comment_log_enabled_default','1'),
	('file_attachment_upload_max',''),
	('file_repository_enabled','1'),
	('file_repository_upload_max',''),
	('file_upload_vault_filesystem_host',''),
	('file_upload_vault_filesystem_password',''),
	('file_upload_vault_filesystem_path',''),
	('file_upload_vault_filesystem_private_key_path',''),
	('file_upload_vault_filesystem_type',''),
	('file_upload_vault_filesystem_username',''),
	('file_upload_versioning_enabled','1'),
	('file_upload_versioning_global_enabled','1'),
	('footer_links',''),
	('footer_text',''),
	('from_email',''),
	('from_email_domain_exclude',''),
	('google_cloud_storage_edocs_bucket',''),
	('google_cloud_storage_temp_bucket',''),
	('google_oauth2_client_id',''),
	('google_oauth2_client_secret',''),
	('google_recaptcha_secret_key',''),
	('google_recaptcha_site_key',''),
	('google_translate_enabled','0'),
	('googlemap_key',''),
	('grant_cite',''),
	('headerlogo',''),
	('helpfaq_custom_text',''),
	('homepage_announcement',''),
	('homepage_announcement_login','1'),
	('homepage_contact','REDCap Administrator (123-456-7890)'),
	('homepage_contact_email','email@yoursite.edu'),
	('homepage_contact_url',''),
	('homepage_custom_text',''),
	('homepage_grant_cite',''),
	('hook_functions_file','/var/www/app/public_html/hook_functions.php'),
	('identifier_keywords','name, street, address, city, county, precinct, zip, postal, date, phone, fax, mail, ssn, social security, mrn, dob, dod, medical, record, id, age'),
	('institution','SoAndSo University'),
	('is_development_server','0'),
	('language_global','English'),
	('login_autocomplete_disable','0'),
	('login_custom_text',''),
	('login_logo',''),
	('logout_fail_limit','1'),
	('logout_fail_window','1'),
	('mandrill_api_key',''),
	('mobile_app_enabled','1'),
	('my_profile_enable_edit','1'),
	('openid_provider_name',''),
	('openid_provider_url',''),
	('page_hit_threshold_per_minute','600'),
	('password_algo','sha512'),
	('password_history_limit','0'),
	('password_recovery_custom_text',''),
	('password_reset_duration','0'),
	('pdf_econsent_filesystem_host',''),
	('pdf_econsent_filesystem_password',''),
	('pdf_econsent_filesystem_path',''),
	('pdf_econsent_filesystem_private_key_path',''),
	('pdf_econsent_filesystem_type',''),
	('pdf_econsent_filesystem_username',''),
	('pdf_econsent_system_custom_text',''),
	('pdf_econsent_system_enabled','1'),
	('pdf_econsent_system_ip','1'),
	('project_contact_email','email@yoursite.edu'),
	('project_contact_name','REDCap Administrator (123-456-7890)'),
	('project_encoding',''),
	('project_language','English'),
	('promis_api_base_url','https://www.redcap-cats.org/promis_api/'),
	('promis_enabled','1'),
	('promis_registration_id',''),
	('promis_token',''),
	('proxy_hostname',''),
	('proxy_username_password',''),
	('pub_matching_email_days','7'),
	('pub_matching_email_limit','3'),
	('pub_matching_email_subject',''),
	('pub_matching_email_text',''),
	('pub_matching_emails','0'),
	('pub_matching_enabled','0'),
	('pub_matching_institution','Vanderbilt\nMeharry'),
	('randomization_global','1'),
	('realtime_webservice_convert_timestamp_from_gmt','0'),
	('realtime_webservice_custom_text',''),
	('realtime_webservice_data_fetch_interval','24'),
	('realtime_webservice_display_info_project_setup','1'),
	('realtime_webservice_global_enabled','0'),
	('realtime_webservice_source_system_custom_name',''),
	('realtime_webservice_stop_fetch_inactivity_days','7'),
	('realtime_webservice_url_data',''),
	('realtime_webservice_url_metadata',''),
	('realtime_webservice_url_user_access',''),
	('realtime_webservice_user_rights_super_users_only','1'),
	('record_locking_pdf_vault_filesystem_host',''),
	('record_locking_pdf_vault_filesystem_password',''),
	('record_locking_pdf_vault_filesystem_path',''),
	('record_locking_pdf_vault_filesystem_private_key_path',''),
	('record_locking_pdf_vault_filesystem_type',''),
	('record_locking_pdf_vault_filesystem_username',''),
	('redcap_base_url','http://localhost:8080/'),
	('redcap_base_url_display_error_on_mismatch','1'),
	('redcap_last_install_date','2020-09-24'),
	('redcap_survey_base_url',''),
	('redcap_updates_available','{\"lts\":[],\"std\":[],\"current_branch\":\"std\",\"latest_version\":null}'),
	('redcap_updates_available_last_check','2020-09-24 20:57:02'),
	('redcap_updates_community_password',''),
	('redcap_updates_community_user',''),
	('redcap_updates_password',''),
	('redcap_updates_password_encrypted','1'),
	('redcap_updates_user',''),
	('redcap_version','10.6.4'),
	('report_stats_url','https://redcap.vanderbilt.edu/consortium/collect_stats.php?hostname=localhost&ip=172.25.0.4&alt_hostname=localhost&hostkey_hash=54259fdcd1bc0144cdbad41ba4f7ef54&num_prots=0&num_prods=0&num_archived=0&rnd982g4078393ae839z1_auto&purposes=0,0,0,0&num_inactive=0&num_users=1&auth_meth=none&version=10.6.4&activeusers1m=0&activeusers6m=0&activeuserstotal=0&usersloggedin1m=1&usersloggedin6m=1&usersloggedintotal=1&hostlabel=SoAndSo+University&homepage_contact=REDCap+Administrator+%28123-456-7890%29&homepage_contact_email=email@yoursite.edu&dts=0&ddp=0&ddp_records=0&ddp_fhir=0&ddp_fhir_records=0&data_mart=&data_mart_records=&rand=0&dde=0&parentchild=0&cats_dev=0&cats_prod=0&mobile_app_users=0&mobile_app_users1m=0&mobile_app_users6m=0&mobile_app_projects_init=0&mobile_app_projects_sync=0&two_factor=DISABLED&twilio_projects=0&full_url=http%3A%2F%2Flocalhost%2F&site_org_type=SoAndSo+Institute+for+Clinical+and+Translational+Research&econsent_projects=0&econsent_files=0&aws_quickstart=0&azure_quickstart=0&alerts=0&alerts_projects=0&alerts_projects_prod=0&php_version=7.3.16&mysql_version=5.7&modules=%5B%5D'),
	('sams_logout',''),
	('send_emails_admin_tasks','1'),
	('sendgrid_api_key',''),
	('sendit_enabled','1'),
	('sendit_upload_max',''),
	('shared_library_enabled','1'),
	('shibboleth_logout',''),
	('shibboleth_table_config','{\"splash_default\":\"non-inst-login\",\"table_login_option\":\"Use local REDCap login\",\"institutions\":[{\"login_option\":\"Shibboleth Login\",\"login_text\":\"Click the image below to login using Shibboleth\",\"login_image\":\"https:\\/\\/wiki.shibboleth.net\\/confluence\\/download\\/attachments\\/131074\\/atl.site.logo?version=2&modificationDate=1502412080059&api=v2\",\"login_url\":\"\"}]}'),
	('shibboleth_username_field','none'),
	('site_org_type','SoAndSo Institute for Clinical and Translational Research'),
	('superusers_only_create_project','1'),
	('superusers_only_move_to_prod','1'),
	('survey_pid_create_project',''),
	('survey_pid_mark_completed',''),
	('survey_pid_move_to_analysis_status',''),
	('survey_pid_move_to_prod_status',''),
	('suspend_users_inactive_days','180'),
	('suspend_users_inactive_send_email','1'),
	('suspend_users_inactive_type',''),
	('system_offline','0'),
	('system_offline_message',''),
	('temp_files_last_delete','2020-09-24 20:57:02'),
	('twilio_display_info_project_setup','0'),
	('twilio_enabled_by_super_users_only','0'),
	('twilio_enabled_global','1'),
	('two_factor_auth_authenticator_enabled','1'),
	('two_factor_auth_duo_enabled','0'),
	('two_factor_auth_duo_hostname',''),
	('two_factor_auth_duo_ikey',''),
	('two_factor_auth_duo_skey',''),
	('two_factor_auth_email_enabled','1'),
	('two_factor_auth_enabled','0'),
	('two_factor_auth_ip_check_enabled','0'),
	('two_factor_auth_ip_range',''),
	('two_factor_auth_ip_range_alt',''),
	('two_factor_auth_ip_range_include_private','0'),
	('two_factor_auth_trust_period_days','0'),
	('two_factor_auth_trust_period_days_alt','0'),
	('two_factor_auth_twilio_account_sid',''),
	('two_factor_auth_twilio_auth_token',''),
	('two_factor_auth_twilio_enabled','0'),
	('two_factor_auth_twilio_from_number',''),
	('use_email_display_name','1'),
	('user_access_dashboard_custom_notification',''),
	('user_access_dashboard_enable','1'),
	('user_messaging_enabled','1'),
	('user_messaging_prevent_admin_messaging','0'),
	('user_sponsor_dashboard_enable','1'),
	('user_sponsor_set_expiration_days','365');

/*!40000 ALTER TABLE `redcap_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_crons
# ------------------------------------------------------------

LOCK TABLES `redcap_crons` WRITE;
/*!40000 ALTER TABLE `redcap_crons` DISABLE KEYS */;

INSERT INTO `redcap_crons` (`cron_id`, `cron_name`, `external_module_id`, `cron_description`, `cron_enabled`, `cron_frequency`, `cron_max_run_time`, `cron_instances_max`, `cron_instances_current`, `cron_last_run_start`, `cron_last_run_end`, `cron_times_failed`, `cron_external_url`)
VALUES
	(1,'PubMed',NULL,'Query the PubMed API to find publications associated with PIs in REDCap, and store publication attributes and PI/project info. Emails will then be sent to any PIs that have been found to have publications in PubMed, and (if applicable) will be asked to associate their publication to a REDCap project.','DISABLED',86400,7200,1,0,NULL,NULL,0,NULL),
	(2,'RemoveTempAndDeletedFiles',NULL,'Delete all files from the REDCap temp directory, and delete all edoc and Send-It files marked for deletion.','ENABLED',120,600,1,0,NULL,NULL,0,NULL),
	(3,'ExpireSurveys',NULL,'For any surveys where an expiration timestamp is set, if the timestamp <= NOW, then make the survey inactive.','ENABLED',120,600,1,0,NULL,NULL,0,NULL),
	(4,'SurveyInvitationEmailer',NULL,'Mailer that sends any survey invitations that have been scheduled.','ENABLED',60,1800,5,0,NULL,NULL,0,NULL),
	(5,'DeleteProjects',NULL,'Delete all projects that are scheduled for permanent deletion','ENABLED',300,1200,1,0,NULL,NULL,0,NULL),
	(6,'ClearIPCache',NULL,'Clear all IP addresses older than X minutes from the redcap_ip_cache table.','ENABLED',180,60,1,0,NULL,NULL,0,NULL),
	(7,'ExpireUsers',NULL,'For any users whose expiration timestamp is set, if the timestamp <= NOW, then suspend the user\'s account and set expiration time back to NULL.','ENABLED',120,600,1,0,NULL,NULL,0,NULL),
	(8,'WarnUsersAccountExpiration',NULL,'For any users whose expiration timestamp is set, if the expiration time is less than X days from now, then email the user to warn them of their impending account expiration.','ENABLED',86400,600,1,0,NULL,NULL,0,NULL),
	(9,'SuspendInactiveUsers',NULL,'For any users whose last login time exceeds the defined max days of inactivity, auto-suspend their account (if setting enabled).','ENABLED',86400,600,1,0,NULL,NULL,0,NULL),
	(10,'ReminderUserAccessDashboard',NULL,'At a regular interval, email all users to remind them to visit the User Access Dashboard page. Enables the ReminderUserAccessDashboardEmail cron job.','ENABLED',86400,600,1,0,NULL,NULL,0,NULL),
	(11,'ReminderUserAccessDashboardEmail',NULL,'Email all users in batches to remind them to visit the User Access Dashboard page. Will disable itself when done.','DISABLED',60,1800,5,0,NULL,NULL,0,NULL),
	(12,'DDPQueueRecordsAllProjects',NULL,'Queue records that are ready to be fetched from the external source system via the DDP service.','ENABLED',300,600,1,0,NULL,NULL,0,NULL),
	(13,'DDPFetchRecordsAllProjects',NULL,'Fetch data from the external source system for records already queued by the DDP service.','ENABLED',60,1800,5,0,NULL,NULL,0,NULL),
	(14,'PurgeCronHistory',NULL,'Purges all rows from the crons history table that are older than one week.','ENABLED',86400,600,1,0,NULL,NULL,0,NULL),
	(15,'UpdateUserPasswordAlgo',NULL,'Send email to all Table-based users telling them to log in for the purpose of upgrading their password security (one time only)','DISABLED',86400,7200,1,0,NULL,NULL,0,NULL),
	(16,'AutomatedSurveyInvitationsDatediffChecker',NULL,'Check all conditional logic in Automated Surveys Invitations that uses \"today\" inside datediff() function','DISABLED',43200,7200,1,0,NULL,NULL,0,NULL),
	(17,'AutomatedSurveyInvitationsDatediffChecker2',NULL,'Check all conditional logic in Automated Surveys Invitations that uses \"today\" inside datediff() function - replacement for AutomatedSurveyInvitationsDatediffChecker','ENABLED',14400,7200,1,0,NULL,NULL,0,NULL),
	(18,'ClearSurveyShortCodes',NULL,'Clear all survey short codes older than X minutes.','ENABLED',300,60,1,0,NULL,NULL,0,NULL),
	(19,'ClearLogViewRequests',NULL,'Clear all items from redcap_log_view_requests table older than X hours.','ENABLED',1800,300,1,0,NULL,NULL,0,NULL),
	(20,'EraseTwilioLog',NULL,'Clear all items from redcap_surveys_erase_twilio_log table.','ENABLED',120,300,1,0,NULL,NULL,0,NULL),
	(21,'ClearNewRecordCache',NULL,'Clear all items from redcap_new_record_cache table older than X hours.','ENABLED',10800,300,1,0,NULL,NULL,0,NULL),
	(22,'FixStuckSurveyInvitations',NULL,'Reset any survey invitations stuck in SENDING status for than X hours back to QUEUED status.','ENABLED',3600,300,1,0,NULL,NULL,0,NULL),
	(23,'DbUsage',NULL,'Record the daily space usage of the database tables and the uploaded files stored on the server.','ENABLED',86400,600,1,0,NULL,NULL,0,NULL),
	(24,'RemoveOutdatedRecordCounts',NULL,'Delete all rows from the record counts table older than X days.','ENABLED',3600,60,1,0,NULL,NULL,0,NULL),
	(25,'DDPReencryptData',NULL,'Re-encrypt all DDP data from the external source system.','ENABLED',60,1800,10,0,NULL,NULL,0,NULL),
	(26,'UserMessagingEmailNotifications',NULL,'Send notification emails to users who are logged out but have received a user message or notification.','ENABLED',60,600,1,0,NULL,NULL,0,NULL),
	(27,'CacheStatsReportingUrl',NULL,'Generate the stats reporting URL and store it in the config table.','ENABLED',10800,1200,1,0,NULL,NULL,0,NULL),
	(28,'ExternalModuleValidation',NULL,'Perform various validation checks on External Modules that are installed.','ENABLED',1800,300,1,0,NULL,NULL,0,NULL),
	(29,'CheckREDCapRepoUpdates',NULL,'Check if any installed External Modules have updates available on the REDCap Repo.','ENABLED',10800,300,1,0,NULL,NULL,0,NULL),
	(30,'CheckREDCapVersionUpdates',NULL,'Check if there is a newer REDCap version available','ENABLED',10800,300,1,0,NULL,NULL,0,NULL),
	(31,'DeleteFileRepositoryExportFiles',NULL,'For projects with this feature enabled, delete all archived data export files older than X days.','ENABLED',43200,300,1,0,NULL,NULL,0,NULL),
	(32,'AlertsNotificationsSender',NULL,'Sends notifications for Alerts','ENABLED',60,1800,5,0,NULL,NULL,0,NULL),
	(33,'AlertsNotificationsDatediffChecker',NULL,'Check all conditional logic in Alerts that uses \"today\" inside datediff() function','ENABLED',14400,7200,1,0,NULL,NULL,0,NULL),
	(34,'ClinicalDataMartDataFetch',NULL,'Fetches EHR data for all Clinical Data Mart projects','ENABLED',43200,3600,1,0,NULL,NULL,0,NULL),
	(35,'ProcessQueue',NULL,'Process queue with a worker.','ENABLED',60,3600,5,0,NULL,NULL,0,NULL);

/*!40000 ALTER TABLE `redcap_crons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_crons_history
# ------------------------------------------------------------



# Dump of table redcap_dashboard_ip_location_cache
# ------------------------------------------------------------



# Dump of table redcap_data
# ------------------------------------------------------------



# Dump of table redcap_data_access_groups
# ------------------------------------------------------------



# Dump of table redcap_data_access_groups_users
# ------------------------------------------------------------



# Dump of table redcap_data_dictionaries
# ------------------------------------------------------------



# Dump of table redcap_data_quality_resolutions
# ------------------------------------------------------------



# Dump of table redcap_data_quality_rules
# ------------------------------------------------------------



# Dump of table redcap_data_quality_status
# ------------------------------------------------------------



# Dump of table redcap_ddp_log_view
# ------------------------------------------------------------



# Dump of table redcap_ddp_log_view_data
# ------------------------------------------------------------



# Dump of table redcap_ddp_mapping
# ------------------------------------------------------------



# Dump of table redcap_ddp_preview_fields
# ------------------------------------------------------------



# Dump of table redcap_ddp_records
# ------------------------------------------------------------



# Dump of table redcap_ddp_records_data
# ------------------------------------------------------------



# Dump of table redcap_docs
# ------------------------------------------------------------



# Dump of table redcap_docs_to_edocs
# ------------------------------------------------------------



# Dump of table redcap_edocs_metadata
# ------------------------------------------------------------



# Dump of table redcap_ehr_access_tokens
# ------------------------------------------------------------



# Dump of table redcap_ehr_datamart_revisions
# ------------------------------------------------------------



# Dump of table redcap_ehr_fhir_logs
# ------------------------------------------------------------



# Dump of table redcap_ehr_import_counts
# ------------------------------------------------------------



# Dump of table redcap_ehr_user_map
# ------------------------------------------------------------



# Dump of table redcap_ehr_user_projects
# ------------------------------------------------------------



# Dump of table redcap_esignatures
# ------------------------------------------------------------



# Dump of table redcap_events_arms
# ------------------------------------------------------------

LOCK TABLES `redcap_events_arms` WRITE;
/*!40000 ALTER TABLE `redcap_events_arms` DISABLE KEYS */;

INSERT INTO `redcap_events_arms` (`arm_id`, `project_id`, `arm_num`, `arm_name`)
VALUES
	(1,1,1,'Arm 1'),
	(2,2,1,'Drug A'),
	(3,3,1,'Drug A'),
	(4,3,2,'Drug B'),
	(5,4,1,'Arm 1'),
	(6,5,1,'Arm 1'),
	(7,6,1,'Arm 1'),
	(8,7,1,'Arm 1'),
	(9,8,1,'Arm 1'),
	(10,9,1,'Arm 1'),
	(11,10,1,'Arm 1'),
	(12,11,1,'Arm 1'),
	(13,12,1,'Arm 1'),
	(14,13,1,'Arm 1');

/*!40000 ALTER TABLE `redcap_events_arms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_events_calendar
# ------------------------------------------------------------



# Dump of table redcap_events_forms
# ------------------------------------------------------------

LOCK TABLES `redcap_events_forms` WRITE;
/*!40000 ALTER TABLE `redcap_events_forms` DISABLE KEYS */;

INSERT INTO `redcap_events_forms` (`event_id`, `form_name`)
VALUES
	(2,'baseline_data'),
	(2,'demographics'),
	(3,'patient_morale_questionnaire'),
	(4,'patient_morale_questionnaire'),
	(4,'visit_blood_workup'),
	(4,'visit_lab_data'),
	(4,'visit_observed_behavior'),
	(5,'patient_morale_questionnaire'),
	(6,'patient_morale_questionnaire'),
	(6,'visit_blood_workup'),
	(6,'visit_lab_data'),
	(6,'visit_observed_behavior'),
	(7,'patient_morale_questionnaire'),
	(8,'patient_morale_questionnaire'),
	(8,'visit_blood_workup'),
	(8,'visit_lab_data'),
	(8,'visit_observed_behavior'),
	(9,'completion_data'),
	(9,'completion_project_questionnaire'),
	(9,'patient_morale_questionnaire'),
	(9,'visit_blood_workup'),
	(9,'visit_observed_behavior'),
	(10,'baseline_data'),
	(10,'demographics'),
	(11,'patient_morale_questionnaire'),
	(12,'patient_morale_questionnaire'),
	(12,'visit_blood_workup'),
	(12,'visit_lab_data'),
	(12,'visit_observed_behavior'),
	(13,'patient_morale_questionnaire'),
	(14,'patient_morale_questionnaire'),
	(14,'visit_blood_workup'),
	(14,'visit_lab_data'),
	(14,'visit_observed_behavior'),
	(15,'patient_morale_questionnaire'),
	(16,'patient_morale_questionnaire'),
	(16,'visit_blood_workup'),
	(16,'visit_lab_data'),
	(16,'visit_observed_behavior'),
	(17,'completion_data'),
	(17,'completion_project_questionnaire'),
	(17,'patient_morale_questionnaire'),
	(17,'visit_blood_workup'),
	(17,'visit_observed_behavior'),
	(18,'baseline_data'),
	(18,'demographics'),
	(20,'patient_morale_questionnaire'),
	(21,'patient_morale_questionnaire'),
	(21,'visit_blood_workup'),
	(21,'visit_lab_data'),
	(21,'visit_observed_behavior'),
	(22,'patient_morale_questionnaire'),
	(23,'patient_morale_questionnaire'),
	(23,'visit_blood_workup'),
	(23,'visit_lab_data'),
	(23,'visit_observed_behavior'),
	(24,'completion_data'),
	(24,'completion_project_questionnaire'),
	(24,'patient_morale_questionnaire'),
	(24,'visit_blood_workup'),
	(24,'visit_lab_data'),
	(24,'visit_observed_behavior'),
	(32,'participant_info_survey'),
	(32,'prescreening_survey'),
	(33,'participant_morale_questionnaire'),
	(34,'participant_morale_questionnaire'),
	(35,'participant_morale_questionnaire'),
	(36,'participant_morale_questionnaire'),
	(37,'completion_data');

/*!40000 ALTER TABLE `redcap_events_forms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_events_metadata
# ------------------------------------------------------------

LOCK TABLES `redcap_events_metadata` WRITE;
/*!40000 ALTER TABLE `redcap_events_metadata` DISABLE KEYS */;

INSERT INTO `redcap_events_metadata` (`event_id`, `arm_id`, `day_offset`, `offset_min`, `offset_max`, `descrip`, `external_id`, `custom_event_label`)
VALUES
	(1,1,0,0,0,'Event 1',NULL,NULL),
	(2,2,0,0,0,'Enrollment',NULL,NULL),
	(3,2,1,0,0,'Dose 1',NULL,NULL),
	(4,2,3,0,0,'Visit 1',NULL,NULL),
	(5,2,8,0,0,'Dose 2',NULL,NULL),
	(6,2,10,0,0,'Visit 2',NULL,NULL),
	(7,2,15,0,0,'Dose 3',NULL,NULL),
	(8,2,17,0,0,'Visit 3',NULL,NULL),
	(9,2,30,0,0,'Final visit',NULL,NULL),
	(10,3,0,0,0,'Enrollment',NULL,NULL),
	(11,3,1,0,0,'Dose 1',NULL,NULL),
	(12,3,3,0,0,'Visit 1',NULL,NULL),
	(13,3,8,0,0,'Dose 2',NULL,NULL),
	(14,3,10,0,0,'Visit 2',NULL,NULL),
	(15,3,15,0,0,'Dose 3',NULL,NULL),
	(16,3,17,0,0,'Visit 3',NULL,NULL),
	(17,3,30,0,0,'Final visit',NULL,NULL),
	(18,4,0,0,0,'Enrollment',NULL,NULL),
	(19,4,5,0,0,'Deadline to opt out of study',NULL,NULL),
	(20,4,7,0,0,'First dose',NULL,NULL),
	(21,4,10,2,2,'First visit',NULL,NULL),
	(22,4,13,0,0,'Second dose',NULL,NULL),
	(23,4,15,2,2,'Second visit',NULL,NULL),
	(24,4,20,2,2,'Final visit',NULL,NULL),
	(25,4,30,0,0,'Deadline to return feedback',NULL,NULL),
	(26,5,0,0,0,'Event 1',NULL,NULL),
	(27,6,0,0,0,'Event 1',NULL,NULL),
	(28,7,0,0,0,'Event 1',NULL,NULL),
	(29,8,0,0,0,'Event 1',NULL,NULL),
	(30,9,0,0,0,'Event 1',NULL,NULL),
	(31,10,0,0,0,'Event 1',NULL,NULL),
	(32,11,0,0,0,'Initial Data',NULL,NULL),
	(33,11,1,0,0,'Week 1',NULL,NULL),
	(34,11,8,0,0,'Week 2',NULL,NULL),
	(35,11,15,0,0,'Week 3',NULL,NULL),
	(36,11,22,0,0,'Week 4',NULL,NULL),
	(37,11,30,0,0,'Final Data',NULL,NULL),
	(38,12,0,0,0,'Event 1',NULL,NULL),
	(39,13,0,0,0,'Event 1',NULL,NULL),
	(40,14,0,0,0,'Event 1',NULL,NULL);

/*!40000 ALTER TABLE `redcap_events_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_events_repeat
# ------------------------------------------------------------

LOCK TABLES `redcap_events_repeat` WRITE;
/*!40000 ALTER TABLE `redcap_events_repeat` DISABLE KEYS */;

INSERT INTO `redcap_events_repeat` (`event_id`, `form_name`, `custom_repeat_form_label`)
VALUES
	(39,'adverse_events',NULL),
	(39,'family_members','[family_member]'),
	(39,'medications','[medication_name] [dosage]mg'),
	(39,'visits','[weight]kg ([visit_date])');

/*!40000 ALTER TABLE `redcap_events_repeat` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_external_links
# ------------------------------------------------------------



# Dump of table redcap_external_links_dags
# ------------------------------------------------------------



# Dump of table redcap_external_links_exclude_projects
# ------------------------------------------------------------



# Dump of table redcap_external_links_users
# ------------------------------------------------------------



# Dump of table redcap_external_module_settings
# ------------------------------------------------------------



# Dump of table redcap_external_modules
# ------------------------------------------------------------



# Dump of table redcap_external_modules_downloads
# ------------------------------------------------------------



# Dump of table redcap_external_modules_log
# ------------------------------------------------------------



# Dump of table redcap_external_modules_log_parameters
# ------------------------------------------------------------



# Dump of table redcap_folders
# ------------------------------------------------------------



# Dump of table redcap_folders_projects
# ------------------------------------------------------------



# Dump of table redcap_history_size
# ------------------------------------------------------------



# Dump of table redcap_history_version
# ------------------------------------------------------------



# Dump of table redcap_instrument_zip
# ------------------------------------------------------------



# Dump of table redcap_instrument_zip_authors
# ------------------------------------------------------------



# Dump of table redcap_instrument_zip_origins
# ------------------------------------------------------------



# Dump of table redcap_ip_banned
# ------------------------------------------------------------



# Dump of table redcap_ip_cache
# ------------------------------------------------------------

LOCK TABLES `redcap_ip_cache` WRITE;
/*!40000 ALTER TABLE `redcap_ip_cache` DISABLE KEYS */;

INSERT INTO `redcap_ip_cache` (`ip_hash`, `timestamp`)
VALUES
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:52'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:57'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:58'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:22:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:23:00'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:23:01'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:23:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:23:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:23:05'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:24:08'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:24:08'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:24:09'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:57'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:58'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:58'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:32:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:00'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:00'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:01'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:05'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:05'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:07'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:07'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:08'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:09'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:09'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:10'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:10'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:10'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:11'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 09:33:11'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:41:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:41:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:41:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:41:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:41:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:41:41'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:43:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:43:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:43:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:43:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:46:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:46:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:46:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 12:46:30'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 13:47:14'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 13:47:14'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 13:47:14'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 13:47:16'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 13:50:46'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 13:50:46'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 13:50:46'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-07 13:50:48');

/*!40000 ALTER TABLE `redcap_ip_cache` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_library_map
# ------------------------------------------------------------



# Dump of table redcap_locking_data
# ------------------------------------------------------------



# Dump of table redcap_locking_labels
# ------------------------------------------------------------



# Dump of table redcap_locking_records
# ------------------------------------------------------------



# Dump of table redcap_locking_records_pdf_archive
# ------------------------------------------------------------



# Dump of table redcap_log_event
# ------------------------------------------------------------

LOCK TABLES `redcap_log_event` WRITE;
/*!40000 ALTER TABLE `redcap_log_event` DISABLE KEYS */;

INSERT INTO `redcap_log_event` (`log_event_id`, `project_id`, `ts`, `user`, `ip`, `page`, `event`, `object_type`, `sql_log`, `pk`, `event_id`, `data_values`, `description`, `legacy`, `change_reason`)
VALUES
	(1,0,20200928092256,'test_admin','172.18.0.1','ControlCenter/user_controls_ajax.php','MANAGE','redcap_auth','update redcap_auth set password = \'c39b89a8c20e6d63ae65e77dbbad8c7f5b10850bf17495cdf2585c11202a2516f47b4e1d6c5993059a4cb72dd923053f2650f935b222b24af68f3533ce522bcf\',\r\n				temp_pwd = 1 where username = \'test_user_b\'','test_user_b',NULL,'username = \'test_user_b\'','Reset user password',0,NULL),
	(2,0,20200928092300,'test_admin','172.18.0.1','ControlCenter/create_user.php','MANAGE','redcap_user_information','UPDATE redcap_user_information SET user_email = \'testy@test.test\',user_email2 = \'\',user_email3 = \'\',user_firstname = \'Test\',user_lastname = \'User_C\',user_inst_id = \'\',user_expiration = NULL,user_sponsor = NULL,user_comments = NULL,allow_create_db = 0,display_on_email_users = 1,user_phone = NULL,user_phone_sms = NULL,messaging_email_preference = \'4_HOURS\',messaging_email_urgent_all = \'1\',api_token_auto_request = 0,fhir_data_mart_create_project = 0 WHERE ui_id=5','test_user_c',NULL,'username = \'test_user_c\'','Edit user',0,NULL),
	(3,0,20200928092302,'test_admin','172.18.0.1','ControlCenter/security_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'1\' WHERE field_name = \'logout_fail_limit\';\nUPDATE redcap_config SET value = \'1\' WHERE field_name = \'logout_fail_window\'',NULL,NULL,'logout_fail_limit = \'1\',\nlogout_fail_window = \'1\'','Modify system configuration',0,NULL),
	(4,0,20200928093255,'test_admin','172.18.0.1','ControlCenterController:saveNewAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set admin_rights = 1 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Grant administrator privilege (User: test_user, Privilege type: admin_rights)',0,NULL),
	(5,0,20200928093255,'test_admin','172.18.0.1','ControlCenterController:saveNewAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set super_user = 1 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Grant administrator privilege (User: test_user, Privilege type: super_user)',0,NULL),
	(6,0,20200928093255,'test_admin','172.18.0.1','ControlCenterController:saveNewAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set account_manager = 1 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Grant administrator privilege (User: test_user, Privilege type: account_manager)',0,NULL),
	(7,0,20200928093255,'test_admin','172.18.0.1','ControlCenterController:saveNewAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set access_system_config = 1 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Grant administrator privilege (User: test_user, Privilege type: access_system_config)',0,NULL),
	(8,0,20200928093255,'test_admin','172.18.0.1','ControlCenterController:saveNewAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set access_system_upgrade = 1 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Grant administrator privilege (User: test_user, Privilege type: access_system_upgrade)',0,NULL),
	(9,0,20200928093255,'test_admin','172.18.0.1','ControlCenterController:saveNewAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set access_external_module_install = 1 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Grant administrator privilege (User: test_user, Privilege type: access_external_module_install)',0,NULL),
	(10,0,20200928093255,'test_admin','172.18.0.1','ControlCenterController:saveNewAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set access_admin_dashboards = 1 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Grant administrator privilege (User: test_user, Privilege type: access_admin_dashboards)',0,NULL),
	(11,0,20200928093306,'test_admin','172.18.0.1','ControlCenterController:saveAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set admin_rights = 0 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Revoke administrator privilege (User: test_user, Privilege type: admin_rights)',0,NULL),
	(12,0,20200928093306,'test_admin','172.18.0.1','ControlCenterController:saveAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set super_user = 0 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Revoke administrator privilege (User: test_user, Privilege type: super_user)',0,NULL),
	(13,0,20200928093306,'test_admin','172.18.0.1','ControlCenterController:saveAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set account_manager = 0 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Revoke administrator privilege (User: test_user, Privilege type: account_manager)',0,NULL),
	(14,0,20200928093306,'test_admin','172.18.0.1','ControlCenterController:saveAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set access_system_config = 0 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Revoke administrator privilege (User: test_user, Privilege type: access_system_config)',0,NULL),
	(15,0,20200928093306,'test_admin','172.18.0.1','ControlCenterController:saveAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set access_system_upgrade = 0 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Revoke administrator privilege (User: test_user, Privilege type: access_system_upgrade)',0,NULL),
	(16,0,20200928093306,'test_admin','172.18.0.1','ControlCenterController:saveAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set access_external_module_install = 0 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Revoke administrator privilege (User: test_user, Privilege type: access_external_module_install)',0,NULL),
	(17,0,20200928093307,'test_admin','172.18.0.1','ControlCenterController:saveAdminPriv','MANAGE','redcap_user_information','update redcap_user_information set access_admin_dashboards = 0 where ui_id = 3','test_user',NULL,'username = \'test_user\'','Revoke administrator privilege (User: test_user, Privilege type: access_admin_dashboards)',0,NULL),
	(18,0,20201007124141,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'1\' WHERE field_name = \'superusers_only_create_project\'',NULL,NULL,'superusers_only_create_project = \'1\'','Modify system configuration',0,NULL),
	(19,0,20201007124630,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'0\' WHERE field_name = \'enable_edit_survey_response\'',NULL,NULL,'enable_edit_survey_response = \'0\'','Modify system configuration',0,NULL),
	(20,0,20201007134716,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'0\' WHERE field_name = \'auto_prod_changes\'',NULL,NULL,'auto_prod_changes = \'0\'','Modify system configuration',0,NULL),
	(21,0,20201007135048,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'0\' WHERE field_name = \'enable_edit_prod_events\'',NULL,NULL,'enable_edit_prod_events = \'0\'','Modify system configuration',0,NULL);

/*!40000 ALTER TABLE `redcap_log_event` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_log_event2
# ------------------------------------------------------------



# Dump of table redcap_log_event3
# ------------------------------------------------------------



# Dump of table redcap_log_event4
# ------------------------------------------------------------



# Dump of table redcap_log_event5
# ------------------------------------------------------------



# Dump of table redcap_log_view
# ------------------------------------------------------------

LOCK TABLES `redcap_log_view` WRITE;
/*!40000 ALTER TABLE `redcap_log_view` DISABLE KEYS */;

INSERT INTO `redcap_log_view` (`log_view_id`, `ts`, `user`, `event`, `ip`, `browser_name`, `browser_version`, `full_url`, `page`, `project_id`, `event_id`, `record`, `form_name`, `miscellaneous`, `session_id`)
VALUES
	(1,'2020-09-28 09:22:52','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(2,'2020-09-28 09:22:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(3,'2020-09-28 09:22:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(4,'2020-09-28 09:22:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(5,'2020-09-28 09:22:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(6,'2020-09-28 09:22:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?user_view=view_user&view=user_controls&username=test_user_b','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(7,'2020-09-28 09:22:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(8,'2020-09-28 09:22:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(9,'2020-09-28 09:22:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(10,'2020-09-28 09:22:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?user_view=view_user&view=user_controls&username=test_user_b','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(11,'2020-09-28 09:22:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?username=test_user_b&action=reset_password','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(12,'2020-09-28 09:22:57','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/view_users.php?username=test_user_b','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(13,'2020-09-28 09:22:58','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(14,'2020-09-28 09:22:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(15,'2020-09-28 09:22:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?user_view=view_user&view=user_controls&username=test_user_c','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(16,'2020-09-28 09:22:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(17,'2020-09-28 09:22:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/create_user.php','ControlCenter/create_user.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(18,'2020-09-28 09:23:00','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/create_user.php','ControlCenter/create_user.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(19,'2020-09-28 09:23:01','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/security_settings.php','ControlCenter/security_settings.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(20,'2020-09-28 09:23:02','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/security_settings.php','ControlCenter/security_settings.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(21,'2020-09-28 09:23:03','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(22,'2020-09-28 09:23:05','test_user','LOGIN_FAIL','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'4fab7e8052275f372d57ea6269c7ad5a'),
	(23,'2020-09-28 09:24:08','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'8aeb9d60dad0529ede36a8ea0b0d5a0d'),
	(24,'2020-09-28 09:24:08','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8aeb9d60dad0529ede36a8ea0b0d5a0d'),
	(25,'2020-09-28 09:24:09','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'8aeb9d60dad0529ede36a8ea0b0d5a0d'),
	(26,'2020-09-28 09:32:53','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(27,'2020-09-28 09:32:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(28,'2020-09-28 09:32:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(29,'2020-09-28 09:32:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(30,'2020-09-28 09:32:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:saveNewAdminPriv','ControlCenterController:saveNewAdminPriv',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(31,'2020-09-28 09:32:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(32,'2020-09-28 09:32:56','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(33,'2020-09-28 09:32:57','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(34,'2020-09-28 09:32:58','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(35,'2020-09-28 09:32:58','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(36,'2020-09-28 09:32:59','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(37,'2020-09-28 09:32:59','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/index.php','ControlCenter/index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(38,'2020-09-28 09:33:00','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/version_check.php','ControlCenter/version_check.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(39,'2020-09-28 09:33:00','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(40,'2020-09-28 09:33:01','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/create_user.php','ControlCenter/create_user.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(41,'2020-09-28 09:33:02','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/google_map_users.php','ControlCenter/google_map_users.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(42,'2020-09-28 09:33:02','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/email_users.php','ControlCenter/email_users.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(43,'2020-09-28 09:33:03','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(44,'2020-09-28 09:33:04','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(45,'2020-09-28 09:33:05','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(46,'2020-09-28 09:33:05','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(47,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(48,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(49,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(50,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(51,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(52,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(53,'2020-09-28 09:33:07','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(54,'2020-09-28 09:33:07','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(55,'2020-09-28 09:33:08','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/superusers.php?logout=1','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(56,'2020-09-28 09:33:09','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(57,'2020-09-28 09:33:09','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(58,'2020-09-28 09:33:10','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(59,'2020-09-28 09:33:10','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(60,'2020-09-28 09:33:10','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(61,'2020-09-28 09:33:11','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(62,'2020-09-28 09:33:11','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(63,'2020-10-07 12:41:38','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'b70bc498e5e66710f8d4f5b0743bf550'),
	(64,'2020-10-07 12:41:38','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'b70bc498e5e66710f8d4f5b0743bf550'),
	(65,'2020-10-07 12:41:38','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/index.php','ControlCenter/index.php',NULL,NULL,NULL,NULL,NULL,'b70bc498e5e66710f8d4f5b0743bf550'),
	(66,'2020-10-07 12:41:39','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/version_check.php','ControlCenter/version_check.php',NULL,NULL,NULL,NULL,NULL,'b70bc498e5e66710f8d4f5b0743bf550'),
	(67,'2020-10-07 12:41:39','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'b70bc498e5e66710f8d4f5b0743bf550'),
	(68,'2020-10-07 12:41:41','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'b70bc498e5e66710f8d4f5b0743bf550'),
	(69,'2020-10-07 12:43:33','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'4507775761d5a3463b17b1161a81b3d3'),
	(70,'2020-10-07 12:43:33','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4507775761d5a3463b17b1161a81b3d3'),
	(71,'2020-10-07 12:43:33','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'4507775761d5a3463b17b1161a81b3d3'),
	(72,'2020-10-07 12:43:35','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'4507775761d5a3463b17b1161a81b3d3'),
	(73,'2020-10-07 12:46:28','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'e2d3c3f9582ab61f6f45ac9a09f738f1'),
	(74,'2020-10-07 12:46:28','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'e2d3c3f9582ab61f6f45ac9a09f738f1'),
	(75,'2020-10-07 12:46:28','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'e2d3c3f9582ab61f6f45ac9a09f738f1'),
	(76,'2020-10-07 12:46:30','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'e2d3c3f9582ab61f6f45ac9a09f738f1'),
	(77,'2020-10-07 13:47:14','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'60692ed7b4af0bcd2034d753295edf65'),
	(78,'2020-10-07 13:47:14','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'60692ed7b4af0bcd2034d753295edf65'),
	(79,'2020-10-07 13:47:14','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'60692ed7b4af0bcd2034d753295edf65'),
	(80,'2020-10-07 13:47:16','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'60692ed7b4af0bcd2034d753295edf65'),
	(81,'2020-10-07 13:50:46','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost:8080/','index.php',NULL,NULL,NULL,NULL,NULL,'3df30796406bf4178b1bf45aa30a09a6'),
	(82,'2020-10-07 13:50:46','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'3df30796406bf4178b1bf45aa30a09a6'),
	(83,'2020-10-07 13:50:46','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'3df30796406bf4178b1bf45aa30a09a6'),
	(84,'2020-10-07 13:50:48','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost:8080/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'3df30796406bf4178b1bf45aa30a09a6');

/*!40000 ALTER TABLE `redcap_log_view` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_log_view_requests
# ------------------------------------------------------------

LOCK TABLES `redcap_log_view_requests` WRITE;
/*!40000 ALTER TABLE `redcap_log_view_requests` DISABLE KEYS */;

INSERT INTO `redcap_log_view_requests` (`lvr_id`, `log_view_id`, `mysql_process_id`, `php_process_id`, `script_execution_time`, `is_ajax`, `ui_id`)
VALUES
	(1,1,122,16,0.231,0,NULL),
	(2,2,123,16,0.346,0,2),
	(3,3,124,16,0.363,0,2),
	(4,NULL,125,16,0.645,1,2),
	(5,4,126,8,0.503,1,2),
	(6,5,127,17,0.485,1,2),
	(7,6,128,11,0.512,1,2),
	(8,7,129,16,0.291,0,2),
	(9,NULL,130,8,0.434,1,2),
	(10,9,131,17,0.398,1,2),
	(11,8,132,11,0.391,1,2),
	(12,10,133,16,0.426,1,2),
	(13,11,134,8,0.322,1,2),
	(14,12,135,11,0.283,0,2),
	(15,NULL,136,17,0.512,1,2),
	(16,13,137,10,0.399,0,2),
	(17,NULL,138,11,0.569,1,2),
	(18,14,140,9,0.4,1,2),
	(19,15,141,8,0.414,1,2),
	(20,16,139,16,0.408,1,2),
	(21,17,142,12,0.389,0,2),
	(22,NULL,144,10,0.379,1,2),
	(23,18,145,11,0.36,0,2),
	(24,NULL,147,9,0.545,1,2),
	(25,19,148,32,0.466,0,2),
	(26,NULL,149,10,0.513,1,2),
	(27,20,150,11,0.408,0,2),
	(28,21,151,32,0.297,0,2),
	(29,22,155,11,0.269,0,NULL),
	(30,23,160,71,0.247,0,NULL),
	(31,24,161,71,0.371,0,3),
	(32,25,162,71,0.269,0,3),
	(33,26,330,8,0.182,0,NULL),
	(34,27,331,8,0.252,0,2),
	(35,28,332,8,0.265,0,2),
	(36,NULL,333,8,0.452,1,2),
	(37,29,334,8,0.237,1,2),
	(38,30,335,8,0.267,1,2),
	(39,31,336,8,0.324,0,2),
	(40,32,337,8,0.257,0,2),
	(41,33,341,8,0.2,0,NULL),
	(42,34,342,114,0.283,0,2),
	(43,35,343,8,0.221,0,NULL),
	(44,36,344,114,0.278,0,3),
	(45,NULL,346,71,0.528,1,3),
	(46,NULL,345,8,0.405,1,3),
	(47,37,347,114,0.668,0,3),
	(48,NULL,348,11,0.354,1,3),
	(49,38,349,8,0.307,1,3),
	(50,NULL,350,71,0.455,1,3),
	(51,39,351,11,0.39,0,3),
	(52,NULL,352,10,0.504,1,3),
	(53,40,353,11,0.481,0,3),
	(54,41,355,7,0.409,0,3),
	(55,NULL,356,8,0.515,1,3),
	(56,42,357,10,0.446,0,3),
	(57,NULL,358,114,0.739,1,3),
	(58,NULL,359,86,0.468,1,3),
	(59,43,360,10,0.253,0,3),
	(60,44,363,7,0.246,0,NULL),
	(61,45,364,11,0.305,0,2),
	(62,46,365,86,0.353,0,2),
	(63,47,366,9,0.412,1,2),
	(64,NULL,367,32,0.695,1,2),
	(65,48,368,7,0.63,1,2),
	(66,49,369,11,0.638,1,2),
	(67,50,370,86,0.635,1,2),
	(68,51,371,12,0.552,1,2),
	(69,52,372,9,0.618,1,2),
	(70,53,373,32,0.54,1,2),
	(71,54,374,7,0.41,0,2),
	(72,NULL,375,11,0.491,1,2),
	(73,55,376,86,0.276,0,2),
	(74,56,378,9,0.233,0,NULL),
	(75,57,379,32,0.287,0,2),
	(76,58,380,86,0.231,0,NULL),
	(77,59,381,11,0.254,0,3),
	(78,60,382,12,0.263,0,3),
	(79,61,383,9,0.331,0,3),
	(80,NULL,385,32,0.556,1,3),
	(81,62,384,86,0.297,0,3),
	(82,63,2649,334,0.089,0,NULL),
	(83,64,2650,334,0.122,0,2),
	(84,65,2651,334,0.268,0,2),
	(85,66,2652,450,0.135,1,2),
	(86,NULL,2653,532,0.532,1,2),
	(87,67,2654,520,0.169,0,2),
	(88,NULL,2655,341,0.342,1,2),
	(89,68,2656,334,0.161,0,2),
	(90,NULL,2657,520,0.41,1,2),
	(91,69,2665,7,0.099,0,NULL),
	(92,70,2666,7,0.121,0,2),
	(93,71,2667,7,0.125,0,2),
	(94,NULL,2668,532,0.316,1,2),
	(95,72,2669,7,0.144,0,2),
	(96,NULL,2670,341,0.296,1,2),
	(97,73,2678,520,0.087,0,NULL),
	(98,74,2679,520,0.113,0,2),
	(99,75,2680,520,0.121,0,2),
	(100,NULL,2681,532,0.299,1,2),
	(101,76,2682,450,0.148,0,2),
	(102,NULL,2683,455,0.276,1,2),
	(103,77,2724,545,0.087,0,NULL),
	(104,78,2725,545,0.114,0,2),
	(105,79,2726,545,0.138,0,2),
	(106,NULL,2727,450,0.387,1,2),
	(107,80,2728,539,0.145,0,2),
	(108,NULL,2729,545,0.403,1,2),
	(109,NULL,2730,555,0.094,1,2),
	(110,81,2739,561,0.083,0,NULL),
	(111,82,2740,561,0.126,0,2),
	(112,83,2741,561,0.121,0,2),
	(113,NULL,2742,561,0.426,1,2),
	(114,84,2743,532,0.151,0,2),
	(115,NULL,2744,539,0.272,1,2),
	(116,NULL,2745,555,0.094,1,2);

/*!40000 ALTER TABLE `redcap_log_view_requests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_messages
# ------------------------------------------------------------



# Dump of table redcap_messages_recipients
# ------------------------------------------------------------

LOCK TABLES `redcap_messages_recipients` WRITE;
/*!40000 ALTER TABLE `redcap_messages_recipients` DISABLE KEYS */;

INSERT INTO `redcap_messages_recipients` (`recipient_id`, `thread_id`, `recipient_user_id`, `all_users`, `prioritize`, `conv_leader`)
VALUES
	(1,1,NULL,1,0,0),
	(2,2,NULL,1,0,0),
	(3,3,NULL,1,0,0);

/*!40000 ALTER TABLE `redcap_messages_recipients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_messages_status
# ------------------------------------------------------------



# Dump of table redcap_messages_threads
# ------------------------------------------------------------

LOCK TABLES `redcap_messages_threads` WRITE;
/*!40000 ALTER TABLE `redcap_messages_threads` DISABLE KEYS */;

INSERT INTO `redcap_messages_threads` (`thread_id`, `type`, `channel_name`, `invisible`, `archived`, `project_id`)
VALUES
	(1,'NOTIFICATION','What\'s new',0,0,NULL),
	(2,'NOTIFICATION',NULL,0,0,NULL),
	(3,'NOTIFICATION','Notifications',0,0,NULL);

/*!40000 ALTER TABLE `redcap_messages_threads` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_metadata
# ------------------------------------------------------------

LOCK TABLES `redcap_metadata` WRITE;
/*!40000 ALTER TABLE `redcap_metadata` DISABLE KEYS */;

INSERT INTO `redcap_metadata` (`project_id`, `field_name`, `field_phi`, `form_name`, `form_menu_description`, `field_order`, `field_units`, `element_preceding_header`, `element_type`, `element_label`, `element_enum`, `element_note`, `element_validation_type`, `element_validation_min`, `element_validation_max`, `element_validation_checktype`, `branching_logic`, `field_req`, `edoc_id`, `edoc_display_img`, `custom_alignment`, `stop_actions`, `question_num`, `grid_name`, `grid_rank`, `misc`, `video_url`, `video_display_inline`)
VALUES
	(1,'address','1','demographics',NULL,5,NULL,NULL,'textarea','Street, City, State, ZIP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'admission_date_1',NULL,'month_1_data',NULL,56,NULL,NULL,'text','Date of hospital admission',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'admission_date_2',NULL,'month_2_data',NULL,76,NULL,NULL,'text','Date of hospital admission',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'admission_date_3',NULL,'month_3_data',NULL,104,NULL,NULL,'text','Date of hospital admission',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'aerobics',NULL,'demographics',NULL,15,NULL,NULL,'checkbox','Aerobics','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(1,'age',NULL,'demographics',NULL,8.2,NULL,NULL,'calc','Age (years)','rounddown(datediff([dob],\'today\',\'y\'))',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'alb_1',NULL,'month_1_data',NULL,44,'g/dL',NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'float','3','5','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'alb_2',NULL,'month_2_data',NULL,64,'g/dL',NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'float','3','5','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'alb_3',NULL,'month_3_data',NULL,85,'g/dL',NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'float','3','5','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'alb_b',NULL,'baseline_data',NULL,26,'g/dL',NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'int','3','5','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'baseline_data_complete',NULL,'baseline_data',NULL,42,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'bmi',NULL,'demographics',NULL,21,'kilograms',NULL,'calc','BMI','round(([weight]*10000)/(([height])^(2)),1)',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'cause_death_1',NULL,'month_1_data',NULL,61,NULL,NULL,'select','What was the cause of death?','1, All-cause \\n 2, Cardiovascular',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'cause_death_2',NULL,'month_2_data',NULL,81,NULL,NULL,'select','What was the cause of death?','1, All-cause \\n 2, Cardiovascular',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'cause_death_3',NULL,'month_3_data',NULL,109,NULL,NULL,'select','What was the cause of death?','1, All-cause \\n 2, Cardiovascular',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'cause_hosp_1',NULL,'month_1_data',NULL,55,NULL,NULL,'select','What was the cause of hospitalization?','1, Vascular access related events \\n 2, CVD events \\n 3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'cause_hosp_2',NULL,'month_2_data',NULL,75,NULL,NULL,'select','What was the cause of hospitalization?','1, Vascular access related events \\n 2, CVD events \\n 3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'cause_hosp_3',NULL,'month_3_data',NULL,103,NULL,NULL,'select','What was the cause of hospitalization?','1, Vascular access related events \\n 2, CVD events \\n 3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'chol_1',NULL,'month_1_data',NULL,48,'mg/dL',NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'chol_2',NULL,'month_2_data',NULL,68,'mg/dL',NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'chol_3',NULL,'month_3_data',NULL,89,'mg/dL',NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'chol_b',NULL,'baseline_data',NULL,30,'mg/dL',NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'comments',NULL,'demographics',NULL,22,NULL,'General Comments','textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'complete_study',NULL,'completion_data','Completion Data',111,NULL,'Study Completion Information','select','Has patient completed study?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'complete_study_date',NULL,'completion_data',NULL,114,NULL,NULL,'text','Date of study completion',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'completion_data_complete',NULL,'completion_data',NULL,116,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'compliance_1',NULL,'month_1_data',NULL,53,NULL,NULL,'select','How compliant was the patient in drinking the supplement?','0, 100 percent \\n 1, 99-75 percent \\n 2, 74-50 percent \\n 3, 49-25 percent \\n 4, 0-24 percent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'compliance_2',NULL,'month_2_data',NULL,73,NULL,NULL,'select','How compliant was the patient in drinking the supplement?','0, 100 percent \\n 1, 99-75 percent \\n 2, 74-50 percent \\n 3, 49-25 percent \\n 4, 0-24 percent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'compliance_3',NULL,'month_3_data',NULL,101,NULL,NULL,'select','How compliant was the patient in drinking the supplement?','0, 100 percent \\n 1, 99-75 percent \\n 2, 74-50 percent \\n 3, 49-25 percent \\n 4, 0-24 percent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'creat_1',NULL,'month_1_data',NULL,46,'mg/dL',NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float','0.5','20','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'creat_2',NULL,'month_2_data',NULL,66,'mg/dL',NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float','0.5','20','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'creat_3',NULL,'month_3_data',NULL,87,'mg/dL',NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float','0.5','20','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'creat_b',NULL,'baseline_data',NULL,28,'mg/dL',NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float','0.5','20','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_blood_3',NULL,'month_3_data',NULL,84,NULL,NULL,'text','Date blood was drawn',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_blood_b',NULL,'baseline_data',NULL,25,NULL,NULL,'text','Date blood was drawn',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_death_1',NULL,'month_1_data',NULL,60,NULL,NULL,'text','Date of death',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_death_2',NULL,'month_2_data',NULL,80,NULL,NULL,'text','Date of death',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_death_3',NULL,'month_3_data',NULL,108,NULL,NULL,'text','Date of death',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_enrolled',NULL,'demographics',NULL,2,NULL,'Consent Information','text','Date subject signed consent',NULL,'YYYY-MM-DD','date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_supplement_dispensed',NULL,'baseline_data',NULL,41,NULL,NULL,'text','Date patient begins supplement',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_visit_1',NULL,'month_1_data','Month 1 Data',43,NULL,'Month 1','text','Date of Month 1 visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_visit_2',NULL,'month_2_data','Month 2 Data',63,NULL,'Month 2','text','Date of Month 2 visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_visit_3',NULL,'month_3_data','Month 3 Data',83,NULL,'Month 3','text','Date of Month 3 visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'date_visit_b',NULL,'baseline_data','Baseline Data',24,NULL,'Baseline Measurements','text','Date of baseline visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'death_1',NULL,'month_1_data',NULL,59,NULL,'Mortality Data','select','Has patient died since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'death_2',NULL,'month_2_data',NULL,79,NULL,'Mortality Data','select','Has patient died since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'death_3',NULL,'month_3_data',NULL,107,NULL,'Mortality Data','select','Has patient died since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'demographics_complete',NULL,'demographics',NULL,23,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'discharge_date_1',NULL,'month_1_data',NULL,57,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'discharge_date_2',NULL,'month_2_data',NULL,77,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'discharge_date_3',NULL,'month_3_data',NULL,105,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'discharge_summary_1',NULL,'month_1_data',NULL,58,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'discharge_summary_2',NULL,'month_2_data',NULL,78,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'discharge_summary_3',NULL,'month_3_data',NULL,106,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'dob','1','demographics',NULL,8.1,NULL,NULL,'text','Date of birth',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'drink',NULL,'demographics',NULL,17,NULL,NULL,'checkbox','Drink (Alcoholic Beverages)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(1,'drywt_1',NULL,'month_1_data',NULL,51,'kilograms',NULL,'text','Dry weight (kilograms)',NULL,NULL,'float','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'drywt_2',NULL,'month_2_data',NULL,71,'kilograms',NULL,'text','Dry weight (kilograms)',NULL,NULL,'float','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'drywt_3',NULL,'month_3_data',NULL,92,'kilograms',NULL,'text','Dry weight (kilograms)',NULL,NULL,'float','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'drywt_b',NULL,'baseline_data',NULL,33,'kilograms',NULL,'text','Dry weight (kilograms)',NULL,NULL,'float','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'eat',NULL,'demographics',NULL,16,NULL,NULL,'checkbox','Eat Out (Dinner/Lunch)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(1,'email','1','demographics',NULL,8,NULL,NULL,'text','E-mail',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'ethnicity',NULL,'demographics',NULL,9,NULL,NULL,'radio','Ethnicity','0, Hispanic or Latino \\n 1, NOT Hispanic or Latino \\n 2, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LH',NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'first_name','1','demographics',NULL,3,NULL,'Contact Information','text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'gender',NULL,'demographics',NULL,11,NULL,NULL,'radio','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'given_birth',NULL,'demographics',NULL,12,NULL,NULL,'yesno','Has the patient given birth before?',NULL,NULL,NULL,NULL,NULL,NULL,'[gender] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'gym',NULL,'demographics',NULL,14,NULL,'Please provide the patient\'s weekly schedule for the activities below.','checkbox','Gym (Weight Training)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(1,'height',NULL,'demographics',NULL,19,'cm',NULL,'text','Height (cm)',NULL,NULL,'float','130','215','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'hospit_1',NULL,'month_1_data',NULL,54,NULL,'Hospitalization Data','select','Was patient hospitalized since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'hospit_2',NULL,'month_2_data',NULL,74,NULL,'Hospitalization Data','select','Was patient hospitalized since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'hospit_3',NULL,'month_3_data',NULL,102,NULL,'Hospitalization Data','select','Was patient hospitalized since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'kt_v_1',NULL,'month_1_data',NULL,50,NULL,NULL,'text','Kt/V',NULL,NULL,'float','0.9','3','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'kt_v_2',NULL,'month_2_data',NULL,70,NULL,NULL,'text','Kt/V',NULL,NULL,'float','0.9','3','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'kt_v_3',NULL,'month_3_data',NULL,91,NULL,NULL,'text','Kt/V',NULL,NULL,'float','0.9','3','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'kt_v_b',NULL,'baseline_data',NULL,32,NULL,NULL,'text','Kt/V',NULL,NULL,'float','0.9','3','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'last_name','1','demographics',NULL,4,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'meds',NULL,'demographics',NULL,17.3,NULL,NULL,'checkbox','Is patient taking any of the following medications? (check all that apply)','1, Lexapro \\n 2, Celexa \\n 3, Prozac \\n 4, Paxil \\n 5, Zoloft',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'month_1_data_complete',NULL,'month_1_data',NULL,62,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'month_2_data_complete',NULL,'month_2_data',NULL,82,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'month_3_data_complete',NULL,'month_3_data',NULL,110,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'no_show_1',NULL,'month_1_data',NULL,52,NULL,NULL,'text','Number of treatments missed',NULL,NULL,'float','0','7','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'no_show_2',NULL,'month_2_data',NULL,72,NULL,NULL,'text','Number of treatments missed',NULL,NULL,'float','0','7','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'no_show_3',NULL,'month_3_data',NULL,100,NULL,NULL,'text','Number of treatments missed',NULL,NULL,'float','0','7','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'npcr_1',NULL,'month_1_data',NULL,47,'g/kg/d',NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float','0.5','2','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'npcr_2',NULL,'month_2_data',NULL,67,'g/kg/d',NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float','0.5','2','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'npcr_3',NULL,'month_3_data',NULL,88,'g/kg/d',NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float','0.5','2','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'npcr_b',NULL,'baseline_data',NULL,29,'g/kg/d',NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float','0.5','2','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'num_children',NULL,'demographics',NULL,13,NULL,NULL,'text','How many times has the patient given birth?',NULL,NULL,'int','0',NULL,'soft_typed','[gender] = \"0\" and [given_birth] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'patient_document',NULL,'demographics',NULL,2.1,NULL,NULL,'file','Upload the patient\'s consent form',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'plasma1_3',NULL,'month_3_data',NULL,93,NULL,NULL,'select','Collected Plasma 1?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'plasma1_b',NULL,'baseline_data',NULL,34,NULL,NULL,'select','Collected Plasma 1?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'plasma2_3',NULL,'month_3_data',NULL,94,NULL,NULL,'select','Collected Plasma 2?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'plasma2_b',NULL,'baseline_data',NULL,35,NULL,NULL,'select','Collected Plasma 2?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'plasma3_3',NULL,'month_3_data',NULL,95,NULL,NULL,'select','Collected Plasma 3?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'plasma3_b',NULL,'baseline_data',NULL,36,NULL,NULL,'select','Collected Plasma 3?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'prealb_1',NULL,'month_1_data',NULL,45,'mg/dL',NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float','10','40','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'prealb_2',NULL,'month_2_data',NULL,65,'mg/dL',NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float','10','40','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'prealb_3',NULL,'month_3_data',NULL,86,'mg/dL',NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float','10','40','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'prealb_b',NULL,'baseline_data',NULL,27,'mg/dL',NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float','10','40','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'race',NULL,'demographics',NULL,10,NULL,NULL,'select','Race','0, American Indian/Alaska Native \\n 1, Asian \\n 2, Native Hawaiian or Other Pacific Islander \\n 3, Black or African American \\n 4, White \\n 5, More Than One Race \\n 6, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'serum1_3',NULL,'month_3_data',NULL,96,NULL,NULL,'select','Collected Serum 1?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'serum1_b',NULL,'baseline_data',NULL,37,NULL,NULL,'select','Collected Serum 1?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'serum2_3',NULL,'month_3_data',NULL,97,NULL,NULL,'select','Collected Serum 2?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'serum2_b',NULL,'baseline_data',NULL,38,NULL,NULL,'select','Collected Serum 2?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'serum3_3',NULL,'month_3_data',NULL,98,NULL,NULL,'select','Collected Serum 3?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'serum3_b',NULL,'baseline_data',NULL,39,NULL,NULL,'select','Collected Serum 3?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'sga_3',NULL,'month_3_data',NULL,99,NULL,NULL,'text','Subject Global Assessment (score = 1-7)',NULL,NULL,'float','0.9','7.1','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'sga_b',NULL,'baseline_data',NULL,40,NULL,NULL,'text','Subject Global Assessment (score = 1-7)',NULL,NULL,'float','0.9','7.1','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'specify_mood',NULL,'demographics',NULL,17.1,NULL,'Other information','slider','Specify the patient\'s mood','Very sad | Indifferent | Very happy',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'study_comments',NULL,'completion_data',NULL,115,NULL,'General Comments','textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'study_id',NULL,'demographics','Demographics',1,NULL,NULL,'text','Study ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'telephone_1','1','demographics',NULL,6,NULL,NULL,'text','Phone number',NULL,'Include Area Code','phone',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'transferrin_1',NULL,'month_1_data',NULL,49,'mg/dL',NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'transferrin_2',NULL,'month_2_data',NULL,69,'mg/dL',NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'transferrin_3',NULL,'month_3_data',NULL,90,'mg/dL',NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'transferrin_b',NULL,'baseline_data',NULL,31,'mg/dL',NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'weight',NULL,'demographics',NULL,20,'kilograms',NULL,'text','Weight (kilograms)',NULL,NULL,'int','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'withdraw_date',NULL,'completion_data',NULL,112,NULL,NULL,'text','Put a date if patient withdrew study',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(1,'withdraw_reason',NULL,'completion_data',NULL,113,NULL,NULL,'select','Reason patient withdrew from study','0, Non-compliance \\n 1, Did not wish to continue in study \\n 2, Could not tolerate the supplement \\n 3, Hospitalization \\n 4, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'address','1','demographics',NULL,5,NULL,NULL,'textarea','Street, City, State, ZIP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'aerobics',NULL,'demographics',NULL,15,NULL,NULL,'checkbox','Aerobics','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(2,'age',NULL,'demographics',NULL,8.2,NULL,NULL,'calc','Age (years)','rounddown(datediff([dob],\'today\',\'y\'))',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'alb_4',NULL,'completion_data',NULL,80,NULL,NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'baseline_data_complete',NULL,'baseline_data',NULL,39,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'bmi',NULL,'demographics',NULL,21,'kilograms',NULL,'calc','BMI','round(([weight]*10000)/(([height])^(2)),1)',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'bmi2',NULL,'baseline_data',NULL,33,NULL,NULL,'calc','BMI','round(([weight2]*10000)/(([height2])^(2)),1)',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'chol_4',NULL,'completion_data',NULL,86,NULL,NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'chol_b',NULL,'baseline_data',NULL,37,NULL,NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'comments',NULL,'demographics',NULL,22,NULL,'General Comments','textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'complete_study',NULL,'completion_data',NULL,77,NULL,NULL,'select','Has patient completed study?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'completion_data_complete',NULL,'completion_data',NULL,88,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'completion_project_questionnaire_complete',NULL,'completion_project_questionnaire',NULL,102,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq1',NULL,'completion_project_questionnaire','Completion Project Questionnaire',89,NULL,NULL,'text','Date of study completion',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq10',NULL,'completion_project_questionnaire',NULL,98,NULL,NULL,'select','On average, how many pills did you take each day last week?','0, less than 5 \\n 1, 5-10 \\n 2, 6-15 \\n 3, over 15',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq11',NULL,'completion_project_questionnaire',NULL,99,NULL,NULL,'select','Using the handout, which level of dependence do you feel you are currently at?','0, 0 \\n 1, 1 \\n 2, 2 \\n 3, 3 \\n 4, 4 \\n 5, 5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq12',NULL,'completion_project_questionnaire',NULL,100,NULL,NULL,'radio','Would you be willing to discuss your experiences with a psychiatrist?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq13',NULL,'completion_project_questionnaire',NULL,101,NULL,NULL,'select','How open are you to further testing?','0, not open \\n 1, undecided \\n 2, very open',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq2',NULL,'completion_project_questionnaire',NULL,90,NULL,NULL,'text','Transferrin (mg/dL)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq3',NULL,'completion_project_questionnaire',NULL,91,NULL,NULL,'text','Kt/V',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq4',NULL,'completion_project_questionnaire',NULL,92,NULL,NULL,'text','Dry weight (kilograms)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq5',NULL,'completion_project_questionnaire',NULL,93,NULL,NULL,'text','Number of treatments missed',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq6',NULL,'completion_project_questionnaire',NULL,94,NULL,NULL,'select','How compliant was the patient in drinking the supplement?','0, 100 percent \\n 1, 99-75 percent \\n 2, 74-50 percent \\n 3, 49-25 percent \\n 4, 0-24 percent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq7',NULL,'completion_project_questionnaire',NULL,95,NULL,NULL,'select','Was patient hospitalized since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq8',NULL,'completion_project_questionnaire',NULL,96,NULL,NULL,'select','What was the cause of hospitalization?','1, Vascular access related events \\n 2, CVD events \\n 3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'cpq9',NULL,'completion_project_questionnaire',NULL,97,NULL,NULL,'text','Date of hospital admission',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'creat_4',NULL,'completion_data',NULL,82,NULL,NULL,'text','Creatinine (mg/dL)',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'creat_b',NULL,'baseline_data',NULL,35,NULL,NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'date_enrolled',NULL,'demographics',NULL,2,NULL,'Consent Information','text','Date subject signed consent',NULL,'YYYY-MM-DD','date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'date_visit_4',NULL,'completion_data',NULL,79,NULL,NULL,'text','Date of last visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'demographics_complete',NULL,'demographics',NULL,23,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'discharge_date_4',NULL,'completion_data',NULL,83,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'discharge_summary_4',NULL,'completion_data',NULL,84,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'dob','1','demographics',NULL,8.1,NULL,NULL,'text','Date of birth',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'drink',NULL,'demographics',NULL,17,NULL,NULL,'checkbox','Drink (Alcoholic Beverages)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(2,'eat',NULL,'demographics',NULL,16,NULL,NULL,'checkbox','Eat Out (Dinner/Lunch)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(2,'email','1','demographics',NULL,8,NULL,NULL,'text','E-mail',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'ethnicity',NULL,'demographics',NULL,9,NULL,NULL,'radio','Ethnicity','0, Hispanic or Latino \\n 1, NOT Hispanic or Latino \\n 2, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LH',NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'first_name','1','demographics',NULL,3,NULL,'Contact Information','text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'gender',NULL,'demographics',NULL,11,NULL,NULL,'radio','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'given_birth',NULL,'demographics',NULL,12,NULL,NULL,'yesno','Has the patient given birth before?',NULL,NULL,NULL,NULL,NULL,NULL,'[gender] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'gym',NULL,'demographics',NULL,14,NULL,'Please provide the patient\'s weekly schedule for the activities below.','checkbox','Gym (Weight Training)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(2,'height',NULL,'demographics',NULL,19,'cm',NULL,'text','Height (cm)',NULL,NULL,'float','130','215','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'height2',NULL,'baseline_data','Baseline Data',31,NULL,NULL,'text','Height (cm)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'last_name','1','demographics',NULL,4,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'meds',NULL,'demographics',NULL,17.3,NULL,NULL,'checkbox','Is patient taking any of the following medications? (check all that apply)','1, Lexapro \\n 2, Celexa \\n 3, Prozac \\n 4, Paxil \\n 5, Zoloft',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'npcr_4',NULL,'completion_data',NULL,85,NULL,NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'npcr_b',NULL,'baseline_data',NULL,36,NULL,NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'num_children',NULL,'demographics',NULL,13,NULL,NULL,'text','How many times has the patient given birth?',NULL,NULL,'int','0',NULL,'soft_typed','[gender] = \"0\" and [given_birth] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'patient_document',NULL,'demographics',NULL,2.1,NULL,NULL,'file','Upload the patient\'s consent form',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'patient_morale_questionnaire_complete',NULL,'patient_morale_questionnaire',NULL,50,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'pmq1',NULL,'patient_morale_questionnaire','Patient Morale Questionnaire',46,NULL,NULL,'select','On average, how many pills did you take each day last week?','0, less than 5 \\n 1, 5-10 \\n 2, 6-15 \\n 3, over 15',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'pmq2',NULL,'patient_morale_questionnaire',NULL,47,NULL,NULL,'select','Using the handout, which level of dependence do you feel you are currently at?','0, 0 \\n 1, 1 \\n 2, 2 \\n 3, 3 \\n 4, 4 \\n 5, 5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'pmq3',NULL,'patient_morale_questionnaire',NULL,48,NULL,NULL,'radio','Would you be willing to discuss your experiences with a psychiatrist?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'pmq4',NULL,'patient_morale_questionnaire',NULL,49,NULL,NULL,'select','How open are you to further testing?','0, not open \\n 1, undecided \\n 2, very open',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'prealb_4',NULL,'completion_data',NULL,81,NULL,NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'prealb_b',NULL,'baseline_data',NULL,34,NULL,NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'race',NULL,'demographics',NULL,10,NULL,NULL,'select','Race','0, American Indian/Alaska Native \\n 1, Asian \\n 2, Native Hawaiian or Other Pacific Islander \\n 3, Black or African American \\n 4, White \\n 5, More Than One Race \\n 6, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'specify_mood',NULL,'demographics',NULL,17.1,NULL,'Other information','slider','Specify the patient\'s mood','Very sad | Indifferent | Very happy',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'study_comments',NULL,'completion_data','Completion Data',76,NULL,NULL,'textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'study_id',NULL,'demographics','Demographics',1,NULL,NULL,'text','Study ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'telephone_1','1','demographics',NULL,6,NULL,NULL,'text','Phone number',NULL,'Include Area Code','phone',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'transferrin_b',NULL,'baseline_data',NULL,38,NULL,NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw1',NULL,'visit_blood_workup','Visit Blood Workup',51,NULL,NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw2',NULL,'visit_blood_workup',NULL,52,NULL,NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw3',NULL,'visit_blood_workup',NULL,53,NULL,NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw4',NULL,'visit_blood_workup',NULL,54,NULL,NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw5',NULL,'visit_blood_workup',NULL,55,NULL,NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw6',NULL,'visit_blood_workup',NULL,56,NULL,NULL,'radio','Blood draw shift?','0, AM \\n 1, PM',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw7',NULL,'visit_blood_workup',NULL,57,NULL,NULL,'radio','Blood draw by','0, RN \\n 1, LPN \\n 2, nurse assistant \\n 3, doctor',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw8',NULL,'visit_blood_workup',NULL,58,NULL,NULL,'select','Level of patient anxiety','0, not anxious \\n 1, undecided \\n 2, very anxious',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vbw9',NULL,'visit_blood_workup',NULL,59,NULL,NULL,'select','Patient scheduled for future draws?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'visit_blood_workup_complete',NULL,'visit_blood_workup',NULL,60,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'visit_lab_data_complete',NULL,'visit_lab_data',NULL,45,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'visit_observed_behavior_complete',NULL,'visit_observed_behavior',NULL,75,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vld1',NULL,'visit_lab_data','Visit Lab Data',40,NULL,NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vld2',NULL,'visit_lab_data',NULL,41,NULL,NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vld3',NULL,'visit_lab_data',NULL,42,NULL,NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vld4',NULL,'visit_lab_data',NULL,43,NULL,NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vld5',NULL,'visit_lab_data',NULL,44,NULL,NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob1',NULL,'visit_observed_behavior','Visit Observed Behavior',61,NULL,'Was the patient...','radio','nervous?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob10',NULL,'visit_observed_behavior',NULL,70,NULL,NULL,'radio','scared?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob11',NULL,'visit_observed_behavior',NULL,71,NULL,NULL,'radio','fidgety?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob12',NULL,'visit_observed_behavior',NULL,72,NULL,NULL,'radio','crying?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob13',NULL,'visit_observed_behavior',NULL,73,NULL,NULL,'radio','screaming?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob14',NULL,'visit_observed_behavior',NULL,74,NULL,NULL,'textarea','other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob2',NULL,'visit_observed_behavior',NULL,62,NULL,NULL,'radio','worried?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob3',NULL,'visit_observed_behavior',NULL,63,NULL,NULL,'radio','scared?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob4',NULL,'visit_observed_behavior',NULL,64,NULL,NULL,'radio','fidgety?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob5',NULL,'visit_observed_behavior',NULL,65,NULL,NULL,'radio','crying?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob6',NULL,'visit_observed_behavior',NULL,66,NULL,NULL,'radio','screaming?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob7',NULL,'visit_observed_behavior',NULL,67,NULL,NULL,'textarea','other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob8',NULL,'visit_observed_behavior',NULL,68,NULL,'Were you...','radio','nervous?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'vob9',NULL,'visit_observed_behavior',NULL,69,NULL,NULL,'radio','worried?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'weight',NULL,'demographics',NULL,20,'kilograms',NULL,'text','Weight (kilograms)',NULL,NULL,'int','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'weight2',NULL,'baseline_data',NULL,32,NULL,NULL,'text','Weight (kilograms)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'withdraw_date',NULL,'completion_data',NULL,78,NULL,NULL,'text','Put a date if patient withdrew study',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(2,'withdraw_reason',NULL,'completion_data',NULL,87,NULL,NULL,'select','Reason patient withdrew from study','0, Non-compliance \\n 1, Did not wish to continue in study \\n 2, Could not tolerate the supplement \\n 3, Hospitalization \\n 4, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'address','1','demographics',NULL,5,NULL,NULL,'textarea','Street, City, State, ZIP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'aerobics',NULL,'demographics',NULL,15,NULL,NULL,'checkbox','Aerobics','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(3,'age',NULL,'demographics',NULL,8.2,NULL,NULL,'calc','Age (years)','rounddown(datediff([dob],\'today\',\'y\'))',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'alb_4',NULL,'completion_data',NULL,80,NULL,NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'baseline_data_complete',NULL,'baseline_data',NULL,39,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'bmi',NULL,'demographics',NULL,21,'kilograms',NULL,'calc','BMI','round(([weight]*10000)/(([height])^(2)),1)',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'bmi2',NULL,'baseline_data',NULL,33,NULL,NULL,'calc','BMI','round(([weight2]*10000)/(([height2])^(2)),1)',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'chol_4',NULL,'completion_data',NULL,86,NULL,NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'chol_b',NULL,'baseline_data',NULL,37,NULL,NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'comments',NULL,'demographics',NULL,22,NULL,'General Comments','textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'complete_study',NULL,'completion_data',NULL,77,NULL,NULL,'select','Has patient completed study?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'completion_data_complete',NULL,'completion_data',NULL,88,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'completion_project_questionnaire_complete',NULL,'completion_project_questionnaire',NULL,102,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq1',NULL,'completion_project_questionnaire','Completion Project Questionnaire',89,NULL,NULL,'text','Date of study completion',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq10',NULL,'completion_project_questionnaire',NULL,98,NULL,NULL,'select','On average, how many pills did you take each day last week?','0, less than 5 \\n 1, 5-10 \\n 2, 6-15 \\n 3, over 15',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq11',NULL,'completion_project_questionnaire',NULL,99,NULL,NULL,'select','Using the handout, which level of dependence do you feel you are currently at?','0, 0 \\n 1, 1 \\n 2, 2 \\n 3, 3 \\n 4, 4 \\n 5, 5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq12',NULL,'completion_project_questionnaire',NULL,100,NULL,NULL,'radio','Would you be willing to discuss your experiences with a psychiatrist?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq13',NULL,'completion_project_questionnaire',NULL,101,NULL,NULL,'select','How open are you to further testing?','0, not open \\n 1, undecided \\n 2, very open',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq2',NULL,'completion_project_questionnaire',NULL,90,NULL,NULL,'text','Transferrin (mg/dL)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq3',NULL,'completion_project_questionnaire',NULL,91,NULL,NULL,'text','Kt/V',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq4',NULL,'completion_project_questionnaire',NULL,92,NULL,NULL,'text','Dry weight (kilograms)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq5',NULL,'completion_project_questionnaire',NULL,93,NULL,NULL,'text','Number of treatments missed',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq6',NULL,'completion_project_questionnaire',NULL,94,NULL,NULL,'select','How compliant was the patient in drinking the supplement?','0, 100 percent \\n 1, 99-75 percent \\n 2, 74-50 percent \\n 3, 49-25 percent \\n 4, 0-24 percent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq7',NULL,'completion_project_questionnaire',NULL,95,NULL,NULL,'select','Was patient hospitalized since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq8',NULL,'completion_project_questionnaire',NULL,96,NULL,NULL,'select','What was the cause of hospitalization?','1, Vascular access related events \\n 2, CVD events \\n 3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'cpq9',NULL,'completion_project_questionnaire',NULL,97,NULL,NULL,'text','Date of hospital admission',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'creat_4',NULL,'completion_data',NULL,82,NULL,NULL,'text','Creatinine (mg/dL)',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'creat_b',NULL,'baseline_data',NULL,35,NULL,NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'date_enrolled',NULL,'demographics',NULL,2,NULL,'Consent Information','text','Date subject signed consent',NULL,'YYYY-MM-DD','date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'date_visit_4',NULL,'completion_data',NULL,79,NULL,NULL,'text','Date of last visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'demographics_complete',NULL,'demographics',NULL,23,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'discharge_date_4',NULL,'completion_data',NULL,83,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'discharge_summary_4',NULL,'completion_data',NULL,84,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'dob','1','demographics',NULL,8.1,NULL,NULL,'text','Date of birth',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'drink',NULL,'demographics',NULL,17,NULL,NULL,'checkbox','Drink (Alcoholic Beverages)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(3,'eat',NULL,'demographics',NULL,16,NULL,NULL,'checkbox','Eat Out (Dinner/Lunch)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(3,'email','1','demographics',NULL,8,NULL,NULL,'text','E-mail',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'ethnicity',NULL,'demographics',NULL,9,NULL,NULL,'radio','Ethnicity','0, Hispanic or Latino \\n 1, NOT Hispanic or Latino \\n 2, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LH',NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'first_name','1','demographics',NULL,3,NULL,'Contact Information','text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'gender',NULL,'demographics',NULL,11,NULL,NULL,'radio','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'given_birth',NULL,'demographics',NULL,12,NULL,NULL,'yesno','Has the patient given birth before?',NULL,NULL,NULL,NULL,NULL,NULL,'[gender] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'gym',NULL,'demographics',NULL,14,NULL,'Please provide the patient\'s weekly schedule for the activities below.','checkbox','Gym (Weight Training)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(3,'height',NULL,'demographics',NULL,19,'cm',NULL,'text','Height (cm)',NULL,NULL,'float','130','215','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'height2',NULL,'baseline_data','Baseline Data',31,NULL,NULL,'text','Height (cm)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'last_name','1','demographics',NULL,4,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'meds',NULL,'demographics',NULL,17.3,NULL,NULL,'checkbox','Is patient taking any of the following medications? (check all that apply)','1, Lexapro \\n 2, Celexa \\n 3, Prozac \\n 4, Paxil \\n 5, Zoloft',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'npcr_4',NULL,'completion_data',NULL,85,NULL,NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'npcr_b',NULL,'baseline_data',NULL,36,NULL,NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'num_children',NULL,'demographics',NULL,13,NULL,NULL,'text','How many times has the patient given birth?',NULL,NULL,'int','0',NULL,'soft_typed','[gender] = \"0\" and [given_birth] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'patient_document',NULL,'demographics',NULL,2.1,NULL,NULL,'file','Upload the patient\'s consent form',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'patient_morale_questionnaire_complete',NULL,'patient_morale_questionnaire',NULL,50,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'pmq1',NULL,'patient_morale_questionnaire','Patient Morale Questionnaire',46,NULL,NULL,'select','On average, how many pills did you take each day last week?','0, less than 5 \\n 1, 5-10 \\n 2, 6-15 \\n 3, over 15',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'pmq2',NULL,'patient_morale_questionnaire',NULL,47,NULL,NULL,'select','Using the handout, which level of dependence do you feel you are currently at?','0, 0 \\n 1, 1 \\n 2, 2 \\n 3, 3 \\n 4, 4 \\n 5, 5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'pmq3',NULL,'patient_morale_questionnaire',NULL,48,NULL,NULL,'radio','Would you be willing to discuss your experiences with a psychiatrist?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'pmq4',NULL,'patient_morale_questionnaire',NULL,49,NULL,NULL,'select','How open are you to further testing?','0, not open \\n 1, undecided \\n 2, very open',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'prealb_4',NULL,'completion_data',NULL,81,NULL,NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'prealb_b',NULL,'baseline_data',NULL,34,NULL,NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'race',NULL,'demographics',NULL,10,NULL,NULL,'select','Race','0, American Indian/Alaska Native \\n 1, Asian \\n 2, Native Hawaiian or Other Pacific Islander \\n 3, Black or African American \\n 4, White \\n 5, More Than One Race \\n 6, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'specify_mood',NULL,'demographics',NULL,17.1,NULL,'Other information','slider','Specify the patient\'s mood','Very sad | Indifferent | Very happy',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'study_comments',NULL,'completion_data','Completion Data',76,NULL,NULL,'textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'study_id',NULL,'demographics','Demographics',1,NULL,NULL,'text','Study ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'telephone_1','1','demographics',NULL,6,NULL,NULL,'text','Phone number',NULL,'Include Area Code','phone',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'transferrin_b',NULL,'baseline_data',NULL,38,NULL,NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw1',NULL,'visit_blood_workup','Visit Blood Workup',51,NULL,NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw2',NULL,'visit_blood_workup',NULL,52,NULL,NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw3',NULL,'visit_blood_workup',NULL,53,NULL,NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw4',NULL,'visit_blood_workup',NULL,54,NULL,NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw5',NULL,'visit_blood_workup',NULL,55,NULL,NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw6',NULL,'visit_blood_workup',NULL,56,NULL,NULL,'radio','Blood draw shift?','0, AM \\n 1, PM',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw7',NULL,'visit_blood_workup',NULL,57,NULL,NULL,'radio','Blood draw by','0, RN \\n 1, LPN \\n 2, nurse assistant \\n 3, doctor',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw8',NULL,'visit_blood_workup',NULL,58,NULL,NULL,'select','Level of patient anxiety','0, not anxious \\n 1, undecided \\n 2, very anxious',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vbw9',NULL,'visit_blood_workup',NULL,59,NULL,NULL,'select','Patient scheduled for future draws?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'visit_blood_workup_complete',NULL,'visit_blood_workup',NULL,60,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'visit_lab_data_complete',NULL,'visit_lab_data',NULL,45,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'visit_observed_behavior_complete',NULL,'visit_observed_behavior',NULL,75,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vld1',NULL,'visit_lab_data','Visit Lab Data',40,NULL,NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vld2',NULL,'visit_lab_data',NULL,41,NULL,NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vld3',NULL,'visit_lab_data',NULL,42,NULL,NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vld4',NULL,'visit_lab_data',NULL,43,NULL,NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vld5',NULL,'visit_lab_data',NULL,44,NULL,NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob1',NULL,'visit_observed_behavior','Visit Observed Behavior',61,NULL,'Was the patient...','radio','nervous?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob10',NULL,'visit_observed_behavior',NULL,70,NULL,NULL,'radio','scared?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob11',NULL,'visit_observed_behavior',NULL,71,NULL,NULL,'radio','fidgety?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob12',NULL,'visit_observed_behavior',NULL,72,NULL,NULL,'radio','crying?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob13',NULL,'visit_observed_behavior',NULL,73,NULL,NULL,'radio','screaming?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob14',NULL,'visit_observed_behavior',NULL,74,NULL,NULL,'textarea','other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob2',NULL,'visit_observed_behavior',NULL,62,NULL,NULL,'radio','worried?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob3',NULL,'visit_observed_behavior',NULL,63,NULL,NULL,'radio','scared?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob4',NULL,'visit_observed_behavior',NULL,64,NULL,NULL,'radio','fidgety?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob5',NULL,'visit_observed_behavior',NULL,65,NULL,NULL,'radio','crying?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob6',NULL,'visit_observed_behavior',NULL,66,NULL,NULL,'radio','screaming?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob7',NULL,'visit_observed_behavior',NULL,67,NULL,NULL,'textarea','other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob8',NULL,'visit_observed_behavior',NULL,68,NULL,'Were you...','radio','nervous?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'vob9',NULL,'visit_observed_behavior',NULL,69,NULL,NULL,'radio','worried?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'weight',NULL,'demographics',NULL,20,'kilograms',NULL,'text','Weight (kilograms)',NULL,NULL,'int','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'weight2',NULL,'baseline_data',NULL,32,NULL,NULL,'text','Weight (kilograms)',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'withdraw_date',NULL,'completion_data',NULL,78,NULL,NULL,'text','Put a date if patient withdrew study',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(3,'withdraw_reason',NULL,'completion_data',NULL,87,NULL,NULL,'select','Reason patient withdrew from study','0, Non-compliance \\n 1, Did not wish to continue in study \\n 2, Could not tolerate the supplement \\n 3, Hospitalization \\n 4, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'aerobics',NULL,'survey',NULL,11.2,NULL,NULL,'checkbox','Aerobics','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(4,'comment_box',NULL,'survey',NULL,15,NULL,NULL,'textarea','If you need the respondent to enter a large amount of text, you may use a NOTES BOX.<br><br>This question has also been set as a REQUIRED QUESTION, so the respondent cannot fully submit the survey until this question has been answered. ANY question type can be set to be required.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LH',NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'date_ymd',NULL,'survey',NULL,8,NULL,NULL,'text','DATE questions are also an option. If you click the calendar icon on the right, a pop-up calendar will appear, thus allowing the respondent to easily select a date. Or it can be simply typed in.',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'descriptive',NULL,'survey',NULL,11,NULL,NULL,'descriptive','You may also use DESCRIPTIVE TEXT to provide informational text within a survey section. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'drink',NULL,'survey',NULL,11.4,NULL,NULL,'checkbox','Drink (Alcoholic Beverages)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(4,'dropdown',NULL,'survey',NULL,3,NULL,NULL,'select','You may also set multiple choice questions as DROP-DOWN MENUs.','1, Choice One \\n 2, Choice Two \\n 3, Choice Three \\n 4, Etc.',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'eat',NULL,'survey',NULL,11.3,NULL,NULL,'checkbox','Eat Out (Dinner/Lunch)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(4,'file',NULL,'survey',NULL,9,NULL,NULL,'file','The FILE UPLOAD question type allows respondents to upload any type of document to the survey that you may afterward download and open when viewing your survey results.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'gym',NULL,'survey',NULL,11.1,NULL,'Below is a matrix of checkbox fields. A matrix can also be displayed as radio button fields.','checkbox','Gym (Weight Training)','0, Monday \\n 1, Tuesday \\n 2, Wednesday \\n 3, Thursday \\n 4, Friday',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'weekly_schedule',0,NULL,NULL,0),
	(4,'hidden_branch',NULL,'survey',NULL,13,NULL,NULL,'text','HIDDEN QUESTION: This question will only appear when you select the second option of the question immediately above.',NULL,NULL,NULL,'undefined','undefined','soft_typed','[radio_branch] = \"2\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'ma',NULL,'survey',NULL,5,NULL,NULL,'checkbox','This type of multiple choice question, known as CHECKBOXES, allows for more than one answer choice to be selected, whereas radio buttons and drop-downs only allow for one choice.','1, Choice One \\n 2, Choice Two \\n 3, Choice Three \\n 4, Select as many as you like',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'participant_id',NULL,'survey','Example Survey',1,NULL,NULL,'text','Participant ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'radio',NULL,'survey',NULL,2,NULL,'Section 1 (This is a section header with descriptive text. It only provides informational text and is used to divide the survey into sections for organization. If the survey is set to be displayed as \"one section per page\", then these section headers will begin each new page of the survey.)','radio','You may create MULTIPLE CHOICE questions and set the answer choices for them. You can have as many answer choices as you need. This multiple choice question is rendered as RADIO buttons.','1, Choice One \\n 2, Choice Two \\n 3, Choice Three \\n 4, Etc.',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'radio_branch',NULL,'survey',NULL,12,NULL,'ADVANCED FEATURES: The questions below will illustrate how some advanced survey features are used.','radio','BRANCHING LOGIC: The question immediately following this one is using branching logic, which means that the question will stay hidden until defined criteria are specified.\n\nFor example, the following question has been set NOT to appear until the respondent selects the second option to the right.  ','1, This option does nothing. \\n 2, Clicking this option will trigger the branching logic to reveal the next question. \\n 3, This option also does nothing.',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'slider',NULL,'survey',NULL,10,NULL,NULL,'slider','A SLIDER is a question type that allows the respondent to choose an answer along a continuum. The respondent\'s answer is saved as an integer between 0 (far left) and 100 (far right) with a step of 1.','You can provide labels above the slider | Middle label | Right-hand label',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'stop_actions',NULL,'survey',NULL,14,NULL,NULL,'checkbox','STOP ACTIONS may be used with any multiple choice question. Stop actions can be applied to any (or all) answer choices. When that answer choice is selected by a respondent, their survey responses are then saved, and the survey is immediately ended.\n\nThe third option to the right has a stop action.','1, This option does nothing. \\n 2, This option also does nothing. \\n 3, Click here to trigger the stop action and end the survey.',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'3',NULL,NULL,0,NULL,NULL,0),
	(4,'survey_complete',NULL,'survey',NULL,16,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'textbox',NULL,'survey',NULL,4,NULL,NULL,'text','This is a TEXT BOX, which allows respondents to enter a small amount of text. A Text Box can be validated, if needed, as a number, integer, phone number, email, or zipcode. If validated as a number or integer, you may also set the minimum and/or maximum allowable values.\n\nThis question has \"number\" validation set with a minimum of 1 and a maximum of 10. ',NULL,NULL,'float','1','10','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'tf',NULL,'survey',NULL,7,NULL,NULL,'truefalse','And you can also create TRUE-FALSE questions.<br><br>This question has horizontal alignment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'RH',NULL,NULL,NULL,0,NULL,NULL,0),
	(4,'yn',NULL,'survey',NULL,6,NULL,NULL,'yesno','You can create YES-NO questions.<br><br>This question has vertical alignment of choices on the right.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'address','1','demographics',NULL,5,NULL,NULL,'textarea','Street, City, State, ZIP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'age',NULL,'demographics',NULL,8.2,NULL,NULL,'calc','Age (years)','rounddown(datediff([dob],\'today\',\'y\'))',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'bmi',NULL,'demographics',NULL,21,'kilograms',NULL,'calc','BMI','round(([weight]*10000)/(([height])^(2)),1)',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'comments',NULL,'demographics',NULL,22,NULL,'General Comments','textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'demographics_complete',NULL,'demographics',NULL,23,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'dob','1','demographics',NULL,8.1,NULL,NULL,'text','Date of birth',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'email','1','demographics',NULL,8,NULL,NULL,'text','E-mail',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'ethnicity',NULL,'demographics',NULL,9,NULL,NULL,'radio','Ethnicity','0, Hispanic or Latino \\n 1, NOT Hispanic or Latino \\n 2, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LH',NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'first_name','1','demographics',NULL,3,NULL,'Contact Information','text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'gender',NULL,'demographics',NULL,11,NULL,NULL,'radio','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'height',NULL,'demographics',NULL,19,'cm',NULL,'text','Height (cm)',NULL,NULL,'float','130','215','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'last_name','1','demographics',NULL,4,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'race',NULL,'demographics',NULL,10,NULL,NULL,'select','Race','0, American Indian/Alaska Native \\n 1, Asian \\n 2, Native Hawaiian or Other Pacific Islander \\n 3, Black or African American \\n 4, White \\n 5, More Than One Race \\n 6, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'record_id',NULL,'demographics','Basic Demography Form',1,NULL,NULL,'text','Study ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'telephone','1','demographics',NULL,6,NULL,NULL,'text','Phone number',NULL,'Include Area Code','phone',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(5,'weight',NULL,'demographics',NULL,20,'kilograms',NULL,'text','Weight (kilograms)',NULL,NULL,'int','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'amendment_number',NULL,'project',NULL,9,NULL,NULL,'select','Amendment Number','0 \\n 1 \\n 2 \\n 3 \\n 4 \\n 5 \\n 6 \\n 7 \\n 8 \\n 9 \\n 10 \\n 11 \\n 12 \\n 13 \\n 14 \\n 15 \\n 16 \\n 17 \\n 18 \\n 19 \\n 20','',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'amendment_status',NULL,'project',NULL,8,NULL,'Amendment Information','radio','Amendment?','0, No \\n 1, Yes','',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'comments_pi_response',NULL,'workflow',NULL,33,NULL,NULL,'textarea','Comments - PI Process',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'comments_preprereview',NULL,'workflow',NULL,26,NULL,NULL,'textarea','Comments - Pre-Pre-Review',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'comments_prereview',NULL,'workflow',NULL,30,NULL,NULL,'textarea','Comments - Pre-Review',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'comments_src',NULL,'post_award_administration',NULL,126,NULL,NULL,'textarea','Comments - SRC Award',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'crc_cores',NULL,'post_award_administration',NULL,129,NULL,NULL,'text','CRC Cores ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'crc_facilities',NULL,'post_award_administration',NULL,127,NULL,NULL,'text','CRC Facilities ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'crc_original_review',NULL,'project',NULL,12,NULL,NULL,'select','CRC Original Review?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'crc_personnel',NULL,'post_award_administration',NULL,128,NULL,NULL,'text','CRC Nursing ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'crc_type',NULL,'project',NULL,10,NULL,'CRC Legacy System Data','select','CRC Type','A \\n B \\n C \\n D',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'crc_webcamp_import',NULL,'project',NULL,11,NULL,NULL,'select','CRC WebCamp Project Import?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'date_agenda',NULL,'workflow',NULL,35,NULL,'Agenda Information','text','Agenda Date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'date_pi_notification',NULL,'workflow',NULL,31,NULL,'PI Notification Information','text','PI Notification Date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'date_pi_response',NULL,'workflow',NULL,32,NULL,NULL,'text','PI Response Date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'date_receipt',NULL,'workflow','Workflow',23,NULL,'Pre-Pre-Review Information','text','Project Receipt Date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'date_start_preprereview',NULL,'workflow',NULL,24,NULL,NULL,'text','Pre-Pre-Review - Start Date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'date_start_prereview',NULL,'workflow',NULL,28,NULL,'Pre-Review Information','text','Pre-Review Notification Date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'date_stop_preprereview',NULL,'workflow',NULL,25,NULL,NULL,'text','Pre-Pre-Review - Stop Date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'date_stop_prereview',NULL,'workflow',NULL,29,NULL,NULL,'text','Pre-Review Completion Date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'equipment',NULL,'post_award_administration',NULL,133,NULL,NULL,'text','Equipment ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_biosketch1',NULL,'project',NULL,15,NULL,NULL,'file','Biosketch(1)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_biosketch2',NULL,'project',NULL,16,NULL,NULL,'file','Biosketch(2)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_biosketch3',NULL,'project',NULL,17,NULL,NULL,'file','Biosketch(3)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_budget',NULL,'project',NULL,14,NULL,NULL,'file','Budget',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_crc',NULL,'project',NULL,18,NULL,NULL,'file','CRC Resources',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_other1',NULL,'project',NULL,19,NULL,NULL,'file','Other(1)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_other2',NULL,'project',NULL,20,NULL,NULL,'file','Other(2)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_other3',NULL,'project',NULL,21,NULL,NULL,'file','Other(3)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_pi_comments',NULL,'workflow',NULL,34,NULL,NULL,'file','PI response',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'file_proposal',NULL,'project',NULL,13,NULL,'Project Files','file','Research Proposal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'hospital_ancillaries',NULL,'post_award_administration',NULL,135,NULL,NULL,'text','Hospital Ancillaries ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'irb_number',NULL,'project',NULL,7,NULL,NULL,'text','IRB Number',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'misc_services',NULL,'post_award_administration',NULL,134,NULL,NULL,'text','Misc. Services ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_administrative',NULL,'prereview_administrative','Pre-Review Administrative',43,NULL,NULL,'select','Requires Administrative?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_biostatistics',NULL,'prereview_biostatistics','Pre-Review Biostatistics',49,NULL,NULL,'select','Requires Biostatistics?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_budget',NULL,'prereview_budget','Pre-Review Budget',68,NULL,NULL,'select','Requires Budget?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_community',NULL,'prereview_community','Pre-Review Community',98,NULL,NULL,'select','Requires Community?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_cores',NULL,'prereview_cores','Pre-Review Cores',80,NULL,NULL,'select','Requires Cores?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_nursing',NULL,'prereview_nursing','Pre-Review Nursing',74,NULL,NULL,'select','Requires Nursing?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_nutrition',NULL,'prereview_nutrition','Pre-Review Nutrition',92,NULL,NULL,'select','Requires Nutrition?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_other',NULL,'prereview_ctc','Pre-Review CTC',104,NULL,NULL,'select','Requires Other?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_participant',NULL,'prereview_participant','Pre-Review Participant',62,NULL,NULL,'select','Requires Participant?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_pi_response',NULL,'prereview_pi_response','Pre-Review PI Response',110,NULL,NULL,'select','Requires PI Response?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_scientific',NULL,'prereview_scientific','Pre-Review Scientific',56,NULL,NULL,'select','Requires Scientific?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'needs_sleep',NULL,'prereview_sleep','Pre-Review Sleep',86,NULL,NULL,'select','Requires Sleep?','0, Yes \\n 1, No',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'owner_prepreview',NULL,'workflow',NULL,27,NULL,NULL,'select','Owner (Liaison)','0, Shraddha \\n 1, Jennifer \\n 2, Terri \\n 3, Cheryl \\n 4, Lynda',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'personnel',NULL,'post_award_administration',NULL,132,NULL,NULL,'text','Personnel ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'pi_firstname',NULL,'project',NULL,3,NULL,NULL,'text','PI First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'pi_lastname',NULL,'project',NULL,4,NULL,NULL,'text','PI Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'pi_vunetid',NULL,'project',NULL,5,NULL,NULL,'text','PI VUnetID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'post_award_administration_complete',NULL,'post_award_administration',NULL,138,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_administrative',NULL,'prereview_administrative',NULL,44,NULL,'Enter PI Pre-Review Notes Or Attach File','textarea','Notes',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_administrative] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_administrative_complete',NULL,'prereview_administrative',NULL,48,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_administrative_date_received',NULL,'prereview_administrative',NULL,47,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_administrative_date_sent',NULL,'prereview_administrative',NULL,46,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_administrative_doc',NULL,'prereview_administrative',NULL,45,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_administrative] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_biostatistics',NULL,'prereview_biostatistics',NULL,50,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_biostatistics] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_biostatistics_complete',NULL,'prereview_biostatistics',NULL,55,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_biostatistics_date_received',NULL,'prereview_biostatistics',NULL,53,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_biostatistics_date_sent',NULL,'prereview_biostatistics',NULL,52,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_biostatistics_doc',NULL,'prereview_biostatistics',NULL,51,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_biostatistics] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_biostatistics_hours_awarded',NULL,'prereview_biostatistics',NULL,54,NULL,'Biostatistics Award','text','Consultation Hours Awarded',NULL,NULL,'float','0','5000','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_budget',NULL,'prereview_budget',NULL,69,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_budget_complete',NULL,'prereview_budget',NULL,73,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_budget_date_received',NULL,'prereview_budget',NULL,72,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_budget_date_sent',NULL,'prereview_budget',NULL,71,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed','[needs_budget] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_budget_doc',NULL,'prereview_budget',NULL,70,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_budget] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_community',NULL,'prereview_community',NULL,99,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_community_complete',NULL,'prereview_community',NULL,103,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_community_date_received',NULL,'prereview_community',NULL,102,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_community_date_sent',NULL,'prereview_community',NULL,101,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed','[needs_community] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_community_doc',NULL,'prereview_community',NULL,100,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_community] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_cores',NULL,'prereview_cores',NULL,81,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_cores_complete',NULL,'prereview_cores',NULL,85,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_cores_date_received',NULL,'prereview_cores',NULL,84,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_cores_date_sent',NULL,'prereview_cores',NULL,83,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed','[needs_cores] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_cores_doc',NULL,'prereview_cores',NULL,82,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_cores] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_ctc_complete',NULL,'prereview_ctc',NULL,109,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nursing',NULL,'prereview_nursing',NULL,75,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nursing_complete',NULL,'prereview_nursing',NULL,79,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nursing_date_received',NULL,'prereview_nursing',NULL,78,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nursing_date_sent',NULL,'prereview_nursing',NULL,77,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed','[needs_nursing] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nursing_doc',NULL,'prereview_nursing',NULL,76,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_nursing] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nutrition',NULL,'prereview_nutrition',NULL,93,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nutrition_complete',NULL,'prereview_nutrition',NULL,97,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nutrition_date_received',NULL,'prereview_nutrition',NULL,96,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nutrition_date_sent',NULL,'prereview_nutrition',NULL,95,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed','[needs_nutrition] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_nutrition_doc',NULL,'prereview_nutrition',NULL,94,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_nutrition] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_other',NULL,'prereview_ctc',NULL,105,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_other_date_received',NULL,'prereview_ctc',NULL,108,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_other_date_sent',NULL,'prereview_ctc',NULL,107,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_other_doc',NULL,'prereview_ctc',NULL,106,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_participant',NULL,'prereview_participant',NULL,63,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_participant] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_participant_complete',NULL,'prereview_participant',NULL,67,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_participant_date_received',NULL,'prereview_participant',NULL,66,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_participant_date_sent',NULL,'prereview_participant',NULL,65,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_participant_doc',NULL,'prereview_participant',NULL,64,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_participant] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_pi_response',NULL,'prereview_pi_response',NULL,111,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI response',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_pi_response_complete',NULL,'prereview_pi_response',NULL,115,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_pi_response_date_received',NULL,'prereview_pi_response',NULL,114,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_pi_response_date_sent',NULL,'prereview_pi_response',NULL,113,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_pi_response_doc',NULL,'prereview_pi_response',NULL,112,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_pi_response] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_scientific',NULL,'prereview_scientific',NULL,57,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_scientific] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_scientific_complete',NULL,'prereview_scientific',NULL,61,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_scientific_date_received',NULL,'prereview_scientific',NULL,60,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_scientific_date_sent',NULL,'prereview_scientific',NULL,59,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_scientific_doc',NULL,'prereview_scientific',NULL,58,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_scientific] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_sleep',NULL,'prereview_sleep',NULL,87,NULL,'Enter Pre-Review Notes Or Attach File','textarea','PI Suggestions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_sleep_complete',NULL,'prereview_sleep',NULL,91,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_sleep_date_received',NULL,'prereview_sleep',NULL,90,NULL,NULL,'text','Date received',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_sleep_date_sent',NULL,'prereview_sleep',NULL,89,NULL,NULL,'text','Date Sent for pre-review',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed','[needs_sleep] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'prereview_sleep_doc',NULL,'prereview_sleep',NULL,88,NULL,NULL,'file','OR File<br><font size=1>(NOTE: If file will not open, then Save it to your computer and then Open it.)</font>',NULL,NULL,NULL,NULL,NULL,NULL,'[needs_sleep] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'proj_id',NULL,'project','Project',1,NULL,NULL,'text','Project ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'project_complete',NULL,'project',NULL,22,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'project_type',NULL,'project',NULL,6,NULL,NULL,'select','Project Type','1, Expedited \\n 2, Full Committee \\n 3, Industry only',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'rev_notification_date',NULL,'workflow',NULL,38,NULL,NULL,'text','Date - Sent to Reviewers',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'rev1_name',NULL,'workflow',NULL,36,NULL,NULL,'text','Reviewer 1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'rev2_name',NULL,'workflow',NULL,37,NULL,NULL,'text','Reviewer 2',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'sleep_cores',NULL,'post_award_administration',NULL,130,NULL,NULL,'text','Sleep Core ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_center_number',NULL,'post_award_administration',NULL,122,NULL,NULL,'text','SRC Center Number - Institutional',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_center_number_crc',NULL,'post_award_administration',NULL,124,NULL,NULL,'text','SRC Center Number - CRC',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_center_number_ctsa',NULL,'post_award_administration',NULL,123,NULL,NULL,'text','SRC Center Number - CTSA',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_center_number_dh',NULL,'post_award_administration',NULL,125,NULL,NULL,'text','D & H Number',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_full_project_period',NULL,'post_award_administration',NULL,121,NULL,NULL,'text','SRC full project period',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_letter_date',NULL,'post_award_administration',NULL,118,NULL,NULL,'text','SRC letter sent',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_letter_document',NULL,'post_award_administration',NULL,119,NULL,NULL,'file','SRC letter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_notification_date',NULL,'workflow',NULL,39,NULL,NULL,'text','Date- Sent to SRC',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_percent_funded',NULL,'post_award_administration','Post-Award Administration',116,NULL,'Post-Award Administration','text','Percent of request funded (%)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_priority_score',NULL,'workflow',NULL,41,NULL,NULL,'text','SRC Priority Score',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_project_completion',NULL,'post_award_administration',NULL,137,NULL,NULL,'text','SRC completion date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_project_ending',NULL,'post_award_administration',NULL,120,NULL,NULL,'text','SRC project ending date',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'src_total_award_amount',NULL,'post_award_administration',NULL,117,NULL,NULL,'text','SRC Total Award Amount ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'status_src_award',NULL,'workflow',NULL,40,NULL,NULL,'select','SRC Award Status','0, Approved \\n 1, Pending \\n 2, Deferred (Studio) \\n 3, Disapproved \\n 4, Tabled \\n 5, Withdrawn',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'title',NULL,'project',NULL,2,NULL,'Demographic Characteristics','textarea','Project Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'victr_status',NULL,'post_award_administration',NULL,136,NULL,NULL,'radio','VICTR Status','0, Inactive \\n 1, Active',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'vumc_core_facilities',NULL,'post_award_administration',NULL,131,NULL,NULL,'text','VUMC Core Facilities ($)',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(6,'workflow_complete',NULL,'workflow',NULL,42,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'admission_date_1',NULL,'month_1_data',NULL,56,NULL,NULL,'text','Date of hospital admission',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'admission_date_2',NULL,'month_2_data',NULL,76,NULL,NULL,'text','Date of hospital admission',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'admission_date_3',NULL,'month_3_data',NULL,104,NULL,NULL,'text','Date of hospital admission',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'alb_1',NULL,'month_1_data',NULL,44,'g/dL',NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'float','3','5','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'alb_2',NULL,'month_2_data',NULL,64,'g/dL',NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'float','3','5','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'alb_3',NULL,'month_3_data',NULL,85,'g/dL',NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'float','3','5','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'alb_b',NULL,'baseline_data',NULL,26,'g/dL',NULL,'text','Serum Albumin (g/dL)',NULL,NULL,'int','3','5','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'baseline_data_complete',NULL,'baseline_data',NULL,42,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'cause_death_1',NULL,'month_1_data',NULL,61,NULL,NULL,'select','What was the cause of death?','1, All-cause \\n 2, Cardiovascular',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'cause_death_2',NULL,'month_2_data',NULL,81,NULL,NULL,'select','What was the cause of death?','1, All-cause \\n 2, Cardiovascular',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'cause_death_3',NULL,'month_3_data',NULL,109,NULL,NULL,'select','What was the cause of death?','1, All-cause \\n 2, Cardiovascular',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'cause_hosp_1',NULL,'month_1_data',NULL,55,NULL,NULL,'select','What was the cause of hospitalization?','1, Vascular access related events \\n 2, CVD events \\n 3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'cause_hosp_2',NULL,'month_2_data',NULL,75,NULL,NULL,'select','What was the cause of hospitalization?','1, Vascular access related events \\n 2, CVD events \\n 3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'cause_hosp_3',NULL,'month_3_data',NULL,103,NULL,NULL,'select','What was the cause of hospitalization?','1, Vascular access related events \\n 2, CVD events \\n 3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'chol_1',NULL,'month_1_data',NULL,48,'mg/dL',NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'chol_2',NULL,'month_2_data',NULL,68,'mg/dL',NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'chol_3',NULL,'month_3_data',NULL,89,'mg/dL',NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'chol_b',NULL,'baseline_data',NULL,30,'mg/dL',NULL,'text','Cholesterol (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'complete_study',NULL,'completion_data','Completion Data',111,NULL,'Study Completion Information','select','Has patient completed study?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'complete_study_date',NULL,'completion_data',NULL,114,NULL,NULL,'text','Date of study completion',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'completion_data_complete',NULL,'completion_data',NULL,116,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'compliance_1',NULL,'month_1_data',NULL,53,NULL,NULL,'select','How compliant was the patient in drinking the supplement?','0, 100 percent \\n 1, 99-75 percent \\n 2, 74-50 percent \\n 3, 49-25 percent \\n 4, 0-24 percent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'compliance_2',NULL,'month_2_data',NULL,73,NULL,NULL,'select','How compliant was the patient in drinking the supplement?','0, 100 percent \\n 1, 99-75 percent \\n 2, 74-50 percent \\n 3, 49-25 percent \\n 4, 0-24 percent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'compliance_3',NULL,'month_3_data',NULL,101,NULL,NULL,'select','How compliant was the patient in drinking the supplement?','0, 100 percent \\n 1, 99-75 percent \\n 2, 74-50 percent \\n 3, 49-25 percent \\n 4, 0-24 percent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'creat_1',NULL,'month_1_data',NULL,46,'mg/dL',NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float','0.5','20','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'creat_2',NULL,'month_2_data',NULL,66,'mg/dL',NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float','0.5','20','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'creat_3',NULL,'month_3_data',NULL,87,'mg/dL',NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float','0.5','20','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'creat_b',NULL,'baseline_data',NULL,28,'mg/dL',NULL,'text','Creatinine (mg/dL)',NULL,NULL,'float','0.5','20','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_blood_3',NULL,'month_3_data',NULL,84,NULL,NULL,'text','Date blood was drawn',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_blood_b',NULL,'baseline_data',NULL,25,NULL,NULL,'text','Date blood was drawn',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_death_1',NULL,'month_1_data',NULL,60,NULL,NULL,'text','Date of death',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_death_2',NULL,'month_2_data',NULL,80,NULL,NULL,'text','Date of death',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_death_3',NULL,'month_3_data',NULL,108,NULL,NULL,'text','Date of death',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_enrolled',NULL,'demographics',NULL,2,NULL,'Consent Information','text','Date subject signed consent',NULL,'YYYY-MM-DD','date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_supplement_dispensed',NULL,'baseline_data',NULL,41,NULL,NULL,'text','Date patient begins supplement',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_visit_1',NULL,'month_1_data','Month 1 Data',43,NULL,'Month 1','text','Date of Month 1 visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_visit_2',NULL,'month_2_data','Month 2 Data',63,NULL,'Month 2','text','Date of Month 2 visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_visit_3',NULL,'month_3_data','Month 3 Data',83,NULL,'Month 3','text','Date of Month 3 visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'date_visit_b',NULL,'baseline_data','Baseline Data',24,NULL,'Baseline Measurements','text','Date of baseline visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'death_1',NULL,'month_1_data',NULL,59,NULL,'Mortality Data','select','Has patient died since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'death_2',NULL,'month_2_data',NULL,79,NULL,'Mortality Data','select','Has patient died since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'death_3',NULL,'month_3_data',NULL,107,NULL,'Mortality Data','select','Has patient died since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'demographics_complete',NULL,'demographics',NULL,23,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'discharge_date_1',NULL,'month_1_data',NULL,57,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'discharge_date_2',NULL,'month_2_data',NULL,77,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'discharge_date_3',NULL,'month_3_data',NULL,105,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'discharge_summary_1',NULL,'month_1_data',NULL,58,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'discharge_summary_2',NULL,'month_2_data',NULL,78,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'discharge_summary_3',NULL,'month_3_data',NULL,106,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'dob','1','demographics',NULL,8.1,NULL,NULL,'text','Date of birth',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'drywt_1',NULL,'month_1_data',NULL,51,'kilograms',NULL,'text','Dry weight (kilograms)',NULL,NULL,'float','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'drywt_2',NULL,'month_2_data',NULL,71,'kilograms',NULL,'text','Dry weight (kilograms)',NULL,NULL,'float','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'drywt_3',NULL,'month_3_data',NULL,92,'kilograms',NULL,'text','Dry weight (kilograms)',NULL,NULL,'float','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'drywt_b',NULL,'baseline_data',NULL,33,'kilograms',NULL,'text','Dry weight (kilograms)',NULL,NULL,'float','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'ethnicity',NULL,'demographics',NULL,9,NULL,NULL,'radio','Ethnicity','0, Hispanic or Latino \\n 1, NOT Hispanic or Latino \\n 2, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LH',NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'first_name','1','demographics',NULL,3,NULL,'Contact Information','text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'gender',NULL,'demographics',NULL,11,NULL,NULL,'radio','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'hospit_1',NULL,'month_1_data',NULL,54,NULL,'Hospitalization Data','select','Was patient hospitalized since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'hospit_2',NULL,'month_2_data',NULL,74,NULL,'Hospitalization Data','select','Was patient hospitalized since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'hospit_3',NULL,'month_3_data',NULL,102,NULL,'Hospitalization Data','select','Was patient hospitalized since last visit?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'kt_v_1',NULL,'month_1_data',NULL,50,NULL,NULL,'text','Kt/V',NULL,NULL,'float','0.9','3','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'kt_v_2',NULL,'month_2_data',NULL,70,NULL,NULL,'text','Kt/V',NULL,NULL,'float','0.9','3','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'kt_v_3',NULL,'month_3_data',NULL,91,NULL,NULL,'text','Kt/V',NULL,NULL,'float','0.9','3','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'kt_v_b',NULL,'baseline_data',NULL,32,NULL,NULL,'text','Kt/V',NULL,NULL,'float','0.9','3','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'last_name','1','demographics',NULL,4,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'month_1_data_complete',NULL,'month_1_data',NULL,62,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'month_2_data_complete',NULL,'month_2_data',NULL,82,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'month_3_data_complete',NULL,'month_3_data',NULL,110,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'no_show_1',NULL,'month_1_data',NULL,52,NULL,NULL,'text','Number of treatments missed',NULL,NULL,'float','0','7','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'no_show_2',NULL,'month_2_data',NULL,72,NULL,NULL,'text','Number of treatments missed',NULL,NULL,'float','0','7','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'no_show_3',NULL,'month_3_data',NULL,100,NULL,NULL,'text','Number of treatments missed',NULL,NULL,'float','0','7','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'npcr_1',NULL,'month_1_data',NULL,47,'g/kg/d',NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float','0.5','2','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'npcr_2',NULL,'month_2_data',NULL,67,'g/kg/d',NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float','0.5','2','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'npcr_3',NULL,'month_3_data',NULL,88,'g/kg/d',NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float','0.5','2','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'npcr_b',NULL,'baseline_data',NULL,29,'g/kg/d',NULL,'text','Normalized Protein Catabolic Rate (g/kg/d)',NULL,NULL,'float','0.5','2','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'plasma1_3',NULL,'month_3_data',NULL,93,NULL,NULL,'select','Collected Plasma 1?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'plasma1_b',NULL,'baseline_data',NULL,34,NULL,NULL,'select','Collected Plasma 1?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'plasma2_3',NULL,'month_3_data',NULL,94,NULL,NULL,'select','Collected Plasma 2?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'plasma2_b',NULL,'baseline_data',NULL,35,NULL,NULL,'select','Collected Plasma 2?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'plasma3_3',NULL,'month_3_data',NULL,95,NULL,NULL,'select','Collected Plasma 3?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'plasma3_b',NULL,'baseline_data',NULL,36,NULL,NULL,'select','Collected Plasma 3?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'prealb_1',NULL,'month_1_data',NULL,45,'mg/dL',NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float','10','40','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'prealb_2',NULL,'month_2_data',NULL,65,'mg/dL',NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float','10','40','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'prealb_3',NULL,'month_3_data',NULL,86,'mg/dL',NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float','10','40','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'prealb_b',NULL,'baseline_data',NULL,27,'mg/dL',NULL,'text','Serum Prealbumin (mg/dL)',NULL,NULL,'float','10','40','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'race',NULL,'demographics',NULL,10,NULL,NULL,'select','Race','0, American Indian/Alaska Native \\n 1, Asian \\n 2, Native Hawaiian or Other Pacific Islander \\n 3, Black or African American \\n 4, White \\n 5, More Than One Race \\n 6, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'randomization_form_complete',NULL,'randomization_form',NULL,23.2,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'randomization_group',NULL,'randomization_form','Randomization Form',23.1,NULL,'General Comments','select','Randomization Group','0, Drug A \\n 1, Drug B \\n 2, Drug C',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'serum1_3',NULL,'month_3_data',NULL,96,NULL,NULL,'select','Collected Serum 1?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'serum1_b',NULL,'baseline_data',NULL,37,NULL,NULL,'select','Collected Serum 1?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'serum2_3',NULL,'month_3_data',NULL,97,NULL,NULL,'select','Collected Serum 2?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'serum2_b',NULL,'baseline_data',NULL,38,NULL,NULL,'select','Collected Serum 2?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'serum3_3',NULL,'month_3_data',NULL,98,NULL,NULL,'select','Collected Serum 3?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'serum3_b',NULL,'baseline_data',NULL,39,NULL,NULL,'select','Collected Serum 3?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'sga_3',NULL,'month_3_data',NULL,99,NULL,NULL,'text','Subject Global Assessment (score = 1-7)',NULL,NULL,'float','0.9','7.1','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'sga_b',NULL,'baseline_data',NULL,40,NULL,NULL,'text','Subject Global Assessment (score = 1-7)',NULL,NULL,'float','0.9','7.1','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'study_comments',NULL,'completion_data',NULL,115,NULL,'General Comments','textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'study_id',NULL,'demographics','Demographics',1,NULL,NULL,'text','Study ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'transferrin_1',NULL,'month_1_data',NULL,49,'mg/dL',NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'transferrin_2',NULL,'month_2_data',NULL,69,'mg/dL',NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'transferrin_3',NULL,'month_3_data',NULL,90,'mg/dL',NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'transferrin_b',NULL,'baseline_data',NULL,31,'mg/dL',NULL,'text','Transferrin (mg/dL)',NULL,NULL,'float','100','300','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'withdraw_date',NULL,'completion_data',NULL,112,NULL,NULL,'text','Put a date if patient withdrew study',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(7,'withdraw_reason',NULL,'completion_data',NULL,113,NULL,NULL,'select','Reason patient withdrew from study','0, Non-compliance \\n 1, Did not wish to continue in study \\n 2, Could not tolerate the supplement \\n 3, Hospitalization \\n 4, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'age',NULL,'id_shipping',NULL,8,NULL,NULL,'text','Age',NULL,'Age at surgery, DOB not available','float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'age_at_surgery',NULL,'pathology_review',NULL,70,NULL,NULL,'calc','Age at Surgery','round(datediff([date_of_birth],[date_surgery],\"y\",\"mdy\",true),0)',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'another_accnumber',NULL,'tma_information',NULL,186,NULL,NULL,'yesno','Another_AccNumber?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'bc_molecularsubtype',NULL,'pathology_review',NULL,94,NULL,NULL,'select','BC_MolecularSubtype','1, Luminal A \\n 2, Luminal B \\n 3, HER2 \\n 4, Triple Negative \\n 5, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'bc_precancerous',NULL,'pathology_review',NULL,98,NULL,NULL,'select','BC_Precancerous','1, Not seen \\n 2, DCIS \\n 3, LCIS \\n 4, DCIS+LCIS',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'blk_no_received',NULL,'id_shipping',NULL,17,NULL,NULL,'text','Block_ Received',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'block_metastatic',NULL,'pathology_review',NULL,76,NULL,NULL,'text','BlockNum_Metastatic',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'block_normal',NULL,'pathology_review',NULL,75,NULL,NULL,'text','BlockNum_Normal',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'block_precancerous',NULL,'pathology_review',NULL,77,NULL,NULL,'text','BlockNum_Precancerous',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'block_received2',NULL,'id_shipping',NULL,37,NULL,NULL,'text','Block_ Received2',NULL,NULL,'float',NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'block_received3',NULL,'id_shipping',NULL,55,NULL,NULL,'text','Block_ Received3',NULL,NULL,'float',NULL,NULL,'soft_typed','[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'block_tumor',NULL,'pathology_review',NULL,74,NULL,NULL,'text','BlockNum_Tumor',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_diagn_breast',NULL,'pathology_review',NULL,84,NULL,'For Breast Cancer Samples','select','Clin_Diagn_Breast','1, Noninvasive carcinoma (NOS) \\n 2, Ductal carcinoma in situ \\n 3, Lobular carcinoma in situ \\n 4, Paget disease without invasive carcinoma \\n 5, Invasive carcinoma (NOS) \\n 6, Invasive ductal carcinoma \\n 7, IDC with an extensive intraductal component \\n 8, IDC with Paget disease \\n 9, Invasive lobular \\n 10, Mucinous \\n 11, Medullary \\n 12, Papillary \\n 13, Tubular \\n 14, Adenoid cystic \\n 15, Secretory (juvenile) \\n 16, Apocrine \\n 17, Cribriform \\n 18, Carcinoma with squamous metaplasia \\n 19, Carcinoma with spindle cell metaplasia \\n 20, Carcinoma with cartilaginous/osseous metaplasia \\n 21, Carcinoma with metaplasia, mixed type \\n 22, Other(s) (specify) \\n 23, Not assessable \\n 24, No cancer tissue \\n 25, IDC+ILC (50 -90% each component)',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_diagn_lung',NULL,'pathology_review',NULL,125,NULL,'For Lung Cancer Samples','select','Clin_Diagn_Lung','1, Squamous cell carcinoma 8070/3 \\n 2, Small cell carcinoma 8041/3 \\n 3, Adenocarcinoma 8140/3 \\n 4, Adenocarcinoma, mixed subtype 8255/3 \\n 5, Adenocarcinoma, Acinar 8550/3 \\n 6, Adenocarcinoma, Papillary 8260/3 \\n 7, Adenocarcinoma, Micropapillary \\n 8, Bronchioloalveolar carcinoma 8250/3 \\n 9, Solid adenocarcinoma with mucin 8230/3 \\n 10, Adenosquamous carcinoma 8560/3 \\n 11, Large cell carcinoma 8012/3 \\n 12, Sarcomatoid carcinoma 8033/3 \\n 13, Carcinoid tumour 8240/3 \\n 14, Mucoepidermoid carcinoma 8430/3 \\n 15, Epithelial-myoepithelial carcinoma 8562/3 \\n 16, Adenoid cystic carcinoma 8200/3 \\n 17, Unclassified carcinoma \\n 18, Others \\n 19, Large cell neuroendocrine carcinoma  8013/3',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'4\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_diagn_others',NULL,'pathology_review',NULL,133,NULL,'For Other Cancer Samples','text','Clin_Diagn_Others',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'5\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_diagn_prostate',NULL,'pathology_review',NULL,102,NULL,'For Prostate Cancer Samples','select','Clin_Diagn_Prostate','1, Adenocarcinoma,NOS \\n 2, Prostatic duct adenocarcinoma \\n 3, Mucinous adenocarcinoma \\n 4, Signet-ring cell carcinoma \\n 5, Adenosquemous carcinoma \\n 6, Small cell carcinoma \\n 7, Sarcomatoid carcinoma \\n 8, Other (specifiy) \\n 9, Undifferentiated carcinoma, NOS \\n 10, Cannot be determined',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_giag_colon',NULL,'pathology_review',NULL,115,NULL,'For Colon Cancer Samples','select','Clin_Diagn_Colon','1, 1 Adenocarcinoma \\n 2, 2 Mucinous adenocarcinoma \\n 3, 3 Medullary carcinoma \\n 4, 4 Signet ring cell carcinoma \\n 5, 5 Small cell carcinoma \\n 6, 6 Squamous cell carcinoma \\n 7, 7 Adenosquamous carcinoma \\n 8, 8 Others \\n 9, 9 Adenoma',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_gleason_score',NULL,'pathology_review',NULL,105,NULL,NULL,'text','Clin_Gleason_Score',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_grade_breast',NULL,'pathology_review',NULL,88,NULL,NULL,'select','Clin_Grade_Breast','1, 1 \\n 2, 2 \\n 3, 3 \\n 4, 1~2 \\n 5, 2~3 \\n 6, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_grade_colon',NULL,'pathology_review',NULL,119,NULL,NULL,'select','Clin_Grade_Colon','1, Low \\n 2, Intermediate \\n 3, High \\n 4, N/A \\n 5, Low-Intermediate \\n 6, Intermediate-High',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_grade_lung',NULL,'pathology_review',NULL,128,NULL,NULL,'select','Clin_Grade_Lung','1, Low \\n 2, Intermediate \\n 3, High \\n 4, N/A \\n 5, Low-Intermediate \\n 6, Intermediate-High',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'4\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_grade_others',NULL,'pathology_review',NULL,135,NULL,NULL,'text','Clin_Grade_Others',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'5\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'clin_grade_pro',NULL,'pathology_review',NULL,106,NULL,NULL,'select','Clin_Grade_Pro','1, Low(1-4) \\n 2, Intermediate(5-7) \\n 3, High(8-10)','Gleason Score System',NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'collection_note2',NULL,'id_shipping',NULL,27,NULL,NULL,'textarea','FollowUp_Note2',NULL,NULL,NULL,NULL,NULL,NULL,'[follow_up_needed2] = \'1\' and [secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'collection_note3',NULL,'id_shipping',NULL,45,NULL,NULL,'textarea','FollowUp_Note',NULL,NULL,NULL,NULL,NULL,NULL,'[follow_up_needed3] = \'1\' and [thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'date_of_birth','1','id_shipping',NULL,7,NULL,NULL,'text','Date of Birth',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'date_surgery',NULL,'pathology_review',NULL,69,NULL,'Clinical Pathology Information','text','Date_Surgery',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'dna_index',NULL,'pathology_review',NULL,97,NULL,NULL,'text','DNA Index',NULL,'Unfavorable: >1.1',NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'estrogen_receptor',NULL,'pathology_review',NULL,90,NULL,NULL,'select','Estrogen Receptor','0, negative \\n 1, week (<1%) \\n 2, positive (>=1%) \\n 3, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'extraprostate_extention',NULL,'pathology_review',NULL,114,NULL,NULL,'select','ExtraProstate Extention','0, No \\n 1, Yes \\n 2, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_city',NULL,'id_shipping',NULL,10,NULL,NULL,'text','Facility_City',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_city2',NULL,'id_shipping',NULL,30,NULL,NULL,'text','Facility_City2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\' and [samefacasbefore] = \'0\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_city3',NULL,'id_shipping',NULL,48,NULL,NULL,'text','Facility_City3',NULL,NULL,NULL,NULL,NULL,'soft_typed','[samefacilityasbefore2] = \'0\' and [thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_name',NULL,'id_shipping',NULL,9,NULL,'Shipping Information','text','Facility_Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_name2',NULL,'id_shipping',NULL,29,NULL,NULL,'text','Facility_Name2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[samefacasbefore] = \'0\' and [secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_name3',NULL,'id_shipping',NULL,47,NULL,NULL,'text','Facility_Name3',NULL,NULL,NULL,NULL,NULL,'soft_typed','[samefacilityasbefore2] = \'0\' and [thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_state',NULL,'id_shipping',NULL,11,NULL,NULL,'text','Facility_State',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_state2',NULL,'id_shipping',NULL,31,NULL,NULL,'text','Facility_State2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\' and [samefacasbefore] = \'0\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'facility_state3',NULL,'id_shipping',NULL,49,NULL,NULL,'text','Facility_State3',NULL,NULL,NULL,NULL,NULL,'soft_typed','[samefacilityasbefore2] = \'0\' and [thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'first_name','1','id_shipping',NULL,3,NULL,NULL,'text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_met_currentquant',NULL,'slide_information',NULL,166,NULL,NULL,'text','5um_Met_CurrentQuant',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_metastatic_tumor] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_met_quant',NULL,'slide_information',NULL,165,NULL,NULL,'text','5um_Met_Quant',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_metastatic_tumor] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_nor_currquant',NULL,'slide_information',NULL,145,NULL,NULL,'text','5um_Nor_CurrQuant',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_nor_currquant2',NULL,'slide_information',NULL,157,NULL,NULL,'text','5um_Nor_CurrQuant2',NULL,NULL,'float',NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_nor_quant',NULL,'slide_information',NULL,144,NULL,NULL,'text','5um_Nor_Quant',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_nor_quant2',NULL,'slide_information',NULL,156,NULL,NULL,'text','5um_Nor_Quant2',NULL,NULL,'float',NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_precancer_curquant',NULL,'slide_information',NULL,174,NULL,NULL,'text','5um_Precancer_CurrentQuant',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_precancer] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_precancer_quant',NULL,'slide_information',NULL,173,NULL,NULL,'text','5um_Precancer_Quant',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_precancer] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_tumor_currquant',NULL,'slide_information',NULL,141,NULL,NULL,'text','5um_Tumor_CurrQuant',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_tumor_currquant2',NULL,'slide_information',NULL,153,NULL,NULL,'text','5um_Tumor_CurrQuant2',NULL,NULL,'float',NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_tumor_quant',NULL,'slide_information','Slide Information',140,NULL,NULL,'text','5um_Tumor_Quant',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'five_um_tumor_quant2',NULL,'slide_information',NULL,152,NULL,NULL,'text','5um_Tumor_Quant2',NULL,NULL,'float',NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'follow_up_needed2',NULL,'id_shipping',NULL,26,NULL,NULL,'yesno','Follow up needed?',NULL,NULL,NULL,NULL,NULL,NULL,'[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'follow_up_needed3',NULL,'id_shipping',NULL,44,NULL,NULL,'yesno','Follow up needed?',NULL,NULL,NULL,NULL,NULL,NULL,'[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'followup_note',NULL,'id_shipping',NULL,24,NULL,NULL,'textarea','FollowUp_Note',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'forwhoseproject',NULL,'slide_tracking',NULL,195,NULL,NULL,'text','ForWhoseProject1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'gender',NULL,'pathology_review',NULL,71,NULL,NULL,'select','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'her2_fish',NULL,'pathology_review',NULL,93,NULL,NULL,'select','HER2_FISH','0, 0 (Non-Amplified, <1.8) \\n 1, 1 (Amplified, >2.2) \\n 2, 2 (Borderline, 1.8~2.2) \\n 3, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'her2_immunohistochemistry',NULL,'pathology_review',NULL,92,NULL,NULL,'select','HER2_Immunohistochemistry','0, 0 \\n 1, 1 (1~9% cells positivity) \\n 2, 2 (10-30% cells positivity) \\n 3, 3 (>30% cells positivity with strong color) \\n 4, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'id_shipping_complete',NULL,'id_shipping',NULL,61,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'if_ilc_subtype',NULL,'pathology_review',NULL,86,NULL,NULL,'select','ILC_Subtype','901, classical ILC \\n 902, solid ILC \\n 903, pleomorphic ILC \\n 904, alveolar ILC \\n 905, tubulolobular ILC \\n 906, mixed ILC \\n 907, signet ring cell ILC \\n 908, others',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\' and [lab_diagn_breast] = \'9\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'if_no_location2',NULL,'slide_information',NULL,161,NULL,NULL,'text','If_No_Location2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[same_slideloc] = \'0\' and [is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'if_others_specify',NULL,'pathology_review',NULL,127,NULL,NULL,'text','If_Others_Specify',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'4\' and [lab_diagn_lung] = \'10\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'invitrosize1',NULL,'pathology_review',NULL,78,NULL,NULL,'text','InvitroSize1',NULL,'Maximum size in centimeter','float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'invitrosize2',NULL,'pathology_review',NULL,79,NULL,NULL,'text','InvitroSize2',NULL,'In % of total tissue volume for prostate cancer','float',NULL,NULL,'soft_typed','[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'invitrosize3',NULL,'pathology_review',NULL,80,NULL,NULL,'text','InvitroSize3',NULL,'The seceond largest tumor',NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'is_there_another_accnumber',NULL,'slide_information',NULL,150,NULL,NULL,'yesno','Is there another AccNumber?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'is_there_metastatic_tumor',NULL,'slide_information',NULL,163,NULL,NULL,'yesno','Is there Metastatic Tumor?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'is_there_precancer',NULL,'slide_information',NULL,171,NULL,NULL,'yesno','Is There Precancer?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ki_67',NULL,'pathology_review',NULL,95,NULL,NULL,'text','Ki-67',NULL,'positive cells in percentage','float',NULL,NULL,'soft_typed','[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_diag_prostate',NULL,'pathology_review',NULL,103,NULL,NULL,'select','Lab_Diag_Prostate','1, Adenocarcinoma,NOS \\n 2, Prostatic duct adenocarcinoma \\n 3, Mucinous adenocarcinoma \\n 4, Signet-ring cell carcinoma \\n 5, Adenosquemous carcinoma \\n 6, Small cell carcinoma \\n 7, Sarcomatoid carcinoma \\n 8, Other (specifiy) \\n 9, Undifferentiated carcinoma, NOS \\n 10, Cannot be determined',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_diagn_breast',NULL,'pathology_review',NULL,85,NULL,NULL,'select','Lab_Diagn_Breast','1, Noninvasive carcinoma (NOS) \\n 2, Ductal carcinoma in situ \\n 3, Lobular carcinoma in situ \\n 4, Paget disease without invasive carcinoma \\n 5, Invasive carcinoma (NOS) \\n 6, Invasive ductal carcinoma \\n 7, IDC with an extensive intraductal component \\n 8, IDC with Paget disease \\n 9, Invasive lobular \\n 10, Mucinous \\n 11, Medullary \\n 12, Papillary \\n 13, Tubular \\n 14, Adenoid cystic \\n 15, Secretory (juvenile) \\n 16, Apocrine \\n 17, Cribriform \\n 18, Carcinoma with squamous metaplasia \\n 19, Carcinoma with spindle cell metaplasia \\n 20, Carcinoma with cartilaginous/osseous metaplasia \\n 21, Carcinoma with metaplasia, mixed type \\n 22, Other(s) (specify) \\n 23, Not assessable \\n 24, No cancer tissue \\n 25, IDC+ILC (50 -90% each component)',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_diagn_colon',NULL,'pathology_review',NULL,117,NULL,NULL,'select','Lab_Diagn_Colon','1, 1 Adenocarcinoma \\n 2, 2 Mucinous adenocarcinoma \\n 3, 3 Medullary carcinoma \\n 4, 4 Signet ring cell carcinoma \\n 5, 5 Small cell carcinoma \\n 6, 6 Squamous cell carcinoma \\n 7, 7 Adenosquamous carcinoma \\n 8, 8 Others \\n 9, 9 Adenoma',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_diagn_lung',NULL,'pathology_review',NULL,126,NULL,NULL,'select','Lab_Diagn_Lung','1, Squamous cell carcinoma 8070/3 \\n 2, Small cell carcinoma 8041/3 \\n 3, Adenocarcinoma 8140/3 \\n 4, Adenocarcinoma, mixed subtype 8255/3 \\n 5, Adenocarcinoma, Acinar 8550/3 \\n 6, Adenocarcinoma, Papillary 8260/3 \\n 7, Adenocarcinoma, Micropapillary \\n 8, Bronchioloalveolar carcinoma 8250/3 \\n 9, Solid adenocarcinoma with mucin 8230/3 \\n 10, Adenosquamous carcinoma 8560/3 \\n 11, Large cell carcinoma 8012/3 \\n 12, Sarcomatoid carcinoma 8033/3 \\n 13, Carcinoid tumour 8240/3 \\n 14, Mucoepidermoid carcinoma 8430/3 \\n 15, Epithelial-myoepithelial carcinoma 8562/3 \\n 16, Adenoid cystic carcinoma 8200/3 \\n 17, Unclassified carcinoma \\n 18, Others \\n 19, Large cell neuroendocrine carcinoma 8013/3',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'4\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_diagn_others',NULL,'pathology_review',NULL,134,NULL,NULL,'text','Lab_Diagn_Others',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'5\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_gleason_score',NULL,'pathology_review',NULL,107,NULL,NULL,'text','Lab_Gleason_Score',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_grade_breast',NULL,'pathology_review',NULL,89,NULL,NULL,'select','Lab_Grade_Breast','1, 1 \\n 2, 2 \\n 3, 3 \\n 4, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_grade_colon',NULL,'pathology_review',NULL,120,NULL,NULL,'select','Lab_Grade_Colon','1, Low \\n 2, Intermediate \\n 3, High \\n 4, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_grade_lung',NULL,'pathology_review',NULL,129,NULL,NULL,'select','Lab_Grade_Lung','1, Low \\n 2, Intermediate \\n 3, High \\n 4, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'4\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_grade_others',NULL,'pathology_review',NULL,136,NULL,NULL,'text','Lab_Grade_Others',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'5\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_grade_pro',NULL,'pathology_review',NULL,108,NULL,NULL,'select','Lab_Grade_Pro','1, Low(1-4) \\n 2, Intermediate(5-7) \\n 3, High(8-10)','Gleason Score System (1-10)',NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'lab_id','0','id_shipping','ID Shipping',1,NULL,'IDs','text','Lab ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'labcirculation_time',NULL,'id_shipping',NULL,23,NULL,NULL,'calc','LabCirculation_time','round(datediff([receivedate],[return_date],\"d\",\"mdy\"))',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'last_name','1','id_shipping',NULL,5,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'metastatic_accnum',NULL,'slide_information',NULL,164,NULL,NULL,'text','Metastatic_AccNum',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_metastatic_tumor] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'middle_name',NULL,'id_shipping',NULL,4,NULL,NULL,'text','Middle Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'other_acc_no',NULL,'pathology_review',NULL,73,NULL,NULL,'text','Other_Acc_No',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'other_location_lung',NULL,'pathology_review',NULL,67,NULL,NULL,'text','Other location_lung',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'4\' and [tumor_location_lung] = \'11\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'otheraccnumber',NULL,'id_shipping',NULL,36,NULL,NULL,'text','OtherAccNumber',NULL,NULL,NULL,NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'otheraccnumber2',NULL,'id_shipping',NULL,16,NULL,NULL,'text','OtherAccNumber',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'otheraccnumber3',NULL,'id_shipping',NULL,54,NULL,NULL,'text','OtherAccNumber',NULL,NULL,NULL,NULL,NULL,'soft_typed','[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'p53_ihc',NULL,'pathology_review',NULL,96,NULL,NULL,'text','p53_IHC',NULL,'positive cells in percentage',NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'parapieceloc_1',NULL,'slide_information',NULL,149,NULL,NULL,'text','ParaPieceLoc_1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'parapieceloc_2',NULL,'slide_information',NULL,162,NULL,NULL,'text','ParaPieceLoc_2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'parapieceloc_metastatic',NULL,'slide_information',NULL,170,NULL,NULL,'text','ParaPieceLoc_Metastatic',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_metastatic_tumor] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'parapieceloc_precancer',NULL,'slide_information',NULL,178,NULL,NULL,'text','ParaPieceLoc_Precancer',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_precancer] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pathaccnum_2',NULL,'slide_information',NULL,151,NULL,NULL,'text','PathAccNum_2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pathaccnumber','1','id_shipping',NULL,15,NULL,NULL,'text','PathAccNumber',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pathaccnumber2',NULL,'id_shipping',NULL,35,NULL,NULL,'text','PathAccNumber',NULL,NULL,NULL,NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pathaccnumber3',NULL,'id_shipping',NULL,53,NULL,NULL,'text','PathAccNumber3',NULL,NULL,NULL,NULL,NULL,'soft_typed','[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pathoireview_note',NULL,'pathology_review',NULL,138,NULL,NULL,'textarea','PatholReview_Note',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pathol_acc_no','1','pathology_review',NULL,72,NULL,NULL,'text','Pathol_Acc_No',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pathology_review_complete',NULL,'pathology_review',NULL,139,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'perineuralinvasion',NULL,'pathology_review',NULL,81,NULL,NULL,'select','PerineuralInvasion','0, No \\n 1, Yes \\n 2, N/A',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pre_cancerous_colon',NULL,'pathology_review',NULL,124,NULL,NULL,'textarea','Pre-cancerous_Colon',NULL,NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'precancer_accnum',NULL,'slide_information',NULL,172,NULL,NULL,'text','PreCancer_AccNum',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_precancer] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'progesterone_receptor',NULL,'pathology_review',NULL,91,NULL,NULL,'select','Progesterone Receptor','0, negative (0~2) \\n 1, week (3~4) \\n 2, intermediate (5~6) \\n 3, strong (7~8) \\n 4, N/A','Allred Score System 0-8',NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'psa_level',NULL,'pathology_review',NULL,112,NULL,NULL,'text','PSA_Level',NULL,'ng/mL',NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pulled_quant1',NULL,'slide_tracking',NULL,197,NULL,NULL,'text','Pulled_Quant1',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'pulling_date1',NULL,'slide_tracking','Slide Tracking',194,NULL,NULL,'text','Pulling_Date1',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'receivedate','1','id_shipping',NULL,12,NULL,NULL,'text','ReceiveDate',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'receivedate2',NULL,'id_shipping',NULL,32,NULL,NULL,'text','ReceiveDate2',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'receivedate3',NULL,'id_shipping',NULL,50,NULL,NULL,'text','ReceiveDate3',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed','[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'receivetracking2',NULL,'id_shipping',NULL,34,NULL,NULL,'text','ReceiveTracking2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'receivetracking3',NULL,'id_shipping',NULL,52,NULL,NULL,'text','ReceiveTracking3',NULL,NULL,NULL,NULL,NULL,'soft_typed','[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'return_date',NULL,'id_shipping',NULL,21,NULL,NULL,'text','ReturnDate',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'return_needed',NULL,'id_shipping',NULL,20,NULL,NULL,'yesno','Return_Needed?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'return_needed2',NULL,'id_shipping',NULL,40,NULL,NULL,'yesno','Return_needed?',NULL,NULL,NULL,NULL,NULL,NULL,'[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'return_needed3',NULL,'id_shipping',NULL,58,NULL,NULL,'yesno','Return_needed?',NULL,NULL,NULL,NULL,NULL,NULL,'[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'return_tracking',NULL,'id_shipping',NULL,22,NULL,NULL,'text','ReturnTracking',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'return_tracking2',NULL,'id_shipping',NULL,42,NULL,NULL,'text','ReturnTracking2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[return_needed2] = \'1\' and [secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'returndate2',NULL,'id_shipping',NULL,41,NULL,NULL,'text','ReturnDate2',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed','[return_needed2] = \'1\' and [secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'returndate3',NULL,'id_shipping',NULL,59,NULL,NULL,'text','ReturnDate3',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed','[return_needed3] = \'1\' and [thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'returntracking3',NULL,'id_shipping',NULL,60,NULL,NULL,'text','ReturnTracking3',NULL,NULL,NULL,NULL,NULL,'soft_typed','[return_needed3] = \'1\' and [thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'same_slideloc',NULL,'slide_information',NULL,160,NULL,NULL,'yesno','Same_SlideLoc?',NULL,NULL,NULL,NULL,NULL,NULL,'[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'samefacasbefore',NULL,'id_shipping',NULL,28,NULL,NULL,'yesno','SameFacilityAsBefore?',NULL,NULL,NULL,NULL,NULL,NULL,'[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'samefacilityasbefore2',NULL,'id_shipping',NULL,46,NULL,NULL,'yesno','SameFacilityAsBefore?',NULL,NULL,NULL,NULL,NULL,NULL,'[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'secondtime_getsample',NULL,'id_shipping',NULL,25,NULL,'If Receive Sample 2nd Time','yesno','2nd_Time_Receive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'seminalinvasion',NULL,'pathology_review',NULL,113,NULL,NULL,'select','SeminalInvasion','0, No \\n 1, Yes \\n 2, N/A',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'shipmethod',NULL,'id_shipping',NULL,13,NULL,NULL,'select','ShipMethod','1, FedEx \\n 2, USPS \\n 3, UPS \\n 4, ByPerson \\n 5, Others',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'shipmethod2',NULL,'id_shipping',NULL,33,NULL,NULL,'select','ShipMethod2','1, FedEx \\n 2, USPS \\n 3, UPS \\n 4, ByPerson \\n 5, Others',NULL,NULL,NULL,NULL,NULL,'[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'shipmethod3',NULL,'id_shipping',NULL,51,NULL,NULL,'select','ShipMethod3','1, FedEx \\n 2, USPS \\n 3, UPS \\n 4, ByPerson \\n 5, Others',NULL,NULL,NULL,NULL,NULL,'[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'slide_information_complete',NULL,'slide_information',NULL,179,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'slide_tracking_complete',NULL,'slide_tracking',NULL,198,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'slideloc_1',NULL,'slide_information',NULL,148,NULL,NULL,'text','SlideLoc_1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'slideloc_metmetastatic',NULL,'slide_information',NULL,169,NULL,NULL,'text','SlideLoc_Metmetastatic',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_metastatic_tumor] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'slideloc_precancer',NULL,'slide_information',NULL,177,NULL,NULL,'text','SlideLoc_Precancer',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_precancer] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'specify_colon_clin',NULL,'pathology_review',NULL,116,NULL,NULL,'text','If others_specify',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'3\' and [clin_giag_colon] = \'8\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'specify_colon_lab',NULL,'pathology_review',NULL,118,NULL,NULL,'text','If others_specify',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'3\' and [lab_diagn_colon] = \'8\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'specify_if_other_type_br',NULL,'pathology_review',NULL,87,NULL,NULL,'text','Specify_If_Other_Type_Br',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'specify_if_other_type_pro',NULL,'pathology_review',NULL,104,NULL,NULL,'text','Specify_If_Other_type_Pro',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'specify_other_location',NULL,'pathology_review',NULL,68,NULL,NULL,'text','Specify_Other_Location',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'5\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'specify_other_origin',NULL,'pathology_review',NULL,63,NULL,NULL,'text','Specify_Other_Origin',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'5\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'stainedslide_received',NULL,'id_shipping',NULL,18,NULL,NULL,'text','StainedSlide_Received',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'stainedslide_received2',NULL,'id_shipping',NULL,38,NULL,NULL,'text','StainedSlide_Received2',NULL,NULL,'float',NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'stainedslide_received3',NULL,'id_shipping',NULL,56,NULL,NULL,'text','StainedSlide_Received3',NULL,NULL,'float',NULL,NULL,'soft_typed','[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'suffix',NULL,'id_shipping',NULL,6,NULL,NULL,'text','Suffix',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'surgical_margin_cancer_pre',NULL,'pathology_review',NULL,83,NULL,NULL,'select','Surgical margin cancer present','0, No \\n 1, Yes \\n 2, N/A',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_met_currentquant',NULL,'slide_information',NULL,168,NULL,NULL,'text','10um_Met_CurrentQuant',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_metastatic_tumor] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_met_quant',NULL,'slide_information',NULL,167,NULL,NULL,'text','10um_Met_Quant',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_metastatic_tumor] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_nor_currquant',NULL,'slide_information',NULL,147,NULL,NULL,'text','10um_Nor_CurrQuant',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_nor_currquant2',NULL,'slide_information',NULL,159,NULL,NULL,'text','10um_Nor_CurrQuant2',NULL,NULL,'float',NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_nor_quant',NULL,'slide_information',NULL,146,NULL,NULL,'text','10um_Nor_Quant',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_nor_quant2',NULL,'slide_information',NULL,158,NULL,NULL,'text','10um_Nor_Quant2',NULL,NULL,'float',NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_precancer_curquant',NULL,'slide_information',NULL,176,NULL,NULL,'text','10um_Precancer_CurQuant',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_precancer] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_precancer_quant',NULL,'slide_information',NULL,175,NULL,NULL,'text','10um_Precancer_Quant',NULL,NULL,NULL,NULL,NULL,'soft_typed','[is_there_precancer] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_tumor_currquant',NULL,'slide_information',NULL,143,NULL,NULL,'text','10um_Tumor_CurrQuant',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_tumor_currquant2',NULL,'slide_information',NULL,155,NULL,NULL,'text','10um_Tumor_CurrQuant2',NULL,NULL,'float',NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_tumor_quant',NULL,'slide_information',NULL,142,NULL,NULL,'text','10um_Tumor_Quant',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'ten_um_tumor_quant2',NULL,'slide_information',NULL,154,NULL,NULL,'text','10um_Tumor_Quant2',NULL,NULL,'float',NULL,NULL,'soft_typed','[is_there_another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'thirdtime_getsample',NULL,'id_shipping',NULL,43,NULL,'If Receive Sample 3rd Time','yesno','3rd_Time_Receive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_ca_pos1',NULL,'tma_information','TMA Information',180,NULL,NULL,'text','TMA_Ca_pos1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_ca_pos2',NULL,'tma_information',NULL,181,NULL,NULL,'text','TMA_Ca_pos2',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_ca_pos3',NULL,'tma_information',NULL,187,NULL,NULL,'text','TMA_Ca_pos3',NULL,NULL,NULL,NULL,NULL,'soft_typed','[another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_ca_pos4',NULL,'tma_information',NULL,188,NULL,NULL,'text','TMA_Ca_pos4',NULL,NULL,NULL,NULL,NULL,'soft_typed','[another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_information_complete',NULL,'tma_information',NULL,193,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_metastatic_pos',NULL,'tma_information',NULL,185,NULL,NULL,'text','TMA Metastatic_pos1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_metastatic_pos2',NULL,'tma_information',NULL,192,NULL,NULL,'text','TMA Metastatic_pos2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_nor_pos1',NULL,'tma_information',NULL,182,NULL,NULL,'text','TMA_Nor_pos1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_nor_pos2',NULL,'tma_information',NULL,183,NULL,NULL,'text','TMA_Nor_pos2',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_nor_pos3',NULL,'tma_information',NULL,189,NULL,NULL,'text','TMA_Nor_pos3',NULL,NULL,NULL,NULL,NULL,'soft_typed','[another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_nor_pos4',NULL,'tma_information',NULL,190,NULL,NULL,'text','TMA_Nor_pos4',NULL,NULL,NULL,NULL,NULL,'soft_typed','[another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_preca_pos',NULL,'tma_information',NULL,184,NULL,NULL,'text','TMA_ PreCa_pos1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tma_preca_pos2',NULL,'tma_information',NULL,191,NULL,NULL,'text','TMA_ PreCa_pos2',NULL,NULL,NULL,NULL,NULL,'soft_typed','[another_accnumber] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnm_breast_tumor',NULL,'pathology_review',NULL,99,NULL,NULL,'select','TNMbreast_PrimTum(T)','1, TX:Primary tumor cannot be assessed \\n 2, T0:No evidence of primary tumor \\n 3, Tis:DCIS/LCIS/Paget\'s dis w/o associated tumor \\n 4, T1mic:Microinvasion <=0.1 cm \\n 5, T1a:>0.1 but <=0.5 cm \\n 6, T1b:>0.5 cm but <=1.0 cm \\n 7, T1c:>1.0 cm but <=2.0 cm \\n 8, T2:Tumor >2.0 cm but <=5.0 cm \\n 9, T3:Tumor >5.0 cm \\n 10, T4a:Any size with direct extension to chest wall \\n 11, T4b:skin Edema/ulceration;satellite skin nodules \\n 12, T4c:Both of T4a and T4b \\n 13, T4d:Inflammatory carcinoma',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnm_stage',NULL,'pathology_review',NULL,137,NULL,NULL,'text','TNM_Stage',NULL,NULL,NULL,NULL,NULL,'soft_typed','[tumor_origin] = \'5\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmbreast_distantmetast_m',NULL,'pathology_review',NULL,101,NULL,NULL,'select','TNMbreast_DistantMetast (M)','1, MX: cannot be assessed \\n 2, M0: No distant metastasis \\n 3, M1: yes includes ipsilateral supraclavicular LNs',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmbreast_ln_n',NULL,'pathology_review',NULL,100,NULL,NULL,'select','TNMbreast_LN (N)','1, NX: Regional LNs cannot be assessed \\n 2, N0: No regional LNs metastasis \\n 3, N1: Movable ipsilateral axillary LN(s) \\n 4, N2: Ipsilateral axillary LN(s) fixed \\n 5, N3: Ipsilateral internal mammary LN(s) \\n 6, pNX: Regional LNs cannot be assessed \\n 7, pN0: No regional LNs metastasis \\n 8, pN1: movable ipsilateral axillary LN(s) \\n 9, pN1a:Only micrometastasis <=0.2 cm \\n 10, pN1b: Metastasis any >0.2 cm \\n 11, pN1bi:1 to 3 LNs, any >0.2 cm and all <2.0 cm \\n 12, pN1bii: >=4 LN3, any >0.2 cm and all <2.0 cm \\n 13, pN1biii: beyond LN capsule,metastasis <2.0 cm \\n 14, pN1biv: Metastasis to a LN >=2.0 cm \\n 15, pN2: to ipsilateral axillaryLN(s) fixed \\n 16, pN3: to ipsilateral internal mammary LN(s) \\n 17, pN0(i+)',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmcolon_m',NULL,'pathology_review',NULL,123,NULL,NULL,'select','TNMcolon_M','M0, M0 No distant spread \\n M1a, M1a to 1 distant organ or set of distant LNs \\n M1b, M1b to >1 or distant parts peritoneum \\n MX, MX',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmcolon_n',NULL,'pathology_review',NULL,122,NULL,NULL,'select','TNMcolon_N','Nx, Nx incomplete information. \\n N0, N0 No cancer in nearby LNs \\n N1a, N1a in 1 nearby LN \\n N1b, N1b in 2 to 3 nearby LNs \\n N1c, N1c cancer cells in areas of fat near LN, but not in LNs \\n N2a, N2a in 4 to 6 nearby LN \\n N2b, N2b in 7 or more nearby LNs',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmcolon_t',NULL,'pathology_review',NULL,121,NULL,NULL,'select','TNMcolon_T','Tx, Tx \\n Tis, Tis earliest stage (in situ) involves only mucosa \\n T1, T1 through the muscularis mucosa \\n T2, T2 through submucosa into muscularis propria \\n T3, T3 through muscularis propria into outermost layers \\n T4a, T4a through serosa/visceral peritoneum \\n T4b, T4b through the wall attach/invade nearby tissues',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmlung_m',NULL,'pathology_review',NULL,132,NULL,NULL,'select','TNMlung_M','13, MX \\n 14, M0 \\n 15, M1 Distant metastasis, includes separate tumour nodule(s) in different lobe',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'4\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmlung_n',NULL,'pathology_review',NULL,131,NULL,NULL,'select','TNMlung_N','8, NX \\n 9, N0 \\n 10, N1 Ipsilateral peribronchial/ipsilateral hilar LNs and intrapulmonary LNs \\n 11, N2 ipsilateral mediastinal/subcarinal LNs \\n 12, N3 contralateral mediastinal, contralateral hilar, ipsilateral or contralateral scalene, or supraclavicular LNs',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'4\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmlung_t',NULL,'pathology_review',NULL,130,NULL,NULL,'select','TNMlung_T','1, TX \\n 2, T0 No evidence of primary tumour \\n 3, Tis Carcinoma in situ \\n 4, T1 <= 3 cm, without invasion \\n 5, T2 > 3 cm; or involves main bronchus(>2 cm distal to carina)/visceral pleura; or Associated with atelectasis or obstructive pneumonitis that does not involve entire lung \\n 6, T3 any size that directly invades any of:chest wall, diaphragm, mediastinal pleura, parietal pericardium; or tumour in main bronchus < 2 cm distal to carina but without involvement of carina; or associated atelectasis or obstructive pneumonitis of entire lung \\n 7, T4 any size that invades any of: mediastinum, heart, great vessels, trachea, oesophagus, vertebral body, carina; separate tumour nodule(s) in same lobe; tumour with malignant pleural effusion',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'4\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmprostate_m',NULL,'pathology_review',NULL,111,NULL,NULL,'select','TNMprostate_M','1, M0: spread only regionally in pelvic area \\n 2, M1: spread beyond pelvic area \\n 3, MX',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmprostate_n',NULL,'pathology_review',NULL,110,NULL,NULL,'select','TNMprostate_N','1, N0: not to pelvic LN \\n 2, N1: a single pelvic LN,<= 2 cm \\n 3, N2: a single pelvic LN,2-5cm \\n 4, N3: >5 cm in size \\n 5, NX',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tnmprostate_t',NULL,'pathology_review',NULL,109,NULL,NULL,'select','TNMprostate_T','1, T1: Microscopic, DRE/Ultrasound undetectable \\n 2, T1a: <=5 percent \\n 3, T1b: >5 percent \\n 4, T1c: as F/U of screening w/ high PSA \\n 5, T2: within prost, DRE/ultrasound detectable \\n 6, T2a: >half of one lobe \\n 7, T2b: >half of one lobe,DRE detectable often \\n 8, T2c: involve both lobes \\n 9, T3: surrounding tissues or seminal vesicles \\n 10, T3a: outside prostate on one side \\n 11, T3b: outside prostate on both sides \\n 12, T3c: to one or both seminal tubes \\n 13, T4a: to bladder or rectum \\n 14, T4b: beyond prostate or levator muscles \\n 15, TX',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'trackingnumber',NULL,'id_shipping',NULL,14,NULL,NULL,'text','ReceiveTracking',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'trc_id',NULL,'id_shipping',NULL,2,NULL,NULL,'text','TRC ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tumor_location',NULL,'pathology_review',NULL,64,NULL,NULL,'select','Location_Breast_Prostate','1, Left \\n 2, Right \\n 3, Bilateral \\n 4, Multiple \\n 5, Unclear','Multiple means 2 or more',NULL,NULL,NULL,NULL,'[tumor_origin] = \'1\' or [tumor_origin] = \'2\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tumor_location_colorectum',NULL,'pathology_review',NULL,65,NULL,NULL,'select','Location_Colorectum','1, Appendix \\n 2, Cecum \\n 3, Ascending \\n 4, Hepatic Flexure \\n 5, Transverse \\n 6, Splenic Flexure \\n 7, Descending \\n 8, Sigmoid \\n 9, Rectum \\n 10, Anus \\n 11, Left \\n 12, Right \\n 13, Unclear',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'3\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tumor_location_lung',NULL,'pathology_review',NULL,66,NULL,NULL,'select','Location_Lung','1, Right Upper Lobe \\n 2, Right Middle Lobe \\n 3, Right Lower Lobe \\n 4, Left Upper Lobe \\n 5, Left Lower Lobe \\n 6, Right Bronchus \\n 7, Left Bronchus \\n 8, Right \\n 9, Left \\n 10, Unclear \\n 11, Others (specify it)',NULL,NULL,NULL,NULL,NULL,'[tumor_origin] = \'4\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'tumor_origin',NULL,'pathology_review','Pathology Review',62,NULL,'Tumor Origin and Location','select','Tumor_Origin','1, Breast \\n 2, Prostate \\n 3, Colorectum \\n 4, Lung \\n 5, Others',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'unstainedslide_received',NULL,'id_shipping',NULL,19,NULL,NULL,'text','UnstainedSlide_Received',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'unstainedslide_received2',NULL,'id_shipping',NULL,39,NULL,NULL,'text','UnstainedSlide_Received2',NULL,NULL,'float',NULL,NULL,'soft_typed','[secondtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'unstainedslide_received3',NULL,'id_shipping',NULL,57,NULL,NULL,'text','UnstainedSlide_Received3',NULL,NULL,'float',NULL,NULL,'soft_typed','[thirdtime_getsample] = \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'vascular_invasion',NULL,'pathology_review',NULL,82,NULL,NULL,'select','Vascular invasion present','0, No \\n 1, Yes \\n 2, N/A',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(8,'whichslidepulled1',NULL,'slide_tracking',NULL,196,NULL,NULL,'text','WhichSlidePulled1',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'address','1','participant_info_survey',NULL,8,NULL,NULL,'textarea','Street, City, State, ZIP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'complete_study',NULL,'completion_data','Completion Data (to be entered by study personnel only)',22,NULL,'This form is to be filled out by study personnel.','yesno','Has patient completed study?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'completion_data_complete',NULL,'completion_data',NULL,29,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'consent',NULL,'prescreening_survey',NULL,4,NULL,NULL,'checkbox','By checking this box, I certify that I am at least 18 years old and that I give my consent freely to participate in this study.','1, I consent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'date_visit_4',NULL,'completion_data',NULL,25,NULL,NULL,'text','Date of last visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'discharge_date_4',NULL,'completion_data',NULL,26,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'discharge_summary_4',NULL,'completion_data',NULL,27,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'dob',NULL,'prescreening_survey',NULL,2,NULL,'Please fill out the information below.','text','Date of birth',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'email','1','prescreening_survey',NULL,2.1,NULL,NULL,'text','E-mail address',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'ethnicity',NULL,'participant_info_survey',NULL,11,NULL,NULL,'radio','Ethnicity','0, Hispanic or Latino \\n 1, NOT Hispanic or Latino \\n 2, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LH',NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'first_name','1','participant_info_survey','Participant Info Survey',6,NULL,'As a participant in this study, please answer the questions below. Thank you!','text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'gender',NULL,'participant_info_survey',NULL,13,NULL,NULL,'radio','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'has_diabetes',NULL,'prescreening_survey',NULL,3,NULL,NULL,'truefalse','I currently have Type 2 Diabetes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'height',NULL,'participant_info_survey',NULL,14,NULL,NULL,'text','Height (cm)',NULL,NULL,'float','130','215','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'last_name','1','participant_info_survey',NULL,7,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'participant_id',NULL,'prescreening_survey','Pre-Screening Survey',1,NULL,NULL,'text','Participant ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'participant_info_survey_complete',NULL,'participant_info_survey',NULL,16,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'participant_morale_questionnaire_complete',NULL,'participant_morale_questionnaire',NULL,21,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'pmq1',NULL,'participant_morale_questionnaire','Participant Morale Questionnaire',17,NULL,'As a participant in this study, please answer the questions below. Thank you!','select','On average, how many pills did you take each day last week?','0, Less than 5 \\n 1, 5-10 \\n 2, 6-15 \\n 3, Over 15',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'pmq2',NULL,'participant_morale_questionnaire',NULL,18,NULL,NULL,'select','Using the handout, which level of dependence do you feel you are currently at?','0, 0 \\n 1, 1 \\n 2, 2 \\n 3, 3 \\n 4, 4 \\n 5, 5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'pmq3',NULL,'participant_morale_questionnaire',NULL,19,NULL,NULL,'yesno','Would you be willing to discuss your experiences with a psychiatrist?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'pmq4',NULL,'participant_morale_questionnaire',NULL,20,NULL,NULL,'select','How open are you to further testing?','0, Not open \\n 1, Undecided \\n 2, Very open',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'prescreening_survey_complete',NULL,'prescreening_survey',NULL,5,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'race',NULL,'participant_info_survey',NULL,12,NULL,NULL,'select','Race','0, American Indian/Alaska Native \\n 1, Asian \\n 2, Native Hawaiian or Other Pacific Islander \\n 3, Black or African American \\n 4, White \\n 5, More Than One Race \\n 6, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'study_comments',NULL,'completion_data',NULL,28,NULL,NULL,'textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'telephone_1','1','participant_info_survey',NULL,9,NULL,NULL,'text','Phone number',NULL,'Include Area Code','phone',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'weight',NULL,'participant_info_survey',NULL,15,NULL,NULL,'text','Weight (kilograms)',NULL,NULL,'int','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'withdraw_date',NULL,'completion_data',NULL,23,NULL,NULL,'text','Put a date if patient withdrew study',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(9,'withdraw_reason',NULL,'completion_data',NULL,24,NULL,NULL,'select','Reason patient withdrew from study','0, Non-compliance \\n 1, Did not wish to continue in study \\n 2, Could not tolerate the supplement \\n 3, Hospitalization \\n 4, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'address','1','participant_info_survey',NULL,8,NULL,NULL,'textarea','Street, City, State, ZIP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'choices',NULL,'participant_morale_questionnaire',NULL,19,NULL,'Concerning the past week, how do you feel about ...','radio','The choices you made','1, Not satisfied at all \\n 2, Somewhat dissatisfied \\n 3, Indifferent \\n 4, Somewhat satisfied \\n 5, Very satisfied',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'feelings_matrix',0,NULL,NULL,0),
	(10,'complete_study',NULL,'completion_data','Completion Data (to be entered by study personnel only)',24,NULL,'This form is to be filled out by study personnel.','yesno','Has patient completed study?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'completion_data_complete',NULL,'completion_data',NULL,31,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'consent',NULL,'prescreening_survey',NULL,4,NULL,NULL,'checkbox','By checking this box, I certify that I am at least 18 years old and that I give my consent freely to participate in this study.','1, I consent',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'date_visit_4',NULL,'completion_data',NULL,27,NULL,NULL,'text','Date of last visit',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'discharge_date_4',NULL,'completion_data',NULL,28,NULL,NULL,'text','Date of hospital discharge',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'discharge_summary_4',NULL,'completion_data',NULL,29,NULL,NULL,'select','Discharge summary in patients binder?','0, No \\n 1, Yes',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'dob',NULL,'prescreening_survey',NULL,2,NULL,'Please fill out the information below.','text','Date of birth',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'email','1','prescreening_survey',NULL,2.1,NULL,NULL,'text','E-mail address',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'ethnicity',NULL,'participant_info_survey',NULL,11,NULL,NULL,'radio','Ethnicity','0, Hispanic or Latino \\n 1, NOT Hispanic or Latino \\n 2, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LH',NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'family',NULL,'participant_morale_questionnaire',NULL,22,NULL,NULL,'radio','Your family life','1, Not satisfied at all \\n 2, Somewhat dissatisfied \\n 3, Indifferent \\n 4, Somewhat satisfied \\n 5, Very satisfied',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'feelings_matrix',0,NULL,NULL,0),
	(10,'first_name','1','participant_info_survey','Participant Info Survey',6,NULL,'As a participant in this study, please answer the questions below. Thank you!','text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'gender',NULL,'participant_info_survey',NULL,13,NULL,NULL,'radio','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'has_diabetes',NULL,'prescreening_survey',NULL,3,NULL,NULL,'truefalse','I currently have Type 2 Diabetes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'height',NULL,'participant_info_survey',NULL,14,NULL,NULL,'text','Height (cm)',NULL,NULL,'float','130','215','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'job',NULL,'participant_morale_questionnaire',NULL,21,NULL,NULL,'radio','Your job','1, Not satisfied at all \\n 2, Somewhat dissatisfied \\n 3, Indifferent \\n 4, Somewhat satisfied \\n 5, Very satisfied',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'feelings_matrix',0,NULL,NULL,0),
	(10,'last_name','1','participant_info_survey',NULL,7,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'life',NULL,'participant_morale_questionnaire',NULL,20,NULL,NULL,'radio','Your life overall','1, Not satisfied at all \\n 2, Somewhat dissatisfied \\n 3, Indifferent \\n 4, Somewhat satisfied \\n 5, Very satisfied',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'feelings_matrix',0,NULL,NULL,0),
	(10,'participant_id',NULL,'prescreening_survey','Pre-Screening Survey',1,NULL,NULL,'text','Participant ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'participant_info_survey_complete',NULL,'participant_info_survey',NULL,16,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'participant_morale_questionnaire_complete',NULL,'participant_morale_questionnaire',NULL,23,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'pmq1',NULL,'participant_morale_questionnaire','Participant Morale Questionnaire',17,NULL,'As a participant in this study, please answer the questions below concerning the PAST WEEK. Thank you!','select','On average, how many pills did you take each day last week?','0, Less than 5 \\n 1, 5-10 \\n 2, 6-15 \\n 3, Over 15',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'pmq2',NULL,'participant_morale_questionnaire',NULL,18,NULL,NULL,'select','Using the handout, which level of dependence do you feel you are currently at?','0, 0 \\n 1, 1 \\n 2, 2 \\n 3, 3 \\n 4, 4 \\n 5, 5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'prescreening_survey_complete',NULL,'prescreening_survey',NULL,5,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'race',NULL,'participant_info_survey',NULL,12,NULL,NULL,'select','Race','0, American Indian/Alaska Native \\n 1, Asian \\n 2, Native Hawaiian or Other Pacific Islander \\n 3, Black or African American \\n 4, White \\n 5, More Than One Race \\n 6, Unknown / Not Reported',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'study_comments',NULL,'completion_data',NULL,30,NULL,NULL,'textarea','Comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'telephone_1','1','participant_info_survey',NULL,9,NULL,NULL,'text','Phone number',NULL,'Include Area Code','phone',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'weight',NULL,'participant_info_survey',NULL,15,NULL,NULL,'text','Weight (kilograms)',NULL,NULL,'int','35','200','soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'withdraw_date',NULL,'completion_data',NULL,25,NULL,NULL,'text','Put a date if patient withdrew study',NULL,NULL,'date_ymd',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(10,'withdraw_reason',NULL,'completion_data',NULL,26,NULL,NULL,'select','Reason patient withdrew from study','0, Non-compliance \\n 1, Did not wish to continue in study \\n 2, Could not tolerate the supplement \\n 3, Hospitalization \\n 4, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'calc',NULL,'survey',NULL,8,NULL,NULL,'calc','Your favorite number above multiplied by 4 is:','[number]*4','[number] x 4 = [calc]',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'confirm_name',NULL,'survey',NULL,9,NULL,NULL,'radio','Please confirm your name','0, [first_name] Harris \\n 1, [first_name] [last_name] \\n 2, [first_name] Taylor \\n 3, [first_name] deGrasse Tyson',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'confirm_name_error',NULL,'survey',NULL,10,NULL,NULL,'descriptive','<div class=\"red\" style=\"padding:30px;\"><b>ERROR:</b> Please try again!</div>',NULL,NULL,NULL,NULL,NULL,NULL,'[confirm_name] != \'\' and [confirm_name] != \'1\'',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'date_today',NULL,'survey',NULL,4,NULL,NULL,'text','[first_name], please enter today\'s date?',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'first_name',NULL,'survey',NULL,2,NULL,'Section 1','text','Your first name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'ice_cream',NULL,'survey',NULL,5,NULL,NULL,'radio','What is your favorite ice cream?','1, Chocolate \\n 2, Vanilla \\n 3, Strawberry',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'last_name',NULL,'survey',NULL,3,NULL,NULL,'text','Your last name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'number',NULL,'survey',NULL,7,NULL,NULL,'text','Enter your favorite number',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'participant_id',NULL,'survey','Example Survey',1,NULL,NULL,'text','Participant ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'review_answers',NULL,'survey',NULL,11,NULL,'Review answers','descriptive','Review your answers below:\n\n<div style=\"font-size:14px;color:red;\">Date: [date_today]\nName: [first_name] [last_name]\nFavorite ice cream: [ice_cream]\nFavorite number multiplied by 4: [calc]</div>\n\nIf all your responses look correct and you did not leave any blank, then click the Submit button below.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'slider',NULL,'survey',NULL,6,NULL,'Section 2','slider','How much do you like [ice_cream] ice cream?','Hate it | Indifferent | I love [ice_cream]!',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(11,'survey_complete',NULL,'survey',NULL,12,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'adverse_events_complete',NULL,'adverse_events',NULL,41,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeacn',NULL,'adverse_events',NULL,37,NULL,NULL,'radio','What action was taken with study treatment?','1, Dose Increased\\n2, Dose Not Changed\\n3, Dose Reduced\\n4, Drug Interrupted\\n5, Drug Withdrawn\\n6, Not Applicable\\n99, Unknown','Record changes made to the study treatment resulting from the adverse event.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeacnoth',NULL,'adverse_events',NULL,38,NULL,NULL,'textarea','What other action was taken in response to this adverse event?',NULL,'Record all action(s) taken resulting from the adverse event.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aedis',NULL,'adverse_events',NULL,40,NULL,NULL,'radio','Did the adverse event cause the subject to be discontinued from the study?','0, No\\n1, Yes','Record if the AE caused the subject to discontinue from the study.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeendat',NULL,'adverse_events',NULL,25,NULL,NULL,'text','What date did the adverse event end?',NULL,'Record the end date of the adverse event using the MM-DD-YYYY format.','date_mdy',NULL,NULL,'soft_typed','[aeongo] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeentim',NULL,'adverse_events',NULL,26,NULL,NULL,'text','At what time did the adverse event end?',NULL,'If appropriate, record the time the AE ended using the HH:MM (24-hour clock) format.','time',NULL,NULL,'soft_typed','[aeongo] = \"0\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeoccur',NULL,'adverse_events',NULL,21,NULL,NULL,'radio','Does the subject have (specific adverse event)?','0, No\\n1, Yes','Please indicate if (specific adverse event) has occurred /is occurring by checking Yes or No.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeongo',NULL,'adverse_events',NULL,24,NULL,NULL,'radio','Is the adverse event still ongoing?','0, No\\n1, Yes','Select one.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeout',NULL,'adverse_events',NULL,39,NULL,NULL,'radio','What was the outcome of this adverse event?','1, Fatal\\n2, Not recovered / Not resolved\\n3, Recovered / Resolved\\n4, Recovered / Resolved with sequelae\\n5, Recovering / Resolving\\n99, Unknown','Record the appropriate outcome of the event in relation to the subject\'s status.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aerel',NULL,'adverse_events',NULL,36,NULL,NULL,'radio','Is this event related to study treatment?','1, Definitely\\n2, Probably\\n3, Possibly\\n4, Not Related','Indicate if the cause of the adverse event is related to the study treatment and cannot be reasonably explained by other factors (e.g., subject\'s clinical state, concomitant therapy, and/or other interventions).',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aescong',NULL,'adverse_events',NULL,30,NULL,NULL,'radio','Is the adverse event associated with a congenital anomaly or birth defect?','0, No\\n1, Yes','Record whether the serious adverse event was associated with congenital anomaly or birth defect.',NULL,NULL,NULL,NULL,'[aeser] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aesdisab',NULL,'adverse_events',NULL,31,NULL,NULL,'radio','Did the adverse event result in Persistent or significant disability or incapacity?','0, No\\n1, Yes','Record whether the serious adverse event resulted in a persistent or significant disability or incapacity.',NULL,NULL,NULL,NULL,'[aeser] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aesdth',NULL,'adverse_events',NULL,32,NULL,NULL,'radio','Did the adverse event result in death?','0, No\\n1, Yes','Record whether the serious adverse event resulted in death.',NULL,NULL,NULL,NULL,'[aeser] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeser',NULL,'adverse_events',NULL,29,NULL,NULL,'radio','Is the adverse event serious?','0, No\\n1, Yes','Assess if an adverse event should be classified as serious based on the serious criteria defined in the protocol.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aesev',NULL,'adverse_events',NULL,27,NULL,NULL,'radio','What was the severity of the adverse event?','1, Mild\\n2, Moderate\\n3, Severe','The reporting physician/healthcare professional will assess the severity of the event using the sponsor-defined categories. This assessment is subjective and the reporting physician/ healthcare professional should use medical judgment to compare the reported Adverse Event to similar type events observed in clinical practice. Severity is not equivalent to seriousness.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeshosp',NULL,'adverse_events',NULL,33,NULL,NULL,'radio','Did the adverse event result in initial or prolonged hospitalization for the subject?','0, No\\n1, Yes','Record whether the serious adverse event resulted in an initial or prolonged hospitalization.',NULL,NULL,NULL,NULL,'[aeser] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeslife',NULL,'adverse_events',NULL,34,NULL,NULL,'radio','Is the adverse event Life Threatening?','0, No\\n1, Yes','Record whether the serious adverse event is life threatening.',NULL,NULL,NULL,NULL,'[aeser] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aesmie',NULL,'adverse_events',NULL,35,NULL,NULL,'radio','Is the adverse event a medically important event not covered by other ?serious? criteria?','0, No\\n1, Yes','Record whether the serious adverse event is an important medical event, which may be defined in the protocol or in the Investigator Brochure.',NULL,NULL,NULL,NULL,'[aeser] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aespid',NULL,'adverse_events',NULL,19,NULL,NULL,'text','AE Identifier',NULL,'Record unique identifier for each adverse event for this subject.<br><br>Number sequence for all following forms should not duplicate existing numbers for the subject.',NULL,NULL,NULL,'soft_typed','[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aestdat',NULL,'adverse_events',NULL,22,NULL,NULL,'text','What is the date the adverse event started?',NULL,'Record the start date of the adverse event using the MM-DD-YYYY format.','date_mdy',NULL,NULL,'soft_typed','[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aesttim',NULL,'adverse_events',NULL,23,NULL,NULL,'text','At what time did the adverse event start?',NULL,'If appropriate, record the time the AE started using the HH:MM (24-hour clock) format.','time',NULL,NULL,'soft_typed','[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeterm',NULL,'adverse_events',NULL,20,NULL,NULL,'text','What is the adverse event term?',NULL,'Record only one diagnosis, sign or symptom per form (e.g., nausea and vomiting should not be recorded in the same entry, but as two separate entries).  See eCRF completion instruction for more information.',NULL,NULL,NULL,'soft_typed','[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aetoxgr',NULL,'adverse_events',NULL,28,NULL,NULL,'radio','What is the toxicity grade of the adverse event?','1, Grade 1\\n2, Grade 2\\n3, Grade 3\\n4, Grade 4\\n5, Grade 5','Severity CTCAE Grade<br><br>The reporting physician/healthcare professional will assess the severity of the adverse event using the toxicity grades.',NULL,NULL,NULL,NULL,'[aeyn] = \"1\"',0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'aeyn',NULL,'adverse_events','Adverse Events',18,NULL,NULL,'radio','Were any adverse events experienced?','0, No\\n1, Yes','Indicate if the subject experienced any adverse events.',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'age_of_family_member',NULL,'family_members',NULL,12,NULL,NULL,'text','Age of family member',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'demographics_complete',NULL,'demographics',NULL,6,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'dosage',NULL,'medications',NULL,8,NULL,NULL,'text','Dosage',NULL,'mg','float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'family_member',NULL,'family_members','Family Members',10,NULL,'Family member information','text','Name of family member',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'family_members_complete',NULL,'family_members',NULL,13,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'first_name','1','demographics',NULL,2,NULL,NULL,'text','First Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'gender',NULL,'demographics',NULL,4,NULL,NULL,'radio','Gender','0, Female \\n 1, Male \\n 2, Other \\n 3, Prefer not to say',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'last_name','1','demographics',NULL,3,NULL,NULL,'text','Last Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'medication_name',NULL,'medications','Medications',7,NULL,NULL,'text','Medication name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'medications_complete',NULL,'medications',NULL,9,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'notes',NULL,'demographics',NULL,5,NULL,NULL,'textarea','Notes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'other_visit_data',NULL,'visits',NULL,16,NULL,NULL,'textarea','Other data',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'record_id',NULL,'demographics','Demographics',1,NULL,NULL,'text','Study ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'relation_to_patient',NULL,'family_members',NULL,11,NULL,NULL,'select','Relation to patient','1, Sibling\\n2, Spouse\\n3, Parent\\n4, Child very long choice right here that is long\\n5, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'visit_date',NULL,'visits','Visits',14,NULL,NULL,'text','Date',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@TODAY',NULL,0),
	(12,'visits_complete',NULL,'visits',NULL,17,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(12,'weight',NULL,'visits',NULL,15,NULL,NULL,'text','Weight',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'adm1_dt',NULL,'field_embedding_demo',NULL,54,NULL,NULL,'text','If yes, admission date 1',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'age',NULL,'field_embedding_demo',NULL,51,NULL,NULL,'text','Age\n\nPlease give age in either:\n-years (most common)\n-months\n-days\n\nYou will pick the age unit in the next question.',NULL,NULL,'float',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'ageunit',NULL,'field_embedding_demo',NULL,52,NULL,NULL,'radio','Age units\n\nThe number you gave above was in what units?','1, Years\\n2, Months\\n3, Days',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'asdf',NULL,'field_embedding_demo',NULL,24,NULL,'Lots of comments','descriptive','<div class=\"rich-text-field-label\"><table style=\"border-collapse: collapse; width: 100%;\" border=\"0\"> <tbody> <tr> <td style=\"width: 25%; text-align: center;\">Main feedback about the event</td> <td style=\"width: 25%; text-align: center;\">Feedback regarding the amenities</td> <td style=\"width: 25%; text-align: center;\">Feedback regarding the venue</td> <td style=\"width: 25%; text-align: center;\">Additional comments</td> </tr> <tr> <td style=\"width: 25%; text-align: center;\">{notes1}</td> <td style=\"width: 25%; text-align: center;\">{notes2}</td> <td style=\"width: 25%; text-align: center;\">{notes3}</td> <td style=\"width: 25%; text-align: center;\">{notes4}</td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'cdc_ncov2019_id',NULL,'field_embedding_demo',NULL,41,NULL,NULL,'text','CDC 2019-nCoV ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'chills_onset',NULL,'field_embedding_demo',NULL,62,NULL,NULL,'text','Chills onset date',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'chills_yn',NULL,'field_embedding_demo',NULL,58,NULL,NULL,'radio','Chills','1, Yes \\n 0, No \\n 9, Unknown',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'symptoms',0,NULL,NULL,0),
	(13,'contact_id',NULL,'field_embedding_demo',NULL,39,NULL,NULL,'text','Contact ID\n\nOnly complete if case-patient is a known contact of prior source case-patient. Assign Contact ID using CDC 2019-nCoV ID and sequential contact ID, e.g., Confirmed case CA102034567 has contacts CA102034567-01 and CA102034567-02',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'desc1',NULL,'field_embedding_demo',NULL,2,NULL,'<div class=\"rich-text-field-label\"><p>The fields below illustrate random examples of <span style=\"color: #e03e2d;\">Field Embedding</span> as a means of customizing your forms and surveys.</p></div>','descriptive','<div class=\"rich-text-field-label\"><table style=\"border-collapse: collapse; width: 100%; height: 80px;\" border=\"0\"> <tbody> <tr style=\"height: 20px;\"> <td style=\"width: 32.02%; height: 20px; text-align: left;\"> </td> <td style=\"width: 80px; height: 20px; text-align: center;\">2012</td> <td style=\"width: 80px; height: 20px; text-align: center;\">2013</td> <td style=\"width: 80px; height: 20px; text-align: center;\">2014</td> <td style=\"width: 80px; height: 20px; text-align: center;\">2015</td> <td style=\"width: 80px; text-align: center;\">2016</td> </tr> <tr style=\"height: 20px;\"> <td style=\"width: 32.02%; height: 20px; text-align: left;\">Federal Grants</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{grant2012}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{grant2013}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{grant2014}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{grant2015}</td> <td style=\"width: 80px; text-align: center;\">{grant2024}</td> </tr> <tr style=\"height: 20px;\"> <td style=\"width: 32.02%; height: 20px; text-align: left;\">Non-federal Grants</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{grant2016}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{nfgrant2012}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{nfgrant2013}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{nfgrant2014}</td> <td style=\"width: 80px; text-align: center;\">{grant2025}</td> </tr> <tr style=\"height: 20px;\"> <td style=\"width: 32.02%; height: 20px; text-align: left;\">Research Agreements/Contracts</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{nfgrant2015}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{nfgrant2016}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{grant2022}</td> <td style=\"width: 80px; height: 20px; text-align: center;\">{grant2023}</td> <td style=\"width: 80px; text-align: center;\">{grant2026}</td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'desc2',NULL,'field_embedding_demo',NULL,18,NULL,'Food question','descriptive','<div class=\"rich-text-field-label\"><table style=\"border-collapse: collapse; width: 100%;\" border=\"0\"> <tbody> <tr> <td style=\"width: 45.8502%; vertical-align: top;\">How often did you eat spicy foods last year?</td> <td style=\"width: 34.6791%; vertical-align: top;\"> <p><span style=\"font-weight: normal;\">{num_servings} number of servings</span></p> <p><span style=\"font-weight: normal;\">{not_know}</span></p> </td> <td style=\"width: 19.4706%; vertical-align: top;\"><span style=\"font-weight: normal;\">{food_units:icons}</span></td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'dis1_dt',NULL,'field_embedding_demo',NULL,55,NULL,NULL,'text','If yes, discharge date 1',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'dob',NULL,'field_embedding_demo',NULL,50,NULL,NULL,'text','Date of birth',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'dob_descriptive',NULL,'field_embedding_demo',NULL,32,NULL,NULL,'descriptive','<div class=\"rich-text-field-label\"><table style=\"border-collapse: collapse; width: 100%;\" cellpadding=\"5\"> <tbody> <tr style=\"height: 42px;\"> <th style=\"width: 31.0544%; height: 42px;\">Date of birth:</th> <td style=\"width: 17.6733%; height: 42px;\"> <div>{dob}</div> </td> <td style=\"width: 14.0046%; height: 42px;\"> <div>Sex:</div> <div>{sex}</div> </td> <td style=\"width: 6.51389%; height: 42px;\"> <div> <div>Ethnicity:</div> <div>{ethnicity}</div> </div> </td> </tr> <tr style=\"height: 42px;\"> <th style=\"width: 31.0544%; height: 42px;\">Age (in either years/months/days):</th> <td style=\"height: 42px; width: 17.6733%;\"> <div>{age}</div> </td> <td style=\"width: 14.0046%;\"> <div>Age units: {ageunit}</div> </td> <th style=\"width: 6.51389%; height: 42px;\"> </th> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'ethnicity',NULL,'field_embedding_demo',NULL,49,NULL,NULL,'radio','Ethnicity','1, Hispanic/Latino\\n0, Non-Hispanic-Latino\\n9, Not specified',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LV',NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'fever_onset',NULL,'field_embedding_demo',NULL,60,NULL,NULL,'text','Fever onset date',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'fever_yn',NULL,'field_embedding_demo',NULL,56,NULL,NULL,'radio','Fever >100.4F (38C)','1, Yes \\n 0, No \\n 9, Unknown',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'symptoms',0,NULL,NULL,0),
	(13,'field_embedding_demo_complete',NULL,'field_embedding_demo',NULL,68,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'first_name','1','field_embedding_demo',NULL,30,NULL,NULL,'text','Patient first name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@PLACEHOLDER=\"First\"',NULL,0),
	(13,'food_units',NULL,'field_embedding_demo',NULL,21,NULL,NULL,'radio','Food units','1, Per day\\n2, Per week\\n3, Per month',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2012',NULL,'field_embedding_demo',NULL,3,NULL,NULL,'text','Federal Grants 2012',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2013',NULL,'field_embedding_demo',NULL,4,NULL,NULL,'text','Federal Grants 2013',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2014',NULL,'field_embedding_demo',NULL,5,NULL,NULL,'text','Federal Grants 2014',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2015',NULL,'field_embedding_demo',NULL,6,NULL,NULL,'text','Federal Grants 2015',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2016',NULL,'field_embedding_demo',NULL,7,NULL,NULL,'text','Federal Grants 2016',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2022',NULL,'field_embedding_demo',NULL,13,NULL,NULL,'text','Research Agreements/Contracts 2012',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2023',NULL,'field_embedding_demo',NULL,14,NULL,NULL,'text','Research Agreements/Contracts 2013',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2024',NULL,'field_embedding_demo',NULL,15,NULL,NULL,'text','Research Agreements/Contracts 2014',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2025',NULL,'field_embedding_demo',NULL,16,NULL,NULL,'text','Research Agreements/Contracts 2015',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'grant2026',NULL,'field_embedding_demo',NULL,17,NULL,NULL,'text','Research Agreements/Contracts 2016',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'healthdept',NULL,'field_embedding_demo',NULL,38,NULL,NULL,'text','Reporting health department',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'hosp_descriptive',NULL,'field_embedding_demo',NULL,34,NULL,NULL,'descriptive','<div class=\"rich-text-field-label\"><table> <tbody> <tr> <th>Was the patient hospitalized?</th> <td> <div>{hosp_yn}</div> </td> <th>Admission Date</th> <td> <div>{adm1_dt}</div> </td> <th>Discharge Date</th> <td> <div>{dis1_dt}</div> </td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,' ',NULL,0),
	(13,'hosp_yn',NULL,'field_embedding_demo',NULL,53,NULL,NULL,'radio','Was the patient hospitalized?','1, Yes\\n0, No\\n9, Unknown',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'id_descriptive',NULL,'field_embedding_demo',NULL,33,NULL,NULL,'descriptive','<div class=\"rich-text-field-label\"><table style=\"border-collapse: collapse; width: 100%;\" cellpadding=\"2\"> <tbody> <tr> <td>Reporting jurisdiction:</td> <td> <div>{state}</div> </td> <td>Case State/local ID:</td> <td> <div>{local_id}</div> </td> </tr> <tr> <td>Reporting health department:</td> <td> <div>{healthdept}</div> </td> <td>CDC 2019-nCoV ID:</td> <td> <div>{cdc_ncov2019_id}</div> </td> </tr> <tr> <th>Contact ID <sup>a</sup>:</th> <td> <div>{contact_id}</div> </td> <th>NNDSS loc.rec.ID/Case ID <sup>b</sup>:</th> <td> <div>{nndss_id}</div> </td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,' ',NULL,0),
	(13,'interviewer_descriptive',NULL,'field_embedding_demo',NULL,35,NULL,'Interviewer information','descriptive','<div class=\"rich-text-field-label\"><table style=\"border-collapse: collapse; width: 100%;\"> <tbody> <tr> <th> Last Name:</th> <td align=\"left\"> <div>{interviewer_ln}</div> </td> <th>First Name:</th> <td align=\"left\"> <div>{interviewer_fn}</div> </td> </tr> <tr> <th>Affiliation/Organization:</th> <td align=\"left\"> <div>{interviewer_org}</div> </td> <th>Telephone:</th> <td align=\"left\"> <div>{interviewer_tele}</div> </td> </tr> <tr> <th>Email:</th> <td align=\"left\"> <div>{interviewer_email}</div> </td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'interviewer_email',NULL,'field_embedding_demo',NULL,47,NULL,NULL,'text','Email',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'interviewer_fn',NULL,'field_embedding_demo',NULL,44,NULL,NULL,'text','Interviewer first name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'interviewer_ln',NULL,'field_embedding_demo',NULL,43,NULL,NULL,'text','Interviewer last name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,'LV',NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'interviewer_org',NULL,'field_embedding_demo',NULL,45,NULL,NULL,'text','Affiliation/Organization',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'interviewer_tele',NULL,'field_embedding_demo',NULL,46,NULL,NULL,'text','Telephone',NULL,NULL,'phone',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'last_name','1','field_embedding_demo',NULL,31,NULL,NULL,'text','Patient last name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@PLACEHOLDER=\"Last\"',NULL,0),
	(13,'local_id',NULL,'field_embedding_demo',NULL,40,NULL,NULL,'text','Case state/local ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'myalgia_onset',NULL,'field_embedding_demo',NULL,63,NULL,NULL,'text','Muscle aches (myalgia) onset date',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'myalgia_yn',NULL,'field_embedding_demo',NULL,59,NULL,NULL,'radio','Muscle aches (myalgia)','1, Yes \\n 0, No \\n 9, Unknown',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'symptoms',0,NULL,NULL,0),
	(13,'nfgrant2012',NULL,'field_embedding_demo',NULL,8,NULL,NULL,'text','Non-federal Grants 2012',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'nfgrant2013',NULL,'field_embedding_demo',NULL,9,NULL,NULL,'text','Non-federal Grants 2013',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'nfgrant2014',NULL,'field_embedding_demo',NULL,10,NULL,NULL,'text','Non-federal Grants 2014',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'nfgrant2015',NULL,'field_embedding_demo',NULL,11,NULL,NULL,'text','Non-federal Grants 2015',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'nfgrant2016',NULL,'field_embedding_demo',NULL,12,NULL,NULL,'text','Non-federal Grants 2016',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'nndss_id',NULL,'field_embedding_demo',NULL,42,NULL,NULL,'text','NNDSS loc. rec. ID/Case ID\n\nFor NNDSS reporters, use GenV2 or NETSS patient identifier',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'not_know',NULL,'field_embedding_demo',NULL,20,NULL,NULL,'checkbox','Do not know / Prefer not to answer','1, Do not know / Prefer not to answer',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'notes1',NULL,'field_embedding_demo',NULL,25,NULL,NULL,'textarea','Main feedback about the event',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'notes2',NULL,'field_embedding_demo',NULL,26,NULL,NULL,'textarea','Feedback regarding the amenities',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'notes3',NULL,'field_embedding_demo',NULL,27,NULL,NULL,'textarea','Feedback regarding the venue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'notes4',NULL,'field_embedding_demo',NULL,28,NULL,NULL,'textarea','Additional comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'num_servings',NULL,'field_embedding_demo',NULL,19,NULL,NULL,'text','Number of servings',NULL,NULL,'int',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'other1',NULL,'field_embedding_demo',NULL,23,NULL,NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,'soft_typed','[radio_choices] = \"3\"',0,NULL,0,NULL,NULL,NULL,NULL,0,'@PLACEHOLDER=\"Enter custom text\"',NULL,0),
	(13,'othsym1_onset',NULL,'field_embedding_demo',NULL,66,NULL,NULL,'text','Other symptoms 1 onset date',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'othsym1_spec',NULL,'field_embedding_demo',NULL,64,NULL,NULL,'text','Other symptoms - 1, specify:',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'othsym2_onset',NULL,'field_embedding_demo',NULL,67,NULL,NULL,'text','Other symptoms 2 onset date',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'othsym2_spec',NULL,'field_embedding_demo',NULL,65,NULL,NULL,'text','Other symptoms - 2, specify:',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'pname',NULL,'field_embedding_demo',NULL,29,NULL,' Patient Information','descriptive','<div class=\"rich-text-field-label\"><table style=\"border-collapse: collapse; width: 100%;\"> <tbody> <tr> <td style=\"width: 33.3333%;\">Patient name:</td> <td style=\"width: 33.3333%;\">{first_name}</td> <td style=\"width: 33.3333%;\">{last_name}</td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'radio_choices',NULL,'field_embedding_demo',NULL,22,NULL,' Combo radio buttons with text boxes','radio','Radio choices with custom \"other\" option','1, My first choice\\n2, My second choice\\n3, Other     {other1}',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'record_id',NULL,'field_embedding_demo','Field Embedding Demo',1,NULL,NULL,'text','Record ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'sex',NULL,'field_embedding_demo',NULL,48,NULL,NULL,'radio','Sex','1, Male\\n2, Female\\n9, Unknown\\n3, Other',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LV',NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'sfever_onset',NULL,'field_embedding_demo',NULL,61,NULL,NULL,'text','Subjective fever (felt feverish) onset date',NULL,NULL,'date_mdy',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,'@HIDEBUTTON',NULL,0),
	(13,'sfever_yn',NULL,'field_embedding_demo',NULL,57,NULL,NULL,'radio','Subjective fever (felt feverish)','1, Yes \\n 0, No \\n 9, Unknown',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'symptoms',0,NULL,NULL,0),
	(13,'state',NULL,'field_embedding_demo',NULL,37,NULL,NULL,'text','Reporting jurisdiction',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(13,'symptom_descriptive',NULL,'field_embedding_demo',NULL,36,NULL,'Symptoms, clinical course, past medical history and social history','descriptive','<div class=\"rich-text-field-label\"><table> <tbody> <tr> <th style=\"width: 639.219px;\" colspan=\"2\"> <p><strong>During the illness, did the patient experience any of the following symptoms?</strong></p> </th> <th style=\"width: 126.219px;\"> <p><strong>Onset Date</strong></p> </th> </tr> <tr> <th style=\"width: 226.219px;\">Fever>100.4F(38C)</th> <td style=\"width: 399.219px;\"> <div>{fever_yn}</div> </td> <td style=\"width: 126.219px;\"> <div>{fever_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Subjective fever (felt feverish)</th> <td style=\"width: 399.219px;\"> <div>{sfever_yn}</div> </td> <td style=\"width: 126.219px;\"> <div>{sfever_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Chills</th> <td style=\"width: 399.219px;\"> <div>{chills_yn}</div> </td> <td style=\"width: 126.219px;\"> <div>{chills_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Muscle aches (myalgia)</th> <td style=\"width: 399.219px;\"> <div>{myalgia_yn}</div> </td> <td style=\"width: 126.219px;\"> <div>{myalgia_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Other symptom 1</th> <td style=\"width: 399.219px;\"> <div>{othsym1_spec}</div> </td> <td style=\"width: 126.219px;\"> <div>{othsym1_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Other symptom 2</th> <td style=\"width: 399.219px;\"> <div>{othsym2_spec}</div> </td> <td style=\"width: 126.219px;\"> <div>{othsym2_onset}</div> </td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0);

/*!40000 ALTER TABLE `redcap_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_metadata_archive
# ------------------------------------------------------------



# Dump of table redcap_metadata_prod_revisions
# ------------------------------------------------------------



# Dump of table redcap_metadata_temp
# ------------------------------------------------------------



# Dump of table redcap_mobile_app_devices
# ------------------------------------------------------------



# Dump of table redcap_mobile_app_files
# ------------------------------------------------------------



# Dump of table redcap_mobile_app_log
# ------------------------------------------------------------



# Dump of table redcap_mycap_messages
# ------------------------------------------------------------



# Dump of table redcap_mycap_participants
# ------------------------------------------------------------



# Dump of table redcap_mycap_projectfiles
# ------------------------------------------------------------



# Dump of table redcap_mycap_projects
# ------------------------------------------------------------



# Dump of table redcap_mycap_syncissuefiles
# ------------------------------------------------------------



# Dump of table redcap_mycap_syncissues
# ------------------------------------------------------------



# Dump of table redcap_new_record_cache
# ------------------------------------------------------------



# Dump of table redcap_outgoing_email_counts
# ------------------------------------------------------------

LOCK TABLES `redcap_outgoing_email_counts` WRITE;
/*!40000 ALTER TABLE `redcap_outgoing_email_counts` DISABLE KEYS */;

INSERT INTO `redcap_outgoing_email_counts` (`date`, `send_count`, `smtp`, `sendgrid`, `mandrill`)
VALUES
	('2020-09-28',3,3,0,0);

/*!40000 ALTER TABLE `redcap_outgoing_email_counts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_page_hits
# ------------------------------------------------------------

LOCK TABLES `redcap_page_hits` WRITE;
/*!40000 ALTER TABLE `redcap_page_hits` DISABLE KEYS */;

INSERT INTO `redcap_page_hits` (`date`, `page_name`, `page_hits`)
VALUES
	('2020-09-28','index.php',9),
	('2020-09-28','ControlCenter/view_users.php',5),
	('2020-09-28','ControlCenter/create_user.php',3),
	('2020-09-28','ControlCenter/security_settings.php',2),
	('2020-09-28','ControlCenter/superusers.php',5),
	('2020-09-28','ControlCenter/index.php',1),
	('2020-09-28','ControlCenter/google_map_users.php',1),
	('2020-09-28','ControlCenter/email_users.php',1),
	('2020-10-07','index.php',5),
	('2020-10-07','ControlCenter/index.php',1),
	('2020-10-07','ControlCenter/user_settings.php',10);

/*!40000 ALTER TABLE `redcap_page_hits` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_project_checklist
# ------------------------------------------------------------

LOCK TABLES `redcap_project_checklist` WRITE;
/*!40000 ALTER TABLE `redcap_project_checklist` DISABLE KEYS */;

INSERT INTO `redcap_project_checklist` (`list_id`, `project_id`, `name`)
VALUES
	(1,7,'design'),
	(2,7,'modify_project'),
	(3,7,'modules');

/*!40000 ALTER TABLE `redcap_project_checklist` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_projects
# ------------------------------------------------------------

LOCK TABLES `redcap_projects` WRITE;
/*!40000 ALTER TABLE `redcap_projects` DISABLE KEYS */;

INSERT INTO `redcap_projects` (`project_id`, `project_name`, `app_title`, `status`, `creation_time`, `production_time`, `inactive_time`, `completed_time`, `completed_by`, `data_locked`, `log_event_table`, `created_by`, `draft_mode`, `surveys_enabled`, `repeatforms`, `scheduling`, `purpose`, `purpose_other`, `show_which_records`, `__SALT__`, `count_project`, `investigators`, `project_note`, `online_offline`, `auth_meth`, `double_data_entry`, `project_language`, `project_encoding`, `is_child_of`, `date_shift_max`, `institution`, `site_org_type`, `grant_cite`, `project_contact_name`, `project_contact_email`, `headerlogo`, `auto_inc_set`, `custom_data_entry_note`, `custom_index_page_note`, `order_id_by`, `custom_reports`, `report_builder`, `disable_data_entry`, `google_translate_default`, `require_change_reason`, `dts_enabled`, `project_pi_firstname`, `project_pi_mi`, `project_pi_lastname`, `project_pi_email`, `project_pi_alias`, `project_pi_username`, `project_pi_pub_exclude`, `project_pub_matching_institution`, `project_irb_number`, `project_grant_number`, `history_widget_enabled`, `secondary_pk`, `secondary_pk_display_value`, `secondary_pk_display_label`, `custom_record_label`, `display_project_logo_institution`, `imported_from_rs`, `display_today_now_button`, `auto_variable_naming`, `randomization`, `enable_participant_identifiers`, `survey_email_participant_field`, `survey_phone_participant_field`, `data_entry_trigger_url`, `template_id`, `date_deleted`, `data_resolution_enabled`, `field_comment_edit_delete`, `realtime_webservice_enabled`, `realtime_webservice_type`, `realtime_webservice_offset_days`, `realtime_webservice_offset_plusminus`, `last_logged_event`, `survey_queue_custom_text`, `survey_queue_hide`, `survey_auth_enabled`, `survey_auth_field1`, `survey_auth_event_id1`, `survey_auth_field2`, `survey_auth_event_id2`, `survey_auth_field3`, `survey_auth_event_id3`, `survey_auth_min_fields`, `survey_auth_apply_all_surveys`, `survey_auth_custom_message`, `survey_auth_fail_limit`, `survey_auth_fail_window`, `twilio_enabled`, `twilio_modules_enabled`, `twilio_hide_in_project`, `twilio_account_sid`, `twilio_auth_token`, `twilio_from_number`, `twilio_voice_language`, `twilio_option_voice_initiate`, `twilio_option_sms_initiate`, `twilio_option_sms_invite_make_call`, `twilio_option_sms_invite_receive_call`, `twilio_option_sms_invite_web`, `twilio_default_delivery_preference`, `twilio_request_inspector_checked`, `twilio_request_inspector_enabled`, `twilio_append_response_instructions`, `twilio_multiple_sms_behavior`, `two_factor_exempt_project`, `two_factor_force_project`, `disable_autocalcs`, `custom_public_survey_links`, `pdf_custom_header_text`, `pdf_show_logo_url`, `pdf_hide_secondary_field`, `pdf_hide_record_id`, `shared_library_enabled`, `allow_delete_record_from_log`, `delete_file_repository_export_files`, `custom_project_footer_text`, `custom_project_footer_text_link`, `google_recaptcha_enabled`, `datamart_allow_repeat_revision`, `datamart_allow_create_revision`, `datamart_enabled`, `break_the_glass_enabled`, `datamart_cron_enabled`, `fhir_include_email_address_project`, `file_upload_vault_enabled`, `file_upload_versioning_enabled`, `missing_data_codes`, `record_locking_pdf_vault_enabled`, `record_locking_pdf_vault_custom_text`)
VALUES
	(1,'redcap_demo_951573','Classic Database',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(2,'redcap_demo_5d65da','Longitudinal Database (1 arm)',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,1,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(3,'redcap_demo_9165e5','Longitudinal Database (2 arms)',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,1,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(4,'redcap_demo_06046c','Single Survey',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,1,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(5,'redcap_demo_b0f79d','Basic Demography',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(6,'redcap_demo_7b4560','Project Tracking Database',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(7,'redcap_demo_42e922','Randomized Clinical Trial',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,1,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(8,'redcap_demo_2fc110','Human Cancer Tissue Biobank',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(9,'redcap_demo_54ab97','Multiple Surveys (classic)',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,1,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,'email',NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(10,'redcap_demo_3c0871','Multiple Surveys (longitudinal)',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,1,1,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,'email',NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(11,'redcap_demo_38e07f','Piping Example Project',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,1,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(12,'redcap_demo_db9576','Repeating Instruments',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(13,'redcap_demo_76bacb','Field Embedding Example Project',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL);

/*!40000 ALTER TABLE `redcap_projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_projects_external
# ------------------------------------------------------------



# Dump of table redcap_projects_templates
# ------------------------------------------------------------

LOCK TABLES `redcap_projects_templates` WRITE;
/*!40000 ALTER TABLE `redcap_projects_templates` DISABLE KEYS */;

INSERT INTO `redcap_projects_templates` (`project_id`, `title`, `description`, `enabled`)
VALUES
	(1,'Classic Database','Contains six data entry forms, including forms for demography and baseline data, three monthly data forms, and concludes with a completion data form.',1),
	(2,'Longitudinal Database (1 arm)','Contains nine data entry forms (beginning with a demography form) for collecting data longitudinally over eight different events.',1),
	(3,'Longitudinal Database (2 arms)','Contains nine data entry forms (beginning with a demography form) for collecting data on two different arms (Drug A and Drug B) with each arm containing eight different events.',1),
	(4,'Single Survey','Contains a single data collection instrument enabled as a survey, which contains questions to demonstrate all the different field types.',1),
	(5,'Basic Demography','Contains a single data collection instrument to capture basic demographic information.',1),
	(6,'Project Tracking Database','Contains fifteen data entry forms dedicated to recording the attributes of and tracking and progress of projects/studies.',1),
	(7,'Randomized Clinical Trial','Contains seven data entry forms for collecting data for a randomized clinical trial. Includes a short demographics form followed by a form where randomization is performed. An example randomization model has already been set up, although randomization allocation tables have not yet been created.',1),
	(8,'Human Cancer Tissue Biobank','Contains five data entry forms for collecting and tracking information for cancer tissue.',1),
	(9,'Multiple Surveys (classic)','Contains three surveys and a data entry form. Includes a pre-screening survey followed by two follow-up surveys to capture information from the participant, and then a data entry form for final data to be entered by the study personnel. The project data is captured in classic data collection format.',1),
	(10,'Multiple Surveys (longitudinal)','Contains three surveys and a data entry form. Includes a pre-screening survey followed by two follow-up surveys, one of which is a questionnaire takenly weekly to capture participant information longitudinally over a period of one month. The surveys are followed by a data entry form for final data to be entered by the study personnel. The project data is captured in longitudinal data collection format.',1),
	(11,'Piping Example Project','Contains a single data collection instrument enabled as a survey, which contains questions to demonstrate the Piping feature.',1),
	(12,'Repeating Instruments','Example classic project showcasing the Repeating Instruments functionality.',1),
	(13,'Field Embedding Example Project','Contains a single data collection instrument to demonstrate the Field Embedding feature.',1);

/*!40000 ALTER TABLE `redcap_projects_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_projects_user_hidden
# ------------------------------------------------------------



# Dump of table redcap_pub_articles
# ------------------------------------------------------------



# Dump of table redcap_pub_authors
# ------------------------------------------------------------



# Dump of table redcap_pub_matches
# ------------------------------------------------------------



# Dump of table redcap_pub_mesh_terms
# ------------------------------------------------------------



# Dump of table redcap_pub_sources
# ------------------------------------------------------------

LOCK TABLES `redcap_pub_sources` WRITE;
/*!40000 ALTER TABLE `redcap_pub_sources` DISABLE KEYS */;

INSERT INTO `redcap_pub_sources` (`pubsrc_id`, `pubsrc_name`, `pubsrc_last_crawl_time`)
VALUES
	(1,'PubMed',NULL);

/*!40000 ALTER TABLE `redcap_pub_sources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_queue
# ------------------------------------------------------------



# Dump of table redcap_randomization
# ------------------------------------------------------------

LOCK TABLES `redcap_randomization` WRITE;
/*!40000 ALTER TABLE `redcap_randomization` DISABLE KEYS */;

INSERT INTO `redcap_randomization` (`rid`, `project_id`, `stratified`, `group_by`, `target_field`, `target_event`, `source_field1`, `source_event1`, `source_field2`, `source_event2`, `source_field3`, `source_event3`, `source_field4`, `source_event4`, `source_field5`, `source_event5`, `source_field6`, `source_event6`, `source_field7`, `source_event7`, `source_field8`, `source_event8`, `source_field9`, `source_event9`, `source_field10`, `source_event10`, `source_field11`, `source_event11`, `source_field12`, `source_event12`, `source_field13`, `source_event13`, `source_field14`, `source_event14`, `source_field15`, `source_event15`)
VALUES
	(1,7,1,NULL,'randomization_group',NULL,'race',29,'gender',29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `redcap_randomization` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_randomization_allocation
# ------------------------------------------------------------



# Dump of table redcap_record_counts
# ------------------------------------------------------------



# Dump of table redcap_record_dashboards
# ------------------------------------------------------------



# Dump of table redcap_record_list
# ------------------------------------------------------------



# Dump of table redcap_reports
# ------------------------------------------------------------



# Dump of table redcap_reports_access_dags
# ------------------------------------------------------------



# Dump of table redcap_reports_access_roles
# ------------------------------------------------------------



# Dump of table redcap_reports_access_users
# ------------------------------------------------------------



# Dump of table redcap_reports_edit_access_dags
# ------------------------------------------------------------



# Dump of table redcap_reports_edit_access_roles
# ------------------------------------------------------------



# Dump of table redcap_reports_edit_access_users
# ------------------------------------------------------------



# Dump of table redcap_reports_fields
# ------------------------------------------------------------



# Dump of table redcap_reports_filter_dags
# ------------------------------------------------------------



# Dump of table redcap_reports_filter_events
# ------------------------------------------------------------



# Dump of table redcap_reports_folders
# ------------------------------------------------------------



# Dump of table redcap_reports_folders_items
# ------------------------------------------------------------



# Dump of table redcap_sendit_docs
# ------------------------------------------------------------



# Dump of table redcap_sendit_recipients
# ------------------------------------------------------------



# Dump of table redcap_sessions
# ------------------------------------------------------------

LOCK TABLES `redcap_sessions` WRITE;
/*!40000 ALTER TABLE `redcap_sessions` DISABLE KEYS */;

INSERT INTO `redcap_sessions` (`session_id`, `session_data`, `session_expiration`)
VALUES
	('3df30796406bf4178b1bf45aa30a09a6','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"178a31a0f865f7e18bc0cc9c0fd08cd5\";s:15:\"challengecookie\";s:32:\"50533cd4c796a12745319a7573c7b4da\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1602096646;s:4:\"idle\";i:1602096739;}username|s:10:\"test_admin\";redcap_csrf_token|a:2:{s:19:\"2020-10-07 13:50:46\";s:32:\"c5d3cbaf0594d8635dfa187eefa83931\";s:19:\"2020-10-07 13:50:48\";s:32:\"7600305190fb945d310f72bf28c2a81e\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:3:\"660\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"422\";tagged_data|N;','2020-10-07 14:20:49'),
	('4507775761d5a3463b17b1161a81b3d3','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"d85b873e9062bd7c68057d6ef991e65d\";s:15:\"challengecookie\";s:32:\"90423fbf0664cef4ed8371c1607b8f45\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1602092613;s:4:\"idle\";i:1602092616;}username|s:10:\"test_admin\";redcap_csrf_token|a:2:{s:19:\"2020-10-07 12:43:33\";s:32:\"f47460d8a237bd3621261f190cd55cce\";s:19:\"2020-10-07 12:43:35\";s:32:\"c5f55b00def31d4ad6896f19361eaad9\";}mc_open|s:1:\"0\";','2020-10-07 13:13:36'),
	('60692ed7b4af0bcd2034d753295edf65','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"f3617a9c11eb33f3ae3db08957f405eb\";s:15:\"challengecookie\";s:32:\"78de88bdc9d7791dab85d6c8db1b8512\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1602096434;s:4:\"idle\";i:1602096527;}username|s:10:\"test_admin\";redcap_csrf_token|a:2:{s:19:\"2020-10-07 13:47:14\";s:32:\"9dc982e6d2b257714f4849948fc789b6\";s:19:\"2020-10-07 13:47:16\";s:32:\"4b16fd5470bc46631735ede40c8fb768\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:3:\"660\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"422\";tagged_data|N;','2020-10-07 14:17:17'),
	('72cba1800faf5a9b96faa2c64b195278','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"01cb2d91d2c6c720d134241479f45152\";s:15:\"challengecookie\";s:32:\"4da220ef83092627df11e7447dec6c06\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_user\";s:9:\"timestamp\";i:1601303590;s:4:\"idle\";i:1601303592;}username|s:10:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-09-28 09:33:09\";s:32:\"ba19ec0cda1f75d429b5844b04b0467f\";s:19:\"2020-09-28 09:33:10\";s:32:\"541e4bc8d53f348f59b25bc2022ef73d\";s:19:\"2020-09-28 09:33:11\";s:32:\"cac601e52948736124cee9db01a9ae33\";}mc_open|s:1:\"0\";','2020-09-28 10:03:12'),
	('a4bc6a64efd6480687f3e9787796988a','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"e4f9ab03fb4cb19f235b08599d77723b\";s:15:\"challengecookie\";s:32:\"f0c1f2aa446c42c1e33ebf85b2144119\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1601303585;s:4:\"idle\";i:1601303588;}username|s:10:\"test_admin\";redcap_csrf_token|a:2:{s:19:\"2020-09-28 09:33:05\";s:32:\"af6c88fdd30c8bca7995751c493995b8\";s:19:\"2020-09-28 09:33:07\";s:32:\"02dd4ae937c5c346fe8bab6654429755\";}mc_open|s:1:\"0\";','2020-09-28 10:03:08'),
	('b70bc498e5e66710f8d4f5b0743bf550','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"1489a7654b7e752c5bb3dc3ac4d4310e\";s:15:\"challengecookie\";s:32:\"dcc8ff03e7fad9d57e56b2c4d18a9942\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1602092498;s:4:\"idle\";i:1602092501;}username|s:10:\"test_admin\";redcap_csrf_token|a:2:{s:19:\"2020-10-07 12:41:38\";s:32:\"47c217a58c3c0f8dbb9a5696c03aaf3d\";s:19:\"2020-10-07 12:41:41\";s:32:\"aaae0455bad7c91ac27250b58482221c\";}mc_open|s:1:\"0\";','2020-10-07 13:11:42'),
	('e2d3c3f9582ab61f6f45ac9a09f738f1','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"477052622966593056e367109c7b04af\";s:15:\"challengecookie\";s:32:\"ca3e0eefaacfe93ffffd1217e0a5894a\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1602092788;s:4:\"idle\";i:1602092790;}username|s:10:\"test_admin\";redcap_csrf_token|a:2:{s:19:\"2020-10-07 12:46:28\";s:32:\"070c24ea44d4eeb173b323859b352f0c\";s:19:\"2020-10-07 12:46:30\";s:32:\"15c3895362b1dbf51f1aba3e1d09a04b\";}mc_open|s:1:\"0\";','2020-10-07 13:16:31');

/*!40000 ALTER TABLE `redcap_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_surveys
# ------------------------------------------------------------

LOCK TABLES `redcap_surveys` WRITE;
/*!40000 ALTER TABLE `redcap_surveys` DISABLE KEYS */;

INSERT INTO `redcap_surveys` (`survey_id`, `project_id`, `form_name`, `title`, `instructions`, `acknowledgement`, `question_by_section`, `display_page_number`, `question_auto_numbering`, `survey_enabled`, `save_and_return`, `save_and_return_code_bypass`, `logo`, `hide_title`, `view_results`, `min_responses_view_results`, `check_diversity_view_results`, `end_survey_redirect_url`, `survey_expiration`, `promis_skip_question`, `survey_auth_enabled_single`, `edit_completed_response`, `hide_back_button`, `show_required_field_text`, `confirmation_email_subject`, `confirmation_email_content`, `confirmation_email_from`, `confirmation_email_from_display`, `confirmation_email_attach_pdf`, `confirmation_email_attachment`, `text_to_speech`, `text_to_speech_language`, `end_survey_redirect_next_survey`, `theme`, `text_size`, `font_family`, `theme_text_buttons`, `theme_bg_page`, `theme_text_title`, `theme_bg_title`, `theme_text_sectionheader`, `theme_bg_sectionheader`, `theme_text_question`, `theme_bg_question`, `enhanced_choices`, `repeat_survey_enabled`, `repeat_survey_btn_text`, `repeat_survey_btn_location`, `response_limit`, `response_limit_include_partials`, `response_limit_custom_text`, `survey_time_limit_days`, `survey_time_limit_hours`, `survey_time_limit_minutes`, `email_participant_field`, `end_of_survey_pdf_download`, `pdf_auto_archive`, `pdf_econsent_version`, `pdf_econsent_type`, `pdf_econsent_firstname_field`, `pdf_econsent_firstname_event_id`, `pdf_econsent_lastname_field`, `pdf_econsent_lastname_event_id`, `pdf_econsent_dob_field`, `pdf_econsent_dob_event_id`, `pdf_econsent_allow_edit`, `pdf_econsent_signature_field1`, `pdf_econsent_signature_field2`, `pdf_econsent_signature_field3`, `pdf_econsent_signature_field4`, `pdf_econsent_signature_field5`)
VALUES
	(1,4,'survey','Example Survey','<p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Arial, Verdana, Helvetica, sans-serif; font-size: 12px; text-align: left; line-height: 1.5em; max-width: 700px; clear: both; padding: 0px;\">These are your survey instructions that you would enter for your survey participants. You may put whatever text you like here, which may include information about the purpose of the survey, who is taking the survey, or how to take the survey.</p><br><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Arial, Verdana, Helvetica, sans-serif; font-size: 12px; text-align: left; line-height: 1.5em; max-width: 700px; clear: both; padding: 0px;\">Surveys can use a single survey link for all respondents, which can be posted on a webpage or emailed out from your email application of choice. <strong>By default, all survey responses are collected anonymously</strong> (that is, unless your survey asks for name, email, or other identifying information). If you wish to track individuals who have taken your survey, you may upload a list of email addresses into a Participant List within REDCap, in which you can have REDCap send them an email invitation, which will track if they have taken the survey and when it was taken. This method still collects responses anonymously, but if you wish to identify an individual respondent\'s answers, you may do so by also providing an Identifier in your Participant List. Of course, in that case you may want to inform your respondents in your survey\'s instructions that their responses are not being collected anonymously and can thus be traced back to them.</p>','<p><strong>Thank you for taking the survey.</strong></p><br><p>Have a nice day!</p>',0,1,0,1,1,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(2,9,'participant_info_survey','Follow-Up Survey','<p><strong>Please complete the survey below.</strong></p>\r\n<p>Thank you!</p>','<p><strong>Thank you for taking the survey.</strong></p>\r\n<p>Have a nice day!</p>',0,1,1,1,1,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(3,9,'participant_morale_questionnaire','Patient Morale Questionnaire','<p><strong>Please complete the survey below.</strong></p>\r\n<p>Thank you!</p>','<p><strong>Thank you for taking the survey.</strong></p>\r\n<p>Have a nice day!</p>',0,1,1,1,1,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(4,9,'prescreening_survey','Pre-Screening Survey','<p><strong>Please complete the survey below.</strong></p>\r\n<p>Thank you!</p>','<p><strong>Thank you for taking the survey.</strong></p>\r\n<p>Have a nice day!</p>',0,1,1,1,0,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(5,10,'participant_info_survey','Follow-Up Survey','<p><strong>Please complete the survey below.</strong></p>\r\n<p>Thank you!</p>','<p><strong>Thank you for taking the survey.</strong></p>\r\n<p>Have a nice day!</p>',0,1,1,1,1,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(6,10,'participant_morale_questionnaire','Patient Morale Questionnaire','<p><strong>Please complete the survey below.</strong></p>\r\n<p>Thank you!</p>','<p><strong>Thank you for taking the survey.</strong></p>\r\n<p>Have a nice day!</p>',0,1,1,1,1,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(7,10,'prescreening_survey','Pre-Screening Survey','<p><strong>Please complete the survey below.</strong></p>\r\n<p>Thank you!</p>','<p><strong>Thank you for taking the survey.</strong></p>\r\n<p>Have a nice day!</p>',0,1,1,1,0,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(8,11,'survey','Example Survey to Demonstrate Piping','This survey will demonstrate some basic examples of the Piping feature in REDCap.','<p style=\"font-size:14px;\"><strong>[first_name], thank you for taking the survey.</strong></p><br><p>Have a nice day!</p>',1,1,0,1,0,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `redcap_surveys` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_surveys_emails
# ------------------------------------------------------------



# Dump of table redcap_surveys_emails_recipients
# ------------------------------------------------------------



# Dump of table redcap_surveys_emails_send_rate
# ------------------------------------------------------------



# Dump of table redcap_surveys_erase_twilio_log
# ------------------------------------------------------------



# Dump of table redcap_surveys_login
# ------------------------------------------------------------



# Dump of table redcap_surveys_participants
# ------------------------------------------------------------



# Dump of table redcap_surveys_pdf_archive
# ------------------------------------------------------------



# Dump of table redcap_surveys_phone_codes
# ------------------------------------------------------------



# Dump of table redcap_surveys_queue
# ------------------------------------------------------------



# Dump of table redcap_surveys_queue_hashes
# ------------------------------------------------------------



# Dump of table redcap_surveys_response
# ------------------------------------------------------------



# Dump of table redcap_surveys_scheduler
# ------------------------------------------------------------



# Dump of table redcap_surveys_scheduler_queue
# ------------------------------------------------------------



# Dump of table redcap_surveys_short_codes
# ------------------------------------------------------------



# Dump of table redcap_surveys_themes
# ------------------------------------------------------------

LOCK TABLES `redcap_surveys_themes` WRITE;
/*!40000 ALTER TABLE `redcap_surveys_themes` DISABLE KEYS */;

INSERT INTO `redcap_surveys_themes` (`theme_id`, `theme_name`, `ui_id`, `theme_text_buttons`, `theme_bg_page`, `theme_text_title`, `theme_bg_title`, `theme_text_sectionheader`, `theme_bg_sectionheader`, `theme_text_question`, `theme_bg_question`)
VALUES
	(1,'Flat White',NULL,'000000','eeeeee','000000','FFFFFF','FFFFFF','444444','000000','FFFFFF'),
	(2,'Slate and Khaki',NULL,'000000','EBE8D9','000000','c5d5cb','FFFFFF','909A94','000000','f3f3f3'),
	(3,'Colorful Pastel',NULL,'000','f1fafc','274e13','e9f1e3','660000','F6C2C2','660000','f7f8d7'),
	(4,'Blue Skies',NULL,'0C74A9','cfe2f3','0b5394','FFFFFF','FFFFFF','0b5394','0b5394','ffffff'),
	(5,'Cappucino',NULL,'7d4627','783f04','7d4627','fff','FFFFFF','b18b64','783f04','fce5cd'),
	(6,'Red Brick',NULL,'000000','660000','ffffff','990000','ffffff','000000','000000','ffffff'),
	(7,'Grayscale',NULL,'30231d','000000','ffffff','666666','ffffff','444444','000000','eeeeee'),
	(8,'Plum',NULL,'000000','351c75','000000','d9d2e9','FFFFFF','8e7cc3','000000','d9d2e9'),
	(9,'Forest Green',NULL,'7f6000','274e13','ffffff','6aa84f','ffffff','38761d','7f6000','d9ead3'),
	(10,'Sunny Day',NULL,'B2400E','FFFF80','B2400E','FFFFFF','FFFFFF','f67719','b85b16','FEFFD3');

/*!40000 ALTER TABLE `redcap_surveys_themes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_todo_list
# ------------------------------------------------------------



# Dump of table redcap_two_factor_response
# ------------------------------------------------------------



# Dump of table redcap_user_allowlist
# ------------------------------------------------------------



# Dump of table redcap_user_information
# ------------------------------------------------------------

LOCK TABLES `redcap_user_information` WRITE;
/*!40000 ALTER TABLE `redcap_user_information` DISABLE KEYS */;

INSERT INTO `redcap_user_information` (`ui_id`, `username`, `user_email`, `user_email2`, `user_email3`, `user_phone`, `user_phone_sms`, `user_firstname`, `user_lastname`, `user_inst_id`, `super_user`, `account_manager`, `access_system_config`, `access_system_upgrade`, `access_external_module_install`, `admin_rights`, `access_admin_dashboards`, `user_creation`, `user_firstvisit`, `user_firstactivity`, `user_lastactivity`, `user_lastlogin`, `user_suspended_time`, `user_expiration`, `user_access_dashboard_view`, `user_access_dashboard_email_queued`, `user_sponsor`, `user_comments`, `allow_create_db`, `email_verify_code`, `email2_verify_code`, `email3_verify_code`, `datetime_format`, `number_format_decimal`, `number_format_thousands_sep`, `two_factor_auth_secret`, `display_on_email_users`, `two_factor_auth_twilio_prompt_phone`, `two_factor_auth_code_expiration`, `api_token`, `messaging_email_preference`, `messaging_email_urgent_all`, `messaging_email_ts`, `ui_state`, `api_token_auto_request`, `fhir_data_mart_create_project`)
VALUES
	(1,'site_admin','joe.user@projectredcap.org',NULL,NULL,NULL,NULL,'Joe','User',NULL,0,0,0,0,0,0,0,NULL,'2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'M/D/Y_12','.',',','63CBYWNHPKWGGPGQ',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(2,'test_admin','test_admin@test.test','','',NULL,NULL,'Test','Admin','',1,1,1,1,1,1,1,'2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-10-07 13:50:48','2020-10-07 13:50:46',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'M-D-Y_24','.','','P6T3NSJLY4EFQMBY',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(3,'test_user','test_user@test.test','','',NULL,NULL,'Test','User','',0,0,0,0,0,0,0,'2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-28 09:33:10',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'M-D-Y_24','.','','E4NET5B5SWDYRCG6',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(4,'test_user_b','test_user_b@test.test','','',NULL,NULL,'Test','User_B','',0,0,0,0,0,0,0,'2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'M-D-Y_24','.','','4TDAVAAS2C2AFEJT',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(5,'test_user_c','testy@test.test','','',NULL,NULL,'Test','User_C','',0,0,0,0,0,0,0,'2020-09-23 15:10:42','2020-09-23 15:11:07','2020-09-23 15:10:55','2020-09-23 15:11:13','2020-09-23 15:10:56',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'M-D-Y_24','.','','NC3XHQLSYXQSY7EO',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(6,'test_deleteuser','test_deleteuser@test.test','','',NULL,NULL,'Test','DeleteUser','',0,0,0,0,0,0,0,'2020-09-23 15:11:46','2020-09-23 15:12:13','2020-09-23 15:11:59','2020-09-23 15:12:20','2020-09-23 15:12:00',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'M-D-Y_24','.','','ME5FA2KWGLXCUQIR',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0);

/*!40000 ALTER TABLE `redcap_user_information` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_user_rights
# ------------------------------------------------------------

LOCK TABLES `redcap_user_rights` WRITE;
/*!40000 ALTER TABLE `redcap_user_rights` DISABLE KEYS */;

INSERT INTO `redcap_user_rights` (`project_id`, `username`, `expiration`, `role_id`, `group_id`, `lock_record`, `lock_record_multiform`, `lock_record_customize`, `data_export_tool`, `data_import_tool`, `data_comparison_tool`, `data_logging`, `file_repository`, `double_data`, `user_rights`, `data_access_groups`, `graphical`, `reports`, `design`, `calendar`, `data_entry`, `api_token`, `api_export`, `api_import`, `mobile_app`, `mobile_app_download_data`, `record_create`, `record_rename`, `record_delete`, `dts`, `participants`, `data_quality_design`, `data_quality_execute`, `data_quality_resolution`, `random_setup`, `random_dashboard`, `random_perform`, `realtime_webservice_mapping`, `realtime_webservice_adjudicate`, `external_module_config`)
VALUES
	(1,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL),
	(2,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL),
	(3,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL),
	(4,'site_admin',NULL,NULL,NULL,0,0,0,1,0,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,NULL),
	(5,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL),
	(6,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL),
	(7,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,1,1,1,0,0,NULL),
	(8,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL),
	(9,'site_admin',NULL,NULL,NULL,0,0,0,1,0,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,NULL),
	(10,'site_admin',NULL,NULL,NULL,0,0,0,1,0,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,NULL),
	(11,'site_admin',NULL,NULL,NULL,0,0,0,1,0,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,NULL),
	(12,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL),
	(13,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL);

/*!40000 ALTER TABLE `redcap_user_rights` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_user_roles
# ------------------------------------------------------------



# Dump of table redcap_validation_types
# ------------------------------------------------------------

LOCK TABLES `redcap_validation_types` WRITE;
/*!40000 ALTER TABLE `redcap_validation_types` DISABLE KEYS */;

INSERT INTO `redcap_validation_types` (`validation_name`, `validation_label`, `regex_js`, `regex_php`, `data_type`, `legacy_value`, `visible`)
VALUES
	('alpha_only','Letters only','/^[a-z]+$/i','/^[a-z]+$/i','text',NULL,0),
	('date_dmy','Date (D-M-Y)','/^((29([-\\/])02\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1\\d|2[0-8])([-\\/])(0[1-9]|1[012]))|((29|30)([-\\/])(0[13-9]|1[012]))|(31([-\\/])(0[13578]|1[02])))(\\11|\\15|\\18)\\d{4}))$/','/^((29([-\\/])02\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1\\d|2[0-8])([-\\/])(0[1-9]|1[012]))|((29|30)([-\\/])(0[13-9]|1[012]))|(31([-\\/])(0[13578]|1[02])))(\\11|\\15|\\18)\\d{4}))$/','date',NULL,1),
	('date_mdy','Date (M-D-Y)','/^((02([-\\/])29\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1[012])([-\\/])(0[1-9]|1\\d|2[0-8]))|((0[13-9]|1[012])([-\\/])(29|30))|((0[13578]|1[02])([-\\/])31))(\\11|\\15|\\19)\\d{4}))$/','/^((02([-\\/])29\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1[012])([-\\/])(0[1-9]|1\\d|2[0-8]))|((0[13-9]|1[012])([-\\/])(29|30))|((0[13578]|1[02])([-\\/])31))(\\11|\\15|\\19)\\d{4}))$/','date',NULL,1),
	('date_ymd','Date (Y-M-D)','/^(((\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00))([-\\/])02(\\6)29)|(\\d{4}([-\\/])((0[1-9]|1[012])(\\9)(0[1-9]|1\\d|2[0-8])|((0[13-9]|1[012])(\\9)(29|30))|((0[13578]|1[02])(\\9)31))))$/','/^(((\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00))([-\\/])02(\\6)29)|(\\d{4}([-\\/])((0[1-9]|1[012])(\\9)(0[1-9]|1\\d|2[0-8])|((0[13-9]|1[012])(\\9)(29|30))|((0[13578]|1[02])(\\9)31))))$/','date','date',1),
	('datetime_dmy','Datetime (D-M-Y H:M)','/^((29([-\\/])02\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1\\d|2[0-8])([-\\/])(0[1-9]|1[012]))|((29|30)([-\\/])(0[13-9]|1[012]))|(31([-\\/])(0[13578]|1[02])))(\\11|\\15|\\18)\\d{4})) (\\d|[0-1]\\d|[2][0-3]):[0-5]\\d$/','/^((29([-\\/])02\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1\\d|2[0-8])([-\\/])(0[1-9]|1[012]))|((29|30)([-\\/])(0[13-9]|1[012]))|(31([-\\/])(0[13578]|1[02])))(\\11|\\15|\\18)\\d{4})) (\\d|[0-1]\\d|[2][0-3]):[0-5]\\d$/','datetime',NULL,1),
	('datetime_mdy','Datetime (M-D-Y H:M)','/^((02([-\\/])29\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1[012])([-\\/])(0[1-9]|1\\d|2[0-8]))|((0[13-9]|1[012])([-\\/])(29|30))|((0[13578]|1[02])([-\\/])31))(\\11|\\15|\\19)\\d{4})) (\\d|[0-1]\\d|[2][0-3]):[0-5]\\d$/','/^((02([-\\/])29\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1[012])([-\\/])(0[1-9]|1\\d|2[0-8]))|((0[13-9]|1[012])([-\\/])(29|30))|((0[13578]|1[02])([-\\/])31))(\\11|\\15|\\19)\\d{4})) (\\d|[0-1]\\d|[2][0-3]):[0-5]\\d$/','datetime',NULL,1),
	('datetime_seconds_dmy','Datetime w/ seconds (D-M-Y H:M:S)','/^((29([-\\/])02\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1\\d|2[0-8])([-\\/])(0[1-9]|1[012]))|((29|30)([-\\/])(0[13-9]|1[012]))|(31([-\\/])(0[13578]|1[02])))(\\11|\\15|\\18)\\d{4})) (\\d|[0-1]\\d|[2][0-3])(:[0-5]\\d){2}$/','/^((29([-\\/])02\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1\\d|2[0-8])([-\\/])(0[1-9]|1[012]))|((29|30)([-\\/])(0[13-9]|1[012]))|(31([-\\/])(0[13578]|1[02])))(\\11|\\15|\\18)\\d{4})) (\\d|[0-1]\\d|[2][0-3])(:[0-5]\\d){2}$/','datetime_seconds',NULL,1),
	('datetime_seconds_mdy','Datetime w/ seconds (M-D-Y H:M:S)','/^((02([-\\/])29\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1[012])([-\\/])(0[1-9]|1\\d|2[0-8]))|((0[13-9]|1[012])([-\\/])(29|30))|((0[13578]|1[02])([-\\/])31))(\\11|\\15|\\19)\\d{4})) (\\d|[0-1]\\d|[2][0-3])(:[0-5]\\d){2}$/','/^((02([-\\/])29\\3(\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00)))|((((0[1-9]|1[012])([-\\/])(0[1-9]|1\\d|2[0-8]))|((0[13-9]|1[012])([-\\/])(29|30))|((0[13578]|1[02])([-\\/])31))(\\11|\\15|\\19)\\d{4})) (\\d|[0-1]\\d|[2][0-3])(:[0-5]\\d){2}$/','datetime_seconds',NULL,1),
	('datetime_seconds_ymd','Datetime w/ seconds (Y-M-D H:M:S)','/^(((\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00))([-\\/])02(\\6)29)|(\\d{4}([-\\/])((0[1-9]|1[012])(\\9)(0[1-9]|1\\d|2[0-8])|((0[13-9]|1[012])(\\9)(29|30))|((0[13578]|1[02])(\\9)31)))) (\\d|[0-1]\\d|[2][0-3])(:[0-5]\\d){2}$/','/^(((\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00))([-\\/])02(\\6)29)|(\\d{4}([-\\/])((0[1-9]|1[012])(\\9)(0[1-9]|1\\d|2[0-8])|((0[13-9]|1[012])(\\9)(29|30))|((0[13578]|1[02])(\\9)31)))) (\\d|[0-1]\\d|[2][0-3])(:[0-5]\\d){2}$/','datetime_seconds','datetime_seconds',1),
	('datetime_ymd','Datetime (Y-M-D H:M)','/^(((\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00))([-\\/])02(\\6)29)|(\\d{4}([-\\/])((0[1-9]|1[012])(\\9)(0[1-9]|1\\d|2[0-8])|((0[13-9]|1[012])(\\9)(29|30))|((0[13578]|1[02])(\\9)31)))) (\\d|[0-1]\\d|[2][0-3]):[0-5]\\d$/','/^(((\\d{2}([13579][26]|[2468][048]|04|08)|(1600|2[048]00))([-\\/])02(\\6)29)|(\\d{4}([-\\/])((0[1-9]|1[012])(\\9)(0[1-9]|1\\d|2[0-8])|((0[13-9]|1[012])(\\9)(29|30))|((0[13578]|1[02])(\\9)31)))) (\\d|[0-1]\\d|[2][0-3]):[0-5]\\d$/','datetime','datetime',1),
	('email','Email','/^(?!\\.)((?!.*\\.{2})[a-zA-Z0-9\\u0080-\\u02AF\\u0300-\\u07FF\\u0900-\\u18AF\\u1900-\\u1A1F\\u1B00-\\u1B7F\\u1D00-\\u1FFF\\u20D0-\\u214F\\u2C00-\\u2DDF\\u2F00-\\u2FDF\\u2FF0-\\u2FFF\\u3040-\\u319F\\u31C0-\\uA4CF\\uA700-\\uA71F\\uA800-\\uA82F\\uA840-\\uA87F\\uAC00-\\uD7AF\\uF900-\\uFAFF!#$%&\'*+\\-/=?^_`{|}~\\d]+)(\\.[a-zA-Z0-9\\u0080-\\u02AF\\u0300-\\u07FF\\u0900-\\u18AF\\u1900-\\u1A1F\\u1B00-\\u1B7F\\u1D00-\\u1FFF\\u20D0-\\u214F\\u2C00-\\u2DDF\\u2F00-\\u2FDF\\u2FF0-\\u2FFF\\u3040-\\u319F\\u31C0-\\uA4CF\\uA700-\\uA71F\\uA800-\\uA82F\\uA840-\\uA87F\\uAC00-\\uD7AF\\uF900-\\uFAFF!#$%&\'*+\\-/=?^_`{|}~\\d]+)*@(?!\\.)([a-zA-Z0-9\\u0080-\\u02AF\\u0300-\\u07FF\\u0900-\\u18AF\\u1900-\\u1A1F\\u1B00-\\u1B7F\\u1D00-\\u1FFF\\u20D0-\\u214F\\u2C00-\\u2DDF\\u2F00-\\u2FDF\\u2FF0-\\u2FFF\\u3040-\\u319F\\u31C0-\\uA4CF\\uA700-\\uA71F\\uA800-\\uA82F\\uA840-\\uA87F\\uAC00-\\uD7AF\\uF900-\\uFAFF\\-\\.\\d]+)((\\.([a-zA-Z\\u0080-\\u02AF\\u0300-\\u07FF\\u0900-\\u18AF\\u1900-\\u1A1F\\u1B00-\\u1B7F\\u1D00-\\u1FFF\\u20D0-\\u214F\\u2C00-\\u2DDF\\u2F00-\\u2FDF\\u2FF0-\\u2FFF\\u3040-\\u319F\\u31C0-\\uA4CF\\uA700-\\uA71F\\uA800-\\uA82F\\uA840-\\uA87F\\uAC00-\\uD7AF\\uF900-\\uFAFF]){2,63})+)$/i','/^(?!\\.)((?!.*\\.{2})[a-zA-Z0-9\\x{0080}-\\x{02AF}\\x{0300}-\\x{07FF}\\x{0900}-\\x{18AF}\\x{1900}-\\x{1A1F}\\x{1B00}-\\x{1B7F}\\x{1D00}-\\x{1FFF}\\x{20D0}-\\x{214F}\\x{2C00}-\\x{2DDF}\\x{2F00}-\\x{2FDF}\\x{2FF0}-\\x{2FFF}\\x{3040}-\\x{319F}\\x{31C0}-\\x{A4CF}\\x{A700}-\\x{A71F}\\x{A800}-\\x{A82F}\\x{A840}-\\x{A87F}\\x{AC00}-\\x{D7AF}\\x{F900}-\\x{FAFF}\\.!#$%&\'*+\\-\\/=?^_`{|}~\\-\\d]+)(\\.[a-zA-Z0-9\\x{0080}-\\x{02AF}\\x{0300}-\\x{07FF}\\x{0900}-\\x{18AF}\\x{1900}-\\x{1A1F}\\x{1B00}-\\x{1B7F}\\x{1D00}-\\x{1FFF}\\x{20D0}-\\x{214F}\\x{2C00}-\\x{2DDF}\\x{2F00}-\\x{2FDF}\\x{2FF0}-\\x{2FFF}\\x{3040}-\\x{319F}\\x{31C0}-\\x{A4CF}\\x{A700}-\\x{A71F}\\x{A800}-\\x{A82F}\\x{A840}-\\x{A87F}\\x{AC00}-\\x{D7AF}\\x{F900}-\\x{FAFF}\\.!#$%&\'*+\\-\\/=?^_`{|}~\\-\\d]+)*@(?!\\.)([a-zA-Z0-9\\x{0080}-\\x{02AF}\\x{0300}-\\x{07FF}\\x{0900}-\\x{18AF}\\x{1900}-\\x{1A1F}\\x{1B00}-\\x{1B7F}\\x{1D00}-\\x{1FFF}\\x{20D0}-\\x{214F}\\x{2C00}-\\x{2DDF}\\x{2F00}-\\x{2FDF}\\x{2FF0}-\\x{2FFF}\\x{3040}-\\x{319F}\\x{31C0}-\\x{A4CF}\\x{A700}-\\x{A71F}\\x{A800}-\\x{A82F}\\x{A840}-\\x{A87F}\\x{AC00}-\\x{D7AF}\\x{F900}-\\x{FAFF}\\-\\.\\d]+)((\\.([a-zA-Z\\x{0080}-\\x{02AF}\\x{0300}-\\x{07FF}\\x{0900}-\\x{18AF}\\x{1900}-\\x{1A1F}\\x{1B00}-\\x{1B7F}\\x{1D00}-\\x{1FFF}\\x{20D0}-\\x{214F}\\x{2C00}-\\x{2DDF}\\x{2F00}-\\x{2FDF}\\x{2FF0}-\\x{2FFF}\\x{3040}-\\x{319F}\\x{31C0}-\\x{A4CF}\\x{A700}-\\x{A71F}\\x{A800}-\\x{A82F}\\x{A840}-\\x{A87F}\\x{AC00}-\\x{D7AF}\\x{F900}-\\x{FAFF}]){2,63})+)$/u','email',NULL,1),
	('integer','Integer','/^[-+]?\\b\\d+\\b$/','/^[-+]?\\b\\d+\\b$/','integer','int',1),
	('mrn_10d','MRN (10 digits)','/^\\d{10}$/','/^\\d{10}$/','mrn',NULL,0),
	('mrn_generic','MRN (generic)','/^[a-z0-9-_]+$/i','/^[a-z0-9-_]+$/i','mrn',NULL,0),
	('number','Number','/^[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?$/','/^[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?$/','number','float',1),
	('number_1dp','Number (1 decimal place)','/^-?\\d+\\.\\d$/','/^-?\\d+\\.\\d$/','number',NULL,0),
	('number_1dp_comma_decimal','Number (1 decimal place - comma as decimal)','/^-?\\d+,\\d$/','/^-?\\d+,\\d$/','number_comma_decimal',NULL,0),
	('number_2dp','Number (2 decimal places)','/^-?\\d+\\.\\d{2}$/','/^-?\\d+\\.\\d{2}$/','number',NULL,0),
	('number_2dp_comma_decimal','Number (2 decimal places - comma as decimal)','/^-?\\d+,\\d{2}$/','/^-?\\d+,\\d{2}$/','number_comma_decimal',NULL,0),
	('number_3dp','Number (3 decimal places)','/^-?\\d+\\.\\d{3}$/','/^-?\\d+\\.\\d{3}$/','number',NULL,0),
	('number_3dp_comma_decimal','Number (3 decimal places - comma as decimal)','/^-?\\d+,\\d{3}$/','/^-?\\d+,\\d{3}$/','number_comma_decimal',NULL,0),
	('number_4dp','Number (4 decimal places)','/^-?\\d+\\.\\d{4}$/','/^-?\\d+\\.\\d{4}$/','number',NULL,0),
	('number_4dp_comma_decimal','Number (4 decimal places - comma as decimal)','/^-?\\d+,\\d{4}$/','/^-?\\d+,\\d{4}$/','number_comma_decimal',NULL,0),
	('number_comma_decimal','Number (comma as decimal)','/^[-+]?[0-9]*,?[0-9]+([eE][-+]?[0-9]+)?$/','/^[-+]?[0-9]*,?[0-9]+([eE][-+]?[0-9]+)?$/','number_comma_decimal',NULL,0),
	('phone','Phone (North America)','/^(?:\\(?([2-9]0[1-9]|[2-9]1[02-9]|[2-9][2-9][0-9])\\)?)\\s*(?:[.-]\\s*)?([2-9]\\d{2})\\s*(?:[.-]\\s*)?(\\d{4})(?:\\s*(?:#|x\\.?|ext\\.?|extension)\\s*(\\d+))?$/','/^(?:\\(?([2-9]0[1-9]|[2-9]1[02-9]|[2-9][2-9][0-9])\\)?)\\s*(?:[.-]\\s*)?([2-9]\\d{2})\\s*(?:[.-]\\s*)?(\\d{4})(?:\\s*(?:#|x\\.?|ext\\.?|extension)\\s*(\\d+))?$/','phone',NULL,1),
	('phone_australia','Phone (Australia)','/^(\\(0[2-8]\\)|0[2-8])\\s*\\d{4}\\s*\\d{4}$/','/^(\\(0[2-8]\\)|0[2-8])\\s*\\d{4}\\s*\\d{4}$/','phone',NULL,0),
	('postalcode_australia','Postal Code (Australia)','/^\\d{4}$/','/^\\d{4}$/','postal_code',NULL,0),
	('postalcode_canada','Postal Code (Canada)','/^[ABCEGHJKLMNPRSTVXY]{1}\\d{1}[A-Z]{1}\\s*\\d{1}[A-Z]{1}\\d{1}$/i','/^[ABCEGHJKLMNPRSTVXY]{1}\\d{1}[A-Z]{1}\\s*\\d{1}[A-Z]{1}\\d{1}$/i','postal_code',NULL,0),
	('postalcode_french','Code Postal 5 caracteres (France)','/^((0?[1-9])|([1-8][0-9])|(9[0-8]))[0-9]{3}$/','/^((0?[1-9])|([1-8][0-9])|(9[0-8]))[0-9]{3}$/','postal_code',NULL,0),
	('postalcode_germany','Postal Code (Germany)','/^(0[1-9]|[1-9]\\d)\\d{3}$/','/^(0[1-9]|[1-9]\\d)\\d{3}$/','postal_code',NULL,0),
	('ssn','Social Security Number (U.S.)','/^\\d{3}-\\d\\d-\\d{4}$/','/^\\d{3}-\\d\\d-\\d{4}$/','ssn',NULL,0),
	('time','Time (HH:MM)','/^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])$/','/^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])$/','time',NULL,1),
	('time_mm_ss','Time (MM:SS)','/^[0-5]\\d:[0-5]\\d$/','/^[0-5]\\d:[0-5]\\d$/','time',NULL,0),
	('vmrn','Vanderbilt MRN','/^[0-9]{4,9}$/','/^[0-9]{4,9}$/','mrn',NULL,0),
	('zipcode','Zipcode (U.S.)','/^\\d{5}(-\\d{4})?$/','/^\\d{5}(-\\d{4})?$/','postal_code',NULL,1);

/*!40000 ALTER TABLE `redcap_validation_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_web_service_cache
# ------------------------------------------------------------




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

COMMIT;
