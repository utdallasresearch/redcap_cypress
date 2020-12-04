describe('2 - Add/Manage Users', {
    env: {
        coupled_mode: false
    }
}, () => {
    before(() => {
        cy.mysql_db('seeds/validations/2/validation-pre-2')
    })

    beforeEach( () => {
        cy.set_user_type('admin')
    })

    describe('User Settings', () => {
        it('Should have access to edit System-Level User Settings', () => {
            console.log('enter 1st test')
            console.log(cy.getUserInfo)
            // cy.mysql_db('seeds/validations/2/validation-pre-2')
           // cy.set_user_type('admin')
            cy.visit_version({page: "ControlCenter/index.php"})
                .then(() => {
                    cy.get('div#control_center_menu')
                        .within(() => {
                            cy.get('div.cc_menu_header')
                                .contains('System Configuration')
                            cy.get('a')
                                .contains('User Settings')
                                .click()
                        })

                    cy.get('h4')
                        .contains('System-level User Settings')

                    cy.get('td.cc_label').should(($td) => {
                        expect($td).to.contain('Allow normal users to create new projects?')
                    })

                    cy.get('select[name="superusers_only_create_project"]')
                        .select('Yes, normal users can create new projects')
                        .should('have.value', '0')
                        .select('No, only Administrators can create new projects')
                        .should('have.value', '1')

                    cy.get('select[name="superusers_only_create_project"]')
                        .select('No, only Administrators can create new projects')

                    cy.get('td.cc_label').should(($td) => {
                        expect($td).to.contain('Allow normal users to move projects to production?')
                    })

                    cy.get('select[name="superusers_only_move_to_prod"]')
                        .select('Yes, normal users can move projects to production')
                        .should('have.value', '0')
                        .select('No, only Administrators can move projects to production')
                        .should('have.value', '1')

                    cy.get('select[name="superusers_only_move_to_prod"]')
                        .select('No, only Administrators can move projects to production')

                    cy.get('input')
                        .contains('Save Changes')
                        .click()

                    cy.get("body").contains("Your system configuration values have now been changed!")
                })
            console.log('exit test')
        })
    })

    describe('Create Users', () => {

        it('Should have access to Create Users', () => {

            cy.visit_version({page: "ControlCenter/index.php"})
                .then(() => {
                    cy.get('.cc_menu_header')
                        .contains('Users')
                    cy.get('a')
                        .contains('Add Users (Table-based Only)')
                        .click()
                    cy.get('h4')
                        .contains('User Management for Table-based Authentication')
                })
            console.log('exit test')
        })

        it('Should have ability to create table-based users.', () => {
            cy.visit_version({page: "ControlCenter/create_user.php"}).then(() => {

                // test_user4 is a new, undefined user in the db
                let username = 'test_user4'
                let firstname = 'Test'
                let lastname = 'User4'
                let email = username+'@test.test'

                cy.get('a')
                    .contains('Create single user')
                    .click()
                cy.get('td')
                    .should('contain.text', 'Username:')
                cy.get('input#username')
                    .type(username)
                cy.get('td')
                    .should('contain.text', 'First name:')
                cy.get('input#user_firstname')
                    .type(firstname)
                cy.get('td')
                    .should('contain.text', 'Last name:')
                cy.get('input#user_lastname')
                    .type(lastname)
                cy.get('td')
                    .should('contain.text', 'Primary email:')
                cy.get('input#user_email')
                    .type(email)
                cy.get('td')
                    .should('contain.text', 'Allow this user to request that projects be created for them by a REDCap administrator?')
                cy.get('input[name="allow_create_db"]')
                    .check()
                cy.get('input[name="submit"]')
                    .click()
                cy.get('body')
                    .should('contain.text', 'User has been successfully saved. An email with login information was sent to: ' + email)
            })
            console.log('exit test')
        })

        it('Should not have the ability to create duplicate users.', () => {
            cy.visit_version({page: "ControlCenter/create_user.php"}).then(() => {

                // a duplicate user with an existing username
                let username = 'test_user'
                let firstname = 'Another'
                let lastname = 'User'
                let email = username + '_2@test.test'

                cy.get('div#sub-nav')
                    .within( () => {
                        cy.get('a')
                            .contains(' Create single user')
                            .click()
                })
                cy.get('table#edit-user-table')
                    .within( () => {
                        cy.get('td')
                            .should('contain.text','Username:')
                        cy.get('input#username')
                            .type(username)
                        cy.get('td')
                            .should('contain.text','First name:')
                        cy.get('input#user_firstname')
                            .type(firstname)
                        cy.get('td')
                            .should('contain.text', 'Last name:')
                        cy.get('input#user_lastname')
                            .type(lastname)
                        cy.get('td')
                            .should('contain.text', 'Primary email:')
                        cy.get('input#user_email')
                            .type(email)
                        cy.get('td')
                            .should('contain.text', 'Allow this user to request that projects be created for' +
                                ' them by a REDCap' +
                                ' administrator?')
                        cy.get('input[name="allow_create_db"]')
                            .check()
                        cy.get('input[name="submit"]')
                            .click()
                    })

                    cy.get('body')
                        .should('contain.text', 'ERROR: The user could not be added!')
            })
        })
    })

    describe('Bulk Import Users', () => {

        it('Should have the ability to import users', () => {
            let bulkUserFile = 'userbulkupload.csv'

            cy.visit_version({page: "ControlCenter/create_user.php"}).then(() => {
                cy.get('div#sub-nav')
                    .within( () => {
                        cy.get('a')
                            .contains('Create users (bulk upload)')
                            .click()
                    })
                cy.get('a')
                    .should('contain.text', 'Download template file')
                cy.get('input[name="fname"]')
                    .attachFile(bulkUserFile)
                cy.get('input[name="allow_create_db"]')
                    .uncheck()
                cy.get('input[name="submit"]')
                    .click()
                cy.get('body')
                    .should('contain.text', 'User was successfully added')
            })
        })

    })

    describe('Suspend Users', () => {

        it('Should have the ability to suspend a user, but then cancel', () => {
            let username = 'test_user'
            let firstname = 'Test'
            let lastname = 'User'

            cy.visit_version({page: "ControlCenter/view_users.php"}).then(() => {
                cy.get('input#user_search')
                    .type(username)
                cy.get('button')
                    .contains('Search')
                    .click()
                cy.get('body')
                    .contains('User information for "'
                        + username + '" (' + firstname + ' ' + lastname + ')')
                // todo: brittle test! needs a data attribute
                cy.contains('td.data2', 'Time of suspension')
                    .next('td.data2')
                    .find('input')
                    .click()
                cy.on('window:confirm', () => false);
                cy.get('table#indv_user_info')
                    .contains('User information for "' + username + '" (' + firstname + ' ' + lastname + ')')
            })
        })

        it('Should have the ability to suspend a user.', () => {
            let username = 'test_user'
            let password = 'Testing123'
            let firstname = 'Test'
            let lastname = 'User'

            cy.visit_version({page: "ControlCenter/view_users.php"})
                .then( () => {
                    cy.get('input#user_search')
                        .type(username)
                    cy.get('button')
                        .contains('Search')
                        .click()
                    cy.get('table#indv_user_info')
                        .within( () => {
                            cy.get('td')
                                .contains('User information for '
                                    + '"'
                                    + username
                                    + '"'
                                    + ' ('
                                    + firstname
                                    + ' '
                                    + lastname
                                    + ')'
                                )
                            // todo: brittle test! The button needs a data attribute
                            cy.get('td.data2')
                                .contains('Time of suspension')
                                .next('td.data2')
                                .find('input[type=button]')
                                .click()

                            cy.on('window:confirm', (str) => {
                                expect(str).to.contains('Do you wish to suspend this user\'s REDCap account?')
                            })
                        })

                    cy.get('div.ui-dialog')
                        .within(() => {
                            cy.get('div.ui-dialog-content')
                                .should('contain.text', 'Success! The user has now been suspended from REDCap')

                            cy.get('div.ui-dialog-buttonpane')
                                .within(() => {
                                    cy.get('button')
                                        .contains('Close')
                                        .click()
                                })
                        })

                    // confirm user is suspended
                    cy.get('#nav-tab-logout').click()
                    cy.get('input#username').type(username)
                    cy.get('input#password').type(password)
                    cy.get('button#login_btn').click()
                    cy.get('body')
                        .should('contain.text', 'The following REDCap user account has been suspended')
                    cy.get('button')
                        .click()
                })
        })

        it('Should have the ability to unsuspend a user', () => {
            let username = 'test_user'
            let password = 'Testing123'
            let firstname = 'Test'
            let lastname = 'User'

            cy.visit_version({page: "ControlCenter/view_users.php"})
                .then(() => {

                    cy.get('input#user_search')
                        .type(username)
                    cy.get('button')
                        .contains('Search')
                        .click()
                    cy.get('body')
                        .contains('User information for "'
                            + username + '" (' + firstname + ' ' + lastname + ')')
                    // todo: brittle test! needs a data attribute
                    cy.get('table#indv_user_info')
                        .within(() => {
                            cy.get('td.data2')
                                .contains('Time of suspension')
                                .find('a')
                                    .contains('unsuspend user')
                                .click()
                        })

                    // cypress will auto-accept a confirmation dialog if no action is requested

                    cy.get('div.ui-dialog')
                        .within(($div) => {
                            cy.get('div.ui-dialog-content')
                                .should('contain.text', 'Success! The user has now been unsuspended and will now be able to access REDCap again.')

                            cy.get('div.ui-dialog-buttonpane')
                                .within(() => {
                                    cy.get('button')
                                        .contains('Close')
                                        .click()
                                })
                        })

                    // verify unsuspended
                    cy.get('table#indv_user_info')
                        .within(() => {
                            cy.get('td.data2')
                                .contains('Time of suspension')
                                .should('not.have.html', 'a')
                        })

                    // confirm user is suspended
                    // cy.get('#nav-tab-logout').click()
                    // cy.get('input#username').type(username)
                    // cy.get('input#password').type(password)
                    // cy.get('button#login_btn').click()
                    // cy.get('a.nav-link')
                    //     .contains('Logged in as ' + username)
                    // cy.logout()
            })
        })

        it('Should allow an unsuspended user login.', () => {
            let username = 'test_user'
            cy.set_user_type('standard')
            cy.visit_base({url: "index.php"})
                .then( () => {
                    cy.get('a.nav-link')
                        .contains('Logged in as ' + username)
                })

        })
    })

    describe('Delete Users', () => {

        it('Should have the ability to delete a user but cancel', () => {
            let username = 'test_user'
            let firstname = 'Test'
            let lastname = 'User'

            cy.visit_version({page: "ControlCenter/view_users.php"})
                .then(() => {
                    cy.get('h4')
                        .should('contain.text', 'Browse Users')
                    cy.get('input#user_search')
                        .type(username)
                    cy.get('button')
                        .contains('Search')
                        .click()
                    cy.get('table#indv_user_info')
                        .within( () => {
                            cy.get('td.blue')
                                .contains('User information for '
                                    + '"'
                                    + username
                                    + '"'
                                    + ' ('
                                    + firstname
                                    + ' '
                                    + lastname
                                    + ')'
                                )
                        })
                    cy.get('td.data2')
                        .within(() => {
                            cy.get('button')
                                .contains('Delete user from system')
                                .click()
                            cy.on('window:confirm', () => false);
                        })
                    // confirm we still see the user page
                    cy.get('table#indv_user_info')
                        .within( () => {
                            cy.get('td.blue')
                                .contains('User information for "' + username + '" (' + firstname + ' ' + lastname + ')'
                                )
                        })

                })
        })

        it('Should have the ability to delete a user', () => {

            let username = 'test_user'
            let password = 'Testing123'
            let firstname = 'Test'
            let lastname = 'User'

            cy.visit_version({page: "ControlCenter/index.php"}).then(() => {
                cy.get('div.cc_menu_header')
                    .should('contain.text', 'Users')
                cy.get('a')
                    .contains('Browse Users')
                    .click()
                cy.get('h4')
                    .should('contain.text', 'Browse Users')
                cy.get('input#user_search')
                    .type(username)
                cy.get('button')
                    .contains('Search')
                    .click()
                cy.get('table#indv_user_info')
                    .within( () => {
                        cy.get('td.blue')
                            .contains('User information for '
                                + '"'
                                + username
                                + '"'
                                + ' ('
                                + firstname
                                + ' '
                                + lastname
                                + ')'
                            )
                    })
                cy.get('td.data2')
                    .within(() => {
                        cy.get('button')
                            .contains('Delete user from system')
                            .click()
                        // Cypress auto-confirms dialogs if no calls
                    })
                cy.get('div.ui-dialog')
                    .within(($div) => {
                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The user \'' + username + '\' has now been removed and deleted from all REDCap projects.')

                        cy.get('div.ui-dialog-buttonpane')
                            .within(() => {
                                cy.get('button')
                                    .contains('Close')
                                    .click()
                            })
                    })

                // verify user was deleted
                cy.visit_version({page: "ControlCenter/view_users.php"}).then(() => {
                    cy.get('input#user_search')
                        .type(username)
                    cy.get('button')
                        .contains('Search')
                        .click()
                    cy.get('div.yellow')
                        .should('contain.text', 'User does not exist!')
                })

                // confirm user no longer exists
                cy.get('#nav-tab-logout').click()
                cy.get('input#username').type(username)
                cy.get('input#password').type(password)
                cy.get('button#login_btn').click()
                cy.get('body')
                    .should('contain.text', 'ERROR: You entered an invalid user name or password!')
            })
        })

        it('Should reload seed data to restore user.', () => {
            cy.mysql_db('seeds/validations/2/validation-pre-2')
        })
    })

    // todo: enter tests to confirm emails
    // steps 27, 28, 31, 32 in 2_AddManageUsers in REDCap Validation scripts
    // currently cannot be executed due to limitations in Cypress.
    // Cypress cannot browse to OTHER base_URLs to confirm email/passwords
    // during existing tests. Port numbers apply to this as well.

    describe('Confirm New User', () => {
        it.skip('Confirms a new user', () => {
            cy.visit('http://localhost:8025/')
        })
    })

    describe('Reset Passwords', () => {

        it('Should have the ability to reset a user\'s password but cancel', () => {
            let username = 'test_user'
            let firstname = 'Test'
            let lastname = 'User'
            cy.visit('/index.php?logout=1')
            cy.set_user_type('admin')
            cy.visit_version({page: "ControlCenter/view_users.php"}).then(() => {
                cy.get('input#user_search')
                    .type(username)
                cy.get('button')
                    .contains('Search')
                    .click()
                cy.get('body')
                    .contains('User information for "'
                        + username
                        + '" ('
                        + firstname
                        + ' '
                        + lastname
                        + ')')
                // todo: brittle test! needs a data attribute
                cy.contains('td.data2', 'Reset user\'s password?')
                    .next('td.data2')
                    .find('input')
                    .click()

                cy.on('window:confirm', () => false);

                cy.get('body')
                    .contains('User information for "'
                        + username + '" (' + firstname + ' ' + lastname + ')')

            })
        })

        it('Should have the ability to reset a user\'s password', () => {

            let username = 'test_user'
            let firstname = 'Test'
            let lastname = 'User'
            let email = username + '@test.test'

            cy.visit_version({page: "ControlCenter/view_users.php"}).then(() => {
                cy.get('input#user_search')
                    .type(username)
                cy.get('button')
                    .contains('Search')
                    .click()
                cy.get('body')
                    .contains('User information for "'
                        + username + '" (' + firstname + ' ' + lastname + ')')
                // todo: brittle test! needs a data attribute
                cy.contains('td.data2', 'Reset user\'s password?')
                    .next('td.data2')
                    .find('input')
                    .click()

                cy.on('window:confirm', (str) => {
                    expect(str).to.contains('RESET PASSWORD FOR USER \''
                        + username
                        + '\'?')
                })

                cy.get('div.ui-dialog')
                    .within(() => {
                        cy.get('div.ui-dialog-content')
                            .contains('An email has been sent to '
                                + email
                                + ' with a link to allow them to set a new password.')

                        cy.get('div.ui-dialog-buttonpane')
                            .within(() => {
                                cy.get('button')
                                    .contains('Close')
                                    .click()
                            })
                    })

                cy.visit_version({page: "ControlCenter/view_users.php?username=" + username}).then(() => {
                    cy.get('body')
                        .contains('Password was last reset on')
                })
            })
        })
    })

    describe('Update Email Addresses', () => {

        // todo: client-side error not preventing submit
        //
        it.skip('Should have the ability to update email address, but not an invalid address', () => {
            cy.visit_version({page: "ControlCenter/view_users.php"}).then(() => {
                cy.get('input#user_search')
                    .type(USERNAME)
                cy.get('button')
                    .contains('Search')
                    .click()
                cy.get('body')
                    .contains('User information for "'
                        + USERNAME
                        + '" ('
                        + FIRSTNAME
                        + ' '
                        + LASTNAME
                        + ')')
                cy.get('button')
                    .contains('Edit user info')
                    .click()
                cy.get('input#user_email')
                    .clear()
                    .type(test_replacement_email + '@test')
                cy.get('input[name=submit]')
                    .click()

                cy.get('div#redcapValidationErrorPopup')
                    .contains('This field must be a valid email address')
                cy.get('div.ui-dialog-buttonpane')
                    .within(() => {
                        cy.get('button')
                            .contains('Close')
                            .click()
                    })
            })
        })

        it('Should have the ability to update a properly-formatted email address', () => {

            let username = 'test_user'
            let firstname = 'Test'
            let lastname = 'User'
            // let email = username + '@test.test'
            let test_replacement_email = 'testy@test.test'

            cy.visit_version({page: "ControlCenter/view_users.php"}).then(() => {
                cy.get('input#user_search')
                    .type(username)
                cy.get('button')
                    .contains('Search')
                    .click()
                cy.get('body')
                    .contains('User information for "'
                        + username
                        + '" ('
                        + firstname
                        + ' '
                        + lastname
                        + ')')
                cy.get('button')
                    .contains('Edit user info')
                    .click()
                cy.get('input#user_email')
                    .clear()
                    .type(test_replacement_email)
                cy.get('input[name=submit]')
                    .click()
                cy.get('body')
                    .contains('User has been successfully saved.')
            })
        })
    })

    describe('Block Failed Login Attempts', () => {
        before( () => {
            cy.mysql_db('seeds/validations/2/validation-pre-2')
        })

        it('Should have the ability to set login attempt limits.', () => {
            cy.visit('/index.php?logout=1')
            cy.set_user_type('admin')
            cy.visit_version({page: "ControlCenter/security_settings.php"}).then(() => {
                cy.get('input[name=logout_fail_limit]')
                    .clear()
                    .type('1')
                cy.get('input[name=logout_fail_window]')
                    .clear()
                    .type('1')

                cy.get('form#form')
                    .submit()
                cy.get('body')
                    .contains('Your system configuration values have now been changed!')
            })
        })

        it('Should prevent a blocked user from login after hitting block threshold.', () => {
            let username = 'test_user'
            let password = 'Testing123'
            cy.visit('/index.php?logout=1')
            cy.visit_base({url:''})
                .then( () => {
                    cy.visit('/index.php?logout=1')
                    // login as user with bad password
                    cy.get('input#username')
                        .type(username)
                    cy.get('input#password')
                        .type('blahblahblah')
                    cy.get('button#login_btn')
                        .click()
                    cy.get('body')
                        .contains('You entered an invalid user name or password!')
                    cy.get('input#username')
                        .type(username)
                    cy.get('input#password')
                        .type(password)
                    cy.get('button#login_btn')
                        .click()
                    cy.get('body')
                        .contains('ACCESS DENIED!')

                    // wait 1 minute, login with good password
                    cy.wait(61000)

                    cy.visit_base({url: ''})
                        .then(() => {

                            cy.get('input#username')
                                .type(username)
                            cy.get('input#password')
                                .type(password)
                            cy.get('button#login_btn')
                                .click()
                            cy.get('a.nav-link')
                                .contains('Logged in as ' + username)
                        })
            })
        })

    })
})
