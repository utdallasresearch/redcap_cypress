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
	('auto_prod_changes','1'),
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
	('enable_edit_prod_events','1'),
	('enable_edit_prod_repeating_setup','1'),
	('enable_edit_survey_response','1'),
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
	('redcap_base_url','http://localhost/'),
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
	('superusers_only_create_project','0'),
	('superusers_only_move_to_prod','0'),
	('survey_pid_create_project',''),
	('survey_pid_mark_completed',''),
	('survey_pid_move_to_analysis_status',''),
	('survey_pid_move_to_prod_status',''),
	('suspend_users_inactive_days','180'),
	('suspend_users_inactive_send_email','1'),
	('suspend_users_inactive_type',''),
	('system_offline','0'),
	('system_offline_message',''),
	('temp_files_last_delete','2020-10-20 15:10:30'),
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

LOCK TABLES `redcap_data` WRITE;
/*!40000 ALTER TABLE `redcap_data` DISABLE KEYS */;

INSERT INTO `redcap_data` (`project_id`, `event_id`, `record`, `field_name`, `value`, `instance`)
VALUES
	(14,41,'1','ptname','Joe Test',NULL),
	(14,41,'1','record_id','1',NULL),
	(14,41,'1','my_first_instrument_complete','2',NULL),
	(16,46,'1','ptname','Joe Test',NULL),
	(16,46,'1','record_id','1',NULL),
	(16,46,'1','my_first_instrument_complete','2',NULL),
	(16,46,'2','text2','Test entry',NULL),
	(16,46,'2','ptname','Jane Tester',NULL),
	(16,46,'2','my_first_instrument_complete','2',NULL),
	(16,46,'2','record_id','2',NULL);

