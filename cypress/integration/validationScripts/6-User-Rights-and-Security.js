describe('6 - Project User Rights and Security', {
    env: {
        coupled_mode: false
    }
}, () => {

    // 6-1

    it('Should display elements of a project to a user.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-1')
        cy.set_user_type('standard')

        cy.visit_version({page: ""}).then(() => {

            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within( () => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#home_setup_panel')
                .within( () => {
                    cy.get('a')
                        .should('contain.text', 'Project Home')

                    cy.get('a')
                        .should('contain.text', 'Codebook')
                })

            cy.get('div.hang')
                .within( () => {
                    cy.get('a')
                        .should('contain.text', 'Record Status Dashboard')
                    cy.get('a')
                        .should('contain.text', 'Add / Edit Records')
                })

            cy.get('div#app_panel')
                .within( () => {
                    cy.get('div.hang')
                        .within( () => {
                            cy.get('a')
                                .should('not.contain.text', 'Alerts & Notifications')
                        })

                })

            cy.get('div.hang')
                .within( () => {
                    cy.get('a')
                        .contains('My Projects')
                        .click()
                })

            cy.get('div#proj_table')
                .should('contain.text', 'My Projects')

        })
    })

    // 6-2a

    it('Should allow admin to set a user rights expiration date on a project.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-2a')
        cy.set_user_type('admin')

        let y = new Date(new Date().setDate(new Date().getDate()-1));
        let expired_date = y.getMonth() + '-' + y.getDate() + '-' + y.getFullYear()

        cy.visit_version({page: "ControlCenter/view_projects.php", params: "view_all=1"}).then(() => {
            cy.get('a.aGrid')
                .contains('SecondProject')
                .click()

            cy.get('div.hang')
                .contains('User Rights')
                .click()
            cy.get('div#center')
                .should('contain.text', 'This page may be used for granting users access to this project')

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within( () => {
                            cy.get('td:nth-child(3)')
                                .within( () => {
                                    cy.get('a')
                                        .contains('never')
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickExpiration')
                .within( () => {
                    cy.get('input#tooltipExpiration')
                        .type(expired_date)
                    cy.get('button#tooltipExpirationBtn')
                        .should('contain.text', 'Save')
                        .click({force:true})
                })
        })
    })

    // 6-2b (6-2 should really be split into 2 tests)

    it('Should prevent user access to users without project rights.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-2b')
        cy.set_user_type('standard')

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('a.aGrid')
                .contains('SecondProject')
                .click()
        })

        cy.get('body')
            .should('contain.text', 'Your access to this particular REDCap project has expired.')

    })

    // 6-3

    it('Should allow admin to restore user rights on a project.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-3')
        cy.set_user_type('admin')

        let y = new Date(new Date().setDate(new Date().getDate()-1));
        let expired_date = y.getMonth() + '-' + y.getDate() + '-' + y.getFullYear()
        let username = 'test_user'

        cy.visit_version({page: "ControlCenter/view_projects.php", params: "view_all=1"}).then(() => {
            cy.get('a.aGrid')
                .contains('SecondProject')
                .click()

            cy.get('div.hang')
                .contains('User Rights')
                .click()
            cy.get('div#center')
                .should('contain.text', 'This page may be used for granting users access to this project')

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within( () => {
                            cy.get('td:nth-child(3)')
                                .within( () => {
                                    cy.get('a')
                                        .should('not.contain.text', 'never')
                                        //.contains(expired_date)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickExpiration')
                .within( () => {
                    cy.get('input#tooltipExpiration')
                        .clear()
                    cy.get('button#tooltipExpirationBtn')
                        .should('contain.text', 'Save')
                        .click({force:true})
                })
            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within( () => {
                            cy.get('td')
                                .next('td')
                                .within( () => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within( () => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Editing existing user')
                    cy.get('input[name=design]')
                        .check()
                    cy.get('button.ui-button')
                        .contains('Save Changes')
                        .click()
                })
            cy.wait(500)
            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within( () => {
                            cy.get('td:nth-child(3)')
                                .within( () => {
                                    cy.get('a')
                                        .should('contain.text', 'never')
                                })
                        })
                })

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(4)')
                                .should('contain.html', 'images/tick.png')
                        })
                })
        })
    })

    // 6-4

    it('Should allow admin to restore user rights management on a project.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-4')
        cy.set_user_type('admin')

        let username = 'test_user'

        cy.visit_version({page: "ControlCenter/view_projects.php", params: "view_all=1"}).then(() => {
            cy.get('a.aGrid')
                .contains('SecondProject')
                .click()

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('div#center')
                .should('contain.text', 'This page may be used for granting users access to this project')

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Editing existing user')
                    cy.get('input[name=user_rights]')
                        .check()
                    cy.get('button.ui-button')
                        .contains('Save Changes')
                        .click()
                })
            cy.wait(500)
            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')
            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(5)')
                                .should('contain.html', 'images/tick.png')
                        })
                })
        })

    })

    // 6-5

    it('Should verify the user has access to Design and Applications of a project.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-5')
        cy.set_user_type('standard')

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within( () => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .within( () => {
                    cy.get('a')
                        .should('contain.text', 'Project Setup')
                    cy.get('a')
                        .should('contain.text', 'Designer')
                    cy.get('a')
                        .should('contain.text', 'Dictionary')
                    cy.get('a')
                        .should('contain.text', 'User Rights')
                })
        })
    })

    // 6-6

    it('Should verify privileged user can add data access rights to a user.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-6')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('input[name=data_access_groups]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(6)') // Data Access Groups
                                .should('contain.html', 'images/tick.png')
                        })
                })
            cy.reload(true)
            cy.get('div#app_panel')
                .within( () => {
                    cy.get('a')
                        .should('contain.text','DAGs')
                })
        })
    })

    // 6-7

    it('Should verify privileged user can be assigned Data exports, de-identified privileges.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-7')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=data_export_tool]')
                        .check('2')
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(7)') // Data Export Tool
                                .should('contain.text', 'De-Identified')
                        })
                })

            cy.reload(true)
            cy.get('div#app_panel')
                .within( () => {
                    cy.get('a')
                        .should('contain.text','Data Exports, Reports, and Stats')
                })


        })
    })

    // 6-8/9

    it('Should allow a privileged user add survey distribution tools access.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-8')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_base({url: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=participants]')
                        .check({force: true})
                    cy.get('input[name=calendar]')
                        .uncheck()
                    cy.get('input[name=data_import_tool]')
                        .uncheck()
                    cy.get('input[name=data_comparison_tool]')
                        .uncheck()
                    cy.get('input[name=data_logging]')
                        .uncheck()
                    cy.get('input[name=file_repository]')
                        .uncheck()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(10)') // Survey Distribution Tools
                                .should('contain.html', 'images/tick.png')
                        })
                })

            cy.reload(true)
            cy.get('div.x-panel')
                .within( () => {
                    cy.get('a')
                        .should('contain.text','Survey Distribution Tools')
                })
        })
    })

    // 6-10

    it('Should allow a privileged user add Data Import Tool access.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-10')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=data_import_tool]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(12)') // Data Import Tool
                                .should('contain.html', 'images/tick.png')
                        })
                })

            cy.reload(true)
            cy.get('div#app_panel')
                .within(() => {
                    cy.get('a')
                        .should('contain.text', 'Data Import Tool')
                })
        })
    })


    // 6-11

    it('Should allow a privileged user add Data Comparison Tool access.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-11')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=data_comparison_tool]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(13)') // Data Comparison Tool
                                .should('contain.html', 'images/tick.png')
                        })
                })

            cy.reload(true)
            cy.get('div#app_panel')
                .within(() => {
                    cy.get('a')
                        .should('contain.text', 'Data Comparison Tool')
                })
        })
    })

    // 6-12

    it('Should allow a privileged user remove data export, stat import, and comparison tool access and add' +
        ' logging access.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-12')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=data_export_tool]')
                        .check("0")
                    cy.get('input[name=data_import_tool]')
                        .uncheck()
                    cy.get('input[name=data_comparison_tool]')
                        .uncheck()
                    cy.get('input[name=data_logging]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            // TODO: clean up the nexts. Compare with validation script.
                            cy.get('td') // rolename
                                .next('td') // username
                                .next('td') // expiration
                                .next('td') // project design
                                .next('td') // user rights
                                .next('td') // data access groups
                                .next('td') // data export tool
                                    .should('not.contain.html', 'images/tick.png')
                                .next('td') // reports & report builder
                                .next('td') // Graphical Data View
                                .next('td') // Survey Distribution Tools
                                .next('td') // Calendar
                                .next('td') // Data Import Tool
                                .should('not.contain.html', 'images/tick.png')
                                .next('td') // Data Comparison Tool
                                .should('not.contain.html', 'images/tick.png')
                                .next('td')// logging
                                .should('contain.html', 'images/tick.png')
                        })
                })

            cy.reload(true)
            cy.get('div#app_panel')
                .within(() => {
                    cy.get('a')
                        .should('not.contain.text', 'Data Comparison Tool')
                        .should('not.contain.text', 'Data Import Tool')
                        .should('contain.text', 'Logging')
                })

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(7)') // data export tool
                                .should('contain.html', 'images/cross.png')

                        })
                })
        })
    })

    // 6-13

    it('Should allow a privileged user add the data quality access.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-13')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=data_quality_design]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(18)') // Data Quality Create/edit
                                .should('contain.html', 'images/tick.png')
                        })
                })

            cy.reload(true)
            cy.get('div#app_panel')
                .within(() => {
                    cy.get('a')
                        .should('contain.text', 'Data Quality')
                })
        })
    })

    // 6-14

    it('Should allow a privileged user to add the data quality execute rules.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-14')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=data_quality_execute]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(19)') // Data Quality execute
                                .should('contain.html', 'images/tick.png')
                        })
                })

            cy.reload(true)
            cy.get('div#app_panel')
                .within(() => {
                    cy.get('a')
                        .should('contain.text', 'Data Quality')
                })
        })
    })

    // 6-15

    it('Should allow a privileged user add rights to create records. ', () => {
        // TODO - I'm noting here that since the project is NOT in production at this point,
        // I had to move it to production so you can see the Add New Record button.
        cy.mysql_db('seeds/validations/6/validation-pre-6-15')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=record_create]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(22)') // Create Records
                                .should('contain.html', 'images/tick.png')
                        })
                })

            cy.reload(true)
            cy.get('div.hang')
                cy.get('a')
                    .contains('Add / Edit Records')
                    .click()

            cy.get('table.form_border')
                .within( () => {
                    cy.get('button.btn-rcgreen')
                        .should('contain.text', 'Add new record')
                })
            })
    })

    // 6-16

    it('Should allow a privileged user remove rights to create records. ', () => {
        // TODO - I'm noting here that since the project is NOT in production at this point,
        // I had to move it to production so you can see the Add New Record button.
        cy.mysql_db('seeds/validations/6/validation-pre-6-16')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=record_create]')
                        .uncheck()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(22)') // Create Records
                                .should('not.contain.html', 'images/tick.png')
                        })
                })

            cy.reload(true)
            cy.get('div.hang')

            // ToDo: The validation scripts say here to go to the Add/Edit records screen
            // but the link does not exist with it disabled. Only View/Edit records is.
            cy.get('a')
                .should('not.contain.text','Add / Edit Records')
        })
    })

    // 6-17

    it('Should allow a privileged user to add rename record access. ', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-17')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=record_rename]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td:nth-child(23)') // Rename Records
                                .should('contain.html', 'images/tick.png')
                        })
                })
        })
    })

    // 6-18

    it('Should allow a privileged user to add delete record access. ', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-18')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=record_delete]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            // TODO - cleanup tds. double-check validation script
                            cy.get('td') // rolename
                                .next('td') // username
                                .next('td') // expiration
                                .next('td') // project design
                                .next('td') // user rights
                                .next('td') // data access groups
                                .next('td') // data export tool
                                .next('td') // reports & report builder
                                .next('td') // Graphical Data View
                                .next('td') // Survey Distribution Tools
                                .next('td') // Calendar
                                .next('td') // Data Import Tool
                                .next('td') // Data Comparison Tool
                                .next('td')// logging
                                .next('td') // file repository
                                .next('td') // record locking customization
                                .next('td') // lock/unlock records
                                .next('td') // Data Quality Create/edit
                                .next('td') // Data Quality execute
                                .next('td') // API
                                .next('td') // Mobile App
                                .next('td') // Create Records
                                .next('td') // Rename Records
                                .next('td') // Delete Records
                                .should('contain.html', 'images/tick.png')
                        })
                })
        })
    })

    // 6-19

    it('Should allow a privileged user to add rename record access. ', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-19')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=lock_record_customize]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td') // rolename
                                .next('td') // username
                                .next('td') // expiration
                                .next('td') // project design
                                .next('td') // user rights
                                .next('td') // data access groups
                                .next('td') // data export tool
                                .next('td') // reports & report builder
                                .next('td') // Graphical Data View
                                .next('td') // Survey Distribution Tools
                                .next('td') // Calendar
                                .next('td') // Data Import Tool
                                .next('td') // Data Comparison Tool
                                .next('td') // logging
                                .next('td') // file repository
                                .next('td') // record locking customization
                                .should('contain.html', 'images/tick.png')
                                .next('td') // lock/unlock records
                                .next('td') // Data Quality Create/edit
                                .next('td') // Data Quality execute
                                .next('td') // API
                                .next('td') // Mobile App
                                .next('td') // Create Records
                                .next('td') // Rename Records
                                .next('td') // Delete Records

                        })
                })
            cy.reload(true)
            cy.get('div#app_panel')

            // ToDo: The validation scripts say here to go to the Add/Edit records screen
            // but the link does not exist with it disabled. Only View/Edit records is.
            cy.get('a')
                .should('contain.text','Customize & Manage Locking/E-signatures')
        })
    })

    // 6-20

    it('Should allow a privileged user to add locking/unlocking records with e-sig authority record access. ', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-20')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=lock_record]')
                        .check('2')
                })

            cy.wait(500)
            cy.get('div[aria-labelledby=ui-id-4]')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'NOTICE')

                    cy.get('div.simpleDialog')
                        .should('contain.text', 'Please note that giving a user \'Locking / Unlocking with E-signature authority\'')

                    cy.get('button.ui-button')
                        .contains('Close')
                        .click({force:true})
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td') // rolename
                                .next('td') // username
                                .next('td') // expiration
                                .next('td') // project design
                                .next('td') // user rights
                                .next('td') // data access groups
                                .next('td') // data export tool
                                .next('td') // reports & report builder
                                .next('td') // Graphical Data View
                                .next('td') // Survey Distribution Tools
                                .next('td') // Calendar
                                .next('td') // Data Import Tool
                                .next('td') // Data Comparison Tool
                                .next('td') // logging
                                .next('td') // file repository
                                .next('td') // record locking customization
                                .next('td') // lock/unlock records
                                .should('contain.html', 'images/tick_shield.png')
                                .next('td') // Data Quality Create/edit
                                .next('td') // Data Quality execute
                                .next('td') // API
                                .next('td') // Mobile App
                                .next('td') // Create Records
                                .next('td') // Rename Records
                                .next('td') // Delete Records

                        })
                })
        })
    })

    // 6-21

    it('Should allow a privileged user to change to locking/unlocking records access' +
        ' access. ', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-21')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=lock_record]')
                        .check('1')
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td') // rolename
                                .next('td') // username
                                .next('td') // expiration
                                .next('td') // project design
                                .next('td') // user rights
                                .next('td') // data access groups
                                .next('td') // data export tool
                                .next('td') // reports & report builder
                                .next('td') // Graphical Data View
                                .next('td') // Survey Distribution Tools
                                .next('td') // Calendar
                                .next('td') // Data Import Tool
                                .next('td') // Data Comparison Tool
                                .next('td') // logging
                                .next('td') // file repository
                                .next('td') // record locking customization
                                .next('td') // lock/unlock records
                                .should('contain.html', 'images/tick.png')
                                .next('td') // Data Quality Create/edit
                                .next('td') // Data Quality execute
                                .next('td') // API
                                .next('td') // Mobile App
                                .next('td') // Create Records
                                .next('td') // Rename Records
                                .next('td') // Delete Records
                        })
                })
        })
    })

    // 6-22

    it('Should allow a privileged user to change to locking/unlocking records access' +
        ' access. ', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-22')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)

            //TODO: the option name appears to have changed in v10, now called
            // "Lock/Unlock *Entire* Records (record level)"
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=lock_record_multiform]')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)
            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td') // rolename
                                .next('td') // username
                                .next('td') // expiration
                                .next('td') // project design
                                .next('td') // user rights
                                .next('td') // data access groups
                                .next('td') // data export tool
                                .next('td') // reports & report builder
                                .next('td') // Graphical Data View
                                .next('td') // Survey Distribution Tools
                                .next('td') // Calendar
                                .next('td') // Data Import Tool
                                .next('td') // Data Comparison Tool
                                .next('td') // logging
                                .next('td') // file repository
                                .next('td') // record locking customization
                                .should('contain.html', 'images/tick.png')
                                .next('td') // lock/unlock records
                                .next('td') // Data Quality Create/edit
                                .next('td') // Data Quality execute
                                .next('td') // API
                                .next('td') // Mobile App
                                .next('td') // Create Records
                                .next('td') // Rename Records
                                .next('td') // Delete Records
                        })
                })
        })
    })

    // 6-23

    it('Should allow a privileged user to limit user access to data entry.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-23')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)

            //TODO: the option section appears to have changed to Data Viewing Rights
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=form-my_first_instrument]')
                        .check('0')
                    cy.get('input[name=form-my_first_instrument_2]')
                        .check('0')
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)

            cy.get('div.menubox')
                .within( () => {
                    cy.get('a')
                        .contains('View / Edit Records')
                        .click()
                })

            cy.get('div.projhdr')
                .should('contain.text', 'View / Edit Records')

            cy.get('table.form_border')
                .within( () => {
                    cy.get('select#record')
                        .select('1')
                })

            cy.get('div.projhdr')
                .should('contain.text', 'Record Home Page')

            cy.get('table#event_grid_table')
                .within( () => {
                    cy.get('a')
                        .should('not.contain.html', 'images/circle_green.png')
                })
        })
    })

    // 6-24

    it('Should allow a privileged user to set read only access in data rights.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-24')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)

            //TODO: the option section appears to have changed to Data Viewing Rights
            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=form-my_first_instrument]')
                        .check('2')
                    cy.get('input[name=form-my_first_instrument_2]')
                        .check('2')
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)

            cy.get('div.menubox')
                .within( () => {
                    cy.get('a')
                        .contains('View / Edit Records')
                        .click()
                })

            cy.get('div.projhdr')
                .should('contain.text', 'View / Edit Records')

            cy.get('table.form_border')
                .within( () => {
                    cy.get('select#record')
                        .select('1')
                })

            cy.get('div.projhdr')
                .should('contain.text', 'Record Home Page')

            cy.get('table#event_grid_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:first')
                                .within( () => {
                                    cy.get('td:first')
                                        .next('td')
                                        .within( ()=> {
                                            cy.get('a')
                                                .click()
                                        })
                                })
                        })
                })
            cy.get('input[name=text2]')
                .should('not.have.focus')
        })
    })

    // 6-25
    // TODO: Note, the v9 validation script is in error here. It states the survey response should be "read
    // only" when it actually SHOULD BE editable

    it('Should allow a privileged user to set view/edit privs in data rights.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-25')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)

            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input[name=form-my_first_instrument]')
                        .check('1')
                    cy.get('input[name=form-my_first_instrument_2]')
                        .check('1')
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)

            cy.get('div.menubox')
                .within( () => {
                    cy.get('a')
                        .contains('View / Edit Records')
                        .click()
                })

            cy.get('div.projhdr')
                .should('contain.text', 'View / Edit Records')

            cy.get('table.form_border')
                .within( () => {
                    cy.get('select#record')
                        .select('1')
                })

            cy.get('div.projhdr')
                .should('contain.text', 'Record Home Page')

            cy.get('table#event_grid_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:first')
                                .within( () => {
                                    cy.get('td:first')
                                        .next('td')
                                        .within( ()=> {
                                            cy.get('a')
                                                .click()
                                        })
                                })
                        })
                })
            cy.get('input[name=text2]')
                .should('have.focus')
        })
    })

    // 6-26

    it('Should allow a privileged user to set edit privileges on survey responses.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-26')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within(() => {
                    cy.get('tr.erow')
                        .within(() => {
                            cy.get('td')
                                .next('td')
                                .within(() => {
                                    cy.get('a')
                                        .contains(username)
                                        .click()
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Edit user privileges')
                        .click()
                })

            cy.wait(500)

            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('input#form-editresp-my_first_instrument')
                        .check()
                    cy.get('button')
                        .contains('Save Changes')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'User "' + username + '" was successfully edited')

            cy.wait(500)

            cy.get('div.menubox')
                .within( () => {
                    cy.get('a')
                        .contains('View / Edit Records')
                        .click()
                })

            cy.get('div.projhdr')
                .should('contain.text', 'View / Edit Records')

            cy.get('table.form_border')
                .within( () => {
                    cy.get('select#record')
                        .select('1')
                })

            cy.get('div.projhdr')
                .should('contain.text', 'Record Home Page')

            cy.get('table#event_grid_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:first')
                                .within( () => {
                                    cy.get('td:first')
                                        .next('td')
                                        .within( ()=> {
                                            cy.get('a')
                                                .click()
                                        })
                                })
                        })
                })
            cy.get('input[name=text2]')
                .should('have.focus')

            cy.get('button#submit-btn-saverecord')
                .should('contain.text', 'Save & Exit Form')
        })
    })

    // 6-27

    it('Should allow a privileged user to create a data entry role.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-27')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('input#new_rolename')
                .clear()
                .type('Data Entry')

            cy.get('button#createRoleBtn')
                .should('contain.text', 'Create role')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Creating new role "Data Entry')
                    cy.get('button')
                        .contains('Create role')
                        .click()
                })

            cy.wait(500)

            cy.get('div.userSaveMsg')
                .should('contain.text', 'Role "Data Entry" was successfully added')

        })
    })

    // 6-28

    it('Should allow a privileged user to copy a role.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-28')
        cy.set_user_type('standard')
        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within(() => {
                                    cy.get('td:first')
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', 'Data Entry')
                                                .click()
                                        })
                                })
                        })
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Editing existing user role "Data Entry')
                    cy.get('button')
                        .contains('Copy role')
                        .click()
                })

            cy.get('div.ui-dialog[aria-labelledby=ui-id-5]')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Copy role?')
                    cy.get('input#role_name_copy')
                        .clear()
                        .type('Reviewer')
                    cy.get('div.ui-dialog-buttonpane')
                        .within( () => {
                            cy.get('button.ui-button')
                                .contains('Copy role')
                                .click()
                        })
                })

            cy.get('div.userSaveMsg')
                .should('contain.text', 'Role "Reviewer" was successfully added')

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('button.ui-button')
                        .contains('Save Changes')
                        .click()
                })

            cy.get('div.userSaveMsg')
                .should('contain.text', 'Role "Reviewer" was successfully added')

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within( () => {
                                    cy.get('td:first')
                                        .should('contain.text', 'Reviewer')
                                })
                        })
                })
        })
    })

    // 6-29

    it('Should allow a privileged user to delete a role but cancel.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-29')
        cy.set_user_type('standard')
        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within(() => {
                                    cy.get('td:first')
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', 'Reviewer')
                                                .click()
                                        })
                                })
                        })
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Editing existing user role "Reviewer')
                    cy.get('button')
                        .contains('Delete role')
                        .click()
                })

            cy.get('div.ui-dialog[aria-labelledby=ui-id-6]')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Delete role?')
                    cy.get('div.ui-dialog-buttonpane')
                        .within( () => {
                            cy.get('button.ui-button')
                                .contains('Cancel')
                                .click()
                        })
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-buttonpane')
                        .within( () => {
                            cy.get('button')
                                .contains('Cancel')
                                .click()
                        })
                })

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within( () => {
                                    cy.get('td:first')
                                        .should('contain.text', 'Reviewer')
                                })
                        })
                })
        })
    })

    // 6-30

    it('Should allow a privileged user to delete a role.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-30')
        cy.set_user_type('standard')
        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within(() => {
                                    cy.get('td:first')
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', 'Reviewer')
                                                .click()
                                        })
                                })
                        })
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Editing existing user role "Reviewer')
                    cy.get('button')
                        .contains('Delete role')
                        .click()
                })

            cy.get('div.ui-dialog[aria-labelledby=ui-id-6]')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Delete role?')
                    cy.get('div.ui-dialog-buttonpane')
                        .within( () => {
                            cy.get('button.ui-button')
                                .contains('Delete role')
                                .click()
                        })
                })

            cy.get('div.userSaveMsg')
                .should('contain.text', 'Role "Reviewer" was successfully deleted')

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within( () => {
                                    cy.get('td:first')
                                        .should('not.contain.text', 'Reviewer')
                                })
                        })
                })
        })
    })

    // 6-31

    it('Should deny a user from assigning a role to the themselves for which they do not already have.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-31')
        cy.set_user_type('standard')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:first')
                                .next('tr')
                                .within(() => {
                                    cy.get('td:first')
                                        .next('td') // username col
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', username)
                                                .click()
                                        })
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Assign to role')
                        .click()
                })
            cy.get('ul#assignUserDropdown')
                .within( () => {
                    cy.get('a')
                        .contains('Data Entry')
                        .click()
                })

            cy.wait(500)

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'NOTICE: User Rights mismatch', '')
                    cy.get('button')
                        .contains('Close')
                        .click()
                })
        })
    })

    // 6-32

    it('Should allow admin to add a role to a user.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-32')
        cy.set_user_type('admin')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:first')
                                .next('tr')
                                .within(() => {
                                    cy.get('td:first')
                                        .next('td') // username col
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', username)
                                                .click()
                                        })
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Assign to role')
                        .click()
                })
            cy.get('ul#assignUserDropdown')
                .within( () => {
                    cy.get('a')
                        .contains('Data Entry')
                        .click()
                })

            cy.get('div.userSaveMsg')
                .should('be.visible')
                .should('contain.text', 'has been successfully ASSIGNED to the user role "Data Entry"')

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within(() => {
                                    cy.get('td:first')// username col
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', 'Data Entry')
                                        })
                                })
                        })
                })
        })
    })

    // 6-33

    it('Should allow admin to remove a role from a user.', () => {
        cy.mysql_db('seeds/validations/6/validation-pre-6-33')
        cy.set_user_type('admin')

        let username = 'test_user'

        cy.visit_version({page: ""}).then(() => {
            cy.get('a.nav-link')
                .contains('My Projects')
                .click()

            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .contains('SecondProject')
                        .click()
                })

            cy.get('div#subheaderDiv2')
                .should('contain.text', 'SecondProject')

            cy.get('div.hang')
                .contains('User Rights')
                .click()
            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:first')
                                .next('tr')
                                .within(() => {
                                    cy.get('td:first')
                                        .next('td') // username col
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', username)
                                                .click()
                                        })
                                })
                        })
                })

            cy.get('div#userClickTooltip')
                .within(() => {
                    cy.get('button.jqbuttonmed')
                        .contains('Remove from role')
                        .click()
                })

            cy.get('div.userSaveMsg')
                .should('be.visible')
                .should('contain.text', 'has been successfully REMOVED from their user role')

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within(() => {
                                    cy.get('td:first')// username col
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', 'Data Entry')
                                        })
                                })
                        })
                })

            cy.get('div.ui-dialog')
                .should('be.visible')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'NOTICE: User\'s privileges will remain the same')
                    cy.get('button')
                        .contains('Close')
                        .click()
                })

            cy.get('table#table-user_rights_roles_table')
                .within( () => {
                    cy.get('tbody')
                        .within( () => {
                            cy.get('tr:last')
                                .within(() => {
                                    cy.get('td:first')// username col
                                        .within( () => {
                                            cy.get('a')
                                                .should('contain.text', 'Data Entry')
                                        })
                                        .next('td')
                                        .should('contain.text', 'No users assigned')

                                })
                        })
                })
        })
    })
})
