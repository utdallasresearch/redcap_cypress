describe('3 - Admin Users', {
    env: {
        coupled_mode: false
    }
}, () => {
    before( () => {
        cy.mysql_db('seeds/validations/3/validation-pre-3')
    })


    it('3-1/6: Should have form elements to add/edit admin users', () => {

        cy.set_user_type('admin')
        cy.visit_version({page: 'ControlCenter/superusers.php'}).then( () => {

            cy.get('h4').should('contain', 'Set REDCap Administrator Privileges')

            cy.get('table#admin-rights-table')
                .within(($table) => {
                    cy.get('input#user_search')
                    cy.get('button#add_admin_btn')
                    cy.get('input#0-admin_rights')
                    cy.get('input#0-super_user')
                    cy.get('input#0-account_manager')
                    cy.get('input#0-access_system_config')
                    cy.get('input#0-access_system_upgrade')
                    cy.get('input#0-access_external_module_install')
                    cy.get('input#0-access_admin_dashboards')
                })
        })
    })

    it('3-7: Should have the ability to grant administrator and account manager access to the system for individual' +
        ' users', () => {

        cy.set_user_type('admin')
        cy.visit_version({page: 'ControlCenter/superusers.php'})
            .then( () => {

            let username = 'test_user'

            cy.get('table#admin-rights-table')
                .within ( () => {
                    cy.get('tbody')
                        .within ( () => {
                            cy.get('tr:last')
                                .within( () => {
                                    cy.get('input#user_search')
                                        .clear({force:true})
                                        .type(username, {force:true})
                                })
                        })

                })

            cy.get('ul#ui-id-1')
                .within( () => {
                    cy.get('li.ui-menu-item')
                        .within( () => {
                            cy.get('a')
                                .contains(username)
                                .click()
                        })
                })

            cy.get('#0-admin_rights').check()
            cy.get('input#0-super_user').check()
            cy.get('input#0-account_manager').check()
            cy.get('input#0-access_system_config').check()
            cy.get('input#0-access_system_upgrade').check()
            cy.get('input#0-access_external_module_install').check()
            cy.get('input#0-access_admin_dashboards').check()
            cy.get('#add_admin_btn').click()
            cy.get('div.swal2-container').should(($div) => {
                expect($div).to.contain('The user "' + username + '" has now been granted one or more administrator privileges.')
            })
            cy.get('.swal2-confirm').click()
            cy.get('table#admin-rights-table')
                .should('contain', username)
        })
    })

    it('3-8: Should allow test_user to access Control Center as admin', () => {
        cy.mysql_db('seeds/validations/3/validation-pre-3-4')
        cy.set_user_type('standard')
        cy.visit_version({page: 'ControlCenter/superusers.php'}).then( () => {

            cy.get('ul.nav > li').contains('Control Center').click()
            cy.contains_cc_link('Browse Users')
            cy.contains_cc_link('Add Users (Table-based Only)', 'User Management for Table-based Authentication')
            cy.contains_cc_link('User Whitelist')
            cy.contains_cc_link('Email Users')
        })
    })

    it('3-9: Should have the ability to revoke administrator and account manager access to the system for' +
        ' individual' +
        ' users', () => {
        cy.mysql_db('seeds/validations/3/validation-pre-3-4')
        cy.set_user_type('admin')

        let username = 'test_user'

        cy.visit_version({page: 'ControlCenter/superusers.php'})
            .then( () => {
                cy.get('table#admin-rights-table tbody tr#user3')
                    .within(() => {
                        cy.get('td:first')
                            .should('contain.text', username)

                        cy.get('input#3-admin_rights')
                            .should('be.checked')
                            .uncheck()
                            .should('not.be.checked')

                        cy.get('input#3-super_user')
                            .should('be.checked')
                            .uncheck()
                            .should('not.be.checked')

                        cy.get('input#3-account_manager')
                            .should('be.checked')
                            .uncheck()
                            .should('not.be.checked')

                        cy.get('input#3-access_system_config')
                            .should('be.checked')
                            .uncheck()
                            .should('not.be.checked')

                        cy.get('input#3-access_system_upgrade')
                            .should('be.checked')
                            .uncheck()
                            .should('not.be.checked')

                        cy.get('input#3-access_external_module_install')
                            .should('be.checked')
                            .uncheck()
                            .should('not.be.checked')

                        cy.get('input#3-access_admin_dashboards')
                            .should('be.checked')
                            .uncheck()
                            .should('not.be.checked')
                    })

                cy.get('div.ui-dialog')
                    .then( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'NOTICE')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'Please be aware that you have unchecked ALL the administrator privileges for this user')

                        cy.get('div.ui-dialog-buttonpane button')
                            .contains('Close')
                            .click({ force: true })
                    })

                // ToDo: Craptacular bug in REDCap here, displays 2 dialog boxen over top of each other
                // Second verse, same as the first
                cy.get('div.ui-dialog')
                    .then( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'NOTICE')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'Please be aware that you have unchecked ALL the administrator privileges for this user')

                        cy.get('div.ui-dialog-buttonpane button')
                            .contains('Close')
                            .click({force:true})
                    })
            })

        // reload the page to show the user is no longer listed
        cy.visit_version({page: 'ControlCenter/superusers.php'})
            .then( () => {
                cy.get('table#admin-rights-table')
                    .should('not.contain', username)
            })
    })

    it('3-10: Should not allow test_user to access Control Center as admin', () => {
        cy.mysql_db('seeds/validations/3/validation-pre-3-9')
        cy.set_user_type('standard')

        cy.visit_base({url: '/'})
            .then( () => {
                cy.get('ul.nav > li')
                    .should('not.contain', 'Control Center')
            })
    })
})