/*!40000 ALTER TABLE `redcap_data` ENABLE KEYS */;
UNLOCK TABLES;


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
	(14,13,1,'Arm 1'),
	(15,14,1,'Arm 1'),
	(16,15,1,'Arm 1'),
	(17,14,2,'Arm Two'),
	(18,14,3,'Arm 3'),
	(19,16,1,'Arm 1'),
	(20,16,2,'Arm Two'),
	(21,16,3,'Arm 3');

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
	(37,'completion_data'),
	(41,'my_first_instrument'),
	(41,'my_first_instrument_2'),
	(42,'my_first_instrument_2'),
	(43,'my_first_instrument'),
	(46,'my_first_instrument'),
	(46,'my_first_instrument_2'),
	(47,'my_first_instrument');

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
	(40,14,0,0,0,'Event 1',NULL,NULL),
	(41,15,1,0,0,'Event 1',NULL,NULL),
	(42,16,0,0,0,'Event 1',NULL,NULL),
	(43,15,2,0,0,'Event 2',NULL,NULL),
	(44,17,1,0,0,'Event 1',NULL,NULL),
	(45,15,3,0,0,'Event Three',NULL,NULL),
	(46,19,1,0,0,'Event 1',NULL,NULL),
	(47,19,2,0,0,'Event 2',NULL,NULL),
	(48,19,3,0,0,'Event Three',NULL,NULL),
	(49,20,1,0,0,'Event 1',NULL,NULL);

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
	(39,'visits','[weight]kg ([visit_date])'),
	(41,'my_first_instrument_2',NULL),
	(43,NULL,NULL),
	(46,'my_first_instrument_2',NULL),
	(47,'',NULL);

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
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:36'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:37'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:37'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:41'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:42'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:44'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:46'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:49'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:49'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:50'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:50'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:52'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:52'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:52'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:57'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:58'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:58'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:54:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:00'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:01'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:01'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:01'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:05'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:08'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:08'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:09'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:09'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:10'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:12'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:12'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:13'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:14'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:15'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:17'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:18'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:18'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:19'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:19'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:20'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:24'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:24'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:26'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:26'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:27'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:28'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:28'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:29'),
	('860df6b692db0154f5c00940de593532','2020-09-28 10:55:30'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:31'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:31'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:32'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:32'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:33'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:34'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:36'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:37'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:41'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:42'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:42'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:42'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:43'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:45'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:45'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:46'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:49'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:49'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:50'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:51'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:52'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:52'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:53'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:54'),
	('50a0c76fc9003696aec9ca919ffd9095','2020-09-28 10:55:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 10:55:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 12:03:30'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 12:03:31'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 12:03:32'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:32'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:34'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:35'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:35'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:35'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:36'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:37'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:39'),
	('860df6b692db0154f5c00940de593532','2020-09-28 12:03:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 13:07:25'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 13:07:26'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 13:07:27'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:28'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:28'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:29'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:30'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:31'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:32'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:33'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:34'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:35'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:36'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:37'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:38'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:07:39'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:08:31'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:08:32'),
	('860df6b692db0154f5c00940de593532','2020-09-28 13:08:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 16:45:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 16:45:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-28 16:45:05'),
	('860df6b692db0154f5c00940de593532','2020-09-28 16:45:06'),
	('860df6b692db0154f5c00940de593532','2020-09-28 16:45:07'),
	('860df6b692db0154f5c00940de593532','2020-09-28 16:45:09'),
	('860df6b692db0154f5c00940de593532','2020-09-28 16:45:12'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:11:34'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:11:34'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:11:35'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:36'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:37'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:38'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:39'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:40'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:41'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:43'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:44'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:47'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:50'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:51'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:54'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:56'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:11:58'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:11:58'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:11:59'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:01'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:12:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:12:03'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:05'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:07'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:07'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:12:08'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-09-29 15:12:08'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:10'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:11'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:20'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:26'),
	('860df6b692db0154f5c00940de593532','2020-09-29 15:12:27'),
	('860df6b692db0154f5c00940de593532','2020-10-02 10:35:12'),
	('860df6b692db0154f5c00940de593532','2020-10-02 10:35:12'),
	('860df6b692db0154f5c00940de593532','2020-10-02 10:35:13'),
	('860df6b692db0154f5c00940de593532','2020-10-02 10:35:14'),
	('860df6b692db0154f5c00940de593532','2020-10-02 10:35:14'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 10:35:15'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 10:35:15'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 10:35:15'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 10:35:16'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 10:35:16'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 10:35:16'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 10:35:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 11:51:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 11:51:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 11:51:41'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:51:42'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:51:43'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:51:45'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:51:46'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:51:48'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:51:48'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:51:49'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:52:03'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:52:04'),
	('860df6b692db0154f5c00940de593532','2020-10-02 11:52:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 16:47:12'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 16:47:12'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 16:47:12'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 16:47:13'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:47:14'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:47:15'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:47:16'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:47:16'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:47:17'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:48:00'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:48:00'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 16:59:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 16:59:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 16:59:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-02 16:59:17'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:59:18'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:59:19'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:59:20'),
	('860df6b692db0154f5c00940de593532','2020-10-02 16:59:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-05 12:08:37'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-05 12:08:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-05 12:08:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-05 12:08:38'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:08:39'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:08:39'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:08:40'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:08:41'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:08:41'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:08:41'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:08:42'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:08:44'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-05 12:34:30'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-05 12:34:30'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-05 12:34:30'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-05 12:34:31'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:31'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:32'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:33'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:34'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:37'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:37'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:37'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:38'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:39'),
	('860df6b692db0154f5c00940de593532','2020-10-05 12:34:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:14:43'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:14:44'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:14:44'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:14:45'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:14:45'),
	('860df6b692db0154f5c00940de593532','2020-10-06 12:14:46'),
	('860df6b692db0154f5c00940de593532','2020-10-06 12:14:47'),
	('860df6b692db0154f5c00940de593532','2020-10-06 12:14:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:14:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:26:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:26:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:26:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 12:26:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:17:41'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:17:41'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:17:41'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:17:41'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:42'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:43'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:44'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:45'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:45'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:46'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:49'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:49'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:49'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:49'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:51'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:51'),
	('860df6b692db0154f5c00940de593532','2020-10-06 15:17:52'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:45:32'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:45:32'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:45:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:45:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 15:48:57'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 16:12:13'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 16:12:13'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 16:12:14'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-06 16:12:14'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 14:42:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 14:42:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 14:42:23'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 14:42:23'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 14:42:24'),
	('860df6b692db0154f5c00940de593532','2020-10-09 14:42:24'),
	('860df6b692db0154f5c00940de593532','2020-10-09 14:42:25'),
	('860df6b692db0154f5c00940de593532','2020-10-09 14:42:26'),
	('860df6b692db0154f5c00940de593532','2020-10-09 14:42:27'),
	('860df6b692db0154f5c00940de593532','2020-10-09 14:42:27'),
	('860df6b692db0154f5c00940de593532','2020-10-09 14:42:28'),
	('860df6b692db0154f5c00940de593532','2020-10-09 14:42:29'),
	('860df6b692db0154f5c00940de593532','2020-10-09 14:42:29'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 15:33:31'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 15:33:31'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 15:33:31'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-09 15:33:32'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 12:12:18'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 12:12:18'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 12:12:18'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 12:12:18'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 12:12:18'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:19'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:20'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:20'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:21'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:22'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:22'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:23'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:24'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:25'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:27'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:27'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:28'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:29'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:29'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:30'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:31'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:32'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:32'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:34'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:34'),
	('860df6b692db0154f5c00940de593532','2020-10-12 12:12:34'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:44:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:44:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:44:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:44:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:44:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:44:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:45:10'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:45:10'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:45:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:45:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:45:23'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:45:27'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:45:30'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:45:31'),
	('860df6b692db0154f5c00940de593532','2020-10-12 15:45:41'),
	('860df6b692db0154f5c00940de593532','2020-10-12 15:45:44'),
	('860df6b692db0154f5c00940de593532','2020-10-12 15:45:45'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:46:37'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:46:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:46:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:46:45'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:47:13'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:49:43'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:49:46'),
	('860df6b692db0154f5c00940de593532','2020-10-12 15:49:58'),
	('860df6b692db0154f5c00940de593532','2020-10-12 15:50:00'),
	('860df6b692db0154f5c00940de593532','2020-10-12 15:50:05'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-12 15:50:43'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:50:43'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:50:44'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:50:44'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:50:55'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:51:13'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:52:52'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:53:18'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:53:19'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:53:30'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:53:39'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:53:47'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:54:10'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:54:11'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:54:11'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:54:11'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:54:38'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:54:38'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:54:53'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:54:55'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:55:20'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:55:48'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-12 15:55:49'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 10:11:57'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 10:11:57'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 10:11:57'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 10:11:57'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 10:11:58'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 10:11:59'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 10:12:00'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 10:12:40'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 10:12:40'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 10:12:45'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 10:12:45'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 10:12:51'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 10:13:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 11:07:51'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 11:07:51'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 11:07:51'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 11:07:51'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 11:07:52'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 11:07:53'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 11:07:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:38:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:38:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:38:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:38:37'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:38:38'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:38:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:40:19'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:40:19'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:40:19'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:40:19'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:40:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:41:49'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:41:49'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:41:49'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:41:51'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:41:53'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:41:54'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:41:55'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:41:56'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:41:58'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:43:36'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:43:36'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:43:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:43:38'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:43:39'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:43:40'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:43:41'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:45:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:45:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:45:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:45:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:45:21'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:45:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:47:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:47:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:47:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:47:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:47:22'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:47:23'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:47:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:47:25'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:47:26'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:47:27'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:49:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:49:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:49:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:49:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 15:49:22'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:49:22'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:49:23'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:49:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:49:25'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 15:49:27'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:33:27'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:33:27'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:33:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:33:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:33:28'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:33:29'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:33:30'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:33:31'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:33:33'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:33:34'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:42:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:42:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:42:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:42:40'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:42:41'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:42:42'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:42:43'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:42:44'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:42:45'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:42:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:44:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:44:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:44:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:44:23'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-15 17:44:23'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:44:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:44:25'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:44:26'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:44:27'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-15 17:44:29'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:00:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:00:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:00:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:00:29'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:00:30'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:00:31'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:00:33'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:00:34'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:00:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:00:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:05:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:05:54'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:05:58'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:06:13'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:09:14'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:09:25'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:09:42'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:22:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:22:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:22:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:22:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:22:56'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:22:57'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:22:58'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:22:59'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:23:00'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:23:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:29:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:29:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:29:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:29:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:29:55'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:29:56'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:29:56'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:29:58'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:29:59'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:30:01'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:39:19'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:39:19'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:39:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:39:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:39:21'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:39:21'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:39:22'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:39:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:39:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:39:26'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:40:04'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:40:04'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:40:09'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:40:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:49:09'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 11:54:29'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:55:21'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:55:55'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:55:59'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:57:08'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:57:14'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:57:20'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:57:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:57:51'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:58:33'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:58:41'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:58:42'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:58:50'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:59:02'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:59:19'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:59:25'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:59:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:59:40'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 11:59:43'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 12:03:41'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 12:05:12'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 12:05:16'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 12:05:23'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 12:05:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:37:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:37:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:37:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:37:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:37:49'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:37:49'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:37:51'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:37:52'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:37:52'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:37:54'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:37:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:45:32'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:45:32'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:45:32'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:45:32'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:45:33'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:45:34'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:45:34'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:45:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:45:37'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:45:39'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:51:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:51:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:51:23'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:51:23'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 14:51:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:51:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:51:25'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:51:26'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 14:51:27'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:24:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:24:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:24:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:24:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:24:05'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:24:06'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:24:07'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:24:08'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:24:09'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:34:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:34:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:34:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:34:56'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:34:57'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:34:58'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:34:59'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:35:00'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:35:01'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:35:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:55:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:55:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:55:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:55:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 15:55:18'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:55:18'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:55:19'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:55:20'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 15:55:23'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:10:01'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:10:01'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:10:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:10:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:10:03'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 16:10:03'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 16:10:04'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 16:10:05'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 16:10:06'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:18:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:18:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:18:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:18:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-16 16:18:18'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 16:18:19'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 16:18:19'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 16:18:21'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-16 16:18:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:33:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:33:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:33:21'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:33:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:33:22'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:33:23'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:33:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:33:26'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:33:27'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:33:29'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:33:29'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:48:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:48:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:48:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:48:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:48:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:48:37'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:48:38'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:48:39'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:48:40'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:48:42'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:48:43'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:48:43'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:56:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:56:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:56:22'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:56:23'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 11:56:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:56:24'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:56:25'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:56:27'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:56:28'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:56:30'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:56:31'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 11:56:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:13:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:13:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:13:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:13:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:13:29'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:13:30'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:13:31'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:13:32'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:13:33'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:13:35'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:13:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:13:36'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:26:02'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:26:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:26:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:26:03'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 15:26:04'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:26:04'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:26:05'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:26:06'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 15:26:07'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:13:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:13:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:13:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:13:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:13:49'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:13:49'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:13:50'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:13:50'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:13:51'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:13:51'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:13:53'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:13:54'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:13:55'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:35:16'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:35:16'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:35:16'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:35:16'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-19 16:35:17'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:35:18'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:35:18'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:35:18'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:35:19'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-19 16:35:20'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 10:05:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 10:05:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 10:05:47'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 10:05:48'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 10:05:48'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 10:05:49'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 10:05:50'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 10:05:51'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 10:05:52'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 12:28:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 12:28:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 12:28:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 12:28:34'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 12:28:34'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 12:28:35'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 12:28:35'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 12:28:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 12:28:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 12:28:38'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:31:12'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:31:13'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:31:13'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:31:13'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:31:14'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:31:14'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:31:15'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:31:17'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:31:17'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:46:34'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:46:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:46:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:46:35'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:46:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:46:36'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:46:37'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:46:37'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:46:38'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:46:39'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:46:39'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:47:26'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:47:26'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:47:31'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:47:34'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:47:41'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:47:45'),
	('b406a4ff0d2b2d242021861e1c5cded4','2020-10-20 13:47:54'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:47:58'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:48:04'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:57:36'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 13:57:36'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:57:48'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:57:52'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:11'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:16'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:16'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:22'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:22'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:31'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:33'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:40'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:48'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:58:48'),
	('860df6b692db0154f5c00940de593532','2020-10-20 13:59:07'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:10:26'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:10:26'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:10:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:10:28'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:10:29'),
	('860df6b692db0154f5c00940de593532','2020-10-20 15:10:30'),
	('860df6b692db0154f5c00940de593532','2020-10-20 15:10:31'),
	('860df6b692db0154f5c00940de593532','2020-10-20 15:10:32'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:19:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:19:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:19:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:19:33'),
	('201cb7cec29ddc46cb8e1c6d1a04b08a','2020-10-20 15:19:34'),
	('860df6b692db0154f5c00940de593532','2020-10-20 15:19:35'),
	('860df6b692db0154f5c00940de593532','2020-10-20 15:19:36');

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
	(18,0,20200928105441,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'1\' WHERE field_name = \'superusers_only_create_project\'',NULL,NULL,'superusers_only_create_project = \'1\'','Modify system configuration',0,NULL),
	(19,0,20200928105444,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'0\' WHERE field_name = \'enable_edit_survey_response\'',NULL,NULL,'enable_edit_survey_response = \'0\'','Modify system configuration',0,NULL),
	(20,0,20200928105446,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'0\' WHERE field_name = \'auto_prod_changes\';\nUPDATE redcap_config SET value = \'0\' WHERE field_name = \'enable_edit_prod_events\'',NULL,NULL,'auto_prod_changes = \'0\',\nenable_edit_prod_events = \'0\'','Modify system configuration',0,NULL),
	(21,0,20200928105449,'test_admin','172.18.0.1','ControlCenter/create_user.php','MANAGE','redcap_user_information','UPDATE redcap_user_information SET user_email = \'test_user@test.test\',user_email2 = \'\',user_email3 = \'\',user_firstname = \'Test\',user_lastname = \'User\',user_inst_id = \'\',user_expiration = NULL,user_sponsor = NULL,user_comments = NULL,allow_create_db = 1,display_on_email_users = 1,user_phone = NULL,user_phone_sms = NULL,messaging_email_preference = \'4_HOURS\',messaging_email_urgent_all = \'1\',api_token_auto_request = 0,fhir_data_mart_create_project = 0 WHERE ui_id=3','test_user',NULL,'username = \'test_user\'','Edit user',0,NULL),
	(22,0,20200928105501,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'0\' WHERE field_name = \'superusers_only_create_project\'',NULL,NULL,'superusers_only_create_project = \'0\'','Modify system configuration',0,NULL),
	(23,0,20200928105539,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'0\' WHERE field_name = \'superusers_only_move_to_prod\'',NULL,NULL,'superusers_only_move_to_prod = \'0\'','Modify system configuration',0,NULL),
	(24,0,20201002103517,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'1\' WHERE field_name = \'enable_edit_survey_response\'',NULL,NULL,'enable_edit_survey_response = \'1\'','Modify system configuration',0,NULL),
	(25,0,20201006122655,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'1\' WHERE field_name = \'auto_prod_changes\'',NULL,NULL,'auto_prod_changes = \'1\'','Modify system configuration',0,NULL),
	(26,0,20201009153332,'test_admin','172.18.0.1','ControlCenter/user_settings.php','MANAGE','redcap_config','UPDATE redcap_config SET value = \'1\' WHERE field_name = \'enable_edit_prod_events\'',NULL,NULL,'enable_edit_prod_events = \'1\'','Modify system configuration',0,NULL);

/*!40000 ALTER TABLE `redcap_log_event` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_log_event2
# ------------------------------------------------------------

LOCK TABLES `redcap_log_event2` WRITE;
/*!40000 ALTER TABLE `redcap_log_event2` DISABLE KEYS */;

INSERT INTO `redcap_log_event2` (`log_event_id`, `project_id`, `ts`, `user`, `ip`, `page`, `event`, `object_type`, `sql_log`, `pk`, `event_id`, `data_values`, `description`, `legacy`, `change_reason`)
VALUES
	(1,14,20200928105508,'test_user','172.18.0.1','ProjectGeneral/create_project.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Create project',0,NULL),
	(2,14,20200928105512,'test_user','172.18.0.1','ProjectGeneral/edit_project_settings.php','MANAGE','redcap_projects','update redcap_projects set\r\n			scheduling = 0,\r\n			repeatforms = 0,\r\n			purpose = 0,\r\n			purpose_other = NULL,\r\n			project_pi_firstname = \'\',\r\n			project_pi_mi = \'\',\r\n			project_pi_lastname = \'\',\r\n			project_pi_email = \'\',\r\n			project_pi_alias = \'\',\r\n			project_pi_username = \'\',\r\n			project_irb_number = \'\',\r\n			project_grant_number = \'\',\r\n			app_title = \'FirstProject\',\r\n			surveys_enabled = 0,\r\n			randomization = 0,\r\n			project_note = \'Maecenas faucibus mollis interdum.\'\r\n			where project_id = 14','14',NULL,'project_id = 14','Modify project settings',0,NULL),
	(3,14,20200928105518,'test_user','172.18.0.1','Design/edit_field.php','MANAGE','redcap_metadata','insert into redcap_metadata (project_id, field_name, field_phi, form_name, form_menu_description, field_order,\r\n				field_units, element_preceding_header, element_type, element_label, element_enum, element_note, element_validation_type,\r\n				element_validation_min, element_validation_max, element_validation_checktype, branching_logic, field_req,\r\n				edoc_id, edoc_display_img, custom_alignment, stop_actions, question_num, grid_name, grid_rank, misc, video_url, video_display_inline)\r\n				values\r\n				(14, \'ptname\', NULL, \'my_first_instrument\', NULL, \'2\', NULL, NULL, \'text\', \'Name\', NULL, NULL, NULL, NULL, NULL, \'soft_typed\', NULL, \'0\', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, \'0\')','ptname',NULL,'field_name = \'ptname\'','Create project field',0,NULL),
	(4,14,20200928105520,'test_user','172.18.0.1','Design/copy_instrument.php','MANAGE','redcap_metadata',NULL,'my_first_instrument_2',NULL,'form_name = \'my_first_instrument_2\',\nold_form_name = \'my_first_instrument\'','Copy data collection instrument',0,NULL),
	(5,14,20200928105527,'test_user','172.18.0.1','Design/edit_field.php','MANAGE','redcap_metadata','insert into redcap_metadata (project_id, field_name, field_phi, form_name, form_menu_description, field_order,\r\n				field_units, element_preceding_header, element_type, element_label, element_enum, element_note, element_validation_type,\r\n				element_validation_min, element_validation_max, element_validation_checktype, branching_logic, field_req,\r\n				edoc_id, edoc_display_img, custom_alignment, stop_actions, question_num, grid_name, grid_rank, misc, video_url, video_display_inline)\r\n				values\r\n				(14, \'email\', NULL, \'my_first_instrument_2\', NULL, \'5\', NULL, NULL, \'text\', \'Email\', NULL, NULL, \'email\', NULL, NULL, \'soft_typed\', NULL, \'0\', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, \'0\')','email',NULL,'field_name = \'email\'','Create project field',0,NULL),
	(6,14,20200928105531,'test_user','172.18.0.1','ProjectGeneral/create_project.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Copy project as PID=15 (\"ProjectCopy\")',0,NULL),
	(7,14,20200928120334,'test_user','172.18.0.1','ProjectSetup/modify_project_setting_ajax.php','MANAGE','redcap_projects','update redcap_projects set repeatforms = \'1\' \r\n				where project_id = 14','14',NULL,'project_id = 14','Modify project settings',0,NULL),
	(8,14,20200928120336,'test_user','172.18.0.1','ProjectSetup/modify_project_setting_ajax.php','MANAGE','redcap_projects','update redcap_projects set repeatforms = \'0\' \r\n				where project_id = 14','14',NULL,'project_id = 14','Modify project settings',0,NULL),
	(9,14,20200928120339,'test_user','172.18.0.1','ProjectSetup/modify_project_setting_ajax.php','MANAGE','redcap_projects','update redcap_projects set repeatforms = \'1\' \r\n				where project_id = 14','14',NULL,'project_id = 14','Modify project settings',0,NULL),
	(10,14,20200928130731,'test_user','172.18.0.1','Design/define_events_ajax.php','MANAGE','redcap_events_metadata','update redcap_events_metadata set day_offset = (@count:=@count+1)\r\n							where arm_id = 15 order by day_offset, descrip','43',NULL,'Event: Event 2, Days Offset: 2, Offset Range: -0/+0','Create event',0,NULL),
	(11,14,20200928130734,'test_user','172.18.0.1','Design/define_events_ajax.php','MANAGE','redcap_events_arms','insert into redcap_events_arms (project_id, arm_num, arm_name) values (14, 2, \'Event 1\')','2',NULL,'Arm 2: Event 1','Create arm',0,NULL),
	(12,14,20200928130735,'test_user','172.18.0.1','Design/define_events_ajax.php','MANAGE','redcap_events_metadata','update redcap_events_metadata set day_offset = (@count:=@count+1)\r\n							where arm_id = 17 order by day_offset, descrip','44',NULL,'Event: Event 1, Arm: Event 1, Days Offset: 1, Offset Range: -0/+0','Create event',0,NULL),
	(13,14,20200928130738,'test_user','172.18.0.1','Design/designate_forms_ajax.php','MANAGE','redcap_events_forms','delete from redcap_events_forms where event_id in\r\n								(select m.event_id from redcap_events_metadata m, redcap_events_arms a where a.project_id = 14\r\n								and a.arm_num = 1 and a.arm_id = m.arm_id);\ninsert into redcap_events_forms (event_id, form_name)\r\n										 	values (\'41\', \'my_first_instrument\');\ninsert into redcap_events_forms (event_id, form_name)\r\n										 	values (\'43\', \'my_first_instrument\');\ninsert into redcap_events_forms (event_id, form_name)\r\n										 	values (\'41\', \'my_first_instrument_2\')',NULL,NULL,'arm_num = 1','Perform instrument-event mappings',0,NULL),
	(14,14,20200928164509,'test_user','172.18.0.1','RepeatInstanceController:saveSetup','MANAGE','redcap_events_repeat','delete from redcap_events_repeat where event_id in (\'41\', \'43\', \'44\');\ninsert into redcap_events_repeat (event_id, form_name, custom_repeat_form_label) \r\n											 values (41, \'my_first_instrument_2\', NULL);\ninsert into redcap_events_repeat (event_id, form_name) values (43, null)','14',NULL,NULL,'Set up repeating instruments/events',0,NULL),
	(15,14,20200929151138,'test_user','172.18.0.1','ProjectSetup/modify_project_setting_ajax.php','MANAGE','redcap_projects','update redcap_projects set surveys_enabled = \'1\' \r\n				where project_id = 14','14',NULL,'project_id = 14','Modify project settings',0,NULL),
	(16,14,20200929151143,'test_user','172.18.0.1','Surveys/create_survey.php','MANAGE','redcap_surveys','replace into redcap_surveys (project_id, form_name, acknowledgement, instructions, question_by_section,\r\n			question_auto_numbering, save_and_return, survey_enabled, title,\r\n			view_results, min_responses_view_results, check_diversity_view_results, end_survey_redirect_url, survey_expiration,\r\n			survey_auth_enabled_single, edit_completed_response, display_page_number, hide_back_button, show_required_field_text,\r\n			confirmation_email_subject, confirmation_email_content, confirmation_email_from, confirmation_email_from_display, text_to_speech, text_to_speech_language,\r\n			end_survey_redirect_next_survey, enhanced_choices, theme, text_size, font_family,\r\n			theme_bg_page, theme_text_buttons, theme_text_title, theme_bg_title,\r\n			theme_text_question, theme_bg_question, theme_text_sectionheader, theme_bg_sectionheader, \r\n			repeat_survey_enabled, repeat_survey_btn_text, repeat_survey_btn_location, response_limit, survey_time_limit_days,\r\n			survey_time_limit_hours, survey_time_limit_minutes, response_limit_include_partials, response_limit_custom_text, \r\n			end_of_survey_pdf_download, confirmation_email_attach_pdf, save_and_return_code_bypass, pdf_auto_archive,\r\n			pdf_econsent_firstname_field, pdf_econsent_lastname_field, pdf_econsent_dob_field,\r\n			pdf_econsent_firstname_event_id, pdf_econsent_lastname_event_id, pdf_econsent_dob_event_id,\r\n			pdf_econsent_version, pdf_econsent_type, email_participant_field, pdf_econsent_allow_edit,\r\n			pdf_econsent_signature_field1, pdf_econsent_signature_field2, pdf_econsent_signature_field3, pdf_econsent_signature_field4, pdf_econsent_signature_field5)\r\n			values (14, \'my_first_instrument\',\r\n			\'<p><strong>Thank you for taking the survey.</strong></p>\\r\\n<p>Have a nice day!</p>\', \'<p><strong>Please complete the survey below.</strong></p>\\r\\n<p>Thank you!</p>\',\r\n			\'0\', \'1\',\r\n			\'0\', 1, \'My First Instrument\',\r\n			\'0\', \'10\', \'0\',\r\n			NULL, NULL,\r\n			\'0\', \'0\', \'0\',\r\n			\'0\', \'1\',\r\n			NULL, NULL,\r\n			NULL, NULL, \'0\', \'en\',\r\n			\'0\', \'0\', \r\n			NULL, \'1\', \'16\',\r\n			NULL, NULL, NULL, NULL,\r\n			NULL, NULL, NULL, \r\n			NULL, \'0\', NULL,\r\n			\'AFTER_SUBMIT\', NULL, NULL, \r\n			NULL, NULL, \'1\',\r\n			\'<p>Thank you for your interest; however, the survey is closed because the maximum number of responses has been reached.</p>\', \'0\', \r\n			\'0\', \'0\', \'0\',\r\n			NULL, NULL,	NULL,\r\n			NULL, NULL,	NULL,\r\n			NULL, NULL, NULL \r\n			, \'0\'\r\n			, NULL\r\n			, NULL\r\n			, NULL\r\n			, NULL\r\n			, NULL\r\n        )','9',NULL,'survey_id = 9','Set up survey',0,NULL),
	(17,14,20200929151150,'test_user','172.18.0.1','Surveys/delete_survey.php','MANAGE','redcap_surveys','delete from redcap_surveys where survey_id = 9','9',NULL,'survey_id = 9','Delete survey',0,NULL),
	(18,14,20200929151156,'test_user','172.18.0.1','Surveys/create_survey.php','MANAGE','redcap_surveys','replace into redcap_surveys (project_id, form_name, acknowledgement, instructions, question_by_section,\r\n			question_auto_numbering, save_and_return, survey_enabled, title,\r\n			view_results, min_responses_view_results, check_diversity_view_results, end_survey_redirect_url, survey_expiration,\r\n			survey_auth_enabled_single, edit_completed_response, display_page_number, hide_back_button, show_required_field_text,\r\n			confirmation_email_subject, confirmation_email_content, confirmation_email_from, confirmation_email_from_display, text_to_speech, text_to_speech_language,\r\n			end_survey_redirect_next_survey, enhanced_choices, theme, text_size, font_family,\r\n			theme_bg_page, theme_text_buttons, theme_text_title, theme_bg_title,\r\n			theme_text_question, theme_bg_question, theme_text_sectionheader, theme_bg_sectionheader, \r\n			repeat_survey_enabled, repeat_survey_btn_text, repeat_survey_btn_location, response_limit, survey_time_limit_days,\r\n			survey_time_limit_hours, survey_time_limit_minutes, response_limit_include_partials, response_limit_custom_text, \r\n			end_of_survey_pdf_download, confirmation_email_attach_pdf, save_and_return_code_bypass, pdf_auto_archive,\r\n			pdf_econsent_firstname_field, pdf_econsent_lastname_field, pdf_econsent_dob_field,\r\n			pdf_econsent_firstname_event_id, pdf_econsent_lastname_event_id, pdf_econsent_dob_event_id,\r\n			pdf_econsent_version, pdf_econsent_type, email_participant_field, pdf_econsent_allow_edit,\r\n			pdf_econsent_signature_field1, pdf_econsent_signature_field2, pdf_econsent_signature_field3, pdf_econsent_signature_field4, pdf_econsent_signature_field5)\r\n			values (14, \'my_first_instrument\',\r\n			\'<p><strong>Thank you for taking the survey.</strong></p>\\r\\n<p>Have a nice day!</p>\', \'<p><strong>Please complete the survey below.</strong></p>\\r\\n<p>Thank you!</p>\',\r\n			\'0\', \'1\',\r\n			\'0\', 1, \'My First Instrument\',\r\n			\'0\', \'10\', \'0\',\r\n			NULL, NULL,\r\n			\'0\', \'0\', \'0\',\r\n			\'0\', \'1\',\r\n			NULL, NULL,\r\n			NULL, NULL, \'0\', \'en\',\r\n			\'0\', \'0\', \r\n			NULL, \'1\', \'16\',\r\n			NULL, NULL, NULL, NULL,\r\n			NULL, NULL, NULL, \r\n			NULL, \'0\', NULL,\r\n			\'AFTER_SUBMIT\', NULL, NULL, \r\n			NULL, NULL, \'1\',\r\n			\'<p>Thank you for your interest; however, the survey is closed because the maximum number of responses has been reached.</p>\', \'0\', \r\n			\'0\', \'0\', \'0\',\r\n			NULL, NULL,	NULL,\r\n			NULL, NULL,	NULL,\r\n			NULL, NULL, NULL \r\n			, \'0\'\r\n			, NULL\r\n			, NULL\r\n			, NULL\r\n			, NULL\r\n			, NULL\r\n        )','10',NULL,'survey_id = 10','Set up survey',0,NULL),
	(19,14,20200929151201,'test_user','172.18.0.1','Surveys/edit_info.php','MANAGE','redcap_surveys','update redcap_surveys set title = \'My First Instrument\', acknowledgement = \'<p><strong>Thank you for taking the survey.</strong></p>\\r\\n<p>Have a nice day!</p>\',\r\n				instructions = \'<p><strong>Please complete the survey below.</strong></p>\\r\\n<p>Thank you!</p>\', question_by_section = \'0\',\r\n				question_auto_numbering = \'1\', save_and_return = \'0\',\r\n				view_results = \'0\', min_responses_view_results = \'10\',\r\n				check_diversity_view_results = \'0\',\r\n				end_survey_redirect_url = NULL, survey_expiration = NULL,\r\n				survey_enabled = 0, promis_skip_question = \'0\',\r\n				survey_auth_enabled_single = \'0\',\r\n				edit_completed_response = \'0\', display_page_number = \'0\',\r\n				hide_back_button = \'0\', show_required_field_text = \'1\',\r\n				confirmation_email_subject = NULL, confirmation_email_content = NULL,\r\n				confirmation_email_from = NULL, \r\n				confirmation_email_from_display = NULL, \r\n				text_to_speech = \'0\',\r\n				confirmation_email_attach_pdf = \'0\', text_to_speech_language = \'en\',\r\n				end_survey_redirect_next_survey = \'0\', enhanced_choices = \'0\',\r\n				theme = NULL, text_size = \'1\', font_family = \'16\',\r\n				theme_bg_page = NULL, theme_text_buttons = NULL, theme_text_title = NULL,\r\n				theme_bg_title = NULL, theme_text_question = NULL, theme_bg_question = NULL,\r\n				theme_text_sectionheader = NULL, theme_bg_sectionheader = NULL,\r\n				repeat_survey_enabled = \'0\', repeat_survey_btn_text = NULL,\r\n				repeat_survey_btn_location = \'AFTER_SUBMIT\',\r\n				response_limit = NULL, survey_time_limit_days = NULL,\r\n				survey_time_limit_hours = NULL, survey_time_limit_minutes = NULL,\r\n				response_limit_include_partials = \'1\',\r\n				response_limit_custom_text = \'<p>Thank you for your interest; however, the survey is closed because the maximum number of responses has been reached.</p>\', end_of_survey_pdf_download = \'0\',\r\n				save_and_return_code_bypass = \'0\', pdf_auto_archive = \'0\',\r\n				pdf_econsent_firstname_field = NULL, pdf_econsent_lastname_field = NULL,\r\n				pdf_econsent_dob_field = NULL, pdf_econsent_firstname_event_id = NULL,\r\n				pdf_econsent_lastname_event_id = NULL, pdf_econsent_dob_event_id = NULL,\r\n				pdf_econsent_version = NULL, pdf_econsent_type = NULL, \r\n				email_participant_field = NULL\r\n				, pdf_econsent_allow_edit = \'0\'\r\n				, pdf_econsent_signature_field1 = NULL\r\n				, pdf_econsent_signature_field2 = NULL\r\n				, pdf_econsent_signature_field3 = NULL\r\n				, pdf_econsent_signature_field4 = NULL\r\n				, pdf_econsent_signature_field5 = NULL\r\n				where survey_id = 10','10',NULL,'survey_id = 10','Modify survey info',0,NULL),
	(20,14,20200929151207,'test_user','172.18.0.1','Surveys/edit_info.php','MANAGE','redcap_surveys','update redcap_surveys set title = \'My First Instrument\', acknowledgement = \'<p><strong>Thank you for taking the survey.</strong></p>\\r\\n<p>Have a nice day!</p>\',\r\n				instructions = \'<p><strong>Please complete the survey below.</strong></p>\\r\\n<p>Thank you!</p>\', question_by_section = \'0\',\r\n				question_auto_numbering = \'1\', save_and_return = \'0\',\r\n				view_results = \'0\', min_responses_view_results = \'10\',\r\n				check_diversity_view_results = \'0\',\r\n				end_survey_redirect_url = NULL, survey_expiration = NULL,\r\n				survey_enabled = 1, promis_skip_question = \'0\',\r\n				survey_auth_enabled_single = \'0\',\r\n				edit_completed_response = \'0\', display_page_number = \'0\',\r\n				hide_back_button = \'0\', show_required_field_text = \'1\',\r\n				confirmation_email_subject = NULL, confirmation_email_content = NULL,\r\n				confirmation_email_from = NULL, \r\n				confirmation_email_from_display = NULL, \r\n				text_to_speech = \'0\',\r\n				confirmation_email_attach_pdf = \'0\', text_to_speech_language = \'en\',\r\n				end_survey_redirect_next_survey = \'0\', enhanced_choices = \'0\',\r\n				theme = NULL, text_size = \'1\', font_family = \'16\',\r\n				theme_bg_page = NULL, theme_text_buttons = NULL, theme_text_title = NULL,\r\n				theme_bg_title = NULL, theme_text_question = NULL, theme_bg_question = NULL,\r\n				theme_text_sectionheader = NULL, theme_bg_sectionheader = NULL,\r\n				repeat_survey_enabled = \'0\', repeat_survey_btn_text = NULL,\r\n				repeat_survey_btn_location = \'AFTER_SUBMIT\',\r\n				response_limit = NULL, survey_time_limit_days = NULL,\r\n				survey_time_limit_hours = NULL, survey_time_limit_minutes = NULL,\r\n				response_limit_include_partials = \'1\',\r\n				response_limit_custom_text = \'<p>Thank you for your interest; however, the survey is closed because the maximum number of responses has been reached.</p>\', end_of_survey_pdf_download = \'0\',\r\n				save_and_return_code_bypass = \'0\', pdf_auto_archive = \'0\',\r\n				pdf_econsent_firstname_field = NULL, pdf_econsent_lastname_field = NULL,\r\n				pdf_econsent_dob_field = NULL, pdf_econsent_firstname_event_id = NULL,\r\n				pdf_econsent_lastname_event_id = NULL, pdf_econsent_dob_event_id = NULL,\r\n				pdf_econsent_version = NULL, pdf_econsent_type = NULL, \r\n				email_participant_field = NULL\r\n				, pdf_econsent_allow_edit = \'0\'\r\n				, pdf_econsent_signature_field1 = NULL\r\n				, pdf_econsent_signature_field2 = NULL\r\n				, pdf_econsent_signature_field3 = NULL\r\n				, pdf_econsent_signature_field4 = NULL\r\n				, pdf_econsent_signature_field5 = NULL\r\n				where survey_id = 10','10',NULL,'survey_id = 10','Modify survey info',0,NULL),
	(21,14,20200929151226,'[survey respondent]',NULL,'surveys/index.php','INSERT','redcap_data','INSERT INTO redcap_data (project_id, event_id, record, field_name, value, instance) VALUES (14, 41, \'1\', \'ptname\', \'Joe Test\', NULL);\nINSERT INTO redcap_data (project_id, event_id, record, field_name, value, instance) VALUES (14, 41, \'1\', \'record_id\', \'1\', NULL);\nINSERT INTO redcap_data (project_id, event_id, record, field_name, value, instance) VALUES (14, 41, \'1\', \'my_first_instrument_complete\', \'2\', NULL)','1',41,'ptname = \'Joe Test\',\nrecord_id = \'1\',\nmy_first_instrument_complete = \'2\'','Create survey response',0,NULL),
	(22,14,20201002115146,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'1\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'1\', data_logging = \'1\',\r\n						file_repository = \'1\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'1\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'1\',\r\n						mobile_app_download_data = \'1\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 14','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(23,14,20201002164716,'test_user','172.18.0.1','ProjectSetup/modify_project_setting_ajax.php','MANAGE','redcap_projects','update redcap_projects set survey_email_participant_field = \'email\' \r\n				where project_id = 14','14',NULL,'project_id = 14','Modify project settings',0,NULL),
	(24,14,20201002165920,'test_user','172.18.0.1','ProjectGeneral/change_project_status.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Move project to Production status',0,NULL),
	(25,14,20201005120841,'test_user','172.18.0.1','Design/draft_mode_enter.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Enter draft mode',0,NULL),
	(26,14,20201005123437,'test_user','172.18.0.1','Design/edit_field.php','MANAGE','redcap_metadata_temp','insert into redcap_metadata_temp (project_id, field_name, field_phi, form_name, form_menu_description, field_order,\r\n				field_units, element_preceding_header, element_type, element_label, element_enum, element_note, element_validation_type,\r\n				element_validation_min, element_validation_max, element_validation_checktype, branching_logic, field_req,\r\n				edoc_id, edoc_display_img, custom_alignment, stop_actions, question_num, grid_name, grid_rank, misc, video_url, video_display_inline)\r\n				values\r\n				(14, \'text2\', NULL, \'my_first_instrument\', NULL, \'2\', NULL, NULL, \'text\', \'Text2\', NULL, NULL, NULL, NULL, NULL, \'soft_typed\', NULL, \'0\', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, \'0\')','text2',NULL,'field_name = \'text2\'','Create project field',0,NULL),
	(27,14,20201005123439,'test_user','172.18.0.1','Design/draft_mode_review.php','MANAGE','redcap_projects','update redcap_projects set draft_mode = 2 where project_id = 14','14',NULL,'project_id = 14','Request approval for production project modifications',0,NULL),
	(28,14,20201006121447,'test_admin','172.18.0.1','Design/draft_mode_reset.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Remove production project modifications',0,NULL),
	(29,14,20201006151745,'test_user','172.18.0.1','Design/draft_mode_enter.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Enter draft mode',0,NULL),
	(30,14,20201006151749,'test_user','172.18.0.1','Design/edit_field.php','MANAGE','redcap_metadata_temp','insert into redcap_metadata_temp (project_id, field_name, field_phi, form_name, form_menu_description, field_order,\r\n				field_units, element_preceding_header, element_type, element_label, element_enum, element_note, element_validation_type,\r\n				element_validation_min, element_validation_max, element_validation_checktype, branching_logic, field_req,\r\n				edoc_id, edoc_display_img, custom_alignment, stop_actions, question_num, grid_name, grid_rank, misc, video_url, video_display_inline)\r\n				values\r\n				(14, \'text2\', NULL, \'my_first_instrument\', NULL, \'2\', NULL, NULL, \'text\', \'Text2\', NULL, NULL, NULL, NULL, NULL, \'soft_typed\', NULL, \'0\', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, \'0\')','text2',NULL,'field_name = \'text2\'','Create project field',0,NULL),
	(31,14,20201006151751,'test_user','172.18.0.1','Design/draft_mode_approve.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Approve production project modifications (automatic)',0,NULL),
	(32,14,20201009144227,'test_user','172.18.0.1','Design/draft_mode_enter.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Enter draft mode',0,NULL),
	(33,14,20201012121222,'test_user','172.18.0.1','Design/define_events_ajax.php','MANAGE','redcap_events_metadata','update redcap_events_metadata set day_offset = (@count:=@count+1)\r\n							where arm_id = 15 order by day_offset, descrip','45',NULL,'Event: Event 3, Arm: Arm 1, Days Offset: 3, Offset Range: -0/+0','Create event',0,NULL),
	(34,14,20201012121224,'test_user','172.18.0.1','Design/define_events_ajax.php','MANAGE','redcap_events_arms','insert into redcap_events_arms (project_id, arm_num, arm_name) values (14, 3, \'Arm 3\')','3',NULL,'Arm 3: Arm 3','Create arm',0,NULL),
	(35,14,20201012121228,'test_user','172.18.0.1','Design/define_events_ajax.php','MANAGE','redcap_events_metadata','update redcap_events_metadata set descrip = \'Event Three\', \r\n							custom_event_label = NULL\r\n							where event_id = \'45\'','45',NULL,'Event: Event Three, Arm: Arm 1, Days Offset: 3, Offset Range: -0/+0','Edit event',0,NULL),
	(36,14,20201012121230,'test_user','172.18.0.1','Design/define_events_ajax.php','MANAGE','redcap_events_arms','update redcap_events_arms set arm_num = 2, arm_name = \'Arm Two\' where project_id = 14 and arm_num = 2','2',NULL,'Arm 2: Arm Two','Edit arm name/number',0,NULL),
	(37,14,20201012121234,'test_user','172.18.0.1','Design/draft_mode_approve.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Approve production project modifications (automatic)',0,NULL),
	(38,14,20201012155043,'test_admin','172.18.0.1','ProjectGeneral/create_project.php','MANAGE','redcap_projects',NULL,'14',NULL,'project_id = 14','Copy project as PID=16 (\"SecondProject\")',0,NULL),
	(39,14,20201020135822,'test_admin','172.18.0.1','ProjectSetup/modify_project_setting_ajax.php','MANAGE','redcap_projects','update redcap_projects set surveys_enabled = \'0\' \r\n				where project_id = 14','14',NULL,'project_id = 14','Modify project settings',0,NULL),
	(40,14,20201020135848,'test_admin','172.18.0.1','ProjectGeneral/change_project_status.php','MANAGE','redcap_projects','update redcap_projects set status = 0, draft_mode = 0, production_time = NULL, inactive_time = NULL\r\n			where project_id = 14','14',NULL,'project_id = 14','Move project back to Development status',0,NULL);

/*!40000 ALTER TABLE `redcap_log_event2` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_log_event3
# ------------------------------------------------------------

LOCK TABLES `redcap_log_event3` WRITE;
/*!40000 ALTER TABLE `redcap_log_event3` DISABLE KEYS */;

INSERT INTO `redcap_log_event3` (`log_event_id`, `project_id`, `ts`, `user`, `ip`, `page`, `event`, `object_type`, `sql_log`, `pk`, `event_id`, `data_values`, `description`, `legacy`, `change_reason`)
VALUES
	(1,15,20200928105531,'test_user','172.18.0.1','ProjectGeneral/create_project.php','MANAGE','redcap_projects',NULL,'15',NULL,'project_id = 15','Copy project from PID=14 (\"FirstProject\")',0,NULL),
	(2,15,20200928105545,'test_user','172.18.0.1','ProjectGeneral/change_project_status.php','MANAGE','redcap_projects',NULL,'15',NULL,'project_id = 15','Move project to Production status',0,NULL),
	(3,15,20200928105555,'test_admin','172.18.0.1','ProjectGeneral/delete_project.php','MANAGE','redcap_projects','update redcap_projects set date_deleted = \'2020-09-28 10:55:55\'\r\n					where project_id = 15 and date_deleted is null','15',NULL,'project_id = 15','Delete project',0,NULL);

/*!40000 ALTER TABLE `redcap_log_event3` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_log_event4
# ------------------------------------------------------------

LOCK TABLES `redcap_log_event4` WRITE;
/*!40000 ALTER TABLE `redcap_log_event4` DISABLE KEYS */;

INSERT INTO `redcap_log_event4` (`log_event_id`, `project_id`, `ts`, `user`, `ip`, `page`, `event`, `object_type`, `sql_log`, `pk`, `event_id`, `data_values`, `description`, `legacy`, `change_reason`)
VALUES
	(1,16,20201012155043,'test_admin','172.18.0.1','ProjectGeneral/create_project.php','MANAGE','redcap_projects',NULL,'16',NULL,'project_id = 16','Copy project from PID=14 (\"FirstProject\")',0,NULL),
	(2,16,20201012155252,'test_admin','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'1\', data_logging = \'1\',\r\n						file_repository = \'1\', double_data = \'0\',\r\n						user_rights = \'0\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'0\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'1\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						external_module_config = NULL,\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(3,16,20201012155410,'test_admin','172.18.0.1','ProjectSetup/modify_project_setting_ajax.php','MANAGE','redcap_projects','update redcap_projects set repeatforms = \'0\' \r\n				where project_id = 16','16',NULL,'project_id = 16','Modify project settings',0,NULL),
	(4,16,20201012155438,'test_admin','172.18.0.1','ProjectGeneral/edit_project_settings.php','MANAGE','redcap_projects','update redcap_projects set\r\n			history_widget_enabled = 1,\r\n			display_today_now_button = 1,\r\n			require_change_reason = 0,\r\n			secondary_pk = NULL,\r\n			secondary_pk_display_value = \'0\',\r\n			secondary_pk_display_label = \'0\',\r\n			custom_record_label = NULL,\r\n			order_id_by = NULL,\r\n			data_entry_trigger_url = NULL,\r\n			missing_data_codes = NULL,\r\n			data_resolution_enabled = 0,\r\n			field_comment_edit_delete = 0,\r\n			pdf_custom_header_text = null,\r\n			pdf_show_logo_url = \'1\',\r\n			pdf_hide_secondary_field = \'0\',\r\n			pdf_hide_record_id = \'0\',\r\n			file_upload_vault_enabled = \'0\',\r\n			file_upload_versioning_enabled = \'1\',\r\n			record_locking_pdf_vault_enabled = \'0\'\r\n			where project_id = 16','16',NULL,'project_id = 16','Make project customizations',0,NULL),
	(5,16,20201012155548,'test_admin','172.18.0.1','DataEntry/index.php','INSERT','redcap_data','INSERT INTO redcap_data (project_id, event_id, record, field_name, value, instance) VALUES (16, 46, \'2\', \'text2\', \'Test entry\', NULL);\nINSERT INTO redcap_data (project_id, event_id, record, field_name, value, instance) VALUES (16, 46, \'2\', \'ptname\', \'Jane Tester\', NULL);\nINSERT INTO redcap_data (project_id, event_id, record, field_name, value, instance) VALUES (16, 46, \'2\', \'my_first_instrument_complete\', \'2\', NULL);\nINSERT INTO redcap_data (project_id, event_id, record, field_name, value, instance) VALUES (16, 46, \'2\', \'record_id\', \'2\', NULL)','2',46,'text2 = \'Test entry\',\nptname = \'Jane Tester\',\nmy_first_instrument_complete = \'2\',\nrecord_id = \'2\'','Create record',0,NULL),
	(6,16,20201015101302,'test_admin','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'1\', data_logging = \'1\',\r\n						file_repository = \'1\', double_data = \'0\',\r\n						user_rights = \'0\', data_access_groups = \'0\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'0\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'1\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						external_module_config = NULL,\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(7,16,20201015153840,'test_admin','172.18.0.1','UserRights/set_user_expiration.php','UPDATE','redcap_user_rights','update redcap_user_rights set expiration = \'2020-09-14\'\r\n		where project_id = 16 and username = \'test_user\'','test_user',NULL,'user = \'test_user\'','Edit user expiration',0,NULL),
	(8,16,20201015154154,'test_admin','172.18.0.1','UserRights/set_user_expiration.php','UPDATE','redcap_user_rights','update redcap_user_rights set expiration = NULL\r\n		where project_id = 16 and username = \'test_user\'','test_user',NULL,'user = \'test_user\'','Edit user expiration',0,NULL),
	(9,16,20201015154156,'test_admin','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'1\', data_logging = \'1\',\r\n						file_repository = \'1\', double_data = \'0\',\r\n						user_rights = \'0\', data_access_groups = \'0\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'1\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						external_module_config = NULL,\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(10,16,20201015154341,'test_admin','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'1\', data_logging = \'1\',\r\n						file_repository = \'1\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'0\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'1\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						external_module_config = NULL,\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(11,16,20201015154726,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'1\', data_logging = \'1\',\r\n						file_repository = \'1\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'1\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(12,16,20201015154925,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'2\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'1\', data_logging = \'1\',\r\n						file_repository = \'1\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'1\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(13,16,20201015173333,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'2\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'0\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(14,16,20201015174245,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'2\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'0\', data_logging = \'0\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(15,16,20201015174427,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'2\', data_import_tool = \'1\',\r\n						data_comparison_tool = \'1\', data_logging = \'0\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(16,16,20201016110036,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(17,16,20201016110942,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'0\', data_quality_execute = \'0\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(18,16,20201016112300,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'0\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(19,16,20201016112959,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(20,16,20201016113924,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(21,16,20201016114017,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(22,16,20201016115555,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(23,16,20201016115720,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(24,16,20201016115841,'test_user','172.18.0.1','ProjectGeneral/change_project_status.php','MANAGE','redcap_projects',NULL,'16',NULL,'project_id = 16','Move project to Production status',0,NULL),
	(25,16,20201016115936,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(26,16,20201016120523,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(27,16,20201016143752,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(28,16,20201016144537,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(29,16,20201016145127,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(30,16,20201016152409,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(31,16,20201016153501,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'1\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(32,16,20201016155523,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'2\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'1\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(33,16,20201016161006,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'1\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'1\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(34,16,20201016161822,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'1\', lock_record_multiform = \'1\',\r\n						lock_record_customize = \'1\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(35,16,20201019113327,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'1\', lock_record_multiform = \'1\',\r\n						lock_record_customize = \'1\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,0][my_first_instrument_2,0]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(36,16,20201019114840,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'1\', lock_record_multiform = \'1\',\r\n						lock_record_customize = \'1\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,2][my_first_instrument_2,2]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(37,16,20201019115628,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'1\', lock_record_multiform = \'1\',\r\n						lock_record_customize = \'1\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,1][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(38,16,20201019151333,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_rights SET data_export_tool = \'0\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'1\',\r\n						file_repository = \'0\', double_data = \'0\',\r\n						user_rights = \'1\', data_access_groups = \'1\',\r\n						lock_record = \'1\', lock_record_multiform = \'1\',\r\n						lock_record_customize = \'1\', design = \'1\',\r\n						expiration = NULL , record_create = \'0\',\r\n						record_rename = \'1\', record_delete = \'1\',\r\n						graphical = \'1\', calendar = \'0\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'1\', data_quality_execute = \'1\',\r\n						data_quality_resolution = \'0\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE username = \'test_user\' and project_id = 16','test_user',NULL,'user = \'test_user\'','Edit user',0,NULL),
	(39,16,20201019152607,'test_user','172.18.0.1','UserRights/edit_user.php','INSERT','redcap_user_rights','INSERT INTO redcap_user_roles (project_id, role_name, data_export_tool, data_import_tool, data_comparison_tool, data_logging, file_repository, double_data, user_rights, design, lock_record, lock_record_multiform, lock_record_customize, data_access_groups, graphical, reports, calendar, record_create, record_rename, record_delete, dts, participants, data_quality_design, data_quality_execute, data_quality_resolution,\r\n		api_export, api_import, mobile_app, mobile_app_download_data,\r\n		random_setup, random_dashboard, random_perform, realtime_webservice_mapping, realtime_webservice_adjudicate, external_module_config,\r\n		data_entry) VALUES (16, \'Data Entry\', \'2\', \'0\', \'0\',\r\n		\'0\', \'1\', \'0\', \'0\',\r\n		\'0\', \'0\', \'0\',\r\n		\'0\', \'0\', \'1\', \'1\',\r\n		\'1\', \'1\', \'0\', \'0\',\r\n		\'0\', \'1\', \'0\', \'0\', \'1\',\r\n		\'0\', \'0\', \'0\', \'0\', \'0\', \'0\',\r\n		\'0\', \'0\', \'0\', NULL, \'[my_first_instrument,3][my_first_instrument_2,1]\')','0',NULL,'role = \'Data Entry\'','Add role',0,NULL),
	(40,16,20201019161353,'test_user','172.18.0.1','UserRights/edit_user.php','INSERT','redcap_user_rights','insert into redcap_user_roles (project_id, role_name, lock_record, lock_record_multiform, lock_record_customize, data_export_tool, data_import_tool, data_comparison_tool, data_logging, file_repository, double_data, user_rights, data_access_groups, graphical, reports, design, calendar, data_entry, api_export, api_import, mobile_app, mobile_app_download_data, record_create, record_rename, record_delete, dts, participants, data_quality_design, data_quality_execute, data_quality_resolution, random_setup, random_dashboard, random_perform, realtime_webservice_mapping, realtime_webservice_adjudicate, external_module_config) values (16, \'Reviewer\', \'0\', \'0\', \'0\', \'2\', \'0\', \'0\', \'0\', \'1\', \'0\', \'0\', \'0\', \'1\', \'1\', \'0\', \'1\', \'[my_first_instrument,3][my_first_instrument_2,1]\', \'0\', \'0\', \'0\', \'0\', \'1\', \'0\', \'0\', \'0\', \'1\', \'0\', \'0\', \'1\', \'0\', \'0\', \'0\', \'0\', \'0\', NULL)','1',NULL,'role = \'Reviewer\'','Copy role',0,NULL),
	(41,16,20201019161355,'test_user','172.18.0.1','UserRights/edit_user.php','UPDATE','redcap_user_rights','UPDATE redcap_user_roles SET role_name = \'Reviewer\', data_export_tool = \'2\', data_import_tool = \'0\',\r\n						data_comparison_tool = \'0\', data_logging = \'0\',\r\n						file_repository = \'1\', double_data = \'0\',\r\n						user_rights = \'0\', data_access_groups = \'0\',\r\n						lock_record = \'0\', lock_record_multiform = \'0\',\r\n						lock_record_customize = \'0\', design = \'0\',\r\n						record_create = \'1\',\r\n						record_rename = \'0\', record_delete = \'0\',\r\n						graphical = \'1\', calendar = \'1\', reports = \'1\',\r\n						dts = \'0\', participants = \'1\',\r\n						data_quality_design = \'0\', data_quality_execute = \'0\',\r\n						data_quality_resolution = \'1\',\r\n						api_export = \'0\', api_import = \'0\', mobile_app = \'0\',\r\n						mobile_app_download_data = \'0\',\r\n						random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\',\r\n						realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\',\r\n						\r\n						data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\' WHERE role_id = \'2\' and project_id = 16','2',NULL,'role = \'Reviewer\'','Edit role',0,NULL),
	(42,16,20201020100552,'test_user','172.18.0.1','UserRights/edit_user.php','DELETE','redcap_user_rights','DELETE FROM redcap_user_roles WHERE project_id = 16 and role_id = \'2\'','2',NULL,'role = \'Reviewer\'','Delete role',0,NULL),
	(43,16,20201020133117,'test_admin','172.18.0.1','UserRights/assign_user.php','INSERT','redcap_user_rights','insert into redcap_user_rights (project_id, username, role_id) values (16, \'test_user\', \'1\')\r\n			on duplicate key update role_id = 1','test_user',NULL,'user = \'test_user\',\nrole = \'Data Entry\'','Assign user to role',0,NULL),
	(44,16,20201020134639,'test_admin','172.18.0.1','UserRights/assign_user.php','UPDATE','redcap_user_rights','update redcap_user_rights set role_id = null, lock_record = \'0\', lock_record_multiform = \'0\', lock_record_customize = \'0\', data_export_tool = \'2\', data_import_tool = \'0\', data_comparison_tool = \'0\', data_logging = \'0\', file_repository = \'1\', double_data = \'0\', user_rights = \'0\', data_access_groups = \'0\', graphical = \'1\', reports = \'1\', design = \'0\', calendar = \'1\', data_entry = \'[my_first_instrument,3][my_first_instrument_2,1]\', api_export = \'0\', api_import = \'0\', mobile_app = \'0\', mobile_app_download_data = \'0\', record_create = \'1\', record_rename = \'0\', record_delete = \'0\', dts = \'0\', participants = \'1\', data_quality_design = \'0\', data_quality_execute = \'0\', data_quality_resolution = \'1\', random_setup = \'0\', random_dashboard = \'0\', random_perform = \'0\', realtime_webservice_mapping = \'0\', realtime_webservice_adjudicate = \'0\', external_module_config = NULL\r\n			where project_id = 16 and username = \'test_user\'','test_user',NULL,'user = \'test_user\',\nrole = \'Data Entry\'','Remove user from role',0,NULL),
	(45,16,20201020134754,'test_admin','172.18.0.1','ProjectGeneral/delete_project.php','MANAGE','redcap_projects','update redcap_projects set date_deleted = \'2020-10-20 13:47:54\'\r\n					where project_id = 16 and date_deleted is null','16',NULL,'project_id = 16','Delete project',0,NULL);

/*!40000 ALTER TABLE `redcap_log_event4` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_log_event5
# ------------------------------------------------------------



# Dump of table redcap_log_view
# ------------------------------------------------------------

LOCK TABLES `redcap_log_view` WRITE;
/*!40000 ALTER TABLE `redcap_log_view` DISABLE KEYS */;

INSERT INTO `redcap_log_view` (`log_view_id`, `ts`, `user`, `event`, `ip`, `browser_name`, `browser_version`, `full_url`, `page`, `project_id`, `event_id`, `record`, `form_name`, `miscellaneous`, `session_id`)
VALUES
	(1,'2020-09-28 09:22:52','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(2,'2020-09-28 09:22:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(3,'2020-09-28 09:22:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(4,'2020-09-28 09:22:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(5,'2020-09-28 09:22:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(6,'2020-09-28 09:22:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?user_view=view_user&view=user_controls&username=test_user_b','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(7,'2020-09-28 09:22:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(8,'2020-09-28 09:22:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(9,'2020-09-28 09:22:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(10,'2020-09-28 09:22:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?user_view=view_user&view=user_controls&username=test_user_b','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(11,'2020-09-28 09:22:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?username=test_user_b&action=reset_password','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(12,'2020-09-28 09:22:57','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/view_users.php?username=test_user_b','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(13,'2020-09-28 09:22:58','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(14,'2020-09-28 09:22:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(15,'2020-09-28 09:22:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?user_view=view_user&view=user_controls&username=test_user_c','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(16,'2020-09-28 09:22:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(17,'2020-09-28 09:22:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/create_user.php','ControlCenter/create_user.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(18,'2020-09-28 09:23:00','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/create_user.php','ControlCenter/create_user.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(19,'2020-09-28 09:23:01','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/security_settings.php','ControlCenter/security_settings.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(20,'2020-09-28 09:23:02','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/security_settings.php','ControlCenter/security_settings.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(21,'2020-09-28 09:23:03','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'7d1cd282372e2879dee2a5db5a676d87'),
	(22,'2020-09-28 09:23:05','test_user','LOGIN_FAIL','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4fab7e8052275f372d57ea6269c7ad5a'),
	(23,'2020-09-28 09:24:08','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'8aeb9d60dad0529ede36a8ea0b0d5a0d'),
	(24,'2020-09-28 09:24:08','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8aeb9d60dad0529ede36a8ea0b0d5a0d'),
	(25,'2020-09-28 09:24:09','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'8aeb9d60dad0529ede36a8ea0b0d5a0d'),
	(26,'2020-09-28 09:32:53','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(27,'2020-09-28 09:32:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(28,'2020-09-28 09:32:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(29,'2020-09-28 09:32:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(30,'2020-09-28 09:32:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:saveNewAdminPriv','ControlCenterController:saveNewAdminPriv',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(31,'2020-09-28 09:32:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(32,'2020-09-28 09:32:56','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'8acf85ddcc923f7c72b6a7e242fdfa0e'),
	(33,'2020-09-28 09:32:57','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(34,'2020-09-28 09:32:58','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(35,'2020-09-28 09:32:58','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(36,'2020-09-28 09:32:59','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(37,'2020-09-28 09:32:59','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/index.php','ControlCenter/index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(38,'2020-09-28 09:33:00','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/version_check.php','ControlCenter/version_check.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(39,'2020-09-28 09:33:00','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(40,'2020-09-28 09:33:01','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/create_user.php','ControlCenter/create_user.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(41,'2020-09-28 09:33:02','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/google_map_users.php','ControlCenter/google_map_users.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(42,'2020-09-28 09:33:02','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/email_users.php','ControlCenter/email_users.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(43,'2020-09-28 09:33:03','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'7c6182f030384807d85f94bb5b0a9846'),
	(44,'2020-09-28 09:33:04','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(45,'2020-09-28 09:33:05','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(46,'2020-09-28 09:33:05','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(47,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(48,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(49,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(50,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(51,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(52,'2020-09-28 09:33:06','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(53,'2020-09-28 09:33:07','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:saveAdminPriv','ControlCenterController:saveAdminPriv',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(54,'2020-09-28 09:33:07','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(55,'2020-09-28 09:33:08','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/superusers.php?logout=1','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'a4bc6a64efd6480687f3e9787796988a'),
	(56,'2020-09-28 09:33:09','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(57,'2020-09-28 09:33:09','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(58,'2020-09-28 09:33:10','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(59,'2020-09-28 09:33:10','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(60,'2020-09-28 09:33:10','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(61,'2020-09-28 09:33:11','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(62,'2020-09-28 09:33:11','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'72cba1800faf5a9b96faa2c64b195278'),
	(63,'2020-09-28 10:54:36','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(64,'2020-09-28 10:54:37','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(65,'2020-09-28 10:54:37','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/index.php','ControlCenter/index.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(66,'2020-09-28 10:54:39','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/version_check.php','ControlCenter/version_check.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(67,'2020-09-28 10:54:39','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(68,'2020-09-28 10:54:41','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(69,'2020-09-28 10:54:42','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(70,'2020-09-28 10:54:44','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(71,'2020-09-28 10:54:46','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(72,'2020-09-28 10:54:47','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/view_users.php','ControlCenter/view_users.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(73,'2020-09-28 10:54:48','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(74,'2020-09-28 10:54:48','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_controls_ajax.php?user_view=view_user&view=user_controls&username=test_user','ControlCenter/user_controls_ajax.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(75,'2020-09-28 10:54:48','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(76,'2020-09-28 10:54:49','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/create_user.php','ControlCenter/create_user.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(77,'2020-09-28 10:54:49','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/create_user.php','ControlCenter/create_user.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(78,'2020-09-28 10:54:50','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(79,'2020-09-28 10:54:50','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php','index.php',NULL,NULL,NULL,NULL,NULL,'896c73de915b15fb9a9fc5f42a418f4c'),
	(80,'2020-09-28 10:54:52','test_user_c','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'9247c80592e09f482d4b16aa5b493cf6'),
	(81,'2020-09-28 10:54:52','test_user_c','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'9247c80592e09f482d4b16aa5b493cf6'),
	(82,'2020-09-28 10:54:52','test_user_c','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php','index.php',NULL,NULL,NULL,NULL,NULL,'9247c80592e09f482d4b16aa5b493cf6'),
	(83,'2020-09-28 10:54:53','test_user_c','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'9247c80592e09f482d4b16aa5b493cf6'),
	(84,'2020-09-28 10:54:53','test_user_c','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php','index.php',NULL,NULL,NULL,NULL,NULL,'9247c80592e09f482d4b16aa5b493cf6'),
	(85,'2020-09-28 10:54:54','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(86,'2020-09-28 10:54:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(87,'2020-09-28 10:54:55','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(88,'2020-09-28 10:54:55','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(89,'2020-09-28 10:54:56','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(90,'2020-09-28 10:54:56','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=create','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(91,'2020-09-28 10:54:57','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(92,'2020-09-28 10:54:58','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(93,'2020-09-28 10:54:58','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php','index.php',NULL,NULL,NULL,NULL,NULL,'f10a1ab6c332e31edb76c38054ec3aac'),
	(94,'2020-09-28 10:54:59','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'fb40ea8f429d9fb4657f5bf528247278'),
	(95,'2020-09-28 10:54:59','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'fb40ea8f429d9fb4657f5bf528247278'),
	(96,'2020-09-28 10:55:00','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/index.php','ControlCenter/index.php',NULL,NULL,NULL,NULL,NULL,'fb40ea8f429d9fb4657f5bf528247278'),
	(97,'2020-09-28 10:55:01','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/version_check.php','ControlCenter/version_check.php',NULL,NULL,NULL,NULL,NULL,'fb40ea8f429d9fb4657f5bf528247278'),
	(98,'2020-09-28 10:55:01','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'fb40ea8f429d9fb4657f5bf528247278'),
	(99,'2020-09-28 10:55:01','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'fb40ea8f429d9fb4657f5bf528247278'),
	(100,'2020-09-28 10:55:02','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'fb40ea8f429d9fb4657f5bf528247278'),
	(101,'2020-09-28 10:55:03','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(102,'2020-09-28 10:55:03','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(103,'2020-09-28 10:55:04','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(104,'2020-09-28 10:55:04','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(105,'2020-09-28 10:55:05','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php','index.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(106,'2020-09-28 10:55:06','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=create','index.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(107,'2020-09-28 10:55:08','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/create_project.php','ProjectGeneral/create_project.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(108,'2020-09-28 10:55:08','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&msg=newproject','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(109,'2020-09-28 10:55:09','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2FProjectSetup%2Findex.php%3Fpid%3D14%26msg%3Dnewproject&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(110,'2020-09-28 10:55:09','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&msg=newproject&__record_cache_complete=1','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(111,'2020-09-28 10:55:10','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(112,'2020-09-28 10:55:12','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/edit_project_settings.php?pid=14','ProjectGeneral/edit_project_settings.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(113,'2020-09-28 10:55:12','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&msg=projectmodified','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(114,'2020-09-28 10:55:13','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(115,'2020-09-28 10:55:14','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(116,'2020-09-28 10:55:15','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&page=my_first_instrument','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(117,'2020-09-28 10:55:17','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/check_field_name.php?pid=14&field_name=ptname&old_field_name=','Design/check_field_name.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(118,'2020-09-28 10:55:18','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/check_field_name.php?pid=14&field_name=ptname&old_field_name=','Design/check_field_name.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(119,'2020-09-28 10:55:18','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/edit_field.php?pid=14&page=my_first_instrument','Design/edit_field.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(120,'2020-09-28 10:55:19','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer_render_fields.php?pid=14&page=my_first_instrument&field_name=ptname&edit_question=0&section_header=0','Design/online_designer_render_fields.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(121,'2020-09-28 10:55:19','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(122,'2020-09-28 10:55:20','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/copy_instrument.php?pid=14','Design/copy_instrument.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(123,'2020-09-28 10:55:24','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(124,'2020-09-28 10:55:24','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&page=my_first_instrument_2','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(125,'2020-09-28 10:55:26','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/check_field_name.php?pid=14&field_name=email&old_field_name=','Design/check_field_name.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(126,'2020-09-28 10:55:26','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/check_field_name.php?pid=14&field_name=email&old_field_name=','Design/check_field_name.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(127,'2020-09-28 10:55:27','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/edit_field.php?pid=14&page=my_first_instrument_2','Design/edit_field.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(128,'2020-09-28 10:55:28','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer_render_fields.php?pid=14&page=my_first_instrument_2&field_name=email&edit_question=0&section_header=0','Design/online_designer_render_fields.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(129,'2020-09-28 10:55:28','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(130,'2020-09-28 10:55:29','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=14','ProjectSetup/other_functionality.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(131,'2020-09-28 10:55:30','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/copy_project_form.php?pid=14','ProjectGeneral/copy_project_form.php',14,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(132,'2020-09-28 10:55:31','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/create_project.php','ProjectGeneral/create_project.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(133,'2020-09-28 10:55:31','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=15&msg=copiedproject','ProjectSetup/index.php',15,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(134,'2020-09-28 10:55:32','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=15&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2FProjectSetup%2Findex.php%3Fpid%3D15%26msg%3Dcopiedproject&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',15,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(135,'2020-09-28 10:55:32','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=15&msg=copiedproject&__record_cache_complete=1','ProjectSetup/index.php',15,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(136,'2020-09-28 10:55:33','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=15','index.php',15,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(137,'2020-09-28 10:55:34','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=15','ProjectSetup/other_functionality.php',15,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(138,'2020-09-28 10:55:35','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=15','ProjectSetup/index.php',15,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(139,'2020-09-28 10:55:36','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'fde03aef8a92fd83fdfeacf687b6f91c'),
	(140,'2020-09-28 10:55:37','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'1006ac9a843eb361ee7d46cd563c8e51'),
	(141,'2020-09-28 10:55:38','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'1006ac9a843eb361ee7d46cd563c8e51'),
	(142,'2020-09-28 10:55:38','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'1006ac9a843eb361ee7d46cd563c8e51'),
	(143,'2020-09-28 10:55:39','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'1006ac9a843eb361ee7d46cd563c8e51'),
	(144,'2020-09-28 10:55:39','test_admin','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'1006ac9a843eb361ee7d46cd563c8e51'),
	(145,'2020-09-28 10:55:40','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(146,'2020-09-28 10:55:41','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(147,'2020-09-28 10:55:42','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(148,'2020-09-28 10:55:42','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(149,'2020-09-28 10:55:42','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(150,'2020-09-28 10:55:43','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=15','ProjectSetup/index.php',15,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(151,'2020-09-28 10:55:45','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/change_project_status.php?pid=15','ProjectGeneral/change_project_status.php',15,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(152,'2020-09-28 10:55:45','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=15&msg=movetoprod','ProjectSetup/index.php',15,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(153,'2020-09-28 10:55:46','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=15','ProjectSetup/other_functionality.php',15,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(154,'2020-09-28 10:55:47','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'2076bde4e5b2ba3d00863adf6eae990d'),
	(155,'2020-09-28 10:55:48','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(156,'2020-09-28 10:55:49','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(157,'2020-09-28 10:55:49','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php?view_all=1','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(158,'2020-09-28 10:55:50','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=15','index.php',15,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(159,'2020-09-28 10:55:51','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=15','ProjectSetup/other_functionality.php',15,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(160,'2020-09-28 10:55:52','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/delete_project.php?pid=15','ProjectGeneral/delete_project.php',15,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(161,'2020-09-28 10:55:52','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=15','index.php',15,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(162,'2020-09-28 10:55:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=15','ProjectSetup/other_functionality.php',15,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(163,'2020-09-28 10:55:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/delete_project.php?pid=15','ProjectGeneral/delete_project.php',15,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(164,'2020-09-28 10:55:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/delete_project.php?pid=15','ProjectGeneral/delete_project.php',15,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(165,'2020-09-28 10:55:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'bd628182ef47f3678ba1c1c04d09983b'),
	(166,'2020-09-28 12:03:30','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(167,'2020-09-28 12:03:31','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(168,'2020-09-28 12:03:32','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(169,'2020-09-28 12:03:32','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(170,'2020-09-28 12:03:34','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/modify_project_setting_ajax.php?pid=14','ProjectSetup/modify_project_setting_ajax.php',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(171,'2020-09-28 12:03:35','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(172,'2020-09-28 12:03:35','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2FProjectSetup%2Findex.php%3Fpid%3D14&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(173,'2020-09-28 12:03:35','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&__record_cache_complete=1','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(174,'2020-09-28 12:03:36','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/modify_project_setting_ajax.php?pid=14','ProjectSetup/modify_project_setting_ajax.php',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(175,'2020-09-28 12:03:37','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&__record_cache_complete=1','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(176,'2020-09-28 12:03:39','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/modify_project_setting_ajax.php?pid=14','ProjectSetup/modify_project_setting_ajax.php',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(177,'2020-09-28 12:03:39','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&__record_cache_complete=1','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'03d919682976a10a5d59a2128c5ad155'),
	(178,'2020-09-28 13:07:25','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(179,'2020-09-28 13:07:26','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(180,'2020-09-28 13:07:27','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(181,'2020-09-28 13:07:28','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(182,'2020-09-28 13:07:28','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2FProjectSetup%2Findex.php%3Fpid%3D14&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(183,'2020-09-28 13:07:29','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&__record_cache_complete=1','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(184,'2020-09-28 13:07:30','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14','Design/define_events.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(185,'2020-09-28 13:07:31','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php?pid=14&arm=1&action=add&offset_min=0&offset_max=0&day_offset=9999&descrip=Event%202&custom_event_label=','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(186,'2020-09-28 13:07:32','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14','Design/define_events.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(187,'2020-09-28 13:07:33','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=2','Design/define_events.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(188,'2020-09-28 13:07:34','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php?pid=14&arm=2&action=add_arm&arm_name=Event%201','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(189,'2020-09-28 13:07:35','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php?pid=14&arm=2&action=add&offset_min=0&offset_max=0&day_offset=9999&descrip=Event%201&custom_event_label=','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(190,'2020-09-28 13:07:36','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/designate_forms.php?arm=2&pid=14','Design/designate_forms.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(191,'2020-09-28 13:07:37','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/designate_forms.php?pid=14&arm=1','Design/designate_forms.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(192,'2020-09-28 13:07:38','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/designate_forms_ajax.php','Design/designate_forms_ajax.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(193,'2020-09-28 13:07:39','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/designate_forms.php?pid=14&arm=2','Design/designate_forms.php',14,NULL,NULL,NULL,NULL,'2b4f459bdeaf654a065e888c89f2e3de'),
	(194,'2020-09-28 13:08:31','test_user','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=2','Design/define_events.php',14,NULL,NULL,NULL,NULL,'c30979fa14cedfbd9ccc7d23e7f39d3d'),
	(195,'2020-09-28 13:08:32','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=2','Design/define_events.php',14,NULL,NULL,NULL,NULL,'c30979fa14cedfbd9ccc7d23e7f39d3d'),
	(196,'2020-09-28 13:08:35','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'c30979fa14cedfbd9ccc7d23e7f39d3d'),
	(197,'2020-09-28 16:45:04','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'6c25cf9db89688cf68ef6a01d124a042'),
	(198,'2020-09-28 16:45:04','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'6c25cf9db89688cf68ef6a01d124a042'),
	(199,'2020-09-28 16:45:05','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'6c25cf9db89688cf68ef6a01d124a042'),
	(200,'2020-09-28 16:45:06','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'6c25cf9db89688cf68ef6a01d124a042'),
	(201,'2020-09-28 16:45:07','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14&route=RepeatInstanceController:renderSetup','RepeatInstanceController:renderSetup',14,NULL,NULL,NULL,NULL,'6c25cf9db89688cf68ef6a01d124a042'),
	(202,'2020-09-28 16:45:09','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14&route=RepeatInstanceController:saveSetup','RepeatInstanceController:saveSetup',14,NULL,NULL,NULL,NULL,'6c25cf9db89688cf68ef6a01d124a042'),
	(203,'2020-09-28 16:45:12','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'6c25cf9db89688cf68ef6a01d124a042'),
	(204,'2020-09-29 15:11:34','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(205,'2020-09-29 15:11:34','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(206,'2020-09-29 15:11:35','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(207,'2020-09-29 15:11:36','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(208,'2020-09-29 15:11:37','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(209,'2020-09-29 15:11:38','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/modify_project_setting_ajax.php?pid=14','ProjectSetup/modify_project_setting_ajax.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(210,'2020-09-29 15:11:39','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(211,'2020-09-29 15:11:40','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(212,'2020-09-29 15:11:41','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/create_survey.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/create_survey.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(213,'2020-09-29 15:11:43','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/create_survey.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/create_survey.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(214,'2020-09-29 15:11:44','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&survey_save=create','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(215,'2020-09-29 15:11:47','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/edit_info.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/edit_info.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(216,'2020-09-29 15:11:50','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/delete_survey.php?pid=14&survey_id=9','Surveys/delete_survey.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(217,'2020-09-29 15:11:51','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(218,'2020-09-29 15:11:54','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/create_survey.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/create_survey.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(219,'2020-09-29 15:11:56','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/create_survey.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/create_survey.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(220,'2020-09-29 15:11:56','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&survey_save=create','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'09be187019b8da62fd58a5dc098b2031'),
	(221,'2020-09-29 15:11:58','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'f90dc32b679c411bdbf6a0d9187be4aa'),
	(222,'2020-09-29 15:11:58','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'f90dc32b679c411bdbf6a0d9187be4aa'),
	(223,'2020-09-29 15:11:59','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/edit_info.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/edit_info.php',14,NULL,NULL,NULL,NULL,'f90dc32b679c411bdbf6a0d9187be4aa'),
	(224,'2020-09-29 15:12:01','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/edit_info.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/edit_info.php',14,NULL,NULL,NULL,NULL,'f90dc32b679c411bdbf6a0d9187be4aa'),
	(225,'2020-09-29 15:12:02','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&survey_save=edit','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'f90dc32b679c411bdbf6a0d9187be4aa'),
	(226,'2020-09-29 15:12:03','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'a9c4d9524653dfe61e28c6a32fcb85c4'),
	(227,'2020-09-29 15:12:03','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'a9c4d9524653dfe61e28c6a32fcb85c4'),
	(228,'2020-09-29 15:12:05','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/edit_info.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/edit_info.php',14,NULL,NULL,NULL,NULL,'a9c4d9524653dfe61e28c6a32fcb85c4'),
	(229,'2020-09-29 15:12:07','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/edit_info.php?pid=14&view=showform&page=my_first_instrument&redirectDesigner=1','Surveys/edit_info.php',14,NULL,NULL,NULL,NULL,'a9c4d9524653dfe61e28c6a32fcb85c4'),
	(230,'2020-09-29 15:12:07','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&survey_save=edit','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'a9c4d9524653dfe61e28c6a32fcb85c4'),
	(231,'2020-09-29 15:12:08','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4770e850f2328c79bcc8c0cfa60aacc6'),
	(232,'2020-09-29 15:12:08','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4770e850f2328c79bcc8c0cfa60aacc6'),
	(233,'2020-09-29 15:12:10','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/invite_participants.php?pid=14','Surveys/invite_participants.php',14,NULL,NULL,NULL,NULL,'4770e850f2328c79bcc8c0cfa60aacc6'),
	(234,'2020-09-29 15:12:11','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/invite_participants.php?public_survey=1&pid=14','Surveys/invite_participants.php',14,NULL,NULL,NULL,NULL,'4770e850f2328c79bcc8c0cfa60aacc6'),
	(235,'2020-09-29 15:12:20','[survey respondent]','PAGE_VIEW',NULL,'chrome','85.0','http://localhost/surveys/?s=X7PJ84YK38','surveys/index.php',14,41,NULL,'my_first_instrument',NULL,'8f14d11123ec1be8ec6a2992622a4bc4'),
	(236,'2020-09-29 15:12:26','[survey respondent]','PAGE_VIEW',NULL,'chrome','85.0','http://localhost/surveys/index.php?s=X7PJ84YK38','surveys/index.php',14,41,NULL,'my_first_instrument',NULL,'8f14d11123ec1be8ec6a2992622a4bc4'),
	(237,'2020-09-29 15:12:27','[survey respondent]','PAGE_VIEW',NULL,'chrome','85.0','http://localhost/surveys/index.php?s=X7PJ84YK38&__endpublicsurvey=1&__rh=f123b35f4bb4614b55e10af3faa1eed9f123b35f4bb4614b55e10af3faa1eed9','surveys/index.php',14,41,NULL,'my_first_instrument',NULL,'d29d7b7b35186f48fb98cf965d42cf1b'),
	(238,'2020-10-02 10:35:12','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/invite_participants.php?public_survey=1&pid=14','Surveys/invite_participants.php',14,NULL,NULL,NULL,NULL,'5841cdcd6fa683d1bea9577d4def4530'),
	(239,'2020-10-02 10:35:12','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Surveys/invite_participants.php?public_survey=1&pid=14','Surveys/invite_participants.php',14,NULL,NULL,NULL,NULL,'5841cdcd6fa683d1bea9577d4def4530'),
	(240,'2020-10-02 10:35:13','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=14','DataEntry/record_home.php',14,NULL,NULL,NULL,NULL,'5841cdcd6fa683d1bea9577d4def4530'),
	(241,'2020-10-02 10:35:14','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=14&arm=1&id=1','DataEntry/record_home.php',14,NULL,'1',NULL,NULL,'5841cdcd6fa683d1bea9577d4def4530'),
	(242,'2020-10-02 10:35:14','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/DataEntry/index.php?pid=14&id=1&event_id=41&page=my_first_instrument','DataEntry/index.php',14,41,'1','my_first_instrument',NULL,'5841cdcd6fa683d1bea9577d4def4530'),
	(243,'2020-10-02 10:35:15','test_user','LOGOUT','172.18.0.1','chrome','85.0','http://localhost/index.php?logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'5841cdcd6fa683d1bea9577d4def4530'),
	(244,'2020-10-02 10:35:15','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'e32168b6986743f0a3de2dd06710602c'),
	(245,'2020-10-02 10:35:15','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'e32168b6986743f0a3de2dd06710602c'),
	(246,'2020-10-02 10:35:16','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'e32168b6986743f0a3de2dd06710602c'),
	(247,'2020-10-02 10:35:16','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'e32168b6986743f0a3de2dd06710602c'),
	(248,'2020-10-02 10:35:16','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'e32168b6986743f0a3de2dd06710602c'),
	(249,'2020-10-02 10:35:17','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'e32168b6986743f0a3de2dd06710602c'),
	(250,'2020-10-02 11:51:40','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(251,'2020-10-02 11:51:40','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(252,'2020-10-02 11:51:41','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(253,'2020-10-02 11:51:42','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(254,'2020-10-02 11:51:43','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=14','UserRights/index.php',14,NULL,NULL,NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(255,'2020-10-02 11:51:45','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=14','UserRights/edit_user.php',14,NULL,NULL,NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(256,'2020-10-02 11:51:46','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=14','UserRights/edit_user.php',14,NULL,NULL,NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(257,'2020-10-02 11:51:48','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=14','DataEntry/record_home.php',14,NULL,NULL,NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(258,'2020-10-02 11:51:48','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=14&arm=1&id=1','DataEntry/record_home.php',14,NULL,'1',NULL,NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(259,'2020-10-02 11:51:49','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/DataEntry/index.php?pid=14&id=1&event_id=41&page=my_first_instrument','DataEntry/index.php',14,41,'1','my_first_instrument',NULL,'8784f0978ae8183bff8c1d2c4c73ee98'),
	(260,'2020-10-02 11:52:03','test_user','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=14&arm=1&id=1','DataEntry/record_home.php',14,NULL,NULL,NULL,NULL,'1ee7be494dbdebdd65da61b009f9bb9e'),
	(261,'2020-10-02 11:52:04','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=14&arm=1&id=1','DataEntry/record_home.php',14,NULL,'1',NULL,NULL,'1ee7be494dbdebdd65da61b009f9bb9e'),
	(262,'2020-10-02 11:52:06','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/index.php?pid=14&id=1&event_id=41&page=my_first_instrument','DataEntry/index.php',14,41,'1','my_first_instrument',NULL,'1ee7be494dbdebdd65da61b009f9bb9e'),
	(263,'2020-10-02 16:47:12','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//index.php','index.php',NULL,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(264,'2020-10-02 16:47:12','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//index.php','index.php',NULL,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(265,'2020-10-02 16:47:12','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(266,'2020-10-02 16:47:13','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(267,'2020-10-02 16:47:14','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(268,'2020-10-02 16:47:15','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(269,'2020-10-02 16:47:16','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/modify_project_setting_ajax.php?pid=14','ProjectSetup/modify_project_setting_ajax.php',14,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(270,'2020-10-02 16:47:16','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/modify_project_setting_ajax.php?pid=14','ProjectSetup/modify_project_setting_ajax.php',14,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(271,'2020-10-02 16:47:17','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'88ff935ec41bd750a91bc563fa755804'),
	(272,'2020-10-02 16:48:00','test_user','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'c98ab152b7627a2dddaab815141d95de'),
	(273,'2020-10-02 16:48:00','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'c98ab152b7627a2dddaab815141d95de'),
	(274,'2020-10-02 16:59:17','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//index.php','index.php',NULL,NULL,NULL,NULL,NULL,'0f3ab67308eac4309ca6d1207dc4662e'),
	(275,'2020-10-02 16:59:17','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//index.php','index.php',NULL,NULL,NULL,NULL,NULL,'0f3ab67308eac4309ca6d1207dc4662e'),
	(276,'2020-10-02 16:59:17','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'0f3ab67308eac4309ca6d1207dc4662e'),
	(277,'2020-10-02 16:59:17','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'0f3ab67308eac4309ca6d1207dc4662e'),
	(278,'2020-10-02 16:59:18','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'0f3ab67308eac4309ca6d1207dc4662e'),
	(279,'2020-10-02 16:59:19','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'0f3ab67308eac4309ca6d1207dc4662e'),
	(280,'2020-10-02 16:59:20','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectGeneral/change_project_status.php?pid=14','ProjectGeneral/change_project_status.php',14,NULL,NULL,NULL,NULL,'0f3ab67308eac4309ca6d1207dc4662e'),
	(281,'2020-10-02 16:59:21','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&msg=movetoprod','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'0f3ab67308eac4309ca6d1207dc4662e'),
	(282,'2020-10-05 12:08:37','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//index.php','index.php',NULL,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(283,'2020-10-05 12:08:38','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//index.php','index.php',NULL,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(284,'2020-10-05 12:08:38','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(285,'2020-10-05 12:08:38','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(286,'2020-10-05 12:08:39','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(287,'2020-10-05 12:08:39','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(288,'2020-10-05 12:08:40','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(289,'2020-10-05 12:08:41','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/draft_mode_enter.php?pid=14','Design/draft_mode_enter.php',14,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(290,'2020-10-05 12:08:41','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&msg=enabled_draft_mode','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(291,'2020-10-05 12:08:41','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(292,'2020-10-05 12:08:42','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14','Design/define_events.php',14,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(293,'2020-10-05 12:08:44','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=2','Design/define_events.php',14,NULL,NULL,NULL,NULL,'ed956b05231b2840d18186561f3529a1'),
	(294,'2020-10-05 12:34:30','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//index.php','index.php',NULL,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(295,'2020-10-05 12:34:30','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//index.php','index.php',NULL,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(296,'2020-10-05 12:34:30','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(297,'2020-10-05 12:34:31','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(298,'2020-10-05 12:34:31','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(299,'2020-10-05 12:34:32','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(300,'2020-10-05 12:34:33','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(301,'2020-10-05 12:34:34','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&page=my_first_instrument','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(302,'2020-10-05 12:34:37','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/check_field_name.php?pid=14&field_name=text2&old_field_name=','Design/check_field_name.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(303,'2020-10-05 12:34:37','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/check_field_name.php?pid=14&field_name=text2&old_field_name=','Design/check_field_name.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(304,'2020-10-05 12:34:37','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/edit_field.php?pid=14&page=my_first_instrument','Design/edit_field.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(305,'2020-10-05 12:34:38','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer_render_fields.php?pid=14&page=my_first_instrument&field_name=text2&edit_question=0&section_header=0','Design/online_designer_render_fields.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(306,'2020-10-05 12:34:39','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/draft_mode_review.php?pid=14','Design/draft_mode_review.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(307,'2020-10-05 12:34:40','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'cd1449526fc4c630fb80de291c7935cf'),
	(308,'2020-10-06 12:14:43','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(309,'2020-10-06 12:14:44','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(310,'2020-10-06 12:14:44','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/index.php','ControlCenter/index.php',NULL,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(311,'2020-10-06 12:14:45','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/version_check.php','ControlCenter/version_check.php',NULL,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(312,'2020-10-06 12:14:45','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ToDoList/index.php','ToDoList/index.php',NULL,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(313,'2020-10-06 12:14:46','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/project_modifications.php?pid=14&request_id=1&request_id=1','Design/project_modifications.php',14,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(314,'2020-10-06 12:14:47','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/draft_mode_reset.php?pid=14','Design/draft_mode_reset.php',14,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(315,'2020-10-06 12:14:47','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/draft_mode_notified.php?action=reset&pid=14&user_email=test_user@test.test&user_firstname=Test&user_lastname=User','Design/draft_mode_notified.php',14,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(316,'2020-10-06 12:14:48','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ToDoList/index.php','ToDoList/index.php',NULL,NULL,NULL,NULL,NULL,'1fae1d5ab025c392a726b7b7cbd35fb4'),
	(317,'2020-10-06 12:26:53','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'5d1e1663eb005371056fc69e578ff292'),
	(318,'2020-10-06 12:26:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'5d1e1663eb005371056fc69e578ff292'),
	(319,'2020-10-06 12:26:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'5d1e1663eb005371056fc69e578ff292'),
	(320,'2020-10-06 12:26:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'5d1e1663eb005371056fc69e578ff292'),
	(321,'2020-10-06 15:17:41','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//','index.php',NULL,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(322,'2020-10-06 15:17:41','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4//','index.php',NULL,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(323,'2020-10-06 15:17:41','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(324,'2020-10-06 15:17:41','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(325,'2020-10-06 15:17:42','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(326,'2020-10-06 15:17:43','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(327,'2020-10-06 15:17:44','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(328,'2020-10-06 15:17:45','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/draft_mode_enter.php?pid=14','Design/draft_mode_enter.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(329,'2020-10-06 15:17:45','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&msg=enabled_draft_mode','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(330,'2020-10-06 15:17:46','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&page=my_first_instrument','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(331,'2020-10-06 15:17:49','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/check_field_name.php?pid=14&field_name=text2&old_field_name=','Design/check_field_name.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(332,'2020-10-06 15:17:49','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/check_field_name.php?pid=14&field_name=text2&old_field_name=','Design/check_field_name.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(333,'2020-10-06 15:17:49','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/edit_field.php?pid=14&page=my_first_instrument','Design/edit_field.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(334,'2020-10-06 15:17:49','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer_render_fields.php?pid=14&page=my_first_instrument&field_name=text2&edit_question=0&section_header=0','Design/online_designer_render_fields.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(335,'2020-10-06 15:17:51','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/draft_mode_review.php?pid=14','Design/draft_mode_review.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(336,'2020-10-06 15:17:51','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/draft_mode_approve.php?pid=14&auto_change_token=940fd6b8c7c7767454c5579e435c7fae&now=2020-10-06+15%3A17%3A51','Design/draft_mode_approve.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(337,'2020-10-06 15:17:52','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&msg=autochangessaved&calcs_changed=0','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'026dd7055864ee35d1cf6aa1b9a6d74a'),
	(338,'2020-10-06 15:45:32','test_deleteuser','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'6f76c5988fe4ed17180ccfd2585c4025'),
	(339,'2020-10-06 15:45:32','test_deleteuser','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'6f76c5988fe4ed17180ccfd2585c4025'),
	(340,'2020-10-06 15:45:33','test_deleteuser','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'6f76c5988fe4ed17180ccfd2585c4025'),
	(341,'2020-10-06 15:45:33','test_deleteuser','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'6f76c5988fe4ed17180ccfd2585c4025'),
	(342,'2020-10-06 15:48:57','test_user','LOGIN_FAIL','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'6ab13518b07fc6d0fa3248778f5cdb3d'),
	(343,'2020-10-06 16:12:13','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'65f3c074b705570d5d3e8da5930e8669'),
	(344,'2020-10-06 16:12:13','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'65f3c074b705570d5d3e8da5930e8669'),
	(345,'2020-10-06 16:12:14','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'65f3c074b705570d5d3e8da5930e8669'),
	(346,'2020-10-06 16:12:14','test_user','PAGE_VIEW','172.18.0.1','chrome','85.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'65f3c074b705570d5d3e8da5930e8669'),
	(347,'2020-10-09 14:42:22','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(348,'2020-10-09 14:42:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(349,'2020-10-09 14:42:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(350,'2020-10-09 14:42:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(351,'2020-10-09 14:42:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(352,'2020-10-09 14:42:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(353,'2020-10-09 14:42:25','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(354,'2020-10-09 14:42:26','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(355,'2020-10-09 14:42:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/draft_mode_enter.php?pid=14','Design/draft_mode_enter.php',14,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(356,'2020-10-09 14:42:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&msg=enabled_draft_mode','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(357,'2020-10-09 14:42:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(358,'2020-10-09 14:42:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14','Design/define_events.php',14,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(359,'2020-10-09 14:42:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/designate_forms.php?pid=14','Design/designate_forms.php',14,NULL,NULL,NULL,NULL,'90e9a0b69461fc14c32d544dfdfcb8a1'),
	(360,'2020-10-09 15:33:31','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'5fc722542217bf75c123ba90de37d091'),
	(361,'2020-10-09 15:33:31','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'5fc722542217bf75c123ba90de37d091'),
	(362,'2020-10-09 15:33:31','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'5fc722542217bf75c123ba90de37d091'),
	(363,'2020-10-09 15:33:32','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ControlCenter/user_settings.php','ControlCenter/user_settings.php',NULL,NULL,NULL,NULL,NULL,'5fc722542217bf75c123ba90de37d091'),
	(364,'2020-10-12 12:12:18','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(365,'2020-10-12 12:12:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(366,'2020-10-12 12:12:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(367,'2020-10-12 12:12:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(368,'2020-10-12 12:12:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(369,'2020-10-12 12:12:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(370,'2020-10-12 12:12:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(371,'2020-10-12 12:12:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(372,'2020-10-12 12:12:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(373,'2020-10-12 12:12:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14','Design/define_events.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(374,'2020-10-12 12:12:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php?pid=14&arm=1&action=add&offset_min=0&offset_max=0&day_offset=9999&descrip=Event%203&custom_event_label=','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(375,'2020-10-12 12:12:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=3','Design/define_events.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(376,'2020-10-12 12:12:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php?pid=14&arm=3&action=add_arm&arm_name=Arm%203','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(377,'2020-10-12 12:12:25','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=3','Design/define_events.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(378,'2020-10-12 12:12:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=1','Design/define_events.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(379,'2020-10-12 12:12:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php?pid=14&arm=1&edit=&event_id=45','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(380,'2020-10-12 12:12:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(381,'2020-10-12 12:12:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=2','Design/define_events.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(382,'2020-10-12 12:12:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php?arm_name=Event%201&pid=14&arm=2&action=rename_arm','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(383,'2020-10-12 12:12:30','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events_ajax.php?pid=14&arm=2&action=add_arm&arm_name=Arm%20Two&old_arm=2','Design/define_events_ajax.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(384,'2020-10-12 12:12:31','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/define_events.php?pid=14&arm=2','Design/define_events.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(385,'2020-10-12 12:12:32','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(386,'2020-10-12 12:12:32','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(387,'2020-10-12 12:12:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/draft_mode_review.php?pid=14','Design/draft_mode_review.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(388,'2020-10-12 12:12:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/draft_mode_approve.php?pid=14&auto_change_token=940fd6b8c7c7767454c5579e435c7fae&now=2020-10-12+12%3A12%3A34','Design/draft_mode_approve.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(389,'2020-10-12 12:12:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=14&msg=autochangessaved&calcs_changed=0','Design/online_designer.php',14,NULL,NULL,NULL,NULL,'4f98c86a8833d8f4b3bc0cd798212cba'),
	(390,'2020-10-12 15:44:47','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4d82e8c3ce274dd3202606989e9bfe65'),
	(391,'2020-10-12 15:44:47','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4d82e8c3ce274dd3202606989e9bfe65'),
	(392,'2020-10-12 15:44:47','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'4d82e8c3ce274dd3202606989e9bfe65'),
	(393,'2020-10-12 15:44:48','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/search_user.php?searchEmail=1&searchSuspended=1&searchSuspended=1&term=test_user%40test.test','UserRights/search_user.php',NULL,NULL,NULL,NULL,NULL,'4d82e8c3ce274dd3202606989e9bfe65'),
	(394,'2020-10-12 15:44:48','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'4d82e8c3ce274dd3202606989e9bfe65'),
	(395,'2020-10-12 15:44:48','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php?p&userid=test_user','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'4d82e8c3ce274dd3202606989e9bfe65'),
	(396,'2020-10-12 15:45:10','test_admin','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(397,'2020-10-12 15:45:10','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(398,'2020-10-12 15:45:21','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/index.php','ControlCenter/index.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(399,'2020-10-12 15:45:22','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/version_check.php','ControlCenter/version_check.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(400,'2020-10-12 15:45:23','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(401,'2020-10-12 15:45:27','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/search_user.php?searchEmail=1&searchSuspended=1&searchSuspended=1&term=te','UserRights/search_user.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(402,'2020-10-12 15:45:30','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?route=ControlCenterController:getUserIdByUsername','ControlCenterController:getUserIdByUsername',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(403,'2020-10-12 15:45:31','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php?view_all=1','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(404,'2020-10-12 15:45:41','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(405,'2020-10-12 15:45:44','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(406,'2020-10-12 15:45:45','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=14','ProjectSetup/other_functionality.php',14,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(407,'2020-10-12 15:46:37','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(408,'2020-10-12 15:46:39','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/index.php','ControlCenter/index.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(409,'2020-10-12 15:46:40','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/version_check.php','ControlCenter/version_check.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(410,'2020-10-12 15:46:45','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/superusers.php','ControlCenter/superusers.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(411,'2020-10-12 15:47:13','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(412,'2020-10-12 15:49:43','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(413,'2020-10-12 15:49:46','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php?view_all=1','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(414,'2020-10-12 15:49:58','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(415,'2020-10-12 15:50:00','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=14','ProjectSetup/other_functionality.php',14,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(416,'2020-10-12 15:50:05','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/copy_project_form.php?pid=14','ProjectGeneral/copy_project_form.php',14,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(417,'2020-10-12 15:50:43','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/create_project.php','ProjectGeneral/create_project.php',NULL,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(418,'2020-10-12 15:50:43','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16&msg=copiedproject','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(419,'2020-10-12 15:50:44','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2FProjectSetup%2Findex.php%3Fpid%3D16%26msg%3Dcopiedproject&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(420,'2020-10-12 15:50:44','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16&msg=copiedproject&__record_cache_complete=1','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(421,'2020-10-12 15:50:55','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(422,'2020-10-12 15:51:13','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(423,'2020-10-12 15:52:52','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(424,'2020-10-12 15:53:18','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(425,'2020-10-12 15:53:19','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(426,'2020-10-12 15:53:30','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=16','Design/online_designer.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(427,'2020-10-12 15:53:39','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/Design/online_designer.php?pid=16&page=my_first_instrument','Design/online_designer.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(428,'2020-10-12 15:53:47','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(429,'2020-10-12 15:54:10','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/modify_project_setting_ajax.php?pid=16','ProjectSetup/modify_project_setting_ajax.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(430,'2020-10-12 15:54:11','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(431,'2020-10-12 15:54:11','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2FProjectSetup%2Findex.php%3Fpid%3D16&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(432,'2020-10-12 15:54:11','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16&__record_cache_complete=1','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(433,'2020-10-12 15:54:38','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/edit_project_settings.php?pid=16&action=customize','ProjectGeneral/edit_project_settings.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(434,'2020-10-12 15:54:38','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16&msg=projectmodified','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(435,'2020-10-12 15:54:53','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(436,'2020-10-12 15:54:55','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16&id=2&auto=1&arm=1','DataEntry/record_home.php',16,NULL,'2',NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(437,'2020-10-12 15:55:20','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/index.php?pid=16&id=2&event_id=46&page=my_first_instrument&auto=1','DataEntry/index.php',16,46,'2','my_first_instrument',NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(438,'2020-10-12 15:55:48','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/index.php?pid=16&event_id=46&page=my_first_instrument&instance=1','DataEntry/index.php',16,46,NULL,'my_first_instrument',NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(439,'2020-10-12 15:55:49','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16&id=2&msg=add','DataEntry/record_home.php',16,NULL,'2',NULL,NULL,'4cc47d5a298aca324df0012673cebcd9'),
	(440,'2020-10-15 10:11:57','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'dd9ae5c6965123b18e86874196902f47'),
	(441,'2020-10-15 10:11:57','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'dd9ae5c6965123b18e86874196902f47'),
	(442,'2020-10-15 10:11:57','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'dd9ae5c6965123b18e86874196902f47'),
	(443,'2020-10-15 10:11:57','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'dd9ae5c6965123b18e86874196902f47'),
	(444,'2020-10-15 10:11:58','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'dd9ae5c6965123b18e86874196902f47'),
	(445,'2020-10-15 10:11:59','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'dd9ae5c6965123b18e86874196902f47'),
	(446,'2020-10-15 10:12:00','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'dd9ae5c6965123b18e86874196902f47'),
	(447,'2020-10-15 10:12:40','test_admin','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16&logout=1','UserRights/index.php',16,NULL,NULL,NULL,NULL,'8dedffc197ad91a63ba31c9a5eaba728'),
	(448,'2020-10-15 10:12:40','test_admin','LOGOUT','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16&logout=1','UserRights/index.php',16,NULL,NULL,NULL,NULL,'8dedffc197ad91a63ba31c9a5eaba728'),
	(449,'2020-10-15 10:12:45','test_admin','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'d0daf0ee4c840d18f5c119faa3011f0c'),
	(450,'2020-10-15 10:12:45','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'d0daf0ee4c840d18f5c119faa3011f0c'),
	(451,'2020-10-15 10:12:51','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'d0daf0ee4c840d18f5c119faa3011f0c'),
	(452,'2020-10-15 10:13:02','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'d0daf0ee4c840d18f5c119faa3011f0c'),
	(453,'2020-10-15 11:07:51','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'79ba075ef8814fed18b907b1989e4254'),
	(454,'2020-10-15 11:07:51','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'79ba075ef8814fed18b907b1989e4254'),
	(455,'2020-10-15 11:07:51','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'79ba075ef8814fed18b907b1989e4254'),
	(456,'2020-10-15 11:07:51','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'79ba075ef8814fed18b907b1989e4254'),
	(457,'2020-10-15 11:07:52','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'79ba075ef8814fed18b907b1989e4254'),
	(458,'2020-10-15 11:07:53','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'79ba075ef8814fed18b907b1989e4254'),
	(459,'2020-10-15 11:07:54','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'79ba075ef8814fed18b907b1989e4254'),
	(460,'2020-10-15 15:38:35','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7b9c29cfba9e89648ef1e2f76cb19574'),
	(461,'2020-10-15 15:38:35','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7b9c29cfba9e89648ef1e2f76cb19574'),
	(462,'2020-10-15 15:38:36','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php?view_all=1','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'7b9c29cfba9e89648ef1e2f76cb19574'),
	(463,'2020-10-15 15:38:37','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'7b9c29cfba9e89648ef1e2f76cb19574'),
	(464,'2020-10-15 15:38:38','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'7b9c29cfba9e89648ef1e2f76cb19574'),
	(465,'2020-10-15 15:38:40','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/set_user_expiration.php?pid=16','UserRights/set_user_expiration.php',16,NULL,NULL,NULL,NULL,'7b9c29cfba9e89648ef1e2f76cb19574'),
	(466,'2020-10-15 15:40:19','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'d9d831ff31953da63d4759232e11ac17'),
	(467,'2020-10-15 15:40:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'d9d831ff31953da63d4759232e11ac17'),
	(468,'2020-10-15 15:40:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'d9d831ff31953da63d4759232e11ac17'),
	(469,'2020-10-15 15:40:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'d9d831ff31953da63d4759232e11ac17'),
	(470,'2020-10-15 15:40:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'d9d831ff31953da63d4759232e11ac17'),
	(471,'2020-10-15 15:41:49','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(472,'2020-10-15 15:41:49','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(473,'2020-10-15 15:41:49','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php?view_all=1','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(474,'2020-10-15 15:41:51','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(475,'2020-10-15 15:41:53','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(476,'2020-10-15 15:41:54','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/set_user_expiration.php?pid=16','UserRights/set_user_expiration.php',16,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(477,'2020-10-15 15:41:55','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(478,'2020-10-15 15:41:56','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(479,'2020-10-15 15:41:58','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'1220a6d52cc3afac22731b2db6d44fb9'),
	(480,'2020-10-15 15:43:36','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'9cb342c50bef408b17c00d6c96a30162'),
	(481,'2020-10-15 15:43:36','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'9cb342c50bef408b17c00d6c96a30162'),
	(482,'2020-10-15 15:43:36','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ControlCenter/view_projects.php?view_all=1','ControlCenter/view_projects.php',NULL,NULL,NULL,NULL,NULL,'9cb342c50bef408b17c00d6c96a30162'),
	(483,'2020-10-15 15:43:38','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'9cb342c50bef408b17c00d6c96a30162'),
	(484,'2020-10-15 15:43:39','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'9cb342c50bef408b17c00d6c96a30162'),
	(485,'2020-10-15 15:43:40','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'9cb342c50bef408b17c00d6c96a30162'),
	(486,'2020-10-15 15:43:41','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'9cb342c50bef408b17c00d6c96a30162'),
	(487,'2020-10-15 15:45:20','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'99711c86c4331ccaabc79b438f97d3c5'),
	(488,'2020-10-15 15:45:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'99711c86c4331ccaabc79b438f97d3c5'),
	(489,'2020-10-15 15:45:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'99711c86c4331ccaabc79b438f97d3c5'),
	(490,'2020-10-15 15:45:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'99711c86c4331ccaabc79b438f97d3c5'),
	(491,'2020-10-15 15:45:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'99711c86c4331ccaabc79b438f97d3c5'),
	(492,'2020-10-15 15:45:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'99711c86c4331ccaabc79b438f97d3c5'),
	(493,'2020-10-15 15:47:21','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(494,'2020-10-15 15:47:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(495,'2020-10-15 15:47:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(496,'2020-10-15 15:47:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(497,'2020-10-15 15:47:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(498,'2020-10-15 15:47:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(499,'2020-10-15 15:47:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(500,'2020-10-15 15:47:25','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(501,'2020-10-15 15:47:26','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(502,'2020-10-15 15:47:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'7bb5f97f0b830f253ceeb7971632d08e'),
	(503,'2020-10-15 15:49:20','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(504,'2020-10-15 15:49:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(505,'2020-10-15 15:49:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(506,'2020-10-15 15:49:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(507,'2020-10-15 15:49:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(508,'2020-10-15 15:49:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(509,'2020-10-15 15:49:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(510,'2020-10-15 15:49:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(511,'2020-10-15 15:49:25','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(512,'2020-10-15 15:49:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'4ab07e966d5e90e88ef5f718b73ee1d0'),
	(513,'2020-10-15 17:33:27','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(514,'2020-10-15 17:33:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(515,'2020-10-15 17:33:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(516,'2020-10-15 17:33:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(517,'2020-10-15 17:33:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(518,'2020-10-15 17:33:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(519,'2020-10-15 17:33:30','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(520,'2020-10-15 17:33:31','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(521,'2020-10-15 17:33:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(522,'2020-10-15 17:33:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'0ca131e52b87d887ae2a430ebb7d6567'),
	(523,'2020-10-15 17:42:40','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(524,'2020-10-15 17:42:40','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(525,'2020-10-15 17:42:40','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(526,'2020-10-15 17:42:40','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(527,'2020-10-15 17:42:41','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(528,'2020-10-15 17:42:42','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(529,'2020-10-15 17:42:43','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(530,'2020-10-15 17:42:44','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(531,'2020-10-15 17:42:45','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(532,'2020-10-15 17:42:47','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'aa6acf3a5a1f5de793d1ef4c8aca9ec5'),
	(533,'2020-10-15 17:44:22','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(534,'2020-10-15 17:44:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(535,'2020-10-15 17:44:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(536,'2020-10-15 17:44:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(537,'2020-10-15 17:44:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(538,'2020-10-15 17:44:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(539,'2020-10-15 17:44:25','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(540,'2020-10-15 17:44:26','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(541,'2020-10-15 17:44:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(542,'2020-10-15 17:44:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'b60dc65a02ad4f3cbe5656df681f1938'),
	(543,'2020-10-16 11:00:28','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(544,'2020-10-16 11:00:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(545,'2020-10-16 11:00:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(546,'2020-10-16 11:00:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(547,'2020-10-16 11:00:30','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(548,'2020-10-16 11:00:31','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(549,'2020-10-16 11:00:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(550,'2020-10-16 11:00:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(551,'2020-10-16 11:00:36','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(552,'2020-10-16 11:00:38','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'94731a214521c0de569259c736820f21'),
	(553,'2020-10-16 11:05:54','test_user','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7b48e8c60f375cd2b2090a6aff6307ef'),
	(554,'2020-10-16 11:05:54','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7b48e8c60f375cd2b2090a6aff6307ef'),
	(555,'2020-10-16 11:05:58','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'7b48e8c60f375cd2b2090a6aff6307ef'),
	(556,'2020-10-16 11:06:13','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'7b48e8c60f375cd2b2090a6aff6307ef'),
	(557,'2020-10-16 11:09:14','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/keep_alive.php','ProjectGeneral/keep_alive.php',NULL,NULL,NULL,NULL,NULL,'7b48e8c60f375cd2b2090a6aff6307ef'),
	(558,'2020-10-16 11:09:25','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'7b48e8c60f375cd2b2090a6aff6307ef'),
	(559,'2020-10-16 11:09:42','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'7b48e8c60f375cd2b2090a6aff6307ef'),
	(560,'2020-10-16 11:22:55','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(561,'2020-10-16 11:22:55','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(562,'2020-10-16 11:22:55','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(563,'2020-10-16 11:22:55','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(564,'2020-10-16 11:22:56','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(565,'2020-10-16 11:22:57','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(566,'2020-10-16 11:22:58','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(567,'2020-10-16 11:22:59','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(568,'2020-10-16 11:23:00','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(569,'2020-10-16 11:23:02','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'314c61aa8f59681dbd6d4afc1894ed9d'),
	(570,'2020-10-16 11:29:54','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(571,'2020-10-16 11:29:54','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(572,'2020-10-16 11:29:54','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(573,'2020-10-16 11:29:54','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(574,'2020-10-16 11:29:55','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(575,'2020-10-16 11:29:56','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(576,'2020-10-16 11:29:56','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(577,'2020-10-16 11:29:58','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(578,'2020-10-16 11:29:59','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(579,'2020-10-16 11:30:01','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'4b8802409bd4d72a7dc90cbf295fc90a'),
	(580,'2020-10-16 11:39:19','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(581,'2020-10-16 11:39:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(582,'2020-10-16 11:39:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(583,'2020-10-16 11:39:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(584,'2020-10-16 11:39:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(585,'2020-10-16 11:39:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(586,'2020-10-16 11:39:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(587,'2020-10-16 11:39:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(588,'2020-10-16 11:39:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(589,'2020-10-16 11:39:26','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'11008d861e6e85e0745743dcbdc432c5'),
	(590,'2020-10-16 11:40:04','test_user','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(591,'2020-10-16 11:40:04','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(592,'2020-10-16 11:40:09','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(593,'2020-10-16 11:40:17','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(594,'2020-10-16 11:49:09','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/keep_alive.php','ProjectGeneral/keep_alive.php',NULL,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(595,'2020-10-16 11:54:29','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/keep_alive.php','ProjectGeneral/keep_alive.php',NULL,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(596,'2020-10-16 11:55:21','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(597,'2020-10-16 11:55:55','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(598,'2020-10-16 11:55:59','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(599,'2020-10-16 11:57:08','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(600,'2020-10-16 11:57:14','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(601,'2020-10-16 11:57:20','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(602,'2020-10-16 11:57:24','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(603,'2020-10-16 11:57:51','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(604,'2020-10-16 11:58:33','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(605,'2020-10-16 11:58:41','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/change_project_status.php?pid=16','ProjectGeneral/change_project_status.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(606,'2020-10-16 11:58:42','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=16&msg=movetoprod','ProjectSetup/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(607,'2020-10-16 11:58:50','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(608,'2020-10-16 11:59:02','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(609,'2020-10-16 11:59:19','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(610,'2020-10-16 11:59:25','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(611,'2020-10-16 11:59:36','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(612,'2020-10-16 11:59:40','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(613,'2020-10-16 11:59:43','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(614,'2020-10-16 12:03:41','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/keep_alive.php','ProjectGeneral/keep_alive.php',NULL,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(615,'2020-10-16 12:05:12','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(616,'2020-10-16 12:05:16','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(617,'2020-10-16 12:05:23','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(618,'2020-10-16 12:05:28','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'cf818471d3eb01af81626816ea652f1c'),
	(619,'2020-10-16 14:37:47','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(620,'2020-10-16 14:37:47','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(621,'2020-10-16 14:37:48','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(622,'2020-10-16 14:37:48','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(623,'2020-10-16 14:37:49','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(624,'2020-10-16 14:37:49','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(625,'2020-10-16 14:37:51','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(626,'2020-10-16 14:37:52','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(627,'2020-10-16 14:37:52','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(628,'2020-10-16 14:37:54','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(629,'2020-10-16 14:37:55','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'7332ccfe9e5a3ff11184573737dbbd6d'),
	(630,'2020-10-16 14:45:32','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(631,'2020-10-16 14:45:32','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(632,'2020-10-16 14:45:32','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(633,'2020-10-16 14:45:32','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(634,'2020-10-16 14:45:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(635,'2020-10-16 14:45:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(636,'2020-10-16 14:45:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(637,'2020-10-16 14:45:36','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(638,'2020-10-16 14:45:37','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(639,'2020-10-16 14:45:39','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'8cd8795af0b5f36123ddfb68ab7ba409'),
	(640,'2020-10-16 14:51:22','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(641,'2020-10-16 14:51:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(642,'2020-10-16 14:51:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(643,'2020-10-16 14:51:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(644,'2020-10-16 14:51:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(645,'2020-10-16 14:51:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(646,'2020-10-16 14:51:25','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(647,'2020-10-16 14:51:26','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(648,'2020-10-16 14:51:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'81daf7c6cdf0e66f66cea57c5e81ab4f'),
	(649,'2020-10-16 15:24:04','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(650,'2020-10-16 15:24:04','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(651,'2020-10-16 15:24:04','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(652,'2020-10-16 15:24:04','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(653,'2020-10-16 15:24:05','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(654,'2020-10-16 15:24:06','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(655,'2020-10-16 15:24:07','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(656,'2020-10-16 15:24:08','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(657,'2020-10-16 15:24:09','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'dfca537a3573c1832493e6cd35ed0c70'),
	(658,'2020-10-16 15:34:56','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(659,'2020-10-16 15:34:56','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(660,'2020-10-16 15:34:56','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(661,'2020-10-16 15:34:56','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(662,'2020-10-16 15:34:57','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(663,'2020-10-16 15:34:58','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(664,'2020-10-16 15:34:59','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(665,'2020-10-16 15:35:00','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(666,'2020-10-16 15:35:01','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(667,'2020-10-16 15:35:03','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'e229c6dc493df0eabae3fe734d20468f'),
	(668,'2020-10-16 15:55:17','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(669,'2020-10-16 15:55:17','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(670,'2020-10-16 15:55:17','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(671,'2020-10-16 15:55:17','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(672,'2020-10-16 15:55:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(673,'2020-10-16 15:55:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(674,'2020-10-16 15:55:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(675,'2020-10-16 15:55:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(676,'2020-10-16 15:55:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'db742ac5f108b02ae78c106f79e0440a'),
	(677,'2020-10-16 16:10:01','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(678,'2020-10-16 16:10:01','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(679,'2020-10-16 16:10:02','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(680,'2020-10-16 16:10:02','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(681,'2020-10-16 16:10:03','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(682,'2020-10-16 16:10:03','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(683,'2020-10-16 16:10:04','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(684,'2020-10-16 16:10:05','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(685,'2020-10-16 16:10:06','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'1be36af555bdb4e681a532e9f459a938'),
	(686,'2020-10-16 16:18:17','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(687,'2020-10-16 16:18:17','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(688,'2020-10-16 16:18:17','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(689,'2020-10-16 16:18:17','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(690,'2020-10-16 16:18:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(691,'2020-10-16 16:18:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(692,'2020-10-16 16:18:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(693,'2020-10-16 16:18:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(694,'2020-10-16 16:18:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'f4b2f0555b506be8597049c869f95546'),
	(695,'2020-10-19 11:33:21','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(696,'2020-10-19 11:33:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(697,'2020-10-19 11:33:21','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(698,'2020-10-19 11:33:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(699,'2020-10-19 11:33:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(700,'2020-10-19 11:33:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(701,'2020-10-19 11:33:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(702,'2020-10-19 11:33:26','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(703,'2020-10-19 11:33:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(704,'2020-10-19 11:33:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(705,'2020-10-19 11:33:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16&arm=1&id=1','DataEntry/record_home.php',16,NULL,'1',NULL,NULL,'7d0131c56e5a6605a438fc0fda604909'),
	(706,'2020-10-19 11:48:35','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(707,'2020-10-19 11:48:35','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(708,'2020-10-19 11:48:35','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(709,'2020-10-19 11:48:35','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(710,'2020-10-19 11:48:36','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(711,'2020-10-19 11:48:37','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(712,'2020-10-19 11:48:38','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(713,'2020-10-19 11:48:39','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(714,'2020-10-19 11:48:40','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(715,'2020-10-19 11:48:42','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(716,'2020-10-19 11:48:43','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16&arm=1&id=1','DataEntry/record_home.php',16,NULL,'1',NULL,NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(717,'2020-10-19 11:48:43','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/index.php?pid=16&id=1&event_id=46&page=my_first_instrument','DataEntry/index.php',16,46,'1','my_first_instrument',NULL,'ea0ceaed9c0568cba3bcc8c51170e02f'),
	(718,'2020-10-19 11:56:22','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(719,'2020-10-19 11:56:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(720,'2020-10-19 11:56:22','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(721,'2020-10-19 11:56:23','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(722,'2020-10-19 11:56:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(723,'2020-10-19 11:56:24','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(724,'2020-10-19 11:56:25','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(725,'2020-10-19 11:56:27','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(726,'2020-10-19 11:56:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(727,'2020-10-19 11:56:30','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(728,'2020-10-19 11:56:31','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16&arm=1&id=1','DataEntry/record_home.php',16,NULL,'1',NULL,NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(729,'2020-10-19 11:56:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/index.php?pid=16&id=1&event_id=46&page=my_first_instrument','DataEntry/index.php',16,46,'1','my_first_instrument',NULL,'bc5c5cb8d8eec0275d9f8f98a710bc34'),
	(730,'2020-10-19 15:13:28','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(731,'2020-10-19 15:13:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(732,'2020-10-19 15:13:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(733,'2020-10-19 15:13:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(734,'2020-10-19 15:13:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(735,'2020-10-19 15:13:30','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(736,'2020-10-19 15:13:31','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(737,'2020-10-19 15:13:32','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(738,'2020-10-19 15:13:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(739,'2020-10-19 15:13:35','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16','DataEntry/record_home.php',16,NULL,NULL,NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(740,'2020-10-19 15:13:36','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/record_home.php?pid=16&arm=1&id=1','DataEntry/record_home.php',16,NULL,'1',NULL,NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(741,'2020-10-19 15:13:36','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/DataEntry/index.php?pid=16&id=1&event_id=46&page=my_first_instrument','DataEntry/index.php',16,46,'1','my_first_instrument',NULL,'99d92a599d69a4e3257a86118a3f66b5'),
	(742,'2020-10-19 15:26:02','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(743,'2020-10-19 15:26:03','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(744,'2020-10-19 15:26:03','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(745,'2020-10-19 15:26:03','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(746,'2020-10-19 15:26:04','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(747,'2020-10-19 15:26:04','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(748,'2020-10-19 15:26:05','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(749,'2020-10-19 15:26:06','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(750,'2020-10-19 15:26:07','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'480afc4ded921a22592dc440af19505f'),
	(751,'2020-10-19 16:13:47','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(752,'2020-10-19 16:13:48','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(753,'2020-10-19 16:13:48','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(754,'2020-10-19 16:13:48','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(755,'2020-10-19 16:13:49','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(756,'2020-10-19 16:13:49','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(757,'2020-10-19 16:13:50','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2Findex.php%3Fpid%3D16&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',16,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(758,'2020-10-19 16:13:50','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__record_cache_complete=1','index.php',16,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(759,'2020-10-19 16:13:51','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(760,'2020-10-19 16:13:51','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(761,'2020-10-19 16:13:53','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(762,'2020-10-19 16:13:54','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(763,'2020-10-19 16:13:55','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'9173dffe40a992f3a02975307e088a37'),
	(764,'2020-10-19 16:35:16','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(765,'2020-10-19 16:35:16','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(766,'2020-10-19 16:35:16','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(767,'2020-10-19 16:35:16','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(768,'2020-10-19 16:35:17','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(769,'2020-10-19 16:35:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(770,'2020-10-19 16:35:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2Findex.php%3Fpid%3D16&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',16,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(771,'2020-10-19 16:35:18','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__record_cache_complete=1','index.php',16,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(772,'2020-10-19 16:35:19','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(773,'2020-10-19 16:35:20','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'987618fbb68b5aee3c579d7af53d519e'),
	(774,'2020-10-20 10:05:47','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(775,'2020-10-20 10:05:47','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(776,'2020-10-20 10:05:47','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(777,'2020-10-20 10:05:48','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(778,'2020-10-20 10:05:48','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(779,'2020-10-20 10:05:49','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(780,'2020-10-20 10:05:50','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(781,'2020-10-20 10:05:51','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(782,'2020-10-20 10:05:52','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/edit_user.php?pid=16','UserRights/edit_user.php',16,NULL,NULL,NULL,NULL,'3dffa84afb7070d9d6af32e87d8c0a96'),
	(783,'2020-10-20 12:28:33','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(784,'2020-10-20 12:28:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(785,'2020-10-20 12:28:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(786,'2020-10-20 12:28:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(787,'2020-10-20 12:28:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(788,'2020-10-20 12:28:35','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(789,'2020-10-20 12:28:35','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2Findex.php%3Fpid%3D16&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',16,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(790,'2020-10-20 12:28:36','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__record_cache_complete=1','index.php',16,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(791,'2020-10-20 12:28:36','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(792,'2020-10-20 12:28:38','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/check_user_rights.php?pid=16','UserRights/check_user_rights.php',16,NULL,NULL,NULL,NULL,'8ea09041ba5586ebd65604dcee42cd6a'),
	(793,'2020-10-20 13:31:12','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(794,'2020-10-20 13:31:13','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(795,'2020-10-20 13:31:13','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(796,'2020-10-20 13:31:13','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(797,'2020-10-20 13:31:14','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(798,'2020-10-20 13:31:14','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(799,'2020-10-20 13:31:15','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(800,'2020-10-20 13:31:17','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/check_user_rights.php?pid=16','UserRights/check_user_rights.php',16,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(801,'2020-10-20 13:31:17','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/assign_user.php?pid=16','UserRights/assign_user.php',16,NULL,NULL,NULL,NULL,'c055f5372227f10068a2688bfcddff7d'),
	(802,'2020-10-20 13:46:34','test_admin','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(803,'2020-10-20 13:46:35','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(804,'2020-10-20 13:46:35','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(805,'2020-10-20 13:46:35','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(806,'2020-10-20 13:46:36','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(807,'2020-10-20 13:46:36','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(808,'2020-10-20 13:46:37','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__redirect=http%3A%2F%2Flocalhost%2Fredcap_v10.6.4%2Findex.php%3Fpid%3D16&route=DataEntryController:buildRecordListCache','DataEntryController:buildRecordListCache',16,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(809,'2020-10-20 13:46:37','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=16&__record_cache_complete=1','index.php',16,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(810,'2020-10-20 13:46:38','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(811,'2020-10-20 13:46:39','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/check_user_rights.php?pid=16','UserRights/check_user_rights.php',16,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(812,'2020-10-20 13:46:39','test_admin','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/assign_user.php?pid=16','UserRights/assign_user.php',16,NULL,NULL,NULL,NULL,'5ddcc89a2184ec34f8d784569acc5bc1'),
	(813,'2020-10-20 13:47:26','test_admin','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(814,'2020-10-20 13:47:26','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=16','UserRights/index.php',16,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(815,'2020-10-20 13:47:31','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(816,'2020-10-20 13:47:34','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?pid=16','index.php',16,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(817,'2020-10-20 13:47:41','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=16','ProjectSetup/other_functionality.php',16,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(818,'2020-10-20 13:47:45','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/delete_project.php?pid=16','ProjectGeneral/delete_project.php',16,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(819,'2020-10-20 13:47:54','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/delete_project.php?pid=16','ProjectGeneral/delete_project.php',16,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(820,'2020-10-20 13:47:58','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(821,'2020-10-20 13:48:04','test_admin','LOGOUT','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects&logout=1','index.php',NULL,NULL,NULL,NULL,NULL,'fbed51a6f72c5c20f4db1a71e5725be9'),
	(822,'2020-10-20 13:57:36','test_user','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'ea799ca51c4a3b29503aff4ca413a705'),
	(823,'2020-10-20 13:57:36','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'ea799ca51c4a3b29503aff4ca413a705'),
	(824,'2020-10-20 13:57:48','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'ea799ca51c4a3b29503aff4ca413a705'),
	(825,'2020-10-20 13:57:52','test_user','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'ea799ca51c4a3b29503aff4ca413a705'),
	(826,'2020-10-20 13:58:11','test_user','LOGOUT','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14&logout=1','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'ea799ca51c4a3b29503aff4ca413a705'),
	(827,'2020-10-20 13:58:16','test_admin','LOGIN_SUCCESS','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(828,'2020-10-20 13:58:16','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(829,'2020-10-20 13:58:22','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/modify_project_setting_ajax.php?pid=14','ProjectSetup/modify_project_setting_ajax.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(830,'2020-10-20 13:58:22','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(831,'2020-10-20 13:58:31','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(832,'2020-10-20 13:58:33','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(833,'2020-10-20 13:58:40','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/other_functionality.php?pid=14','ProjectSetup/other_functionality.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(834,'2020-10-20 13:58:48','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectGeneral/change_project_status.php?pid=14','ProjectGeneral/change_project_status.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(835,'2020-10-20 13:58:48','test_admin','PAGE_VIEW','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?msg=movetodev&pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(836,'2020-10-20 13:59:07','test_admin','LOGOUT','172.18.0.1','firefox','82.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?msg=movetodev&pid=14&logout=1','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'6bf7b1fdae4b464d81cdacc6080f8dc2'),
	(837,'2020-10-20 15:10:26','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'c5a909f100fa90a82c93bab5d1fd5526'),
	(838,'2020-10-20 15:10:26','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'c5a909f100fa90a82c93bab5d1fd5526'),
	(839,'2020-10-20 15:10:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'c5a909f100fa90a82c93bab5d1fd5526'),
	(840,'2020-10-20 15:10:28','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'c5a909f100fa90a82c93bab5d1fd5526'),
	(841,'2020-10-20 15:10:29','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'c5a909f100fa90a82c93bab5d1fd5526'),
	(842,'2020-10-20 15:10:30','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'c5a909f100fa90a82c93bab5d1fd5526'),
	(843,'2020-10-20 15:10:31','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/index.php?pid=14','index.php',14,NULL,NULL,NULL,NULL,'c5a909f100fa90a82c93bab5d1fd5526'),
	(844,'2020-10-20 15:10:32','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/UserRights/index.php?pid=14','UserRights/index.php',14,NULL,NULL,NULL,NULL,'c5a909f100fa90a82c93bab5d1fd5526'),
	(845,'2020-10-20 15:19:33','test_user','LOGIN_SUCCESS','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'5f3e925023c3572d054f6da9d32d17f9'),
	(846,'2020-10-20 15:19:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'5f3e925023c3572d054f6da9d32d17f9'),
	(847,'2020-10-20 15:19:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/','index.php',NULL,NULL,NULL,NULL,NULL,'5f3e925023c3572d054f6da9d32d17f9'),
	(848,'2020-10-20 15:19:33','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/','index.php',NULL,NULL,NULL,NULL,NULL,'5f3e925023c3572d054f6da9d32d17f9'),
	(849,'2020-10-20 15:19:34','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/index.php?action=myprojects','index.php',NULL,NULL,NULL,NULL,NULL,'5f3e925023c3572d054f6da9d32d17f9'),
	(850,'2020-10-20 15:19:35','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'5f3e925023c3572d054f6da9d32d17f9'),
	(851,'2020-10-20 15:19:36','test_user','PAGE_VIEW','172.18.0.1','chrome','86.0','http://localhost/redcap_v10.6.4/ProjectSetup/index.php?pid=14','ProjectSetup/index.php',14,NULL,NULL,NULL,NULL,'5f3e925023c3572d054f6da9d32d17f9');

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
	(82,63,4271,908,0.321,0,NULL),
	(83,64,4272,908,0.367,0,2),
	(84,65,4273,908,0.587,0,2),
	(85,66,4274,908,0.401,1,2),
	(86,NULL,4275,797,0.633,1,2),
	(87,67,4276,933,0.499,0,2),
	(88,NULL,4277,723,0.49,1,2),
	(89,68,4278,908,0.296,0,2),
	(90,NULL,4279,841,0.446,1,2),
	(91,69,4280,723,0.273,0,2),
	(92,NULL,4281,908,0.432,1,2),
	(93,70,4282,841,0.294,0,2),
	(94,NULL,4283,723,0.412,1,2),
	(95,71,4284,723,0.299,0,2),
	(96,NULL,4285,723,0.498,1,2),
	(97,72,4286,596,0.471,0,2),
	(98,NULL,4287,860,0.394,1,2),
	(99,73,4288,596,0.411,1,2),
	(100,74,4289,797,0.412,1,2),
	(101,75,4290,610,0.487,1,2),
	(102,76,4291,860,0.369,0,2),
	(103,NULL,4293,797,0.425,1,2),
	(104,77,4294,610,0.39,0,2),
	(105,NULL,4297,821,0.454,1,2),
	(106,78,4296,945,0.302,0,2),
	(107,79,4298,860,0.273,0,2),
	(108,80,4300,945,0.18,0,NULL),
	(109,81,4301,821,0.274,0,5),
	(110,NULL,4303,596,0.432,1,5),
	(111,82,4302,860,0.318,0,5),
	(112,NULL,4305,610,0.421,1,5),
	(113,83,4304,860,0.225,0,5),
	(114,84,4306,945,0.28,0,5),
	(115,85,4308,797,0.176,0,NULL),
	(116,86,4309,785,0.263,0,2),
	(117,87,4310,860,0.189,0,NULL),
	(118,88,4311,610,0.282,0,3),
	(119,NULL,4313,610,0.354,1,3),
	(120,NULL,4314,797,0.532,1,3),
	(121,89,4312,821,0.425,0,3),
	(122,NULL,4315,785,0.331,1,3),
	(123,NULL,4317,785,0.424,1,3),
	(124,90,4316,610,0.343,0,3),
	(125,NULL,4319,610,0.506,1,3),
	(126,91,4318,821,0.407,0,3),
	(127,NULL,4321,821,0.466,1,3),
	(128,92,4320,933,0.271,0,3),
	(129,93,4322,860,0.33,0,3),
	(130,94,4324,841,0.245,0,NULL),
	(131,95,4325,908,0.285,0,2),
	(132,96,4326,933,0.579,0,2),
	(133,97,4327,723,0.295,1,2),
	(134,NULL,4328,908,0.482,1,2),
	(135,98,4329,841,0.397,0,2),
	(136,NULL,4330,945,0.572,1,2),
	(137,99,4331,952,0.452,0,2),
	(138,100,4332,723,0.223,0,2),
	(139,101,4336,945,0.215,0,NULL),
	(140,102,4337,952,0.246,0,2),
	(141,103,4338,723,0.228,0,NULL),
	(142,104,4339,841,0.272,0,3),
	(143,NULL,4341,596,0.382,1,3),
	(144,NULL,4342,952,0.71,1,3),
	(145,105,4340,945,0.479,0,3),
	(146,NULL,4343,723,0.366,1,3),
	(147,NULL,4345,945,0.48,1,3),
	(148,106,4344,797,0.428,0,3),
	(149,NULL,4346,596,0.501,1,3),
	(150,107,4347,785,0.321,0,3),
	(151,108,4348,596,0.269,0,3),
	(152,109,4349,785,0.248,0,3),
	(153,110,4350,596,0.473,0,3),
	(154,NULL,4352,821,0.608,1,3),
	(155,111,4353,860,0.76,0,3),
	(156,NULL,4355,596,0.449,1,3),
	(157,112,4356,821,0.259,0,3),
	(158,113,4357,860,0.423,0,3),
	(159,NULL,4359,596,0.541,1,3),
	(160,114,4360,821,0.63,0,3),
	(161,115,4361,821,0.392,0,3),
	(162,116,4362,860,0.441,0,3),
	(163,117,4363,821,0.368,1,3),
	(164,118,4364,596,0.345,1,3),
	(165,119,4365,821,0.375,0,3),
	(166,120,4366,596,0.336,1,3),
	(167,121,4367,596,0.416,0,3),
	(168,122,4368,945,0.285,1,3),
	(169,123,4369,785,0.497,0,3),
	(170,124,4370,785,0.456,0,3),
	(171,125,4371,785,0.252,1,3),
	(172,126,4372,785,0.353,1,3),
	(173,127,4373,785,0.49,0,3),
	(174,128,4374,785,0.331,1,3),
	(175,129,4375,785,0.395,0,3),
	(176,NULL,4376,785,0.322,1,3),
	(177,130,4377,908,0.566,0,3),
	(178,NULL,4378,610,0.468,1,3),
	(179,131,4379,933,0.44,0,3),
	(180,132,4380,860,0.345,0,3),
	(181,133,4381,841,0.278,0,3),
	(182,134,4382,952,0.29,0,3),
	(183,135,4383,933,0.451,0,3),
	(184,NULL,4386,841,0.558,1,3),
	(185,136,4385,860,0.644,0,3),
	(186,NULL,4387,952,0.47,1,3),
	(187,NULL,4388,933,0.7,1,3),
	(188,137,4389,841,0.49,0,3),
	(189,138,4390,860,0.428,0,3),
	(190,NULL,4392,952,0.431,1,3),
	(191,139,4393,933,0.182,0,3),
	(192,140,4396,952,0.193,0,NULL),
	(193,141,4397,933,0.28,0,2),
	(194,142,4398,841,0.45,0,2),
	(195,NULL,4399,860,0.504,1,2),
	(196,143,4400,952,0.402,0,2),
	(197,144,4401,933,0.299,0,2),
	(198,145,4405,933,0.235,0,NULL),
	(199,146,4406,841,0.341,0,2),
	(200,147,4407,860,0.223,0,NULL),
	(201,148,4408,952,0.35,0,3),
	(202,NULL,4410,933,0.429,1,3),
	(203,NULL,4411,860,0.568,1,3),
	(204,149,4409,841,0.524,0,3),
	(205,NULL,4412,952,0.418,1,3),
	(206,NULL,4413,952,0.503,1,3),
	(207,NULL,4414,841,0.427,1,3),
	(208,NULL,4416,821,0.634,1,3),
	(209,150,4415,596,0.72,0,3),
	(210,NULL,4418,933,0.539,1,3),
	(211,151,4419,797,0.497,1,3),
	(212,152,4420,952,0.538,0,3),
	(213,NULL,4423,952,0.588,1,3),
	(214,153,4422,797,0.741,0,3),
	(215,154,4425,596,0.222,0,3),
	(216,155,4428,797,0.238,0,NULL),
	(217,156,4429,596,0.314,0,2),
	(218,157,4430,933,0.376,0,2),
	(219,NULL,4431,797,0.396,1,2),
	(220,158,4432,596,0.641,0,2),
	(221,NULL,4434,952,0.401,1,2),
	(222,NULL,4433,933,0.625,1,2),
	(223,NULL,4437,952,0.551,1,2),
	(224,NULL,4435,933,0.45,1,2),
	(225,159,4436,797,0.645,0,2),
	(226,160,4439,596,0.282,1,2),
	(227,161,4440,945,0.443,0,2),
	(228,NULL,4442,933,0.437,1,2),
	(229,NULL,4443,797,0.556,1,2),
	(230,162,4441,952,0.664,0,2),
	(231,163,4445,596,0.304,1,2),
	(232,164,4446,945,0.323,1,2),
	(233,165,4447,952,0.353,0,2),
	(234,NULL,4448,596,0.356,1,2),
	(235,NULL,4449,797,0.289,1,2),
	(236,NULL,4450,945,0.521,1,2),
	(237,NULL,4451,785,0.37,1,2),
	(238,NULL,4452,908,0.294,1,2),
	(239,166,4974,1054,0.292,0,NULL),
	(240,167,4975,1070,0.424,0,3),
	(241,NULL,4977,1084,0.375,1,3),
	(242,168,4976,1070,0.535,0,3),
	(243,NULL,4978,1043,0.531,1,3),
	(244,NULL,4979,1077,0.751,1,3),
	(245,NULL,4980,1070,0.421,1,3),
	(246,NULL,4981,1043,0.704,1,3),
	(247,169,4982,1025,0.739,0,3),
	(248,NULL,4983,1078,0.432,1,3),
	(249,NULL,4986,1043,0.561,1,3),
	(250,170,4985,1054,0.396,1,3),
	(251,171,4987,1070,0.321,0,3),
	(252,172,4988,1084,0.339,0,3),
	(253,173,4989,1078,0.517,0,3),
	(254,174,4991,1043,0.36,1,3),
	(255,NULL,4992,1070,0.502,1,3),
	(256,175,4993,1084,0.479,0,3),
	(257,NULL,4995,1078,0.51,1,3),
	(258,176,4996,1043,0.301,1,3),
	(259,177,4997,1084,0.515,0,3),
	(260,NULL,4999,1078,0.479,1,3),
	(261,178,5486,1146,0.321,0,NULL),
	(262,179,5487,1170,0.391,0,3),
	(263,NULL,5488,1170,0.451,1,3),
	(264,NULL,5490,1146,0.469,1,3),
	(265,180,5489,1133,0.698,0,3),
	(266,NULL,5491,1160,0.816,1,3),
	(267,NULL,5492,1146,0.425,1,3),
	(268,NULL,5493,1133,0.447,1,3),
	(269,NULL,5494,1174,0.854,1,3),
	(270,181,5495,1112,0.592,0,3),
	(271,182,5496,1170,0.323,0,3),
	(272,183,5497,1134,0.622,0,3),
	(273,184,5499,1174,0.474,0,3),
	(274,NULL,5500,1146,0.453,1,3),
	(275,185,5501,1112,0.311,1,3),
	(276,186,5502,1170,0.412,0,3),
	(277,187,5503,1112,0.408,0,3),
	(278,188,5504,1170,0.352,1,3),
	(279,189,5505,1170,0.49,1,3),
	(280,190,5506,1171,0.577,0,3),
	(281,191,5507,1170,0.418,0,3),
	(282,192,5508,1170,0.336,1,3),
	(283,193,5509,1171,0.393,0,3),
	(284,194,5512,1112,0.288,0,NULL),
	(285,195,5513,1112,0.392,0,3),
	(286,196,5514,1174,0.556,0,3),
	(287,NULL,5516,1174,0.595,1,3),
	(288,NULL,5517,1171,0.308,1,3),
	(289,197,5973,1223,0.258,0,NULL),
	(290,198,5974,1237,0.33,0,3),
	(291,NULL,5976,1241,0.593,1,3),
	(292,NULL,5977,1203,0.491,1,3),
	(293,NULL,5978,1223,0.545,1,3),
	(294,199,5975,1235,0.566,0,3),
	(295,NULL,5979,1235,0.441,1,3),
	(296,NULL,5981,1237,0.787,1,3),
	(297,200,5980,1241,0.803,0,3),
	(298,NULL,5982,1203,0.467,1,3),
	(299,NULL,5985,1243,0.701,1,3),
	(300,201,5984,1237,0.379,1,3),
	(301,202,5986,1237,0.269,1,3),
	(302,203,5988,1224,0.467,0,3),
	(303,NULL,5990,1224,0.463,1,3),
	(304,NULL,5992,1223,0.211,1,3),
	(305,204,1505,283,0.305,0,NULL),
	(306,205,1506,286,0.428,0,3),
	(307,NULL,1507,283,0.383,1,3),
	(308,NULL,1509,286,0.357,1,3),
	(309,206,1508,292,0.433,0,3),
	(310,NULL,1510,283,0.355,1,3),
	(311,NULL,1512,286,0.315,1,3),
	(312,207,1511,292,0.645,0,3),
	(313,208,1514,289,0.472,0,3),
	(314,NULL,1517,291,0.334,1,3),
	(315,209,1516,283,0.287,1,3),
	(316,210,1518,287,0.435,0,3),
	(317,211,1520,289,0.454,0,3),
	(318,212,1521,283,0.461,0,3),
	(319,NULL,1522,291,0.657,0,3),
	(320,NULL,1523,250,0.818,0,3),
	(321,NULL,1524,294,0.452,0,3),
	(322,NULL,1525,291,0.431,0,3),
	(323,213,1526,250,0.366,0,3),
	(324,NULL,1527,287,0.348,0,3),
	(325,214,1528,283,0.595,0,3),
	(326,NULL,1529,289,0.393,0,3),
	(327,215,1530,285,0.469,0,3),
	(328,NULL,1531,256,0.485,0,3),
	(329,NULL,1532,285,0.571,0,3),
	(330,NULL,1533,256,0.367,0,3),
	(331,NULL,1534,296,0.349,0,3),
	(332,NULL,1535,256,0.292,0,3),
	(333,NULL,1536,285,0.268,0,3),
	(334,NULL,1537,296,0.314,0,3),
	(335,NULL,1538,256,0.391,0,3),
	(336,216,1539,285,0.383,1,3),
	(337,NULL,1540,296,0.272,0,3),
	(338,NULL,1541,256,0.298,0,3),
	(339,NULL,1542,285,0.36,0,3),
	(340,217,1543,256,0.641,0,3),
	(341,NULL,1544,296,0.345,0,3),
	(342,NULL,1545,285,0.47,0,3),
	(343,NULL,1547,256,0.405,0,3),
	(344,NULL,1546,296,0.411,0,3),
	(345,218,1548,286,0.414,0,3),
	(346,NULL,1549,286,0.467,0,3),
	(347,NULL,1550,292,0.567,0,3),
	(348,NULL,1551,286,0.292,0,3),
	(349,NULL,1552,292,0.463,0,3),
	(350,NULL,1553,286,0.402,0,3),
	(351,219,1554,289,0.383,0,3),
	(352,NULL,1555,286,0.356,0,3),
	(353,220,1556,289,0.645,0,3),
	(354,NULL,1557,286,0.347,0,3),
	(355,NULL,1558,286,0.395,0,3),
	(356,221,1559,289,0.242,0,NULL),
	(357,222,1560,289,0.335,0,3),
	(358,223,1561,289,0.482,0,3),
	(359,NULL,1562,289,0.492,0,3),
	(360,NULL,1563,250,0.557,0,3),
	(361,NULL,1564,289,0.376,0,3),
	(362,NULL,1565,250,0.391,0,3),
	(363,224,1566,289,0.412,0,3),
	(364,NULL,1567,250,0.366,0,3),
	(365,225,1568,289,0.632,0,3),
	(366,NULL,1569,250,0.338,0,3),
	(367,NULL,1570,250,0.524,0,3),
	(368,NULL,1572,289,0.502,0,3),
	(369,226,1571,287,0.274,0,NULL),
	(370,227,1573,287,0.314,0,3),
	(371,228,1574,287,0.447,0,3),
	(372,NULL,1575,287,0.516,0,3),
	(373,NULL,1576,283,0.592,0,3),
	(374,NULL,1577,287,0.357,0,3),
	(375,NULL,1578,283,0.397,0,3),
	(376,229,1579,287,0.412,0,3),
	(377,NULL,1580,283,0.344,0,3),
	(378,230,1581,287,0.593,0,3),
	(379,NULL,1582,283,0.286,0,3),
	(380,NULL,1583,283,0.433,0,3),
	(381,NULL,1585,287,0.492,0,3),
	(382,231,1584,294,0.28,0,NULL),
	(383,232,1586,294,0.345,0,3),
	(384,233,1587,294,0.466,0,3),
	(385,234,1588,294,0.415,0,3),
	(386,235,1589,250,0.415,0,NULL),
	(387,236,1591,291,0.531,0,NULL),
	(388,237,1592,291,0.405,0,NULL),
	(389,238,1537,150,0.105,0,NULL),
	(390,239,1538,131,0.191,0,3),
	(391,240,1539,106,0.199,0,3),
	(392,241,1540,176,0.222,0,3),
	(393,242,1541,173,0.232,0,3),
	(394,243,1542,173,0.098,0,3),
	(395,244,1545,176,0.089,0,NULL),
	(396,245,1546,131,0.114,0,3),
	(397,246,1547,106,0.09,0,NULL),
	(398,247,1548,173,0.124,0,2),
	(399,NULL,1549,153,0.271,1,2),
	(400,248,1550,106,0.202,0,2),
	(401,NULL,1551,129,0.389,1,2),
	(402,249,1552,131,0.169,0,2),
	(403,NULL,1553,176,0.436,1,2),
	(404,NULL,1555,106,0.094,1,2),
	(405,250,2022,261,0.097,0,NULL),
	(406,251,2023,214,0.112,0,3),
	(407,NULL,2024,267,0.231,1,3),
	(408,NULL,2026,261,0.203,1,3),
	(409,252,2025,249,0.227,0,3),
	(410,NULL,2027,262,0.358,1,3),
	(411,NULL,2028,269,0.229,1,3),
	(412,NULL,2029,261,0.555,1,3),
	(413,NULL,2030,214,0.207,1,3),
	(414,253,2031,248,0.326,0,3),
	(415,NULL,2033,249,0.458,1,3),
	(416,254,2034,260,0.231,0,3),
	(417,255,2035,269,0.165,1,3),
	(418,256,2036,214,0.152,1,3),
	(419,257,2037,214,0.209,0,3),
	(420,258,2038,214,0.23,0,3),
	(421,259,2039,261,0.236,0,3),
	(422,260,2042,272,0.118,0,NULL),
	(423,261,2043,272,0.233,0,3),
	(424,262,2044,214,0.241,0,3),
	(425,NULL,2045,277,0.1,1,3),
	(426,NULL,2046,261,0.084,1,3),
	(427,NULL,2047,272,0.091,1,3),
	(428,NULL,2048,276,0.102,1,3),
	(429,263,464,88,0.099,0,NULL),
	(430,264,465,94,0.096,0,3),
	(431,265,466,81,0.112,0,3),
	(432,266,467,83,0.189,0,3),
	(433,NULL,468,86,0.37,1,3),
	(434,NULL,469,81,0.192,1,3),
	(435,267,470,83,0.439,0,3),
	(436,NULL,471,91,0.223,1,3),
	(437,NULL,473,94,0.414,1,3),
	(438,NULL,475,88,0.456,1,3),
	(439,268,476,61,0.271,0,3),
	(440,NULL,479,83,0.348,1,3),
	(441,269,478,91,0.227,1,3),
	(442,270,480,42,0.139,1,3),
	(443,271,481,81,0.234,0,3),
	(444,NULL,483,91,0.404,1,3),
	(445,272,486,42,0.104,0,NULL),
	(446,273,487,42,0.233,0,3),
	(447,NULL,489,109,0.506,1,3),
	(448,274,519,81,0.091,0,NULL),
	(449,275,520,114,0.099,0,3),
	(450,276,521,116,0.122,0,3),
	(451,277,522,81,0.139,0,3),
	(452,NULL,523,42,0.116,1,3),
	(453,NULL,524,81,0.517,1,3),
	(454,NULL,525,116,0.188,1,3),
	(455,278,526,114,0.303,0,3),
	(456,279,528,116,0.295,0,3),
	(457,NULL,529,109,0.339,1,3),
	(458,NULL,531,114,0.397,1,3),
	(459,280,532,116,0.155,1,3),
	(460,281,533,100,0.251,0,3),
	(461,NULL,535,42,0.287,1,3),
	(462,NULL,536,88,0.093,1,3),
	(463,282,500,65,0.1,0,NULL),
	(464,283,501,76,0.094,0,3),
	(465,284,502,84,0.108,0,3),
	(466,285,503,65,0.178,0,3),
	(467,NULL,504,76,0.345,1,3),
	(468,NULL,505,107,0.208,1,3),
	(469,NULL,506,65,0.397,1,3),
	(470,NULL,507,117,0.201,1,3),
	(471,286,508,124,0.314,0,3),
	(472,NULL,510,119,0.379,1,3),
	(473,NULL,509,84,0.268,1,3),
	(474,287,511,120,0.367,0,3),
	(475,NULL,513,124,0.517,1,3),
	(476,288,514,107,0.271,0,3),
	(477,289,515,120,0.15,0,3),
	(478,290,516,117,0.226,0,3),
	(479,291,517,84,0.294,0,3),
	(480,292,519,123,0.261,0,3),
	(481,NULL,520,119,0.337,1,3),
	(482,293,521,123,0.194,0,3),
	(483,294,767,84,0.107,0,NULL),
	(484,295,768,160,0.105,0,3),
	(485,296,769,146,0.114,0,3),
	(486,297,770,84,0.192,0,3),
	(487,NULL,771,146,0.403,1,3),
	(488,NULL,772,84,0.215,1,3),
	(489,298,773,169,0.39,0,3),
	(490,NULL,775,168,0.399,1,3),
	(491,NULL,774,160,0.231,1,3),
	(492,NULL,776,84,0.188,1,3),
	(493,NULL,777,160,0.363,1,3),
	(494,299,778,156,0.27,0,3),
	(495,300,780,122,0.319,0,3),
	(496,NULL,781,169,0.515,1,3),
	(497,301,782,84,0.299,0,3),
	(498,302,783,173,0.164,1,3),
	(499,303,784,84,0.136,1,3),
	(500,304,785,173,0.146,0,3),
	(501,305,786,84,0.171,1,3),
	(502,306,787,173,0.195,0,3),
	(503,307,789,84,0.233,0,3),
	(504,NULL,791,168,0.097,1,3),
	(505,308,338,88,0.087,0,NULL),
	(506,309,339,88,0.115,0,2),
	(507,310,340,88,0.244,0,2),
	(508,311,341,63,0.123,1,2),
	(509,NULL,342,12,0.349,1,2),
	(510,312,343,87,0.191,0,2),
	(511,313,344,56,0.263,0,2),
	(512,314,345,56,NULL,0,2),
	(513,315,346,66,0.174,0,2),
	(514,316,347,63,0.119,0,2),
	(515,317,407,89,0.086,0,NULL),
	(516,318,408,89,0.116,0,2),
	(517,319,409,89,0.123,0,2),
	(518,NULL,410,98,0.454,1,2),
	(519,320,411,100,0.168,0,2),
	(520,NULL,412,100,0.292,1,2),
	(521,321,454,173,0.109,0,NULL),
	(522,322,455,10,0.113,0,3),
	(523,323,456,174,0.121,0,3),
	(524,324,457,173,0.142,0,3),
	(525,NULL,458,6,0.207,1,3),
	(526,NULL,460,10,0.21,1,3),
	(527,NULL,461,173,0.533,1,3),
	(528,325,459,8,0.419,0,3),
	(529,NULL,462,6,0.221,1,3),
	(530,NULL,463,15,0.412,1,3),
	(531,326,464,10,0.339,0,3),
	(532,327,466,8,0.286,0,3),
	(533,NULL,467,10,0.312,1,3),
	(534,328,468,14,0.13,0,3),
	(535,329,469,15,0.226,0,3),
	(536,330,470,6,0.34,0,3),
	(537,331,471,8,0.152,1,3),
	(538,332,472,6,0.14,1,3),
	(539,333,473,8,0.145,0,3),
	(540,334,474,6,0.181,1,3),
	(541,335,475,8,0.15,0,3),
	(542,336,476,6,0.196,0,3),
	(543,337,477,8,0.251,0,3),
	(544,NULL,478,11,0.093,1,3),
	(545,NULL,479,163,0.1,1,3),
	(546,NULL,482,175,0.176,1,3),
	(547,338,588,193,0.084,0,NULL),
	(548,339,589,193,0.117,0,6),
	(549,340,590,193,0.112,0,6),
	(550,341,591,193,0.104,0,6),
	(551,NULL,592,188,0.407,1,6),
	(552,342,598,15,0.1,0,NULL),
	(553,343,651,200,0.089,0,NULL),
	(554,344,652,200,0.125,0,3),
	(555,345,653,200,0.098,0,3),
	(556,346,654,200,0.104,0,3),
	(557,NULL,655,206,0.444,1,3),
	(558,347,419,18,0.091,0,NULL),
	(559,348,420,18,0.116,0,3),
	(560,349,421,18,0.098,0,3),
	(561,350,422,18,0.106,0,3),
	(562,351,423,18,0.125,0,3),
	(563,NULL,424,123,0.221,1,3),
	(564,NULL,427,18,0.411,1,3),
	(565,NULL,426,109,0.241,1,3),
	(566,352,425,111,0.384,0,3),
	(567,NULL,428,123,0.222,1,3),
	(568,NULL,429,114,0.537,1,3),
	(569,353,430,119,0.28,0,3),
	(570,354,432,119,0.297,0,3),
	(571,NULL,433,96,0.33,1,3),
	(572,355,434,109,0.17,0,3),
	(573,356,435,119,0.245,0,3),
	(574,357,436,123,0.31,0,3),
	(575,NULL,439,111,0.494,1,3),
	(576,358,438,113,0.298,0,3),
	(577,359,440,124,0.267,0,3),
	(578,NULL,442,18,0.087,1,3),
	(579,NULL,444,111,0.091,1,3),
	(580,NULL,446,119,0.091,1,3),
	(581,NULL,448,109,0.091,1,3),
	(582,NULL,450,124,0.089,1,3),
	(583,NULL,452,18,0.086,1,3),
	(584,NULL,454,111,0.089,1,3),
	(585,NULL,456,119,0.087,1,3),
	(586,NULL,458,109,0.086,1,3),
	(587,NULL,460,124,0.087,1,3),
	(588,NULL,462,18,0.091,1,3),
	(589,NULL,464,111,0.09,1,3),
	(590,NULL,466,119,0.085,1,3),
	(591,NULL,468,96,0.15,1,3),
	(592,NULL,469,124,0.095,1,3),
	(593,360,667,158,0.157,0,NULL),
	(594,361,668,171,0.113,0,2),
	(595,362,669,161,0.117,0,2),
	(596,NULL,670,171,0.417,1,2),
	(597,363,671,158,0.198,0,2),
	(598,NULL,672,174,0.418,1,2),
	(599,364,7404,2063,0.088,0,NULL),
	(600,365,7405,1906,0.13,0,3),
	(601,366,7406,2105,0.103,0,3),
	(602,367,7407,2063,0.111,0,3),
	(603,368,7408,1906,0.178,0,3),
	(604,NULL,7409,2105,0.316,1,3),
	(605,NULL,7410,2094,0.216,1,3),
	(606,NULL,7411,2063,0.392,1,3),
	(607,NULL,7412,1753,0.198,1,3),
	(608,369,7413,1906,0.325,0,3),
	(609,NULL,7414,2150,0.257,1,3),
	(610,370,7415,1753,0.362,0,3),
	(611,NULL,7416,2141,0.415,1,3),
	(612,NULL,7419,1906,0.32,1,3),
	(613,371,7418,2150,0.3,0,3),
	(614,372,7420,2094,0.261,0,3),
	(615,373,7422,1906,0.243,0,3),
	(616,NULL,7423,1863,0.402,1,3),
	(617,374,7424,2091,0.143,1,3),
	(618,375,7425,2094,0.197,0,3),
	(619,376,7426,2063,0.134,1,3),
	(620,377,7427,2091,0.322,0,3),
	(621,378,7428,2091,0.195,0,3),
	(622,379,7429,2091,0.173,1,3),
	(623,380,7430,2091,0.157,1,3),
	(624,381,7431,2091,0.206,0,3),
	(625,382,7432,2091,0.155,1,3),
	(626,383,7433,2091,0.147,1,3),
	(627,384,7434,2091,0.196,0,3),
	(628,385,7435,2091,0.266,0,3),
	(629,386,7437,2091,0.315,0,3),
	(630,NULL,7438,1573,0.324,1,3),
	(631,387,7439,1863,0.161,0,3),
	(632,388,7440,1753,0.167,0,3),
	(633,389,7441,2141,0.213,0,3),
	(634,390,9875,2800,0.082,0,NULL),
	(635,391,9876,2810,0.119,0,2),
	(636,392,9877,2793,0.122,0,2),
	(637,NULL,9878,2804,0.201,1,2),
	(638,NULL,9879,2803,0.359,1,2),
	(639,NULL,9880,2815,0.149,1,2),
	(640,393,9881,2800,0.093,1,2),
	(641,394,9882,2810,0.15,1,2),
	(642,395,9883,2793,0.183,0,2),
	(643,NULL,9884,2804,0.233,1,2),
	(644,NULL,9885,2815,0.361,1,2),
	(645,NULL,9886,2803,0.156,1,2),
	(646,396,9889,2804,0.085,0,NULL),
	(647,397,9890,2804,0.118,0,2),
	(648,NULL,9891,2800,0.157,1,2),
	(649,NULL,9892,2803,0.138,1,2),
	(650,NULL,9893,2800,0.56,1,2),
	(651,398,9894,2801,0.258,0,2),
	(652,399,9895,2804,0.171,1,2),
	(653,NULL,9896,2815,0.298,1,2),
	(654,400,9897,2804,0.14,0,2),
	(655,NULL,9898,2804,0.194,1,2),
	(656,NULL,9899,2797,0.367,1,2),
	(657,NULL,9900,2815,0.189,1,2),
	(658,401,9901,2803,0.093,1,2),
	(659,402,9902,2800,0.105,1,2),
	(660,403,9903,2800,0.152,0,2),
	(661,NULL,9904,2830,0.266,1,2),
	(662,NULL,9905,2801,0.366,1,2),
	(663,NULL,9906,2831,0.197,1,2),
	(664,404,9907,2815,0.197,0,2),
	(665,NULL,9909,2753,0.324,1,2),
	(666,NULL,9908,2800,0.189,1,2),
	(667,405,9910,2800,0.228,0,2),
	(668,NULL,9912,2797,0.291,1,2),
	(669,406,9913,2800,0.243,0,2),
	(670,NULL,9915,2831,0.096,1,2),
	(671,407,9916,2801,0.129,0,2),
	(672,NULL,9917,2797,0.179,1,2),
	(673,NULL,9918,2838,0.191,1,2),
	(674,NULL,9919,2797,0.504,1,2),
	(675,408,9920,2797,0.25,0,2),
	(676,409,9921,2836,0.208,1,2),
	(677,NULL,9922,2797,0.342,1,2),
	(678,410,9923,2801,0.119,0,2),
	(679,NULL,9924,2800,0.285,1,2),
	(680,411,9925,2836,0.132,0,2),
	(681,NULL,9926,2801,0.222,1,2),
	(682,NULL,9927,2815,0.174,1,2),
	(683,NULL,9928,2833,0.449,1,2),
	(684,NULL,9929,2800,0.091,1,2),
	(685,NULL,9930,2838,0.091,1,2),
	(686,NULL,9931,2846,0.101,1,2),
	(687,412,9932,2836,0.125,0,2),
	(688,NULL,9933,2815,0.179,1,2),
	(689,NULL,9934,2833,0.154,1,2),
	(690,NULL,9935,2815,0.364,1,2),
	(691,413,9936,2815,0.155,0,2),
	(692,NULL,9937,2815,0.372,1,2),
	(693,NULL,9938,2848,0.229,1,2),
	(694,NULL,9939,2846,0.161,1,2),
	(695,414,9940,2797,0.188,0,2),
	(696,NULL,9941,2838,0.197,1,2),
	(697,NULL,9942,2801,0.306,1,2),
	(698,415,9943,2838,0.237,0,2),
	(699,416,9945,2815,0.19,0,2),
	(700,417,9946,2838,0.156,0,2),
	(701,418,9947,2838,0.138,0,2),
	(702,419,9948,2838,0.144,0,2),
	(703,420,9949,2838,0.219,0,2),
	(704,NULL,9951,2848,0.502,1,2),
	(705,NULL,9952,2801,0.089,1,2),
	(706,421,9953,2800,0.23,0,2),
	(707,422,9954,2801,0.132,1,2),
	(708,NULL,9955,2800,0.088,1,2),
	(709,NULL,9956,2838,0.084,1,2),
	(710,423,9957,2815,0.18,1,2),
	(711,424,9958,2797,0.182,0,2),
	(712,NULL,9959,2848,0.15,1,2),
	(713,NULL,9960,2848,0.521,1,2),
	(714,425,9961,2853,0.261,0,2),
	(715,NULL,9963,2853,0.461,1,2),
	(716,426,9964,2815,0.227,0,2),
	(717,427,9965,2856,0.286,0,2),
	(718,428,9966,2857,0.258,0,2),
	(719,NULL,9968,2860,0.461,1,2),
	(720,NULL,9969,2838,0.09,1,2),
	(721,429,9970,2862,0.149,1,2),
	(722,430,9971,2862,0.153,0,2),
	(723,431,9972,2862,0.196,0,2),
	(724,432,9973,2862,0.276,0,2),
	(725,NULL,9975,2856,0.512,1,2),
	(726,433,9976,2865,0.15,0,2),
	(727,434,9977,2865,0.239,0,2),
	(728,NULL,9979,2857,0.4,1,2),
	(729,435,9980,2838,0.217,0,2),
	(730,436,9981,2865,0.233,0,2),
	(731,NULL,9982,2869,0.112,1,2),
	(732,437,9983,2838,0.249,0,2),
	(733,438,9984,2857,0.197,0,2),
	(734,439,9985,2857,0.236,0,2),
	(735,440,78,20,0.085,0,NULL),
	(736,441,79,20,0.117,0,3),
	(737,442,80,20,0.095,0,3),
	(738,443,81,20,0.105,0,3),
	(739,444,82,29,0.132,0,3),
	(740,NULL,83,29,0.182,1,3),
	(741,NULL,85,15,0.182,1,3),
	(742,445,84,33,0.405,0,3),
	(743,NULL,86,26,0.36,1,3),
	(744,NULL,87,9,0.156,1,3),
	(745,NULL,88,15,0.278,1,3),
	(746,446,89,29,0.143,0,3),
	(747,NULL,90,21,0.172,1,3),
	(748,NULL,91,20,0.382,1,3),
	(749,NULL,92,33,0.136,1,3),
	(751,447,95,20,NULL,0,2),
	(752,449,97,34,0.117,0,NULL),
	(753,450,98,34,0.187,0,2),
	(754,451,99,38,0.148,1,2),
	(755,452,100,9,0.15,1,2),
	(756,NULL,101,40,0.099,1,3),
	(757,453,338,38,0.161,0,NULL),
	(758,454,339,38,0.143,0,3),
	(759,455,340,38,0.094,0,3),
	(760,456,341,38,0.106,0,3),
	(761,457,342,9,0.145,0,3),
	(762,NULL,343,60,0.247,1,3),
	(763,NULL,344,39,0.414,1,3),
	(764,NULL,346,29,0.214,1,3),
	(765,458,345,38,0.369,0,3),
	(766,NULL,347,9,0.165,1,3),
	(767,NULL,348,60,0.324,1,3),
	(768,459,349,12,0.147,0,3),
	(769,NULL,350,38,0.109,1,3),
	(770,NULL,351,9,0.161,1,3),
	(771,NULL,352,41,0.331,1,3),
	(772,460,1228,267,0.101,0,NULL),
	(773,461,1229,267,0.125,0,2),
	(774,462,1230,267,0.141,0,2),
	(775,NULL,1231,239,0.123,1,2),
	(776,NULL,1232,270,0.23,1,2),
	(777,NULL,1234,253,0.351,1,2),
	(778,463,1233,269,0.349,0,2),
	(779,NULL,1237,239,0.352,1,2),
	(780,464,1236,270,0.291,0,2),
	(781,465,1238,267,0.19,1,2),
	(782,466,1246,253,0.084,0,NULL),
	(783,467,1247,253,0.12,0,3),
	(784,468,1248,253,0.094,0,3),
	(785,469,1249,253,0.102,0,3),
	(786,470,1250,253,0.135,0,3),
	(787,NULL,1251,269,0.531,1,3),
	(788,NULL,1252,270,0.211,1,3),
	(789,NULL,1254,261,0.229,1,3),
	(790,NULL,1255,253,0.439,1,3),
	(791,471,1261,269,0.102,0,NULL),
	(792,472,1262,269,0.136,0,2),
	(793,473,1263,269,0.141,0,2),
	(794,NULL,1264,261,0.133,1,2),
	(795,NULL,1265,269,0.413,1,2),
	(796,NULL,1266,263,0.174,1,2),
	(797,474,1267,239,1.325,0,2),
	(798,NULL,1269,261,0.499,1,2),
	(799,475,1270,239,0.253,0,2),
	(800,476,1271,239,0.169,1,2),
	(801,477,1272,263,0.151,1,2),
	(802,478,1273,270,0.156,1,2),
	(803,479,1274,270,0.187,0,2),
	(804,480,1281,263,0.086,0,NULL),
	(805,481,1282,263,0.118,0,2),
	(806,482,1283,263,0.134,0,2),
	(807,NULL,1284,224,0.129,1,2),
	(808,NULL,1285,270,0.182,1,2),
	(809,NULL,1287,269,0.347,1,2),
	(810,483,1286,254,0.337,0,2),
	(811,NULL,1289,254,0.325,1,2),
	(812,484,1290,270,0.229,0,2),
	(813,485,1291,254,0.17,1,2),
	(814,486,1292,263,0.148,1,2),
	(815,487,1299,282,0.115,0,NULL),
	(816,488,1300,282,0.12,0,3),
	(817,489,1301,282,0.094,0,3),
	(818,490,1302,282,0.114,0,3),
	(819,491,1303,270,0.123,0,3),
	(820,NULL,1304,224,0.337,1,3),
	(821,NULL,1305,279,0.183,1,3),
	(822,492,1306,270,0.405,0,3),
	(823,NULL,1307,282,0.549,1,3),
	(824,NULL,1308,269,0.224,1,3),
	(825,NULL,1310,267,0.405,1,3),
	(826,493,1317,224,0.084,0,NULL),
	(827,494,1318,224,0.117,0,3),
	(828,495,1319,224,0.094,0,3),
	(829,496,1320,224,0.11,0,3),
	(830,497,1321,270,0.15,0,3),
	(831,NULL,1322,282,0.209,1,3),
	(832,NULL,1324,279,0.199,1,3),
	(833,498,1323,224,0.402,0,3),
	(834,NULL,1325,269,0.402,1,3),
	(835,NULL,1328,224,0.31,1,3),
	(836,499,1327,282,0.3,0,3),
	(837,500,1329,282,0.143,1,3),
	(838,501,1330,254,0.146,1,3),
	(839,502,1331,254,0.186,0,3),
	(840,503,1339,224,0.095,0,NULL),
	(841,504,1340,224,0.124,0,3),
	(842,505,1341,224,0.107,0,3),
	(843,506,1342,224,0.114,0,3),
	(844,507,1343,279,0.13,0,3),
	(845,NULL,1344,267,0.141,1,3),
	(846,NULL,1346,282,0.366,1,3),
	(847,NULL,1347,270,0.162,1,3),
	(848,508,1345,263,0.358,0,3),
	(849,509,1349,224,0.297,0,3),
	(850,NULL,1350,267,0.844,1,3),
	(851,510,1351,270,0.154,1,3),
	(852,511,1352,263,0.143,1,3),
	(853,512,1353,263,0.182,0,3),
	(854,513,1543,320,0.104,0,NULL),
	(855,514,1544,320,0.126,0,3),
	(856,515,1545,320,0.125,0,3),
	(857,516,1546,320,0.106,0,3),
	(858,517,1547,311,0.133,0,3),
	(859,NULL,1548,316,0.141,1,3),
	(860,518,1549,320,0.397,0,3),
	(861,NULL,1550,318,0.511,1,3),
	(862,NULL,1551,285,0.192,1,3),
	(863,519,1553,316,0.276,0,3),
	(864,NULL,1554,224,0.341,1,3),
	(865,520,1555,282,0.141,1,3),
	(866,521,1556,319,0.159,1,3),
	(867,522,1557,319,0.213,0,3),
	(868,523,1620,282,0.085,0,NULL),
	(869,524,1621,282,0.12,0,3),
	(870,525,1622,282,0.094,0,3),
	(871,526,1623,282,0.104,0,3),
	(872,527,1624,334,0.136,0,3),
	(873,NULL,1625,335,0.587,1,3),
	(874,NULL,1626,334,0.231,1,3),
	(875,NULL,1627,319,0.523,1,3),
	(876,NULL,1629,282,0.192,1,3),
	(877,528,1628,328,0.396,0,3),
	(878,NULL,1631,334,0.468,1,3),
	(879,529,1632,282,0.291,0,3),
	(880,530,1633,321,0.148,1,3),
	(881,531,1635,333,0.161,1,3),
	(882,532,1636,333,0.237,0,3),
	(883,533,1642,319,0.084,0,NULL),
	(884,534,1643,319,0.12,0,3),
	(885,535,1644,319,0.092,0,3),
	(886,536,1645,319,0.106,0,3),
	(887,537,1646,334,0.128,0,3),
	(888,NULL,1647,328,0.377,1,3),
	(889,NULL,1648,334,0.26,1,3),
	(890,538,1649,224,0.413,0,3),
	(891,NULL,1650,285,0.201,1,3),
	(892,NULL,1651,321,0.406,1,3),
	(893,539,1653,224,0.277,0,3),
	(894,NULL,1654,319,0.363,1,3),
	(895,540,1655,224,0.142,1,3),
	(896,541,1656,333,0.142,1,3),
	(897,542,1657,333,0.224,0,3),
	(898,543,6,12,0.333,0,NULL),
	(899,544,7,12,0.296,0,3),
	(900,545,8,12,0.105,0,3),
	(901,546,9,12,0.128,0,3),
	(902,547,10,10,0.162,0,3),
	(903,NULL,11,8,1.588,1,3),
	(904,NULL,12,11,0.293,1,3),
	(905,NULL,13,10,0.572,1,3),
	(906,NULL,14,12,0.209,1,3),
	(907,548,15,14,0.585,0,3),
	(908,NULL,18,12,0.502,1,3),
	(909,549,19,10,0.347,0,3),
	(910,550,20,9,0.152,1,3),
	(911,551,21,11,0.143,1,3),
	(912,552,22,11,0.227,0,3),
	(913,NULL,23,18,0.1,1,3),
	(914,NULL,24,19,0.16,1,3),
	(915,NULL,25,17,0.107,1,3),
	(916,553,26,9,0.099,0,NULL),
	(917,554,27,9,0.16,0,3),
	(918,NULL,28,24,0.128,1,3),
	(919,NULL,29,10,0.109,1,3),
	(920,NULL,30,24,0.512,1,3),
	(921,555,31,11,0.233,0,3),
	(922,NULL,33,18,0.413,1,3),
	(923,556,34,12,0.189,0,3),
	(924,NULL,35,18,0.087,1,3),
	(925,NULL,36,9,0.089,1,3),
	(926,NULL,37,29,0.098,1,3),
	(927,NULL,38,24,0.086,1,3),
	(928,557,39,24,0.089,1,3),
	(929,558,40,12,0.126,1,3),
	(930,NULL,41,17,0.09,1,3),
	(931,559,42,10,0.13,1,3),
	(932,560,109,31,0.101,0,NULL),
	(933,561,110,31,0.133,0,3),
	(934,562,111,31,0.121,0,3),
	(935,563,112,31,0.112,0,3),
	(936,564,113,31,0.196,0,3),
	(937,NULL,114,24,0.376,1,3),
	(938,NULL,115,34,0.214,1,3),
	(939,NULL,117,9,0.212,1,3),
	(940,565,116,29,0.407,0,3),
	(941,NULL,118,30,0.429,1,3),
	(942,NULL,121,9,0.329,1,3),
	(943,566,120,18,0.29,0,3),
	(944,567,122,29,0.176,1,3),
	(945,568,123,31,0.146,1,3),
	(946,569,124,31,0.222,0,3),
	(947,570,166,46,0.097,0,NULL),
	(948,571,167,46,0.137,0,3),
	(949,572,168,46,0.116,0,3),
	(950,573,169,46,0.116,0,3),
	(951,574,170,33,0.124,0,3),
	(952,NULL,171,44,0.11,1,3),
	(953,NULL,172,46,0.179,1,3),
	(954,NULL,173,18,0.421,1,3),
	(955,575,174,33,0.302,0,3),
	(956,NULL,176,34,0.453,1,3),
	(957,576,177,29,0.219,0,3),
	(958,577,178,29,0.149,1,3),
	(959,578,179,45,0.179,1,3),
	(960,579,180,45,0.238,0,3),
	(961,NULL,181,31,0.09,1,3),
	(962,NULL,182,47,0.131,1,3),
	(963,580,201,34,0.082,0,NULL),
	(964,581,202,34,0.118,0,3),
	(965,582,203,34,0.095,0,3),
	(966,583,204,34,0.116,0,3),
	(967,584,205,55,0.136,0,3),
	(968,NULL,206,29,0.24,1,3),
	(969,NULL,208,33,0.206,1,3),
	(970,585,207,45,0.507,0,3),
	(971,NULL,209,34,0.46,1,3),
	(972,586,211,45,0.256,0,3),
	(973,NULL,212,18,0.332,1,3),
	(974,587,213,55,0.15,1,3),
	(975,588,214,29,0.147,1,3),
	(976,589,215,29,0.229,0,3),
	(977,590,218,18,0.105,0,NULL),
	(978,591,219,18,0.205,0,3),
	(979,592,220,29,0.146,1,3),
	(980,593,221,44,0.153,1,3),
	(981,NULL,222,60,0.107,1,3),
	(982,NULL,223,47,0.087,1,3),
	(983,NULL,224,46,0.084,1,3),
	(984,NULL,225,18,0.083,1,3),
	(985,NULL,226,55,0.082,1,3),
	(986,NULL,227,56,0.101,1,3),
	(987,NULL,228,59,0.105,1,3),
	(988,NULL,229,29,0.089,1,3),
	(989,NULL,230,45,0.085,1,3),
	(990,NULL,231,44,0.08,1,3),
	(991,NULL,232,60,0.085,1,3),
	(992,NULL,233,47,0.084,1,3),
	(993,594,234,46,0.096,1,3),
	(994,NULL,235,18,0.086,1,3),
	(995,NULL,236,55,0.093,1,3),
	(996,NULL,237,56,0.094,1,3),
	(997,NULL,238,59,0.09,1,3),
	(998,NULL,239,29,0.086,1,3),
	(999,NULL,240,45,0.084,1,3),
	(1000,NULL,241,44,0.089,1,3),
	(1001,595,242,60,0.122,1,3),
	(1002,NULL,243,47,0.089,1,3),
	(1003,596,244,46,0.125,1,3),
	(1004,597,245,18,0.172,1,3),
	(1005,NULL,246,55,0.098,1,3),
	(1006,598,247,56,0.213,0,3),
	(1007,599,248,46,0.185,0,3),
	(1008,600,249,44,0.126,1,3),
	(1009,601,250,62,0.165,1,3),
	(1010,602,251,46,0.178,0,3),
	(1011,NULL,252,29,0.098,1,3),
	(1012,603,253,44,0.205,0,3),
	(1013,604,254,56,0.226,0,3),
	(1014,NULL,256,63,0.78,1,3),
	(1015,605,257,65,0.158,1,3),
	(1016,606,258,65,0.243,0,3),
	(1017,NULL,260,29,0.272,1,3),
	(1018,607,261,18,0.226,0,3),
	(1019,NULL,262,44,0.119,1,3),
	(1020,608,263,29,0.21,0,3),
	(1021,609,264,65,0.175,0,3),
	(1022,610,265,61,0.141,1,3),
	(1023,611,266,71,0.171,1,3),
	(1024,612,267,65,0.187,0,3),
	(1025,613,268,64,0.227,0,3),
	(1026,NULL,269,69,0.188,1,3),
	(1027,NULL,270,44,0.106,1,3),
	(1028,NULL,271,73,0.119,1,3),
	(1029,NULL,272,64,0.085,1,3),
	(1030,NULL,273,65,0.081,1,3),
	(1031,614,274,61,0.131,1,3),
	(1032,NULL,275,29,0.145,1,3),
	(1033,NULL,276,72,0.141,1,3),
	(1034,615,277,71,0.346,0,3),
	(1035,616,278,73,0.139,1,3),
	(1036,617,279,72,0.16,1,3),
	(1037,618,280,74,0.197,0,3),
	(1038,619,392,87,0.104,0,NULL),
	(1039,620,393,87,0.131,0,3),
	(1040,621,394,87,0.091,0,3),
	(1041,622,395,87,0.105,0,3),
	(1042,623,396,89,0.12,0,3),
	(1043,NULL,397,94,0.365,1,3),
	(1044,NULL,399,86,0.656,1,3),
	(1045,624,398,79,0.437,0,3),
	(1046,NULL,400,89,0.263,1,3),
	(1047,NULL,401,89,0.302,1,3),
	(1048,NULL,402,91,0.199,1,3),
	(1049,625,403,87,0.207,0,3),
	(1050,626,404,79,0.121,1,3),
	(1051,627,405,91,0.13,1,3),
	(1052,628,406,91,0.188,0,3),
	(1053,629,407,91,0.19,0,3),
	(1054,630,480,89,0.082,0,NULL),
	(1055,631,481,89,0.116,0,3),
	(1056,632,482,89,0.094,0,3),
	(1057,633,483,89,0.104,0,3),
	(1058,634,484,44,0.143,0,3),
	(1059,NULL,485,79,0.437,1,3),
	(1060,NULL,486,44,0.138,1,3),
	(1061,NULL,487,87,0.567,1,3),
	(1062,NULL,488,65,0.206,1,3),
	(1063,635,489,106,0.236,0,3),
	(1064,NULL,490,103,0.259,1,3),
	(1065,NULL,492,44,0.37,1,3),
	(1066,636,491,65,0.313,0,3),
	(1067,637,493,103,0.131,1,3),
	(1068,638,494,94,0.151,1,3),
	(1069,639,495,94,0.25,0,3),
	(1070,640,548,94,0.078,0,NULL),
	(1071,641,549,94,0.112,0,3),
	(1072,642,550,94,0.094,0,3),
	(1073,643,551,94,0.107,0,3),
	(1074,644,552,103,0.178,0,3),
	(1075,NULL,553,89,0.381,1,3),
	(1076,NULL,554,116,0.198,1,3),
	(1077,NULL,555,103,0.428,1,3),
	(1078,NULL,557,94,0.188,1,3),
	(1079,645,556,122,0.369,0,3),
	(1080,NULL,558,111,0.256,1,3),
	(1081,NULL,559,117,0.383,1,3),
	(1082,646,560,122,0.274,0,3),
	(1083,647,561,111,0.133,1,3),
	(1084,648,562,44,0.141,1,3),
	(1085,649,609,130,0.1,0,NULL),
	(1086,650,610,130,0.116,0,3),
	(1087,651,611,130,0.101,0,3),
	(1088,652,612,130,0.112,0,3),
	(1089,653,613,129,0.134,0,3),
	(1090,NULL,614,44,0.256,1,3),
	(1091,654,615,129,0.426,0,3),
	(1092,NULL,616,106,0.264,1,3),
	(1093,NULL,617,103,0.436,1,3),
	(1094,NULL,618,130,0.242,1,3),
	(1095,NULL,619,125,0.49,1,3),
	(1096,655,620,106,0.235,0,3),
	(1097,656,621,129,0.144,1,3),
	(1098,657,622,89,0.148,1,3),
	(1099,658,673,44,0.085,0,NULL),
	(1100,659,674,44,0.133,0,3),
	(1101,660,675,44,0.091,0,3),
	(1102,661,676,44,0.104,0,3),
	(1103,662,677,138,0.182,0,3),
	(1104,NULL,678,94,0.321,1,3),
	(1105,NULL,679,131,0.256,1,3),
	(1106,NULL,681,44,0.412,1,3),
	(1107,NULL,682,137,0.206,1,3),
	(1108,663,680,138,0.383,0,3),
	(1109,NULL,683,137,0.187,1,3),
	(1110,NULL,684,125,0.359,1,3),
	(1111,664,685,143,0.254,0,3),
	(1112,665,686,136,0.14,1,3),
	(1113,666,687,143,0.149,1,3),
	(1114,667,688,103,0.231,0,3),
	(1115,NULL,690,94,0.09,1,3),
	(1116,668,819,157,0.083,0,NULL),
	(1117,669,820,157,0.109,0,3),
	(1118,670,821,157,0.088,0,3),
	(1119,671,822,157,0.106,0,3),
	(1120,672,823,157,0.141,0,3),
	(1121,NULL,824,125,0.349,1,3),
	(1122,NULL,825,150,0.232,1,3),
	(1123,673,826,157,0.358,0,3),
	(1124,NULL,827,148,0.41,1,3),
	(1125,NULL,828,163,0.191,1,3),
	(1126,NULL,829,157,0.23,1,3),
	(1127,674,830,137,0.306,0,3),
	(1128,NULL,831,167,0.496,1,3),
	(1129,675,832,163,0.143,1,3),
	(1130,676,833,153,0.147,1,3),
	(1131,677,880,174,0.084,0,NULL),
	(1132,678,881,174,0.111,0,3),
	(1133,679,882,174,0.096,0,3),
	(1134,680,883,174,0.099,0,3),
	(1135,681,884,150,0.15,0,3),
	(1136,NULL,885,178,0.533,1,3),
	(1137,NULL,886,174,0.174,1,3),
	(1138,682,887,176,0.364,0,3),
	(1139,NULL,889,148,0.424,1,3),
	(1140,NULL,888,157,0.222,1,3),
	(1141,NULL,890,157,0.18,1,3),
	(1142,NULL,891,150,0.345,1,3),
	(1143,683,892,137,0.238,0,3),
	(1144,684,893,157,0.153,1,3),
	(1145,685,894,163,0.148,1,3),
	(1146,NULL,896,178,0.105,1,3),
	(1147,686,931,148,0.078,0,NULL),
	(1148,687,932,148,0.108,0,3),
	(1149,688,933,148,0.097,0,3),
	(1150,689,934,148,0.108,0,3),
	(1151,690,935,163,0.124,0,3),
	(1152,NULL,936,148,0.342,1,3),
	(1153,NULL,937,187,0.29,1,3),
	(1154,691,938,163,0.348,0,3),
	(1155,NULL,939,153,0.414,1,3),
	(1156,NULL,940,176,0.208,1,3),
	(1157,NULL,941,176,0.255,1,3),
	(1158,692,942,185,0.32,0,3),
	(1159,NULL,943,157,0.401,1,3),
	(1160,693,944,137,0.136,1,3),
	(1161,694,945,176,0.163,1,3),
	(1162,695,7,7,0.342,0,NULL),
	(1163,696,8,7,0.207,0,3),
	(1164,697,9,7,0.1,0,3),
	(1165,698,10,7,0.112,0,3),
	(1166,699,11,7,0.137,0,3),
	(1167,NULL,12,9,0.315,1,3),
	(1168,NULL,13,7,0.624,1,3),
	(1169,700,14,8,0.474,0,3),
	(1170,NULL,15,12,0.236,1,3),
	(1171,NULL,16,8,0.265,1,3),
	(1172,NULL,18,9,0.54,1,3),
	(1173,701,17,11,0.38,0,3),
	(1174,702,19,11,0.146,1,3),
	(1175,703,20,13,0.175,1,3),
	(1176,704,21,13,0.22,0,3),
	(1177,705,22,13,0.247,0,3),
	(1178,706,85,27,0.084,0,NULL),
	(1179,707,86,27,0.115,0,3),
	(1180,708,87,27,0.093,0,3),
	(1181,709,88,27,0.105,0,3),
	(1182,710,89,27,0.12,0,3),
	(1183,NULL,90,9,0.346,1,3),
	(1184,NULL,91,18,0.148,1,3),
	(1185,NULL,93,29,0.529,1,3),
	(1186,NULL,94,27,0.169,1,3),
	(1187,711,92,14,0.382,0,3),
	(1188,NULL,95,36,0.183,1,3),
	(1189,NULL,96,27,0.474,1,3),
	(1190,712,97,31,0.23,0,3),
	(1191,713,98,18,0.14,1,3),
	(1192,714,99,31,0.142,1,3),
	(1193,715,100,31,0.216,0,3),
	(1194,716,101,31,0.24,0,3),
	(1195,717,102,29,0.266,0,3),
	(1196,718,127,31,0.092,0,NULL),
	(1197,719,128,31,0.3,0,3),
	(1198,720,129,31,0.125,0,3),
	(1199,721,130,31,0.146,0,3),
	(1200,722,131,44,0.166,0,3),
	(1201,NULL,132,9,5.452,1,3),
	(1202,NULL,133,27,0.166,1,3),
	(1203,NULL,135,47,0.173,1,3),
	(1204,723,134,29,0.337,0,3),
	(1205,NULL,136,49,0.582,1,3),
	(1206,NULL,137,29,0.241,1,3),
	(1207,724,138,44,0.31,0,3),
	(1208,NULL,139,41,0.567,1,3),
	(1209,725,140,29,0.136,1,3),
	(1210,726,141,31,0.156,1,3),
	(1211,727,142,31,0.209,0,3),
	(1212,728,143,31,1.229,0,3),
	(1213,729,144,49,0.274,0,3),
	(1214,730,4295,1174,0.085,0,NULL),
	(1215,731,4296,1174,0.118,0,3),
	(1216,732,4297,1174,0.108,0,3),
	(1217,733,4298,1174,0.128,0,3),
	(1218,734,4299,1185,0.157,0,3),
	(1219,NULL,4300,1179,0.545,1,3),
	(1220,NULL,4301,1172,0.239,1,3),
	(1221,NULL,4303,1186,0.413,1,3),
	(1222,NULL,4304,1174,0.208,1,3),
	(1223,735,4302,1187,0.437,0,3),
	(1224,NULL,4305,1185,0.271,1,3),
	(1225,NULL,4306,1187,0.487,1,3),
	(1226,736,4307,1174,0.291,0,3),
	(1227,737,4308,1174,0.136,1,3),
	(1228,738,4309,1172,0.143,1,3),
	(1229,739,4310,1172,0.235,0,3),
	(1230,740,4311,1172,0.26,0,3),
	(1231,741,4312,1179,0.253,0,3),
	(1232,742,4382,1200,0.102,0,NULL),
	(1233,743,4383,1200,0.122,0,3),
	(1234,744,4384,1200,0.099,0,3),
	(1235,745,4385,1200,0.126,0,3),
	(1236,746,4386,1183,0.134,0,3),
	(1237,NULL,4387,1185,0.231,1,3),
	(1238,NULL,4389,1190,0.213,1,3),
	(1239,NULL,4390,1200,0.555,1,3),
	(1240,747,4388,1179,0.41,0,3),
	(1241,NULL,4391,1198,0.254,1,3),
	(1242,NULL,4393,1190,0.374,1,3),
	(1243,748,4392,1186,0.322,0,3),
	(1244,749,4394,1185,0.151,1,3),
	(1245,750,4395,1198,0.151,1,3),
	(1246,751,4829,1230,0.095,0,NULL),
	(1247,752,4830,1230,0.116,0,3),
	(1248,753,4831,1230,0.101,0,3),
	(1249,754,4832,1230,0.127,0,3),
	(1250,755,4833,1272,0.164,0,3),
	(1251,NULL,4834,1258,0.382,1,3),
	(1252,NULL,4835,1283,0.266,1,3),
	(1253,756,4836,1187,0.305,0,3),
	(1254,NULL,4837,1230,0.414,1,3),
	(1255,NULL,4838,1272,0.197,1,3),
	(1256,757,4839,1266,0.188,0,3),
	(1257,758,4840,1283,0.197,0,3),
	(1258,NULL,4841,1187,0.261,1,3),
	(1259,NULL,4843,1266,0.542,1,3),
	(1260,759,4842,1272,0.325,0,3),
	(1261,760,4844,1236,0.17,1,3),
	(1262,761,4845,1272,0.169,1,3),
	(1263,762,4846,1272,0.148,1,3),
	(1264,763,4847,1272,0.162,1,3),
	(1265,764,5043,1323,0.087,0,NULL),
	(1266,765,5044,1323,0.122,0,3),
	(1267,766,5045,1323,0.099,0,3),
	(1268,767,5046,1323,0.11,0,3),
	(1269,NULL,5048,1258,0.363,1,3),
	(1270,768,5047,1329,0.212,0,3),
	(1271,NULL,5049,1326,0.132,1,3),
	(1272,NULL,5050,1296,0.419,1,3),
	(1273,NULL,5051,1323,0.215,1,3),
	(1274,769,5052,1321,0.222,0,3),
	(1275,770,5053,1329,0.15,0,3),
	(1276,771,5054,1315,0.185,0,3),
	(1277,NULL,5055,1329,0.174,1,3),
	(1278,NULL,5056,1315,0.474,1,3),
	(1279,772,5057,1323,0.235,0,3),
	(1280,773,5058,1321,0.145,1,3),
	(1281,774,89,13,0.092,0,NULL),
	(1282,775,90,13,0.12,0,3),
	(1283,776,91,13,0.098,0,3),
	(1284,777,92,13,0.11,0,3),
	(1285,778,93,11,0.138,0,3),
	(1286,NULL,94,18,0.51,1,3),
	(1287,NULL,95,9,0.212,1,3),
	(1288,NULL,97,11,0.197,1,3),
	(1289,NULL,98,36,0.571,1,3),
	(1290,779,96,13,0.396,0,3),
	(1291,NULL,99,13,0.247,1,3),
	(1292,NULL,101,11,0.362,1,3),
	(1293,780,100,8,0.328,0,3),
	(1294,781,102,8,0.135,1,3),
	(1295,782,103,17,0.158,1,3),
	(1296,783,266,9,0.087,0,NULL),
	(1297,784,267,9,0.121,0,3),
	(1298,785,268,9,0.1,0,3),
	(1299,786,269,9,0.124,0,3),
	(1300,787,270,18,0.133,0,3),
	(1301,NULL,271,58,0.548,1,3),
	(1302,NULL,272,8,0.247,1,3),
	(1303,788,273,9,0.281,0,3),
	(1304,NULL,275,57,0.267,1,3),
	(1305,NULL,274,18,0.424,1,3),
	(1306,789,276,31,0.155,0,3),
	(1307,790,277,8,0.187,0,3),
	(1308,NULL,278,57,0.188,1,3),
	(1309,NULL,279,9,0.324,1,3),
	(1310,791,280,31,0.232,0,3),
	(1311,792,281,31,0.145,1,3),
	(1312,NULL,282,41,0.096,1,3),
	(1313,NULL,283,44,0.095,1,3),
	(1314,NULL,284,61,0.175,1,3),
	(1315,793,496,65,0.088,0,NULL),
	(1316,794,497,65,0.117,0,2),
	(1317,795,498,65,0.094,0,2),
	(1318,796,499,65,0.114,0,2),
	(1319,797,500,65,0.13,0,2),
	(1320,NULL,501,101,0.149,1,2),
	(1321,NULL,503,70,0.176,1,2),
	(1322,NULL,502,61,0.607,1,2),
	(1323,798,504,104,0.421,0,2),
	(1324,NULL,505,8,0.255,1,2),
	(1325,799,506,101,0.313,0,2),
	(1326,NULL,507,88,0.414,1,2),
	(1327,800,508,65,0.186,1,2),
	(1328,801,509,70,0.153,1,2),
	(1329,802,581,118,0.093,0,NULL),
	(1330,803,582,118,0.123,0,2),
	(1331,804,583,118,0.097,0,2),
	(1332,805,584,118,0.113,0,2),
	(1333,806,585,107,0.183,0,2),
	(1334,NULL,586,70,0.404,1,2),
	(1335,NULL,587,118,0.229,1,2),
	(1336,NULL,589,111,0.193,1,2),
	(1337,NULL,590,107,0.569,1,2),
	(1338,807,588,119,0.32,0,2),
	(1339,808,591,61,0.165,0,2),
	(1340,809,592,101,0.206,0,2),
	(1341,NULL,593,119,0.219,1,2),
	(1342,NULL,595,61,0.37,1,2),
	(1343,810,594,118,0.272,0,2),
	(1344,811,596,101,0.138,1,2),
	(1345,812,597,119,0.179,1,2),
	(1346,813,600,119,0.124,0,NULL),
	(1347,814,601,119,0.243,0,2),
	(1348,815,602,118,0.124,0,2),
	(1349,NULL,603,119,0.179,1,2),
	(1350,NULL,604,110,0.16,1,2),
	(1351,NULL,605,130,0.549,1,2),
	(1352,816,606,130,0.213,0,2),
	(1353,NULL,608,125,0.587,1,2),
	(1354,NULL,607,129,0.243,1,2),
	(1355,817,609,111,0.272,0,2),
	(1356,818,611,123,0.147,1,2),
	(1357,819,612,134,0.175,1,2),
	(1358,820,613,118,0.144,0,2),
	(1359,NULL,615,119,0.175,1,2),
	(1360,NULL,614,110,0.495,1,2),
	(1361,NULL,616,131,0.197,1,2),
	(1362,821,617,123,0.079,0,2),
	(1363,NULL,619,131,0.096,1,2),
	(1364,NULL,620,110,0.095,1,2),
	(1365,NULL,621,137,0.104,1,2),
	(1366,NULL,622,123,0.091,1,2),
	(1367,NULL,623,129,0.106,1,2),
	(1368,NULL,624,134,0.099,1,2),
	(1369,NULL,625,130,0.09,1,2),
	(1370,822,626,135,0.105,0,NULL),
	(1371,823,627,135,0.156,0,3),
	(1372,NULL,628,137,0.148,1,3),
	(1373,NULL,629,131,0.126,1,3),
	(1374,NULL,630,137,0.676,1,3),
	(1375,824,631,129,0.208,0,3),
	(1376,NULL,632,135,0.472,1,3),
	(1377,NULL,633,138,0.231,1,3),
	(1378,825,634,135,0.27,0,3),
	(1379,NULL,636,137,0.311,1,3),
	(1380,826,637,130,0.105,0,3),
	(1381,827,639,119,0.105,0,NULL),
	(1382,828,640,119,0.272,0,2),
	(1383,NULL,642,131,0.526,1,2),
	(1384,829,643,135,0.121,1,2),
	(1385,830,644,135,0.221,0,2),
	(1386,NULL,646,144,0.442,1,2),
	(1387,831,647,138,0.186,0,2),
	(1388,NULL,648,129,0.18,1,2),
	(1389,NULL,649,137,0.359,1,2),
	(1390,832,650,129,0.225,0,2),
	(1391,NULL,652,129,0.458,1,2),
	(1392,NULL,653,141,0.117,1,2),
	(1393,833,654,144,0.261,0,2),
	(1394,834,656,111,0.14,1,2),
	(1395,835,657,111,0.251,0,2),
	(1396,NULL,659,143,0.445,1,2),
	(1397,836,660,138,0.108,0,2),
	(1398,837,888,199,0.085,0,NULL),
	(1399,838,889,199,0.117,0,3),
	(1400,839,890,199,0.095,0,3),
	(1401,840,891,199,0.105,0,3),
	(1402,841,892,182,0.146,0,3),
	(1403,NULL,893,175,0.371,1,3),
	(1404,NULL,894,202,0.278,1,3),
	(1405,NULL,895,182,0.392,1,3),
	(1406,NULL,897,198,0.173,1,3),
	(1407,842,896,199,0.435,0,3),
	(1408,NULL,900,182,0.43,1,3),
	(1409,843,899,160,0.266,0,3),
	(1410,NULL,901,160,0.232,1,3),
	(1411,NULL,903,184,0.373,1,3),
	(1412,844,902,199,0.299,0,3),
	(1413,845,960,223,0.096,0,NULL),
	(1414,846,961,223,0.123,0,3),
	(1415,847,962,223,0.104,0,3),
	(1416,848,963,223,0.114,0,3),
	(1417,849,964,202,0.147,0,3),
	(1418,NULL,965,223,0.537,1,3),
	(1419,NULL,966,202,0.236,1,3),
	(1420,NULL,968,182,0.419,1,3),
	(1421,850,967,175,0.447,0,3),
	(1422,NULL,969,217,0.224,1,3),
	(1423,NULL,972,217,0.489,1,3),
	(1424,851,971,175,0.34,0,3),
	(1425,NULL,974,212,0.433,1,3),
	(1426,NULL,976,228,0.117,1,3);

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
	(13,'symptom_descriptive',NULL,'field_embedding_demo',NULL,36,NULL,'Symptoms, clinical course, past medical history and social history','descriptive','<div class=\"rich-text-field-label\"><table> <tbody> <tr> <th style=\"width: 639.219px;\" colspan=\"2\"> <p><strong>During the illness, did the patient experience any of the following symptoms?</strong></p> </th> <th style=\"width: 126.219px;\"> <p><strong>Onset Date</strong></p> </th> </tr> <tr> <th style=\"width: 226.219px;\">Fever>100.4F(38C)</th> <td style=\"width: 399.219px;\"> <div>{fever_yn}</div> </td> <td style=\"width: 126.219px;\"> <div>{fever_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Subjective fever (felt feverish)</th> <td style=\"width: 399.219px;\"> <div>{sfever_yn}</div> </td> <td style=\"width: 126.219px;\"> <div>{sfever_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Chills</th> <td style=\"width: 399.219px;\"> <div>{chills_yn}</div> </td> <td style=\"width: 126.219px;\"> <div>{chills_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Muscle aches (myalgia)</th> <td style=\"width: 399.219px;\"> <div>{myalgia_yn}</div> </td> <td style=\"width: 126.219px;\"> <div>{myalgia_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Other symptom 1</th> <td style=\"width: 399.219px;\"> <div>{othsym1_spec}</div> </td> <td style=\"width: 126.219px;\"> <div>{othsym1_onset}</div> </td> </tr> <tr> <th style=\"width: 226.219px;\">Other symptom 2</th> <td style=\"width: 399.219px;\"> <div>{othsym2_spec}</div> </td> <td style=\"width: 126.219px;\"> <div>{othsym2_onset}</div> </td> </tr> </tbody> </table></div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(14,'email',NULL,'my_first_instrument_2',NULL,6,NULL,NULL,'text','Email',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(14,'my_first_instrument_2_complete',NULL,'my_first_instrument_2',NULL,7,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(14,'my_first_instrument_complete',NULL,'my_first_instrument',NULL,4,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(14,'ptname',NULL,'my_first_instrument',NULL,3,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(14,'ptname_v2',NULL,'my_first_instrument_2','My First Instrument 2',5,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(14,'record_id',NULL,'my_first_instrument','My First Instrument',1,NULL,NULL,'text','Record ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(14,'text2',NULL,'my_first_instrument',NULL,2,NULL,NULL,'text','Text2',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(15,'email',NULL,'my_first_instrument_2',NULL,5,NULL,NULL,'text','Email',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(15,'my_first_instrument_2_complete',NULL,'my_first_instrument_2',NULL,6,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(15,'my_first_instrument_complete',NULL,'my_first_instrument',NULL,3,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(15,'ptname',NULL,'my_first_instrument',NULL,2,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(15,'ptname_v2',NULL,'my_first_instrument_2','My First Instrument 2',4,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(15,'record_id',NULL,'my_first_instrument','My First Instrument',1,NULL,NULL,'text','Record ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(16,'email',NULL,'my_first_instrument_2',NULL,6,NULL,NULL,'text','Email',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(16,'my_first_instrument_2_complete',NULL,'my_first_instrument_2',NULL,7,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(16,'my_first_instrument_complete',NULL,'my_first_instrument',NULL,4,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(16,'ptname',NULL,'my_first_instrument',NULL,3,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(16,'ptname_v2',NULL,'my_first_instrument_2','My First Instrument 2',5,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(16,'record_id',NULL,'my_first_instrument','My First Instrument',1,NULL,NULL,'text','Record ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0),
	(16,'text2',NULL,'my_first_instrument',NULL,2,NULL,NULL,'text','Text2',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0);

/*!40000 ALTER TABLE `redcap_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_metadata_archive
# ------------------------------------------------------------

LOCK TABLES `redcap_metadata_archive` WRITE;
/*!40000 ALTER TABLE `redcap_metadata_archive` DISABLE KEYS */;

INSERT INTO `redcap_metadata_archive` (`project_id`, `field_name`, `field_phi`, `form_name`, `form_menu_description`, `field_order`, `field_units`, `element_preceding_header`, `element_type`, `element_label`, `element_enum`, `element_note`, `element_validation_type`, `element_validation_min`, `element_validation_max`, `element_validation_checktype`, `branching_logic`, `field_req`, `edoc_id`, `edoc_display_img`, `custom_alignment`, `stop_actions`, `question_num`, `grid_name`, `grid_rank`, `misc`, `video_url`, `video_display_inline`, `pr_id`)
VALUES
	(14,'email',NULL,'my_first_instrument_2',NULL,5,NULL,NULL,'text','Email',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'my_first_instrument_2_complete',NULL,'my_first_instrument_2',NULL,6,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'my_first_instrument_complete',NULL,'my_first_instrument',NULL,3,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'ptname',NULL,'my_first_instrument',NULL,2,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'ptname_v2',NULL,'my_first_instrument_2','My First Instrument 2',4,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'record_id',NULL,'my_first_instrument','My First Instrument',1,NULL,NULL,'text','Record ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'email',NULL,'my_first_instrument_2',NULL,6,NULL,NULL,'text','Email',NULL,NULL,'email',NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'my_first_instrument_2_complete',NULL,'my_first_instrument_2',NULL,7,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'my_first_instrument_complete',NULL,'my_first_instrument',NULL,4,NULL,'Form Status','select','Complete?','0, Incomplete \\n 1, Unverified \\n 2, Complete',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'ptname',NULL,'my_first_instrument',NULL,3,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'ptname_v2',NULL,'my_first_instrument_2','My First Instrument 2',5,NULL,NULL,'text','Name',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'record_id',NULL,'my_first_instrument','My First Instrument',1,NULL,NULL,'text','Record ID',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),
	(14,'text2',NULL,'my_first_instrument',NULL,2,NULL,NULL,'text','Text2',NULL,NULL,NULL,NULL,NULL,'soft_typed',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL);

/*!40000 ALTER TABLE `redcap_metadata_archive` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `redcap_new_record_cache` WRITE;
/*!40000 ALTER TABLE `redcap_new_record_cache` DISABLE KEYS */;

INSERT INTO `redcap_new_record_cache` (`project_id`, `event_id`, `arm_id`, `record`, `creation_time`)
VALUES
	(14,NULL,NULL,'1','2020-09-29 15:12:26'),
	(16,NULL,NULL,'2','2020-10-12 15:55:48');

/*!40000 ALTER TABLE `redcap_new_record_cache` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_outgoing_email_counts
# ------------------------------------------------------------

LOCK TABLES `redcap_outgoing_email_counts` WRITE;
/*!40000 ALTER TABLE `redcap_outgoing_email_counts` DISABLE KEYS */;

INSERT INTO `redcap_outgoing_email_counts` (`date`, `send_count`, `smtp`, `sendgrid`, `mandrill`)
VALUES
	('2020-09-28',3,3,0,0),
	('2020-10-05',1,1,0,0),
	('2020-10-06',2,2,0,0),
	('2020-10-12',1,1,0,0);

/*!40000 ALTER TABLE `redcap_outgoing_email_counts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_page_hits
# ------------------------------------------------------------

LOCK TABLES `redcap_page_hits` WRITE;
/*!40000 ALTER TABLE `redcap_page_hits` DISABLE KEYS */;

INSERT INTO `redcap_page_hits` (`date`, `page_name`, `page_hits`)
VALUES
	('2020-09-28','index.php',41),
	('2020-09-28','ControlCenter/view_users.php',6),
	('2020-09-28','ControlCenter/create_user.php',5),
	('2020-09-28','ControlCenter/security_settings.php',2),
	('2020-09-28','ControlCenter/superusers.php',5),
	('2020-09-28','ControlCenter/index.php',3),
	('2020-09-28','ControlCenter/google_map_users.php',1),
	('2020-09-28','ControlCenter/email_users.php',1),
	('2020-09-28','ControlCenter/user_settings.php',9),
	('2020-09-28','ProjectGeneral/create_project.php',2),
	('2020-09-28','ProjectSetup/index.php',19),
	('2020-09-28','DataEntryController:buildRecordListCache',4),
	('2020-09-28','ProjectGeneral/edit_project_settings.php',1),
	('2020-09-28','Design/online_designer.php',6),
	('2020-09-28','Design/edit_field.php',2),
	('2020-09-28','ProjectSetup/other_functionality.php',5),
	('2020-09-28','ProjectGeneral/copy_project_form.php',1),
	('2020-09-28','ControlCenter/view_projects.php',1),
	('2020-09-28','Design/define_events.php',4),
	('2020-09-28','Design/designate_forms.php',3),
	('2020-09-29','index.php',5),
	('2020-09-29','ProjectSetup/index.php',3),
	('2020-09-29','Design/online_designer.php',6),
	('2020-09-29','Surveys/create_survey.php',4),
	('2020-09-29','Surveys/edit_info.php',5),
	('2020-09-29','Surveys/invite_participants.php',2),
	('2020-09-29','surveys/index.php',3),
	('2020-10-02','Surveys/invite_participants.php',1),
	('2020-10-02','DataEntry/record_home.php',5),
	('2020-10-02','DataEntry/index.php',3),
	('2020-10-02','index.php',10),
	('2020-10-02','ControlCenter/user_settings.php',2),
	('2020-10-02','ProjectSetup/index.php',8),
	('2020-10-02','UserRights/index.php',1),
	('2020-10-05','index.php',8),
	('2020-10-05','ProjectSetup/index.php',3),
	('2020-10-05','Design/online_designer.php',5),
	('2020-10-05','Design/draft_mode_enter.php',1),
	('2020-10-05','Design/define_events.php',2),
	('2020-10-05','Design/edit_field.php',1),
	('2020-10-05','Design/draft_mode_review.php',1),
	('2020-10-06','index.php',12),
	('2020-10-06','ControlCenter/index.php',1),
	('2020-10-06','ToDoList/index.php',2),
	('2020-10-06','Design/project_modifications.php',1),
	('2020-10-06','Design/draft_mode_reset.php',1),
	('2020-10-06','Design/draft_mode_notified.php',1),
	('2020-10-06','ControlCenter/user_settings.php',2),
	('2020-10-06','ProjectSetup/index.php',1),
	('2020-10-06','Design/online_designer.php',4),
	('2020-10-06','Design/draft_mode_enter.php',1),
	('2020-10-06','Design/edit_field.php',1),
	('2020-10-06','Design/draft_mode_review.php',1),
	('2020-10-06','Design/draft_mode_approve.php',1),
	('2020-10-09','index.php',6),
	('2020-10-09','ProjectSetup/index.php',2),
	('2020-10-09','Design/online_designer.php',2),
	('2020-10-09','Design/draft_mode_enter.php',1),
	('2020-10-09','Design/define_events.php',1),
	('2020-10-09','Design/designate_forms.php',1),
	('2020-10-09','ControlCenter/user_settings.php',2),
	('2020-10-12','index.php',11),
	('2020-10-12','ProjectSetup/index.php',11),
	('2020-10-12','Design/online_designer.php',5),
	('2020-10-12','Design/define_events.php',6),
	('2020-10-12','Design/draft_mode_review.php',1),
	('2020-10-12','Design/draft_mode_approve.php',1),
	('2020-10-12','ControlCenter/view_projects.php',7),
	('2020-10-12','ControlCenter/index.php',2),
	('2020-10-12','ProjectSetup/other_functionality.php',2),
	('2020-10-12','ControlCenter/superusers.php',1),
	('2020-10-12','ProjectGeneral/copy_project_form.php',1),
	('2020-10-12','ProjectGeneral/create_project.php',1),
	('2020-10-12','DataEntryController:buildRecordListCache',2),
	('2020-10-12','UserRights/index.php',1),
	('2020-10-12','ProjectGeneral/edit_project_settings.php',1),
	('2020-10-12','DataEntry/record_home.php',3),
	('2020-10-12','DataEntry/index.php',2),
	('2020-10-15','index.php',43),
	('2020-10-15','UserRights/index.php',15),
	('2020-10-15','ControlCenter/view_projects.php',3),
	('2020-10-15','ProjectSetup/index.php',9),
	('2020-10-16','index.php',57),
	('2020-10-16','ProjectSetup/index.php',7),
	('2020-10-16','UserRights/index.php',28),
	('2020-10-16','DataEntry/record_home.php',5),
	('2020-10-19','index.php',37),
	('2020-10-19','UserRights/index.php',7),
	('2020-10-19','DataEntry/record_home.php',8),
	('2020-10-19','DataEntry/index.php',3),
	('2020-10-19','DataEntryController:buildRecordListCache',2),
	('2020-10-20','index.php',37),
	('2020-10-20','UserRights/index.php',6),
	('2020-10-20','DataEntryController:buildRecordListCache',2),
	('2020-10-20','ProjectSetup/other_functionality.php',2),
	('2020-10-20','ProjectSetup/index.php',8);

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
	(13,'redcap_demo_76bacb','Field Embedding Example Project',1,'2020-09-24 20:56:22','2020-09-24 20:56:22',NULL,NULL,NULL,0,'redcap_log_event',NULL,0,0,0,0,NULL,NULL,0,NULL,0,NULL,NULL,1,'none',0,'English',NULL,NULL,364,'SoAndSo University','SoAndSo Institute for Clinical and Translational Research','','REDCap Administrator (123-456-7890)','email@yoursite.edu','',1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(14,'firstproject','FirstProject',0,'2020-09-28 10:55:08',NULL,NULL,NULL,NULL,0,'redcap_log_event2',3,0,0,1,0,0,NULL,0,'28b226d88d',1,NULL,'Maecenas faucibus mollis interdum.',1,'table',0,'English',NULL,NULL,364,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'','','','','','',NULL,NULL,'','',1,NULL,1,1,NULL,0,0,1,0,0,0,'email',NULL,NULL,NULL,NULL,1,1,0,'CUSTOM',7,'+-','2020-10-20 13:58:48',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(15,'projectcopy','ProjectCopy',1,'2020-09-28 10:55:31','2020-09-28 10:55:45',NULL,NULL,NULL,0,'redcap_log_event3',3,0,0,0,0,0,NULL,0,'3a662212ef',1,NULL,'Maecenas faucibus mollis interdum.',1,'table',0,'English',NULL,NULL,364,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,NULL,0,0,1,0,0,0,NULL,NULL,NULL,NULL,'2020-09-28 10:55:55',1,1,0,'CUSTOM',7,'+-','2020-09-28 10:55:55',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL),
	(16,'secondproject','SecondProject',1,'2020-10-12 15:50:43','2020-10-16 11:58:41',NULL,NULL,NULL,0,'redcap_log_event4',2,0,1,0,0,0,NULL,0,'36e5b1e2dd',1,NULL,'Maecenas faucibus mollis interdum.',1,'table',0,'English',NULL,NULL,364,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,NULL,0,0,1,0,0,0,'email',NULL,NULL,NULL,'2020-10-20 13:47:54',0,0,0,'CUSTOM',7,'+-','2020-10-20 13:47:54',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'SURVEYS',0,NULL,NULL,NULL,'en',0,0,0,0,0,'EMAIL',NULL,1,1,'CHOICE',0,0,0,NULL,NULL,1,0,0,1,0,0,NULL,NULL,0,0,0,0,0,0,NULL,0,1,NULL,0,NULL);

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

LOCK TABLES `redcap_record_counts` WRITE;
/*!40000 ALTER TABLE `redcap_record_counts` DISABLE KEYS */;

INSERT INTO `redcap_record_counts` (`project_id`, `record_count`, `time_of_count`, `record_list_status`, `time_of_list_cache`)
VALUES
	(1,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(2,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(3,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(4,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(5,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(6,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(7,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(8,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(9,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(10,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(11,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(12,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(13,0,'2020-09-28 10:55:50','NOT_STARTED',NULL),
	(14,1,'2020-09-28 12:03:39','COMPLETE','2020-09-28 13:07:28'),
	(15,0,'2020-09-28 10:55:32','COMPLETE','2020-09-28 10:55:32'),
	(16,2,'2020-10-20 13:46:36','COMPLETE','2020-10-20 13:46:37');

/*!40000 ALTER TABLE `redcap_record_counts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_record_dashboards
# ------------------------------------------------------------



# Dump of table redcap_record_list
# ------------------------------------------------------------

LOCK TABLES `redcap_record_list` WRITE;
/*!40000 ALTER TABLE `redcap_record_list` DISABLE KEYS */;

INSERT INTO `redcap_record_list` (`project_id`, `arm`, `record`, `dag_id`, `sort`)
VALUES
	(14,1,'1',NULL,1),
	(16,1,'1',NULL,1),
	(16,1,'2',NULL,2);

/*!40000 ALTER TABLE `redcap_record_list` ENABLE KEYS */;
UNLOCK TABLES;


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
	('0ca131e52b87d887ae2a430ebb7d6567','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"aab07bd8d220236da943166583e6c45d\";s:15:\"challengecookie\";s:32:\"9e7d123789db31b6297fcd681a1ee168\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602801207;s:4:\"idle\";i:1602801215;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-15 17:33:27\";s:32:\"9c0e2d4b8a3b2ac8265e1b9baea21d60\";s:19:\"2020-10-15 17:33:28\";s:32:\"df90f6abecd202cf761698a7828c9e68\";s:19:\"2020-10-15 17:33:34\";s:32:\"6f9a27fd2556e156bd0c4af9f35074b9\";}mc_open|s:1:\"0\";','2020-10-15 18:03:35'),
	('11008d861e6e85e0745743dcbdc432c5','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"fa8c0c530b1db9a4b5a4d25131d1c78c\";s:15:\"challengecookie\";s:32:\"c375f7faa0fb66a5778671fd1e2c2456\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602866359;s:4:\"idle\";i:1602867898;}username|s:11:\"test_user\";redcap_csrf_token|a:4:{s:19:\"2020-10-16 11:39:19\";s:32:\"075a4b096ef4734656b95ae9ba5d7357\";s:19:\"2020-10-16 11:39:20\";s:32:\"efd3a0e0194abec8d9fde870308b812e\";s:19:\"2020-10-16 11:39:21\";s:32:\"870159148c8a1d58871ed6cd4846e730\";s:19:\"2020-10-16 11:39:26\";s:32:\"dd67ce4a9977e3b3743ff034e028ad86\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:4:\"1185\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"947\";tagged_data|N;','2020-10-16 12:09:27'),
	('1220a6d52cc3afac22731b2db6d44fb9','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"ffd6ec5facfeb29af5dc880d42876175\";s:15:\"challengecookie\";s:32:\"9c89ef7fbc6eb0e0843bfa6a9f14f9c0\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1602794509;s:4:\"idle\";i:1602794518;}username|s:10:\"test_admin\";redcap_csrf_token|a:3:{s:19:\"2020-10-15 15:41:49\";s:32:\"01e39935e431ad16270aad4b72a13b7c\";s:19:\"2020-10-15 15:41:51\";s:32:\"52b3f4b1164799279807a8b4852c1b67\";s:19:\"2020-10-15 15:41:58\";s:32:\"1262d050c9fe334513d8f4c451b5ae6a\";}mc_open|s:1:\"0\";','2020-10-15 16:11:58'),
	('1be36af555bdb4e681a532e9f459a938','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"68e12e0b76e4ed547e9b835337f50679\";s:15:\"challengecookie\";s:32:\"ad19a7215a3cd789fb2141dc7f80b366\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602882601;s:4:\"idle\";i:1602882695;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-16 16:10:01\";s:32:\"d566c206e97edcfc83aa8db294e28445\";s:19:\"2020-10-16 16:10:02\";s:32:\"fbbb131b5de47bcebc4e2747ceab6e0b\";s:19:\"2020-10-16 16:10:03\";s:32:\"650b45604e63a4f40e3f5e7096612150\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:4:\"1185\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"947\";tagged_data|N;','2020-10-16 16:40:06'),
	('314c61aa8f59681dbd6d4afc1894ed9d','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"0b38b685593b91060ee1648559c2098a\";s:15:\"challengecookie\";s:32:\"069b4de11b6baed31334407191453178\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602865375;s:4:\"idle\";i:1602865382;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-16 11:22:55\";s:32:\"980617949d72f0f8ad7a6dac9d0f0e0d\";s:19:\"2020-10-16 11:23:02\";s:32:\"767aec7bccdc995e436e3298f343ebd1\";}mc_open|s:1:\"0\";','2020-10-16 11:53:02'),
	('3dffa84afb7070d9d6af32e87d8c0a96','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"f0bf5ab393e3bc766086b3916cd418c7\";s:15:\"challengecookie\";s:32:\"7262bcaf01777d6a86921a5519fc557d\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603206347;s:4:\"idle\";i:1603206352;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-20 10:05:47\";s:32:\"5468f3d01eeb979b8360c8cb340113d8\";s:19:\"2020-10-20 10:05:48\";s:32:\"f5b5258df9ab1ab788a85a87d8020485\";}mc_open|s:1:\"0\";','2020-10-20 10:35:52'),
	('480afc4ded921a22592dc440af19505f','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"66b6f4ac004b538302a1c7b55baa1802\";s:15:\"challengecookie\";s:32:\"55d32111d032f20e1119c09c45a3a945\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603139162;s:4:\"idle\";i:1603139167;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-19 15:26:03\";s:32:\"ab170ca995a31789eca90dfa270c26c3\";s:19:\"2020-10-19 15:26:04\";s:32:\"4b454238776a420bf6f909b793a8b36a\";}mc_open|s:1:\"0\";','2020-10-19 15:56:07'),
	('4ab07e966d5e90e88ef5f718b73ee1d0','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"3015b3cf183ef28eafcf840d3bae5571\";s:15:\"challengecookie\";s:32:\"5d9fbf3357bf271ca845319c3b3f8364\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602794960;s:4:\"idle\";i:1602794967;}username|s:11:\"test_user\";redcap_csrf_token|a:4:{s:19:\"2020-10-15 15:49:20\";s:32:\"95ed481332b198b2d08021c6c9198592\";s:19:\"2020-10-15 15:49:21\";s:32:\"a58d69007103ba9f853bcc6a18ee4d41\";s:19:\"2020-10-15 15:49:22\";s:32:\"331ebd37dd8e10d4803212a5ffd76900\";s:19:\"2020-10-15 15:49:27\";s:32:\"77e16b5ed6a3212d703cedc73edebeb6\";}mc_open|s:1:\"0\";','2020-10-15 16:19:27'),
	('4b8802409bd4d72a7dc90cbf295fc90a','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"637380843d5a5473524728770ca338af\";s:15:\"challengecookie\";s:32:\"670781911c26ea0fdd9c17afbbd9bdb1\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602865794;s:4:\"idle\";i:1602865891;}username|s:11:\"test_user\";redcap_csrf_token|a:4:{s:19:\"2020-10-16 11:29:54\";s:32:\"17d33763b4d2d8862db90d8ece118439\";s:19:\"2020-10-16 11:29:55\";s:32:\"808fd0770eb44703035792e516a38d0c\";s:19:\"2020-10-16 11:29:56\";s:32:\"a3fca68944c339ad28aa5daefeb6da88\";s:19:\"2020-10-16 11:30:01\";s:32:\"4796af75823ad2c32861f521bc6244de\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:4:\"1185\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"947\";tagged_data|N;','2020-10-16 12:00:01'),
	('5ddcc89a2184ec34f8d784569acc5bc1','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"7c433c7bdb49eced07d66779abef5b3e\";s:15:\"challengecookie\";s:32:\"6df503f928ab7f8ad83dcbab609b63e3\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1603219594;s:4:\"idle\";i:1603220319;}username|s:10:\"test_admin\";redcap_csrf_token|a:3:{s:19:\"2020-10-20 13:46:35\";s:32:\"9dc1e957948ddae7ef0d458d1a9b126a\";s:19:\"2020-10-20 13:46:36\";s:32:\"a0ce839434a425d4405921288de27c16\";s:19:\"2020-10-20 13:46:37\";s:32:\"309587c63279f6453ec4a4777953d619\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:4:\"1185\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"947\";tagged_data|N;','2020-10-20 14:16:39'),
	('5f3e925023c3572d054f6da9d32d17f9','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"854657069af066493dedaeaa2248cc6e\";s:15:\"challengecookie\";s:32:\"dce75cc756de09eb645757f75761632b\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603225173;s:4:\"idle\";i:1603225267;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-20 15:19:33\";s:32:\"68d549b54313479d1345d48e36a1ef9f\";s:19:\"2020-10-20 15:19:34\";s:32:\"95fc9c2aa5681c448426eb3c1cd90c4d\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:4:\"1185\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"947\";tagged_data|N;','2020-10-20 15:49:37'),
	('7332ccfe9e5a3ff11184573737dbbd6d','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"eac6d46938333604f144d3b2c892f4f0\";s:15:\"challengecookie\";s:32:\"4a8fdc9bed999b3b7922c877deae8974\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602877067;s:4:\"idle\";i:1602877075;}username|s:11:\"test_user\";redcap_csrf_token|a:6:{s:19:\"2020-10-16 14:37:47\";s:32:\"ec074e58228c88c571875d2cd45318e5\";s:19:\"2020-10-16 14:37:48\";s:32:\"7e68de0d84c3380f18087c9e37cab477\";s:19:\"2020-10-16 14:37:49\";s:32:\"a94469b4bf3b6acc773f3b41160582c3\";s:19:\"2020-10-16 14:37:51\";s:32:\"16d97cbee209a73427fb32bcbaff864d\";s:19:\"2020-10-16 14:37:54\";s:32:\"b82ffd7d1cfd92b84c7dd1b8972761f1\";s:19:\"2020-10-16 14:37:55\";s:32:\"5ac75e27e7aa47f1c63eb9c98b9697b8\";}mc_open|s:1:\"0\";','2020-10-16 15:07:55'),
	('7b9c29cfba9e89648ef1e2f76cb19574','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"21280ba5e4c25637a0b5db425ea17b5b\";s:15:\"challengecookie\";s:32:\"28f7d8bc9d47e45e8ad5012e3639ddc3\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1602794315;s:4:\"idle\";i:1602794320;}username|s:10:\"test_admin\";redcap_csrf_token|a:2:{s:19:\"2020-10-15 15:38:35\";s:32:\"268beb5f9e3d237271640ddaf76093d4\";s:19:\"2020-10-15 15:38:36\";s:32:\"0a4b9d43013786df9312e29d7cfaf7bf\";}mc_open|s:1:\"0\";','2020-10-15 16:08:40'),
	('7bb5f97f0b830f253ceeb7971632d08e','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"e1e5565e9aa2324600953140a7dfcd4f\";s:15:\"challengecookie\";s:32:\"e8c988d27f800259cfe82df371d59dba\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602794841;s:4:\"idle\";i:1602794848;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-15 15:47:21\";s:32:\"d1e8f8fa0257fb402da4d1c7ff771abd\";s:19:\"2020-10-15 15:47:22\";s:32:\"57d8178e762437304a803f3575d1f8b5\";s:19:\"2020-10-15 15:47:27\";s:32:\"1fecfdda37db1fd1ff1a6f897b2c5146\";}mc_open|s:1:\"0\";','2020-10-15 16:17:28'),
	('7d0131c56e5a6605a438fc0fda604909','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"a1e6f151a3bd9c8bc5ead8690cac0a4b\";s:15:\"challengecookie\";s:32:\"cdde0e9430dc16281737e417dc02b4a5\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603125201;s:4:\"idle\";i:1603125209;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-19 11:33:21\";s:32:\"cbf4c9f71c5d6f0a4d65afe5a69200b5\";s:19:\"2020-10-19 11:33:22\";s:32:\"e4c5e4ec0a241820793973a34ef6ed8a\";s:19:\"2020-10-19 11:33:29\";s:32:\"dccf582dccc93ac5e88da349128f037d\";}mc_open|s:1:\"0\";','2020-10-19 12:03:29'),
	('81daf7c6cdf0e66f66cea57c5e81ab4f','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"0bd627cd70288d89863da2ab7379e1c5\";s:15:\"challengecookie\";s:32:\"e3de44fa7590a238b62f5fbaa46e917a\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602877882;s:4:\"idle\";i:1602877887;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-16 14:51:22\";s:32:\"60d55d3ab909f560f4c189284dd834fd\";s:19:\"2020-10-16 14:51:23\";s:32:\"f3fbb563ce3e0bc6c5c8bd97c595c234\";s:19:\"2020-10-16 14:51:24\";s:32:\"1cf6d44a88f22609a15454f84a269cef\";}mc_open|s:1:\"0\";','2020-10-16 15:21:27'),
	('8cd8795af0b5f36123ddfb68ab7ba409','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"79e46b07d9dbba703fba3c1de90ac7a3\";s:15:\"challengecookie\";s:32:\"6470c611c84c4f157c948cb8f380eae4\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602877532;s:4:\"idle\";i:1602877539;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-16 14:45:32\";s:32:\"95bfdfacf9f8a946d74710f1c7d32f5e\";s:19:\"2020-10-16 14:45:33\";s:32:\"8e69ebf3c20a73631a4692770cf4669f\";s:19:\"2020-10-16 14:45:39\";s:32:\"791d3e7f734961a935643b63a5c1c5aa\";}mc_open|s:1:\"0\";','2020-10-16 15:15:39'),
	('8ea09041ba5586ebd65604dcee42cd6a','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"764003fad055650a395356e34dbb609e\";s:15:\"challengecookie\";s:32:\"4ec9a4579259bd501e8bf63180d4cf8e\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603214913;s:4:\"idle\";i:1603215187;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-20 12:28:33\";s:32:\"bcf75b072279027c0419fda2f6314ebd\";s:19:\"2020-10-20 12:28:34\";s:32:\"0c07ec2b349e0675a20ca6133e287e17\";s:19:\"2020-10-20 12:28:36\";s:32:\"b192b95075079199a03391d150372024\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:4:\"1185\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"947\";tagged_data|N;','2020-10-20 12:58:38'),
	('9173dffe40a992f3a02975307e088a37','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"b7aba43e0662f960c660a8700c9bc03e\";s:15:\"challengecookie\";s:32:\"ec92c86b9926ffc5cc992bb18951fb58\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603142028;s:4:\"idle\";i:1603142035;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-19 16:13:48\";s:32:\"edc3aff9bdbc0583acff8eff5da037f4\";s:19:\"2020-10-19 16:13:49\";s:32:\"953efe6841c75310657cd5ec587157c6\";s:19:\"2020-10-19 16:13:50\";s:32:\"dc3de73d06a5359a9cc8b48cd30d72f1\";}mc_open|s:1:\"0\";','2020-10-19 16:43:55'),
	('94731a214521c0de569259c736820f21','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"46c00d1a0cd9e7f3c130dcb35a786dd1\";s:15:\"challengecookie\";s:32:\"a6ff2930549ad29b42336fef99d7d242\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602864028;s:4:\"idle\";i:1602864579;}username|s:11:\"test_user\";redcap_csrf_token|a:5:{s:19:\"2020-10-16 11:00:28\";s:32:\"dba69b1b016a4187ffc2920074b6dc8c\";s:19:\"2020-10-16 11:00:29\";s:32:\"a69399d816f1f1c79fd2d8c11eebc0ab\";s:19:\"2020-10-16 11:00:30\";s:32:\"f4a985bcf23061e91cfb97f638feaa1f\";s:19:\"2020-10-16 11:00:31\";s:32:\"5c053d26b3e0a3d09d7d12bd4cfe8a8d\";s:19:\"2020-10-16 11:00:38\";s:32:\"5654d9ac21ae1b8ee9132e7af03aebee\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:4:\"1185\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"947\";tagged_data|N;','2020-10-16 11:30:38'),
	('987618fbb68b5aee3c579d7af53d519e','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"c990a8593055692552d867602bbf1fa8\";s:15:\"challengecookie\";s:32:\"164da0b796fc2653f11cadb7c5176dc9\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603143316;s:4:\"idle\";i:1603143320;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-19 16:35:16\";s:32:\"aff2102f7416ab5a440459e353c3c4db\";s:19:\"2020-10-19 16:35:18\";s:32:\"095a04cc7fd8e3810eaa8999fe6fef5a\";}mc_open|s:1:\"0\";','2020-10-19 17:05:20'),
	('99711c86c4331ccaabc79b438f97d3c5','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"efb45f28e3e4ec089e766c21aa883cd4\";s:15:\"challengecookie\";s:32:\"6a1d96f846103217b06d63e2bf858c01\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602794720;s:4:\"idle\";i:1602794723;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-15 15:45:20\";s:32:\"52eaad139101770ecfc116cade8b9205\";s:19:\"2020-10-15 15:45:21\";s:32:\"f588d591a05dcbe4a0e5c1493bb240a5\";}mc_open|s:1:\"0\";','2020-10-15 16:15:23'),
	('99d92a599d69a4e3257a86118a3f66b5','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"993df480d5c29beee3d74199fdb2edae\";s:15:\"challengecookie\";s:32:\"ff760b5cd68a92fe9472e45c9e449617\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603138408;s:4:\"idle\";i:1603138417;}username|s:11:\"test_user\";redcap_csrf_token|a:4:{s:19:\"2020-10-19 15:13:28\";s:32:\"57831011de30578cbc2b6a6eefc373d1\";s:19:\"2020-10-19 15:13:29\";s:32:\"aae80c161f5f7492a54d3bb70de9c88b\";s:19:\"2020-10-19 15:13:35\";s:32:\"7ed370ce52ff8630a50a87bc854ab1bb\";s:19:\"2020-10-19 15:13:36\";s:32:\"eaf2a8430e23fb222999006fdaaa3d58\";}mc_open|s:1:\"0\";','2020-10-19 15:43:37'),
	('9cb342c50bef408b17c00d6c96a30162','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"b115878932e741ef0dcf06178acaec3d\";s:15:\"challengecookie\";s:32:\"72fba1c29f1837c34d54f57c81415e56\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1602794616;s:4:\"idle\";i:1602794621;}username|s:10:\"test_admin\";redcap_csrf_token|a:1:{s:19:\"2020-10-15 15:43:36\";s:32:\"aabd7f851e50c79c3248d0e310ac363e\";}mc_open|s:1:\"0\";','2020-10-15 16:13:41'),
	('aa6acf3a5a1f5de793d1ef4c8aca9ec5','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"c71e248e6b437584b35c9167ff1f0c8b\";s:15:\"challengecookie\";s:32:\"1fd62a971523ec98bf3e587d425b32dd\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602801760;s:4:\"idle\";i:1602801767;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-15 17:42:40\";s:32:\"91abaa037bb321b066b4e90b35972c34\";s:19:\"2020-10-15 17:42:41\";s:32:\"5f502bbeda966c05abe5efaae24d6fac\";s:19:\"2020-10-15 17:42:47\";s:32:\"9bc50baaa9a183e37e64b97bee684d83\";}mc_open|s:1:\"0\";','2020-10-15 18:12:47'),
	('b60dc65a02ad4f3cbe5656df681f1938','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"39b70bb1caccb841f367537c7cf027da\";s:15:\"challengecookie\";s:32:\"8bc44e8a776b39c7726fa9d9ed7d6e04\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602801862;s:4:\"idle\";i:1602801869;}username|s:11:\"test_user\";redcap_csrf_token|a:3:{s:19:\"2020-10-15 17:44:22\";s:32:\"afb94b225ade180d4f3d765e0ca1b423\";s:19:\"2020-10-15 17:44:23\";s:32:\"c9dc38246bcfe484e60ef803c10d2970\";s:19:\"2020-10-15 17:44:29\";s:32:\"0d474fbba9f9b8c14f45a0636521d476\";}mc_open|s:1:\"0\";','2020-10-15 18:14:29'),
	('bc5c5cb8d8eec0275d9f8f98a710bc34','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"56c2b437faaa27467efef8a48f8aada1\";s:15:\"challengecookie\";s:32:\"8f162c799d264256011a4d4b645ca7f3\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603126582;s:4:\"idle\";i:1603126593;}username|s:11:\"test_user\";redcap_csrf_token|a:6:{s:19:\"2020-10-19 11:56:22\";s:32:\"d21a6f6bfd9cde200f0c0c433da74a54\";s:19:\"2020-10-19 11:56:23\";s:32:\"300a9344f029e1fbd4d4169b186b78d2\";s:19:\"2020-10-19 11:56:24\";s:32:\"a95808c343e630e33d954764e60941a8\";s:19:\"2020-10-19 11:56:30\";s:32:\"1c89e7967a666dc707de8e02d020d4b3\";s:19:\"2020-10-19 11:56:31\";s:32:\"a393b5bab80e571dc6e9b673edcb3802\";s:19:\"2020-10-19 11:56:33\";s:32:\"848e0b8040e51b95590d24f3f02bf530\";}mc_open|s:1:\"0\";','2020-10-19 12:26:33'),
	('c055f5372227f10068a2688bfcddff7d','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"533e6e80a37136936c45a8bb895d4a23\";s:15:\"challengecookie\";s:32:\"75545d5825927f97adb4436605936f3e\";s:10:\"registered\";b:1;s:8:\"username\";s:10:\"test_admin\";s:9:\"timestamp\";i:1603218672;s:4:\"idle\";i:1603218677;}username|s:10:\"test_admin\";redcap_csrf_token|a:2:{s:19:\"2020-10-20 13:31:13\";s:32:\"8dcb0b892978c0a724fbcbb3757961ee\";s:19:\"2020-10-20 13:31:14\";s:32:\"269f0a784cbbe05b9b89e22a12b3afe9\";}mc_open|s:1:\"0\";','2020-10-20 14:01:17'),
	('c5a909f100fa90a82c93bab5d1fd5526','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"468d786af95f8eb8d25b060c430629f1\";s:15:\"challengecookie\";s:32:\"d6014bb088ce4e169f76c2ed7412ff53\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603224626;s:4:\"idle\";i:1603224632;}username|s:11:\"test_user\";redcap_csrf_token|a:4:{s:19:\"2020-10-20 15:10:26\";s:32:\"69e18805d6289617bc518d50ce4063bd\";s:19:\"2020-10-20 15:10:28\";s:32:\"546e388daf625f66e08439ec7a14316b\";s:19:\"2020-10-20 15:10:29\";s:32:\"f8df485ec3f351f4a01e1aac11586e95\";s:19:\"2020-10-20 15:10:30\";s:32:\"3da2c7f1da83c92df8d502653b97b68e\";}mc_open|s:1:\"0\";','2020-10-20 15:40:32'),
	('cf818471d3eb01af81626816ea652f1c','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:82.0) Gecko/20100101 Firefox/82.0\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"ca234a3af781ce4f264b426d087bda49\";s:15:\"challengecookie\";s:32:\"ec61c06cbeed6964aa00f1ac14a18b31\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602866404;s:4:\"idle\";i:1602867929;}username|s:11:\"test_user\";redcap_csrf_token|a:14:{s:19:\"2020-10-16 11:40:04\";s:32:\"eee237b7f2ed76283330515ef6c2535a\";s:19:\"2020-10-16 11:55:59\";s:32:\"2cc33091985c2241257dbea1427b0574\";s:19:\"2020-10-16 11:57:08\";s:32:\"f00730f12facfff1c1728b12c508f0fd\";s:19:\"2020-10-16 11:57:24\";s:32:\"8c0d78726a5b43e363f632fb843fe640\";s:19:\"2020-10-16 11:57:51\";s:32:\"8d8e058b3c98e3a324c3dca8bcd1a0d6\";s:19:\"2020-10-16 11:58:33\";s:32:\"821ecd2d33bf3b4d381be3d3bea9304f\";s:19:\"2020-10-16 11:58:42\";s:32:\"a8ed827217142ac064623b730d53e357\";s:19:\"2020-10-16 11:58:50\";s:32:\"8bd1649ca2429ae9963cfe5efd950494\";s:19:\"2020-10-16 11:59:02\";s:32:\"ab6f625e423968bf095dba29b27c31bd\";s:19:\"2020-10-16 11:59:19\";s:32:\"39ed16fab0741ce47a0dc3b4f3ad6673\";s:19:\"2020-10-16 11:59:40\";s:32:\"2f9deda81bd0902c90eb580abf9493e5\";s:19:\"2020-10-16 11:59:43\";s:32:\"9d9558d7394712a1975d1a9d9368b57a\";s:19:\"2020-10-16 12:05:12\";s:32:\"a2e406cc9ead2655ecfe421e4cb082f2\";s:19:\"2020-10-16 12:05:28\";s:32:\"33dec529d26a77ff20d202bc4fb8ac5e\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:7:\"238.4px\";message_center_container_height|s:3:\"647\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:5:\"408.6\";tagged_data|N;','2020-10-16 12:35:29'),
	('d9d831ff31953da63d4759232e11ac17','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"bc06b54e0b3b43f2f585119206ffd0db\";s:15:\"challengecookie\";s:32:\"139b648eaa9ae01d9c4df1a3b2939aec\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602794419;s:4:\"idle\";i:1602794421;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-15 15:40:19\";s:32:\"1a8f1f71ae8e84739b9df0f7efc25339\";s:19:\"2020-10-15 15:40:20\";s:32:\"83e5395e550484f9b3f241337590d257\";}mc_open|s:1:\"0\";','2020-10-15 16:10:21'),
	('db742ac5f108b02ae78c106f79e0440a','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"db67855bf366155a4d16307c93521237\";s:15:\"challengecookie\";s:32:\"f119d9553c4814fd7f1ee5674ace4d30\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602881717;s:4:\"idle\";i:1602881723;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-16 15:55:17\";s:32:\"1919bf9e336c7b96da91149c21380b0a\";s:19:\"2020-10-16 15:55:18\";s:32:\"08c443a958135d6d48333b0be78d207f\";}mc_open|s:1:\"0\";','2020-10-16 16:25:23'),
	('dfca537a3573c1832493e6cd35ed0c70','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"398ad2e37a0846830d3b42eff733a2f8\";s:15:\"challengecookie\";s:32:\"e977ed47bf443609bdcb6dfa1714df91\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602879844;s:4:\"idle\";i:1602879849;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-16 15:24:04\";s:32:\"191cc00356e425fdaf58decb17dbb468\";s:19:\"2020-10-16 15:24:05\";s:32:\"5758aaeffad6526c8922361b7545bfa1\";}mc_open|s:1:\"0\";','2020-10-16 15:54:09'),
	('e229c6dc493df0eabae3fe734d20468f','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"64bb6fd3b7ec6fa6650319e259e780c2\";s:15:\"challengecookie\";s:32:\"0ba58c5e9e435f0d6d0ca9341faaf029\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602880496;s:4:\"idle\";i:1602880594;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-16 15:34:56\";s:32:\"d4e96960e10e8009cf33babc132f3989\";s:19:\"2020-10-16 15:35:03\";s:32:\"4edf6e666b111fe833371a135e09a143\";}mc_open|s:1:\"0\";thread_id|s:0:\"\";thread_msg|N;action_icons_state|N;conv_win_size|s:3:\"122\";important|s:1:\"0\";msg_container_top|s:5:\"238px\";message_center_container_height|s:4:\"1185\";msg_wrapper_height|s:3:\"374\";msg_container_height|s:3:\"947\";tagged_data|N;','2020-10-16 16:05:03'),
	('ea0ceaed9c0568cba3bcc8c51170e02f','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"eccdc5f19125336b773a072201c0ca45\";s:15:\"challengecookie\";s:32:\"1413a4275c07b921a7c4d9b339e268a7\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1603126115;s:4:\"idle\";i:1603126123;}username|s:11:\"test_user\";redcap_csrf_token|a:4:{s:19:\"2020-10-19 11:48:35\";s:32:\"7b9c1b929728184b44a2a9508524fac1\";s:19:\"2020-10-19 11:48:36\";s:32:\"793f73ca825aa6f54a9ca2e7e71029da\";s:19:\"2020-10-19 11:48:42\";s:32:\"82bd6db0c10633d4538373832361ca63\";s:19:\"2020-10-19 11:48:43\";s:32:\"c7a44294b34758cf4fbb2ade4539e81b\";}mc_open|s:1:\"0\";','2020-10-19 12:18:44'),
	('f4b2f0555b506be8597049c869f95546','_authsession|a:10:{s:4:\"data\";a:0:{}s:9:\"sessionip\";s:10:\"172.18.0.1\";s:16:\"sessionuseragent\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:19:\"sessionforwardedfor\";s:0:\"\";s:12:\"challengekey\";s:32:\"06189d095421145a5f037ca295a00a43\";s:15:\"challengecookie\";s:32:\"4c7161c57d617ad15a3349c556c87767\";s:10:\"registered\";b:1;s:8:\"username\";s:11:\"test_user\";s:9:\"timestamp\";i:1602883097;s:4:\"idle\";i:1602883102;}username|s:11:\"test_user\";redcap_csrf_token|a:2:{s:19:\"2020-10-16 16:18:17\";s:32:\"ebdd26c505207a5d1c61f1ab7024402f\";s:19:\"2020-10-16 16:18:18\";s:32:\"3141ae2ae613bb18e607e3fffb55532c\";}mc_open|s:1:\"0\";','2020-10-16 16:48:22');

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
	(8,11,'survey','Example Survey to Demonstrate Piping','This survey will demonstrate some basic examples of the Piping feature in REDCap.','<p style=\"font-size:14px;\"><strong>[first_name], thank you for taking the survey.</strong></p><br><p>Have a nice day!</p>',1,1,0,1,0,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'BEFORE_SUBMIT',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(10,14,'my_first_instrument','My First Instrument','<p><strong>Please complete the survey below.</strong></p>\r\n<p>Thank you!</p>','<p><strong>Thank you for taking the survey.</strong></p>\r\n<p>Have a nice day!</p>',0,0,1,1,0,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,1,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'AFTER_SUBMIT',NULL,1,'<p>Thank you for your interest; however, the survey is closed because the maximum number of responses has been reached.</p>',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
	(11,16,'my_first_instrument','My First Instrument','<p><strong>Please complete the survey below.</strong></p>\r\n<p>Thank you!</p>','<p><strong>Thank you for taking the survey.</strong></p>\r\n<p>Have a nice day!</p>',0,1,1,1,0,0,NULL,0,0,10,0,NULL,NULL,0,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,0,'en',0,NULL,1,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'AFTER_SUBMIT',NULL,1,'<p>Thank you for your interest; however, the survey is closed because the maximum number of responses has been reached.</p>',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);

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

LOCK TABLES `redcap_surveys_participants` WRITE;
/*!40000 ALTER TABLE `redcap_surveys_participants` DISABLE KEYS */;

INSERT INTO `redcap_surveys_participants` (`participant_id`, `survey_id`, `event_id`, `hash`, `legacy_hash`, `access_code`, `access_code_numeral`, `participant_email`, `participant_identifier`, `participant_phone`, `delivery_preference`, `link_expiration`, `link_expiration_override`)
VALUES
	(1,10,41,'X7PJ84YK38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	(2,10,41,'muNEKeiPnH',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,0),
	(3,11,46,'532yQ9pUtN',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `redcap_surveys_participants` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `redcap_surveys_response` WRITE;
/*!40000 ALTER TABLE `redcap_surveys_response` DISABLE KEYS */;

INSERT INTO `redcap_surveys_response` (`response_id`, `participant_id`, `record`, `instance`, `start_time`, `first_submit_time`, `completion_time`, `return_code`, `results_code`)
VALUES
	(1,1,'1',1,NULL,'2020-09-29 15:12:26','2020-09-29 15:12:26',NULL,NULL),
	(2,2,'1',1,NULL,NULL,NULL,NULL,NULL),
	(3,3,'1',1,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `redcap_surveys_response` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `redcap_todo_list` WRITE;
/*!40000 ALTER TABLE `redcap_todo_list` DISABLE KEYS */;

INSERT INTO `redcap_todo_list` (`request_id`, `request_from`, `request_to`, `todo_type`, `action_url`, `status`, `request_time`, `project_id`, `request_completion_time`, `request_completion_userid`, `comment`)
VALUES
	(1,3,'email@yoursite.edu','draft changes','http://localhost/redcap_v10.6.4/Design/project_modifications.php?pid=14&request_id=1','completed','2020-10-05 12:34:39',14,'2020-10-06 12:14:47',2,NULL);

/*!40000 ALTER TABLE `redcap_todo_list` ENABLE KEYS */;
UNLOCK TABLES;


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
	(2,'test_admin','test_admin@test.test','','',NULL,NULL,'Test','Admin','',1,1,1,1,1,1,1,'2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-10-20 13:58:48','2020-10-20 13:58:16',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'M-D-Y_24','.','','P6T3NSJLY4EFQMBY',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(3,'test_user','test_user@test.test','','',NULL,NULL,'Test','User','',0,0,0,0,0,0,0,'2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-10-20 10:05:52','2020-10-20 15:19:33',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'M-D-Y_24','.','','E4NET5B5SWDYRCG6',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(4,'test_user_b','test_user_b@test.test','','',NULL,NULL,'Test','User_B','',0,0,0,0,0,0,0,'2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17','2020-09-18 15:10:17',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'M-D-Y_24','.','','4TDAVAAS2C2AFEJT',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(5,'test_user_c','testy@test.test','','',NULL,NULL,'Test','User_C','',0,0,0,0,0,0,0,'2020-09-23 15:10:42','2020-09-23 15:11:07','2020-09-23 15:10:55','2020-09-23 15:11:13','2020-09-28 10:54:52',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'M-D-Y_24','.','','NC3XHQLSYXQSY7EO',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0),
	(6,'test_deleteuser','test_deleteuser@test.test','','',NULL,NULL,'Test','DeleteUser','',0,0,0,0,0,0,0,'2020-09-23 15:11:46','2020-09-23 15:12:13','2020-09-23 15:11:59','2020-09-23 15:12:20','2020-10-06 15:45:32',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'M-D-Y_24','.','','ME5FA2KWGLXCUQIR',1,1,2,NULL,'4_HOURS',1,NULL,NULL,0,0);

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
	(13,'site_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,'',NULL,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,NULL),
	(14,'test_user',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,1,1,1,1,1,1,'[my_first_instrument,3][my_first_instrument_2,1]',NULL,0,0,1,1,1,0,0,0,1,1,1,0,0,0,0,0,0,NULL),
	(15,'test_user',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,1,1,1,1,1,1,'[my_first_instrument,1][my_first_instrument_2,1]',NULL,0,0,1,1,1,0,0,0,1,1,1,0,0,0,0,0,0,NULL),
	(16,'test_admin',NULL,NULL,NULL,0,0,0,1,1,1,1,1,0,1,1,1,1,1,1,NULL,NULL,0,0,1,1,1,0,0,0,1,0,0,0,0,0,0,0,0,NULL),
	(16,'test_user',NULL,NULL,NULL,0,0,0,2,0,0,0,1,0,0,0,1,1,0,1,'[my_first_instrument,3][my_first_instrument_2,1]',NULL,0,0,0,0,1,0,0,0,1,0,0,1,0,0,0,0,0,NULL);

/*!40000 ALTER TABLE `redcap_user_rights` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table redcap_user_roles
# ------------------------------------------------------------

LOCK TABLES `redcap_user_roles` WRITE;
/*!40000 ALTER TABLE `redcap_user_roles` DISABLE KEYS */;

INSERT INTO `redcap_user_roles` (`role_id`, `project_id`, `role_name`, `lock_record`, `lock_record_multiform`, `lock_record_customize`, `data_export_tool`, `data_import_tool`, `data_comparison_tool`, `data_logging`, `file_repository`, `double_data`, `user_rights`, `data_access_groups`, `graphical`, `reports`, `design`, `calendar`, `data_entry`, `api_export`, `api_import`, `mobile_app`, `mobile_app_download_data`, `record_create`, `record_rename`, `record_delete`, `dts`, `participants`, `data_quality_design`, `data_quality_execute`, `data_quality_resolution`, `random_setup`, `random_dashboard`, `random_perform`, `realtime_webservice_mapping`, `realtime_webservice_adjudicate`, `external_module_config`)
VALUES
	(1,16,'Data Entry',0,0,0,2,0,0,0,1,0,0,0,1,1,0,1,'[my_first_instrument,3][my_first_instrument_2,1]',0,0,0,0,1,0,0,0,1,0,0,1,0,0,0,0,0,NULL);

/*!40000 ALTER TABLE `redcap_user_roles` ENABLE KEYS */;
UNLOCK TABLES;


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
