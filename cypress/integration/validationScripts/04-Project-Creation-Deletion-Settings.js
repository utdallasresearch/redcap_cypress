describe('4 - Manage Project Creation/Deletion Settings', {
    env: {
        coupled_mode: false
    }
}, () => {

    describe('Global User Project Settings', () => {

        it('4-2: Should allow admin user to manage global user project settings for creating new projects.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4')

            cy.visit_version({page: "ControlCenter/index.php"})
                .then(() => {
                    cy.get('.cc_menu_item a')
                        .contains('User Settings')
                        .click()
                })

            cy.get('h4')
                .should('contain.text', ' System-level User Settings')
            cy.get('td.cc_label')
                .should('contain.text', 'Allow normal users to create new projects?')


            cy.get('select[name="superusers_only_create_project"]')
                .select('No, only Administrators can create new projects')
                .should('have.value', '1')
                .select('Yes, normal users can create new projects')
                .should('have.value', '0')

            cy.get('select[name="superusers_only_create_project"]')
                .select('No, only Administrators can create new projects')

            cy.get('input')
                .contains('Save Changes')
                .click()

            cy.get("body")
                .should('contain.text', 'Your system configuration values have now been changed!')
        })

        it('4-3: Should allow admin to set global privs for moving projects to production.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-3')


            cy.visit_version({page: "ControlCenter/user_settings.php"})
                .then(() => {

                    cy.get('td.cc_label').should(($td) => {
                        expect($td).to.contain('Allow normal users to move projects to production?')
                    })

                    cy.get('select[name="superusers_only_move_to_prod"]')
                        .select('No, only Administrators can move projects to production')
                        .should('have.value', '1')
                        .select('Yes, normal users can move projects to production')
                        .should('have.value', '0')

                    cy.get('select[name="superusers_only_move_to_prod"]')
                        .select('No, only Administrators can move projects to production')

                    cy.get('input')
                        .contains('Save Changes')
                        .click()

                    cy.get("body").contains("Your system configuration values have now been changed!")
            })
        })

        it('4-4: Should allow admin to set global privs for users to edit survey responses.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-4')

            cy.visit_version({page: "ControlCenter/user_settings.php"})
                .then(() => {
                    cy.get('td.cc_label').should(($td) => {
                        expect($td).to.contain('Allow users to edit survey responses?')
                    })

                    cy.get('select[name=enable_edit_survey_response]')
                        .select('Disabled')
                        .should('have.value', '0')
                        .select('Enabled')
                        .should('have.value', '1')

                    cy.get('select[name=enable_edit_survey_response]')
                        .select('Disabled')

                    cy.get('input')
                        .contains('Save Changes')
                        .click()

                    cy.get("body").contains("Your system configuration values have now been changed!")
            })
        })

        it('4-5: Should allow admin to set global privs for users to allow draft-mode changes.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-5')


            cy.visit_version({page: "ControlCenter/user_settings.php"}).then(() => {
                cy.get('td.cc_label').should(($td) => {
                    expect($td).to.contain('Allow production Draft Mode changes to be approved automatically under certain conditions?')
                })

                cy.get('select[name=auto_prod_changes]')
                    .select('Never (always require an admin to approve changes)')
                    .should('have.value', '0')
                    .select('Yes, if no existing fields were modified')
                    .should('have.value', '2')
                    .select('Yes, if project has no records OR if has records and no existing fields were modified')
                    .should('have.value', '3')
                    .select('Yes, if no critical issues exist')
                    .should('have.value', '4')

                cy.get('select[name=auto_prod_changes]')
                    .select('Never (always require an admin to approve changes)')

                cy.get('input')
                .contains('Save Changes')
                .click()

                cy.get("body").contains("Your system configuration values have now been changed!")
            })
        })

        it('4-6: Should allow admin to set global user privs to add or modify events and arms while in production.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-6')


            cy.visit_version({page: "ControlCenter/user_settings.php"}).then(() => {

                cy.get('td.cc_label').should(($td) => {
                    expect($td).to.contain('Allow normal users to add or modify events and arms on the Define My Events page for longitudinal projects while in production status?')
                })
                cy.get('select[name=enable_edit_prod_events]')
                    .select('No, only Administrators can add/modify events in production')
                    .should('have.value', '0')
                    .select('Yes, normal users can add/modify events in production')
                    .should('have.value', '1')

                // todo: text in select varies from script.
                cy.get('select[name=enable_edit_prod_events]')
                    .select('No, only Administrators can add/modify events in production')

                cy.get('input')
                    .contains('Save Changes')
                    .click()

                cy.get("body").contains("Your system configuration values have now been changed!")
            })
        })
    })

    describe('Individual User Project Settings', () => {

        it('4-7: Should allow admin to edit individual user project settings.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-7')

            let username = 'test_user'
            let firstname = 'Test'
            let lastname = 'User'

            cy.visit_version({page: "ControlCenter/view_users.php"}).then(() => {

                cy.get('input#user_search')
                    .type(username)
                cy.get('button#user_search_btn')
                    .click()
                cy.get('body')
                    .contains('User information for "'
                        + username + '" (' + firstname + ' ' + lastname + ')')
                cy.get('td.data2')
                    .contains('Allow this user to create or copy projects?')
                    .next('td.data2')
                    .should('contain.text', 'Yes')
                cy.get('button')
                    .contains('Edit user info')
                    .click()
                cy.get('input[name=allow_create_db]')
                    .should('be.checked')
                    // was getting cross-site scripting error here
                    // added check() and uncheck() and resolved the issue.
                    .uncheck()
                    .check()
                cy.get('input[name=submit]')
                    .click()
                cy.get('body')
                    .should('contain.text', 'User has been successfully saved.')
            })
        })

        it('4-8: Should not allow underprivileged users to create projects.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-8')

            cy.visit_base({url: ""}).then(() => {

                cy.get('a.nav-link')
                    .contains('Home')
                    .click()
                cy.get('a.nav-link')
                    .should('not.contain.text', 'New Project')
            })
        })

        it('4-9/10: Should allow a privileged user to request a project.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-9')


            cy.visit_base({url: ""}).then(() => {
                cy.get('a.nav-link')
                    .contains('Home')
                    .click()
                cy.get('a.nav-link')
                    .contains('New Project')
                    .click()
                cy.get('button')
                    .contains('Send Request')
                cy.get('button')
                    .contains('Cancel')
                    .click()
            })
        })

        it('4-11/12: Should have the ability to grant users permission to create a project', () => {
            cy.mysql_db('seeds/validations/4/validation-pre-4-11')
            cy.set_user_type('admin')

            cy.visit_version({page: "ControlCenter/index.php"})
                .then(() => {
                    cy.get('.cc_menu_item')
                        .within(() => {
                            cy.get('a')
                                .contains('User Settings')
                                .click()
                        })
                    cy.get('h4')
                        .should('contain.text', 'System-level User Settings')
                    cy.get('select[name=superusers_only_create_project]')
                        .select('Yes, normal users can create new projects')
                    cy.get('input[type=submit')
                        .click()
                    cy.get('body')
                        .should('contain.text', 'Your system configuration values have now been changed!')
                })
        })

        it('4-13/14: Should give permission to privileged users to create projects.', () => {
            cy.mysql_db('seeds/validations/4/validation-pre-4-13')
            cy.set_user_type('standard')

            cy.visit_base({url: ""}).then(() => {
                cy.get('a.nav-link')
                    .contains('Home')
                    .click()
                cy.get('a.nav-link')
                    .contains('New Project')
                    .click()
                cy.get('body')
                    .should('contain.text', 'Create a new REDCap Project')
                cy.get('table')
                    .within(() => {
                        cy.get('td')
                            .should('contain.text', 'Project title')
                        cy.get('input#app_title')
                            .type('FirstProject')
                        cy.get('td')
                            .should('contain.text', 'Purpose of this project')
                        cy.get('select[name=purpose]')
                            .select('Operational Support')
                        cy.get('td')
                            .should('contain.text', 'Project notes (optional)')
                        cy.get('textarea#project_note')
                            .type('Maecenas faucibus mollis interdum.')
                        cy.get('td')
                            .should('contain.text', 'Start project from scratch')
                        cy.get('input#project_template_radio0')
                            .check()
                        cy.get('button')
                            .contains('Create Project')
                            .click()
                    })
                cy.get('div#actionMsg')
                    .should('contain.text', 'Your new REDCap project has been created and is ready to be accessed.')
            })
        })

        it('4-15: Should allow the user to modify project settings.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-15')


            cy.visit_base({url: ""}).then(() => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('div.projtitle')
                    .within( () => {
                        cy.get('a')
                            .contains('FirstProject')
                            .click()
                    })

                cy.get('div#subheader')
                    .should('contain.text', 'FirstProjectPID')
                cy.get('div#sub-nav')
                    .within(() => {
                        cy.get('a')
                            .contains('Project Setup')
                            .click()
                    })
                cy.get('td')
                    .contains('Main project settings')

                cy.get('button')
                    .contains('Modify project title, purpose, etc.')
                    .click()

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Modify Project Settings')
                        cy.get('input#app_title')
                            .clear()
                            .type('FirstProject')
                        cy.get('select#purpose')
                            .select('Practice / Just for fun')
                        cy.get('button')
                            .contains('Save')
                            .click()
                    })
                cy.get('body')
                    .should('contain.text', 'Success! Your changes have been saved.')
            })
        })

        it('4-16: Should allow the user to modify project instrument.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-16')


            cy.visit_base({url: ""}).then(() => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('div.projtitle')
                    .within( () => {
                        cy.get('a')
                            .contains('FirstProject')
                            .click()
                    })
                cy.subnavItem('projSetup')

                cy.get('td')
                    .contains('Main project settings')

                cy.get('button')
                    .contains(' Online Designer')
                    .click()

                cy.get('div#sub-nav')
                    .within(() => {
                        cy.get('a')
                            .contains('Online Designer')
                            .click()
                    })
                cy.get('div')
                    .should('contain.text', 'Data Collection Instruments')

                cy.get('table')
                    .within(() => {
                        cy.get('th')
                            .should('contain.text', 'Instrument name')
                        cy.get('a')
                            .contains('My First Instrument')
                            .click()
                    })
                cy.get('div#ready_to_add_questions')
                    .should('contain.text', 'Ready to add fields')
                cy.get('label#label-record_id')
                    .should('contain.text', 'Record ID')
                cy.get('input#btn-last')
                    .click()

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('select#field_type')
                            .select('Text Box (Short Text, Number, Date/Time, ...)')
                        cy.get('textarea#field_label')
                            .type('Name')
                        cy.get('input#field_name')
                            .type('ptname')
                        cy.get('button.ui-button')
                            .contains('Save')
                            .click()
                    })
                cy.get('label#label-ptname')
                    .should('contain.text', 'Name')
            })
        })

        it('4-17: Should allow a user to copy an instrument.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-17')


            cy.visit_base({url: ""}).then(() => {
                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('div.projtitle')
                    .within(() => {
                        cy.get('a')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('td')
                    .contains('Main project settings')

                cy.get('button')
                    .contains(' Online Designer')
                    .click()

                cy.get('tr#row_1')
                    .within(() => {
                        cy.get('button.ui-button')
                            .contains('Choose action')
                            .click()
                    })
                cy.get('a#ui-id-2')
                    .contains('Copy')
                    .click()

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Copy instrument')
                        cy.get('button.ui-button')
                            .contains('Copy instrument')
                            .click()
                    })
                cy.get('tr#row_2')
                    .within(() => {
                        cy.get('a')
                            .should('contain.text', 'My First Instrument 2')
                    })
            })
        })

        it('4-18: Should allow a user to add a field to a project copy', () => {
             cy.set_user_type('standard')
             cy.mysql_db('seeds/validations/4/validation-pre-4-18')


            cy.visit_base({url: ""}).then(() => {
                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('div.projtitle')
                    .within(() => {
                        cy.get('a')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('button')
                    .contains(' Online Designer')
                    .click()

                cy.get('tr#row_2')
                    .within(() => {
                        cy.get('a')
                            .contains('My First Instrument 2')
                            .click()
                    })
                cy.get('div#subheader')
                    .should('contain.text', 'FirstProject')

                cy.get('input#btn-last')
                    .click()
                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('select#field_type')
                            .select('Text Box (Short Text, Number, Date/Time, ...)')
                        cy.get('textarea#field_label')
                            .type('Email')
                        cy.get('input#field_name')
                            .type('email')
                        cy.get('select#val_type')
                            .select('Email')
                        cy.get('button.ui-button')
                            .contains('Save')
                            .click()
                    })
                cy.get('label#label-email')
                    .should('contain.text', 'Email')
            })
        })

        it('4-19/20: Should allow a user to copy a project.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-19')


            cy.visit_base({url: ""}).then(() => {
                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('div.projtitle')
                    .within(() => {
                        cy.get('a')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projHome')

                cy.subnavItem('otherFunc')

                cy.get('button')
                    .contains('Copy the project')
                    .click()
                cy.get('h5')
                    .should('contain.text', 'Make a Copy of the Project')
                cy.get('input#app_title')
                    .clear()
                    .type('ProjectCopy')
                cy.get('td#copy_checkboxes')
                    .within(() => {
                        cy.get('a')
                            .contains('Select All')
                            .click()
                    })
                cy.get('button')
                    .contains('Copy project')
                    .click()
                cy.get('div#actionMsg')
                    .should('contain.text', 'COPY SUCCESSFUL!')
                cy.get('div#sub-nav')
                    .within(() => {
                        cy.get('a')
                            .contains('Project Home')
                            .click()
                    })
                cy.get('table#table-user_list')
                    .should('contain.text', 'test_user')

                cy.get('table#table-stats_table')
                    .within(() => {
                        cy.get('td')
                            .contains('Records in project')
                        cy.get('div.fc')
                            .should('contain.html', '<span id="projstats1">0</span>')
                    })
                cy.get('div#sub-nav')
                    .within(() => {
                        cy.get('a')
                            .contains('Other Functionality')
                            .click()
                    })
                cy.get('table.proj-setup-table')
                    .within(() => {
                        cy.get('button')
                            .should('contain.text', 'Delete the project')
                        cy.get('button')
                            .should('contain.text', 'Erase all data')
                    })
            })

        })

        it('4-21/22: Should request a project be moved to production then cancel.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-21')


            cy.visit_base({url: ""}).then(() => {
                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('div.projtitle')
                    .within(() => {
                        cy.get('a')
                            .contains('ProjectCopy')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('button')
                    .contains('Move project to production')
                    .click()

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-buttonset')
                            .within(() => {
                                cy.get('button')
                                    .should('contain.text', 'Yes, Request Admin to Move to Production Status')
                                cy.get('button')
                                    .contains('Cancel')
                                    .click()
                            })

                    })
            })
        })

        it('4-23: Should allow an admin to give permission to users to move projects to production', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-23')


            cy.visit_version({page: 'ControlCenter/user_settings.php'}).then( () => {
                cy.get('select[name=superusers_only_move_to_prod]')
                    .select('Yes, normal users can move projects to production')
                cy.get('form#form')
                    .submit()

                cy.get('div.yellow')
                    .should('contain.text', 'Your system configuration values have now been changed!')
            })
        })

        it('4-24/26: Should allow a user to move a project to production', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-24')


            cy.visit_base({url: ""}).then(() => {
                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('a.aGrid')
                    .contains('ProjectCopy')
                    .click()

                cy.get('button')
                    .contains('Move project to production')
                    .click()

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Move Project To Production Status')
                        cy.get('input#keep_data')
                            .check()
                        cy.get('button')
                            .contains('YES, Move to Production Status')
                            .click()
                    })

                cy.get('div#actionMsg')
                    .should('contain.text', 'The project is now in production.')

                cy.subnavItem('otherFunc')

                cy.get('button')
                    .should('not.contain.text', 'Delete the project')
                cy.get('button')
                    .should('contain.text', 'Request delete project')
                cy.get('button')
                    .should('not.contain.text', 'Erase all data')
            })
        })

        it('4-27/28: Should allow an admin to delete a project but cancel.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-27')


            cy.visit_version({page: 'ControlCenter/view_projects.php?view_all=1'}).then( () => {
                cy.get('a.aGrid')
                    .contains('ProjectCopy')
                    .click()

                // 28
                cy.subnavItem('otherFunc')
                cy.get('button')
                    .should('contain.text', 'Delete the project')
                cy.get('button')
                    .should('contain.text', 'Erase all data')
                cy.get('button')
                    .contains('Delete the project')
                    .click()
                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div')
                            .should('contain.text', 'Deleting the project named "ProjectCopy".')
                        cy.get('button')
                            .contains('Cancel')
                            .click()
                    })
                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'ProjectCopy')
            })
        })

        it('4-29: Should allow an admin delete a project.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-29')


            cy.visit_version({page: 'ControlCenter/view_projects.php?view_all=1'}).then( () => {
                cy.get('a.aGrid')
                    .contains('ProjectCopy')
                    .click()

                cy.subnavItem('otherFunc')

                cy.get('button')
                    .contains('Delete the project')
                    .click()

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div')
                            .should('contain.text', 'Permanently delete this project?')
                        cy.get('input#delete_project_confirm')
                            .type('DELETE')
                        cy.get('button')
                            .contains('Delete the project')
                            .click()
                    })

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('span#ui-id-2')
                            .should('contain.text', 'CONFIRM DELETION')
                        cy.get('button')
                            .contains('Yes, delete the project', {force: true})
                            .click()
                    })

                cy.get('div[aria-labelledby=ui-id-3]')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Project successfully deleted!')
                    })
            })
        })
    })

    describe('User-Level Project Settings', () => {

        it('4-30/31: Should should allow a user to enable longitudinal data', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-30')


            cy.visit_version({page: ''}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                // 31
                cy.get('div#setupChklist-modify_project')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('div.chklisttext')
                                    .within(() => {
                                        cy.get('div')
                                            .within(() => {
                                                cy.get('i.fa-minus-circle')
                                                cy.get('button#setupLongiBtn')
                                                    .should('contain.text', 'Enable')
                                                    .click()
                                            })
                                    })
                            })
                    })

                cy.wait(2000)

                cy.get('div#setupChklist-modify_project')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('div.chklisttext')
                                    .within(() => {
                                        cy.get('div')
                                            .within(() => {
                                                cy.get('i.fa-check-circle')
                                                cy.get('button#setupLongiBtn')
                                                    .should('contain.text', 'Disable')
                                                    .click()
                                            })
                                    })
                            })
                    })

                cy.wait(2000)

                cy.get('div#setupChklist-modify_project')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('div.chklisttext')
                                    .within(() => {
                                        cy.get('div')
                                            .within(() => {
                                                cy.get('i.fa-minus-circle')
                                                cy.get('button#setupLongiBtn')
                                                    .should('contain.text', 'Enable')
                                                    .click()
                                            })
                                    })
                            })
                    })

                cy.wait(2000)

                cy.get('div#setupChklist-modify_project')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('div.chklisttext')
                                    .within(() => {
                                        cy.get('div')
                                            .within(() => {
                                                cy.get('i.fa-check-circle')
                                                cy.get('button#setupLongiBtn')
                                                    .should('contain.text', 'Disable')
                                            })
                                    })
                            })
                    })
            })
        })

        it('4-32/35: Should allow the user to designate data collection instruments', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-32')


            cy.visit_version({page: ''}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()


                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.get('div#setupChklist-define_events')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('div.chklistbtn')
                                    .within(() => {
                                        cy.get('button')
                                            .contains('Define My Events')
                                            .click()
                                    })
                            })

                    })

                cy.get('div#table')
                    .within(() => {
                        cy.get('div')
                            .should('contain.text', 'Arm name:')
                            .should('contain.text', 'Arm 1')
                    })

                cy.get('table#event_table')
                    .within(() => {
                        cy.get('input#descrip')
                            .type('Event 2')
                        cy.get('input#addbutton')
                            .click()
                    })

                cy.wait(1000)

                cy.get('table#event_table')
                    .within(() => {
                        cy.get('td.evt_name')
                            .should('contain.text', 'Event 2')
                    })

                // 33
                cy.subnavItem('addNewArm')

                cy.get('input#arm_name')
                    .type('Event 1')
                cy.get('input#savebtn')
                    .click()

                cy.wait(1000)

                cy.get('table#event_table')
                    .within(() => {
                        cy.get('td')
                            .should('contain.text', 'No events have been defined for this Arm')
                        cy.get('td')
                            .within(() => {
                                cy.get('input#descrip')
                                    .type('Event 1')

                                cy.get('input#addbutton')
                                    .click()
                            })
                    })

                // 34
                cy.subnavItem('designateInstEvents')
                cy.subnavItem('arm1')

                cy.get('div#table')
                    .within(() => {
                        cy.get('button')
                            .contains('Begin Editing')
                            .click()

                        cy.wait(500)

                        cy.get('table#event_grid_table')
                            .within(() => {
                                cy.get('tbody')
                                    .within(() => {
                                        cy.get('tr:first')
                                            .within(() => {
                                                cy.get('td')
                                                    .should('contain.text', 'My First Instrument')
                                                    .next('td')
                                                    .within(() => {
                                                        cy.get('input')
                                                            .check()
                                                    })

                                            })
                                    })

                            })

                        cy.get('button')
                            .contains('Save')
                            .click()

                    })

                cy.wait(1000)

                // 35
                cy.subnavItem('arm2')

                cy.get('div#table')
                    .within(() => {
                        cy.get('button')
                            .contains('Begin Editing')
                            .click()

                        cy.wait(1000)

                        cy.get('table#event_grid_table')
                            .within(() => {
                                cy.get('tbody')
                                    .within(() => {
                                        cy.get('tr:first')
                                            .within(() => {
                                                cy.get('td')
                                                    .should('contain.text', 'My First Instrument')
                                                    .next('td')
                                                    .within(() => {
                                                        cy.get('input:first')
                                                            .check()
                                                    })
                                            })
                                    })
                            })
                    })
            })
        })

        it('4-36: Should enable optional modules and customizations', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-36')


            cy.visit_version({page: ''}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.get('div#setupChklist-modules')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('div#enableRepeatingFormsEventsOption')
                                    .within(() => {
                                        cy.get('button#enableRepeatingFormsEventsBtn')
                                            .next('i')
                                            .should('have.class', 'fa-minus-circle')
                                        cy.get('button#enableRepeatingFormsEventsBtn')
                                            .should('contain.text', 'Enable')
                                            .click()
                                    })
                            })
                    })

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Repeatable instruments and events')
                        cy.get('table#table-repeat_setup')
                            .within(() => {
                                // cy.get('td')
                                //     .each(($el) =>{
                                //         if($el.find('div.repeat_event_label')) {
                                //             cy.wrap($el).should('contain.text', 'Event 1 (Arm 1: Arm 1)')
                                //         }
                                //         if($el.find('select.repeat_select')){
                                //             cy.wrap($el).select('Repeat Instruments (repeat independently of each other)')
                                //         }
                                //         if($el.find('input')){
                                //             cy.wrap($el).each( ($n) => {
                                //                 if($n.find('div.repeat_form_checkbox')){
                                //
                                //                 }
                                //             })
                                //
                                //         }
                                //
                                //     })
                                cy.get('select[name=repeat_whole_event-41]')
                                    .select('Repeat Instruments (repeat independently of each other)')
                                cy.get('input[name=repeat_form-41-my_first_instrument_2]')
                                    .check()

                                cy.get('select[name=repeat_whole_event-43]')
                                    .select('Repeat Entire Event (repeat all instruments together)')
                            })
                        cy.get('button')
                            .contains('Save')
                            .click()
                    })

                cy.wait(500)

                cy.get('div.ui-dialog')
                    .should('contain.text', 'Your settings for repeating instruments and/or events have been' +
                        ' successfully saved')

                cy.get('button#enableRepeatingFormsEventsBtn')
                    .should('contain.text', 'Modify')
                    .next('i')
                    .should('have.class', 'fa-check-circle')
            })
        })

        it('4-37/40: Should allow the user to enable surveys', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-37')


            cy.visit_version({page: ''}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('div#setupChklist-modify_project')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('div.chklisttext')
                                    .within(() => {
                                        cy.get('button#setupEnableSurveysBtn')
                                            .next('i')
                                            .should('have.class', 'fa-minus-circle')
                                        cy.get('button#setupEnableSurveysBtn')
                                            .should('contain.text', 'Enable')
                                            .click()

                                    })
                            })
                    })
                cy.wait(1000)
                cy.get('div#setupChklist-modify_project')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('div.chklisttext')
                                    .within(() => {
                                        cy.get('button#setupEnableSurveysBtn')
                                            .should('contain.text', 'Disable')
                                            .next('i')
                                            .should('have.class', 'fa-check-circle')
                                    })

                            })
                    })

                // 38
                // todo: this step varies from the validation scripts in v9

                cy.get('div#setupChklist-design')
                    .within(() => {
                        cy.get('table')
                            .within(() => {
                                cy.get('button')
                                    .contains('Online Designer')
                                    .click()
                            })
                    })

                cy.get('div#forms_surveys')
                    .within(() => {
                        cy.get('div.ftitle')
                            .within(() => {
                                cy.get('div')
                                    .should('contain.text', 'Data Collection Instruments')
                            })
                        cy.get('table#table-forms_surveys')
                            .within(() => {
                                cy.get('tr#row_1')
                                    .within(() => {
                                        cy.get('button.jqbuttonsm')
                                            .contains('Enable')
                                            .click()
                                    })
                            })
                    })

                cy.get('body')
                    .should('contain.text', 'Set up my survey for data collection instrument "My First Instrument"')

                cy.get('button')
                    .contains('Save Changes')
                    .click()

                cy.get('div#saveSurveyMsg')
                    .should('contain.text', 'Your survey settings were successfully saved!')


                // 39
                cy.get('div#forms_surveys')
                    .within(() => {
                        cy.get('table#table-forms_surveys')
                            .within(() => {
                                cy.get('tr#row_1')
                                    .within(() => {
                                        cy.get('button.jqbuttonsm')
                                            .contains('Survey settings')
                                            .click()
                                    })

                            })
                    })
                cy.get('button')
                    .contains('Delete Survey Settings')
                    .click()

                cy.wait(1000)

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Delete this instrument\'s survey settings?')
                        cy.get('button')
                            .contains('Delete Survey Settings')
                            .click()
                    })

                cy.wait(1000)

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Survey successfully deleted!')
                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.wait(1000)

                // 40
                cy.get('div#forms_surveys')
                    .within(() => {
                        cy.get('div.ftitle')
                            .within(() => {
                                cy.get('div')
                                    .should('contain.text', 'Data Collection Instruments')
                            })
                        cy.get('table#table-forms_surveys')
                            .within(() => {
                                cy.get('tr#row_1')
                                    .within(() => {
                                        cy.get('button.jqbuttonsm')
                                            .contains('Enable')
                                            .click()
                                    })
                            })
                    })
                cy.get('body')
                    .should('contain.text', 'Set up my survey for data collection instrument "My First Instrument"')

                cy.get('button')
                    .contains('Save Changes')
                    .click()

                cy.get('div#saveSurveyMsg')
                    .should('contain.text', 'Your survey settings were successfully saved!')

                cy.get('div#forms_surveys')
                    .within(() => {
                        cy.get('div.ftitle')
                            .within(() => {
                                cy.get('div')
                                    .should('contain.text', 'Data Collection Instruments')
                            })
                        cy.get('table#table-forms_surveys')
                            .within(() => {
                                cy.get('tr#row_1')
                                    .within(() => {
                                        cy.get('div.fc')
                                            .within(() => {
                                                cy.get('a.modsurvstg')
                                                    .should('contain.html', 'tick_shield_small.png')
                                            })
                                    })
                            })
                    })
            })
        })

        it('4-41: Should set the survey as offline', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-41')


            cy.visit_version({page: ''}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('button')
                    .contains('Online Designer')
                    .click()

                cy.get('div#forms_surveys')
                    .within(() => {
                        cy.get('table#table-forms_surveys')
                            .within(() => {
                                cy.get('tr#row_1')
                                    .within(() => {
                                        cy.get('button.jqbuttonsm')
                                            .contains('Survey settings')
                                            .click()
                                    })

                            })
                    })
                cy.get('select[name=survey_enabled')
                    .select('Survey Offline')

                cy.get('button')
                    .contains('Save Changes')
                    .click()

                cy.get('div#saveSurveyMsg')
                    .should('contain.text', 'Your survey settings were successfully saved!')
            })
        })

        it('4-42: Should set the survey as active.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-42')


            cy.visit_version({page: ''}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('button')
                    .contains('Online Designer')
                    .click()
                cy.get('div#forms_surveys')
                    .within(() => {
                        cy.get('table#table-forms_surveys')
                            .within(() => {
                                cy.get('tr#row_1')
                                    .within(() => {
                                        cy.get('button.jqbuttonsm')
                                            .contains('Survey settings')
                                            .click()
                                    })

                            })
                    })
                cy.get('select[name=survey_enabled')
                    .select('Survey Active')

                cy.get('button')
                    .contains('Save Changes')
                    .click()

                cy.get('div#saveSurveyMsg')
                    .should('contain.text', 'Your survey settings were successfully saved!')
            })
        })

        // todo: Varies from v9 validation scripts
        it('4-43: Should setup survey distribution tools.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-43')


            cy.visit_version({page: ''}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('button')
                    .contains('Online Designer')
                    .click()

                cy.get('div.menubox')
                    .within(() => {
                        cy.get('a')
                            .contains('Survey Distribution Tools')
                            .click()
                    })

                cy.subnavItem('pubSurveyLink')

                cy.get('div.link-actions-container')
                    .within(() => {
                        cy.get('h5')
                            .should('contain.text', 'Link Actions')
                        cy.get('button:first')
                            .should('contain.text', 'Open public survey')

                        // 43
                        // todo: fix external site link issue
                        // here, the script asks the user to open the actual survey and submit.
                        // we cannot do this within the context of Cypress, as it opens within a new tab
                        // I am performing this manually and including in the following db update.

                        // cy.get('h1')
                        //     .should('contain.text', 'My First Instrument')
                        //
                        // cy.get('label#labe-ptname')
                        //     .should('contain.text', 'Name')
                        //
                        // cy.get('input.x-form-field')
                        //     .type('Joe Test')
                        // cy.get('input[name=submit-btn-saverecord]')
                        //     .should('contain.text', 'Submit')
                        //     .click()

                    })
            })
        })

        it('4-44: Should prevent editing of records that are read-only.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-44')


            cy.visit_version({page: ''}).then(() => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('button')
                    .contains('Online Designer')
                    .click()

                cy.get('div.menubox')
                    .within(() => {
                        cy.get('a')
                            .contains('Add / Edit Records')
                            .click()
                    })
                cy.get('div.projhdr')
                    .should('contain.text', 'Add / Edit Records')

                cy.get('table.form_border')
                    .within(() => {
                        cy.get('select#record')
                            .select('1')
                    })
                cy.get('div.projhdr')
                    .should('contain.text', 'Record Home Page')

                cy.get('table#event_grid_table')
                    .within(() => {
                        cy.get('tbody')
                            .within(() => {
                                cy.get('tr:first')
                                    .within(() => {
                                        cy.get('td:first')
                                            .should('contain.text', 'My First Instrument')
                                            .next('td')
                                            .within(() => {
                                                cy.get('a')
                                                    .click()
                                            })
                                    })
                            })
                    })

                cy.get('div#dataEntryTopOptions')
                    .should('contain.text', 'My First Instrument')

                cy.get('div#form_response_header')
                    .should('contain.text', 'Survey response is read-only')

            })
        })

        it('4-45: Should allow admin to enable editing of survey responses.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-45')


            cy.visit_version({page: "ControlCenter/user_settings.php"}).then( () => {

                cy.get('td')
                    .contains('Allow users to edit survey responses?')
                    .next('td')
                    .within( () => {
                        cy.get('select')
                            .select('Enabled')
                    })

                cy.get('input[type=submit]')
                    .click()
                cy.get('body')
                    .should('contain.text', 'Your system configuration values have now been changed!')
            })
        })

        it('4-47/49: Should allow privileged regular user to edit survey responses.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-47')


            let username = 'test_user'

           // cy.visit_version({page: "Surveys/invite_participants.php?public_survey=1&pid=14"})
            cy.visit_base({url: ""}).then( () => {

                // cy.get('input#username').type(username)
                // cy.get('input#password').type(password)
                // cy.get('button#login_btn').click()

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()
                cy.get('div.projtitle')
                    .within(() => {
                        cy.get('a')
                            .contains('FirstProject')
                            .click()
                    })
                cy.get('td')
                    .should('contain.text', 'User Rights and Permissions')
                cy.get('button')
                    .contains('User Rights')
                    .click()
                cy.get('a.userLinkInTable')
                    .contains(username)
                    .click()

                cy.wait(1500)

                cy.get('div#tooltipBtnSetCustom')
                    .within(() => {
                        cy.get('button')
                            .contains('Edit user privileges')
                            .click()
                    })

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Editing existing user "' + username + '"')
                        cy.get('input[name=form-editresp-my_first_instrument]')
                            .check()
                        cy.get('button')
                            .contains('Save Changes')
                            .click()
                    })

                cy.wait(1000)

                cy.get('div.userSaveMsg')
                    .should('contain.text', 'User "' + username + '" was successfully edited')

                cy.get('div.hang')
                    .within(() => {
                        cy.get('a')
                            .contains('Add / Edit Records')
                            .click()
                    })

                cy.get('div.projhdr')
                    .should('contain.text', 'Add / Edit Records')

                // todo Differs from v9 script
                cy.get('select#record')
                    .select('1')

                cy.get('table#event_grid_table')
                    .within(() => {
                        cy.get('tbody')
                            .within(() => {
                                cy.get('tr:first')
                                    .within(() => {
                                        cy.get('td.labelform')
                                            .should('contain.text', 'My First Instrument')
                                            .next('td')
                                            .within(() => {
                                                cy.get('a')
                                                    .click()
                                            })

                                    })
                            })
                    })

                cy.get('div#form_response_header')
                    .should('contain.text', 'Survey response is editable')

                cy.get('button#edit-response-btn')
                    .should('contain.text', 'Edit response')
            })
        })

        it('4-50: Should allow privileged regular user to enable project optional modules and customizations', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-50')


            cy.visit_base({url: ""}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('div#setupChklist-modules')
                    .within(() => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Enable optional modules and customizations')
                        cy.get('div.chklisttext')
                            .within(() => {
                                cy.get('button#enableSurveyPartEmailFieldBtn')
                                    .should('contain.text', 'Enable')
                                    .next('i')
                                    .should('have.class', 'fa-minus-circle')

                                cy.get('button#enableSurveyPartEmailFieldBtn')
                                    .click()
                            })


                    })

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Designate an email field for sending survey invitations')
                        cy.get('select#surveyPartEmailFieldName')
                            .select('email "Email"')
                        cy.get('button.ui-button')
                            .contains('Save')
                            .click()
                    })
                cy.wait(500)
                cy.get('div.chklisttext')
                    .within(() => {
                        cy.get('button#enableSurveyPartEmailFieldBtn')
                            .should('contain.text', 'Disable')
                            .next('i')
                            .should('have.class', 'fa-check-circle')
                    })
            })
        })

        it('4-51: Should have the ability to move projects to production.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-51')


            cy.visit_base({url: ""}).then( () => {
                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('div.chklisthdr')
                    .should('contain.text', 'Move your project to production status')

                cy.get('div.chklisttext')
                    .within(() => {
                        cy.get('button')
                            .contains('Move project to production')
                            .click()
                    })

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Move Project To Production Status?')
                        cy.get('input#keep_data')
                            .check()
                        cy.get('button.ui-button')
                            .contains('YES, Move to Production Status')
                            .click()
                    })

                cy.get('div#actionMsg')
                    .should('contain.text', 'The project is now in production.')
            })
        })

        it('4-52: Should not allow delete options to projects.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-52')


            cy.visit_base({url: ""}).then( () => {
                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('div.chklistbtn')
                    .within(() => {
                        cy.get('button')
                            .contains('Online Designer')
                            .click()
                    })

                cy.get('div.yellow')
                    .should('contain.text', 'Would you like to enter DRAFT MODE')
                    .within(() => {
                        cy.get('input[type=button]')
                            .should('have.value', 'Enter Draft Mode')
                            .click()
                    })

                cy.get('div#forms_surveys')
                    .should('contain.text', 'Data Collection Instruments')

                cy.subnavItem('projSetup')

                cy.get('button')
                    .contains('Define My Events')
                    .click()
                cy.wait(1000)
                cy.get('div#center')
                    .should('not.contain.text', 'Delete')

                cy.get('a')
                    .contains('Arm 2')
                    .click()

                cy.wait(1000)
                cy.get('div#center')
                    .should('not.contain.text', 'Delete')
            })
        })

        it('4-53: Should allow adding fields to instruments in draft mode.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-53')


            cy.visit_base({url: ""}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('div.chklistbtn')
                    .within(() => {
                        cy.get('button')
                            .contains('Online Designer')
                            .click()
                    })

                cy.get('div.yellow')
                    .within(() => {
                        cy.get('input[type=button]')
                            .should('contain.value', 'Submit Changes for Review')
                    })

                cy.get('div.projtitle')
                    .within(() => {
                        cy.get('a:first')
                            .contains('My First Instrument')
                            .click()
                    })

                // add a field
                cy.get('input#btn-ptname-f')
                    .click()

                cy.wait(500)

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Add New Field')
                        cy.get('select#field_type')
                            .select('Text Box (Short Text, Number, Date/Time, ...)')
                        cy.get('textarea#field_label')
                            .type('Text2')
                        cy.get('input#field_name')
                            .type('text2')
                        cy.get('div.ui-dialog-buttonset')
                            .within(() => {
                                cy.get('button.ui-button')
                                    .contains('Save')
                                    .click()
                            })
                    })

                cy.wait(1000)

                cy.get('div.container-fluid')
                    .within(() => {
                        cy.get('label#label-text2')
                            .should('contain.text', 'Text2')
                    })


                cy.get('div.yellow')
                    .within(() => {
                        cy.get('input[type=button]')
                            .should('have.value', 'Submit Changes for Review')
                            .click()
                    })

                cy.wait(500)

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'SUBMIT CHANGES FOR REVIEW?')

                        cy.get('div.ui-dialog-buttonset')
                            .within(() => {
                                cy.get('button.ui-button')
                                    .contains('Submit')
                                    .click()
                            })

                    })

                cy.wait(500)

                cy.get('div.yellow')
                    .should('contain.text', 'Awaiting review of project changes')
            })
        })

        it('4-54/55: Should allow admin to review project changes in production.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-54')

            cy.visit_version({page: "ControlCenter/index.php"}).then( () => {

                // todo: Varies from script. No box at top to approve changes
                // need to go to to-do list first IF logging in fresh after a db import
                cy.get('div.cc_menu_item')
                    .within(() => {
                        cy.get('a')
                            .contains('To-Do List')
                            .should('contain.html', '<span class="badgerc">1</span>')
                        cy.get('a')
                            .contains('To-Do List')
                            .click()
                    })

                cy.get('h4')
                    .should('contain.text', 'To-Do List')

                cy.get('div.pending-container')
                    .within(() => {
                        cy.get('div.buttons-wrapper.pending')
                            .within(() => {
                                cy.get('button.process-request-btn')
                                    .click()
                            })
                    })
            })

            cy.get('iframe')

            cy.frameLoaded('[id=my-iframe]')

            // after the frame has loaded, we can use "cy.iframe()"
            // to retrieve it
            cy.iframe().find('button.jqbuttonmed:last')
                .should('contain.text', 'Remove All Drafted Changes')
                .click()

            cy.iframe().find('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'DELETE ALL DRAFT MODE CHANGES?')
                    cy.get('button')
                        .contains('Remove All Drafted Changes')
                        .click()
                })
            // todo - find a workaround for wait here
            cy.wait(1000)
            cy.iframe().find('div.projhdr')
                .should('contain.text', 'Project Changes Removed / User Notified')

            cy.get('div.trim-close-btn')
                .click()
        })

        it('4-56: Should allow admin to set automatic approval for draft mode changes.', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-56')

            cy.visit_version({page: "ControlCenter/user_settings.php"}).then( () => {

                cy.get('td.cc_label')
                    .contains('Allow production Draft Mode changes to be approved automatically under certain conditions?')
                    .next('td.cc_data')
                    .within( () => {
                        cy.get('select')
                            .select('Yes, if project has no records OR if has records and no critical issues exist')
                    })
                cy.get('input[type=submit]')
                    .should('have.value', 'Save Changes')
                    .click()

                cy.get('div.yellow')
                    .should('contain.text', 'Your system configuration values have now been changed!')
            })
        })

        it('4-57/58: Should allow user to to have draft mode changes auto-approved.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-57')

            cy.visit_base({url: ""}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('div.chklistbtn')
                    .within(() => {
                        cy.get('button')
                            .contains('Online Designer')
                            .click()
                    })

                cy.get('div.yellow')
                    .within(() => {
                        cy.get('input[type=button]')
                            .should('contain.value', 'Enter Draft Mode')
                            .click()
                    })

                cy.get('div.yellow')
                    .within(() => {
                        cy.get('input[type=button]')
                            .should('contain.value', 'Submit Changes for Review')
                    })

                cy.get('div.projtitle')
                    .within(() => {
                        cy.get('a:first')
                            .contains('My First Instrument')
                            .click()
                    })

                // add a field
                cy.get('input#btn-ptname-f')
                    .click()

                cy.wait(500)

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Add New Field')
                        cy.get('select#field_type')
                            .select('Text Box (Short Text, Number, Date/Time, ...)')
                        cy.get('textarea#field_label')
                            .type('Text2')
                        cy.get('input#field_name')
                            .type('text2')
                        cy.get('div.ui-dialog-buttonset')
                            .within(() => {
                                cy.get('button.ui-button')
                                    .contains('Save')
                                    .click()
                            })
                    })

                cy.wait(1000)

                cy.get('div.container-fluid')
                    .within(() => {
                        cy.get('label#label-text2')
                            .should('contain.text', 'Text2')
                    })


                cy.get('div.yellow')
                    .within(() => {
                        cy.get('input[type=button]')
                            .should('have.value', 'Submit Changes for Review')
                            .click()
                    })

                cy.wait(500)

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'SUBMIT CHANGES FOR REVIEW?')

                        cy.get('div.ui-dialog-buttonset')
                            .within(() => {
                                cy.get('button.ui-button')
                                    .contains('Submit')
                                    .click()
                            })

                    })

                cy.wait(500)

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.darkgreen')
                            .should('contain.text', 'SUCCESS! The changes you just submitted were made AUTOMATICALLY.')
                        cy.get('button')
                            .contains('Close')
                            .click()
                    })
            })
        })

        it('4-59/60: Should prevent user from editing events while in production.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-59')


            cy.visit_base({url: ""}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('div.chklistbtn')
                    .within( () => {
                        cy.get('button.btn-defaultrc')
                            .contains('Online Designer')
                            .click()
                    })
                cy.get('div.yellow')
                    .within( () => {
                        cy.get('input[type=button]')
                            .should('have.value', 'Enter Draft Mode')
                            .click()
                    })

                cy.get('div#actionMsg')
                    .should('contain.text', 'The project is now in Draft Mode.')

                cy.get('div.yellow')
                    .within( () => {
                        cy.get('input[type=button]')
                            .should('have.value', 'Submit Changes for Review')
                    })

                cy.subnavItem('projSetup')

                cy.get('div#setupChklist-define_events')
                    .within( () => {
                        cy.get('button')
                            .contains('Define My Events')
                            .click()
                    })

                // 60
                cy.subnavItem('designateInst')

                cy.get('div.yellow')
                    .should('contain.text', 'Events cannot be modified in production status except by a REDCap administrator.')
            })
        })

        it('4-61/62: Should allow admin to edit permissions to allow modifying events and arms while in production', () => {
            cy.set_user_type('admin')
            cy.mysql_db('seeds/validations/4/validation-pre-4-61')


            cy.visit_version({page: "ControlCenter/user_settings.php"}).then( () => {
                cy.get('h4')
                    .should('contain.text', 'System-level User Settings')

                cy.get('td.cc_label')
                    .should('contain.text', 'Allow normal users to add or modify events and arms on the Define My Events page for longitudinal projects while in production status?')
                    .next('td.cc_data')
                    .within( () => {
                        cy.get('select[name=enable_edit_prod_events]')
                            .select('Yes, normal users can add/modify events in production')
                    })
                cy.get('input[type=submit]')
                    .contains('Save Changes')
                    .click()

                cy.get('div.yellow')
                    .should('contain.text', 'Your system configuration values have now been changed!')

            })
        })

        it('4-63: Should allow users to edit events and arms while in production.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/4/validation-pre-4-63')


            // 64
            cy.visit_base({url: ""}).then( () => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projSetup')

                // I think this is an erroneous request
                cy.get('div.chklistbtn')
                    .within( () => {
                        cy.get('button.btn-defaultrc')
                            .contains('Online Designer')
                            .click()
                    })

                cy.subnavItem('projSetup')

                cy.get('div#setupChklist-define_events')
                    .within( () => {
                        cy.get('button')
                            .contains('Define My Events')
                            .click()
                    })

                cy.get('table#event_table')
                    .within( () => {
                        cy.get('input#descrip')
                            .type('Event 3')
                        cy.get('input#addbutton')
                            .click()
                    })
                cy.wait(500)
                cy.get('td.evt_name')
                    .should('contain.text', 'Event 3')

                // 65
                cy.subnavItem('addNewArm')

                cy.get('input#arm_name')
                    .type('Arm 3')
                cy.get('input#savebtn')
                    .click()
                cy.wait(500)

                cy.subnavItem('arm3')

                // 66
                cy.subnavItem('arm1')

                cy.get('td#row_a45')
                    .within( () => {
                        cy.get('a')
                            .click()
                    })

                cy.get('input#descrip_edit')
                    .clear()
                    .type('Event Three')

                cy.get('input#editbutton')
                    .should('have.value', 'Save')
                    .click()

                cy.wait(500)
                cy.get('td.evt_name')
                    .should('contain.text', 'Event Three')

                // 67
                cy.subnavItem('arm2')
                cy.get('div#table')
                    .within( () => {
                        cy.get('a')
                            .contains('Rename Arm 2')
                            .click()
                    })
                cy.get('input#arm_name')
                    .should('have.value', 'Event 1')
                    .clear()
                    .type('Arm Two')

                cy.get('input#savebtn')
                    .should('have.value', 'Save')
                    .click()
                cy.wait(500)
                cy.subnavItem('armTwo')

                //68
                cy.subnavItem('projSetup')

                cy.get('div.chklistbtn')
                    .within( () => {
                        cy.get('button.btn-defaultrc')
                            .contains('Online Designer')
                            .click()
                    })

                cy.get('div.yellow')
                    .within( () => {
                        cy.get('input[type=button]')
                            .should('have.value', 'Submit Changes for Review')
                            .click()
                    })

                cy.get('div.ui-dialog')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'SUBMIT CHANGES FOR REVIEW')
                        cy.get('button.ui-button')
                            .contains('Submit')
                            .click()
                    })

                cy.wait(1500)

                cy.get('div.ui-dialog')
                    .within( () => {
                        cy.get('div.darkgreen')
                            .should('contain.text', 'SUCCESS! The changes you just submitted were made')
                        cy.get('button.ui-button')
                            .contains('Close')
                            .click()
                    })
            })
        })
    })
})
