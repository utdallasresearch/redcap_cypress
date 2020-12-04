describe('1 - Configuration Check', {
    env: {
        coupled_mode: false
    }
}, () => {
    before( () => {
        cy.mysql_db('seeds/validations/1/validation-pre-1')
    })
    describe('Home Page Links', () => {

        it('Should have tabs to My Projects, New Project, Help & FAQ, Control Center"', () => {
           // cy.mysql_db('seeds/validations/1/validation-pre-1')
            cy.set_user_type('admin')

            cy.visit_version({page: "ControlCenter/index.php"}).then(() => {
                cy.get('a.nav-link')
                    .contains('My Projects')
                cy.get('a.nav-link')
                    .contains('New Project')
                cy.get('a.nav-link')
                    .contains('Help & FAQ')
                cy.get('a.nav-link')
                    .contains('Control Center')
            })
        })

    })

    describe('Control Center', () => {

        beforeEach(() => {
            cy.set_user_type('admin')
            cy.visit_version({page: "ControlCenter/index.php"})
        })

        describe('Control Center Home', () => {
            it('Should have Notifications & Reporting', () => {
                cy.contains_cc_link('Notifications & Reporting', 'Notifications')
            })
            it('Should have To-Do List', () => {
                // cy.set_user_type('admin')
                cy.visit_version({page: "ControlCenter/index.php"}).then(() => {
                    cy.contains_cc_link('To-Do List')
                })
            })
        })

        describe('Dashboard', () => {
            it('Should have System Statistics', () => {
                cy.contains_cc_link('System Statistics')
            })
            it('Should have Activity Log', () => {
                cy.contains_cc_link('Activity Log')
            })
            it('Should have Activity Graphs', () => {
                cy.contains_cc_link('Activity Graphs', 'View graphs for:')
            })
            it('Should have Map of Users', () => {
                cy.contains_cc_link('Map of Users')
            })
        })

        describe('Projects', () => {
            it('Should have Browse Projects', () => {
                cy.contains_cc_link('Browse Projects')
            })
            it('Should have Edit a Project\'s Settings', () => {
                cy.contains_cc_link('Edit a Project\'s Settings')
            })
        })

        describe('Users', () => {
            it('Should have Browse Users', () => {
                cy.contains_cc_link('Browse Users')
            })
            it('Should have Add Users (Table-based Only)', () => {
                cy.contains_cc_link('Add Users (Table-based Only)', 'User Management for Table-based Authentication')
            })
            it('Should have User Whitelist', () => {
                cy.contains_cc_link('User Whitelist')
            })
            it('Should have Email Users', () => {
                cy.contains_cc_link('Email Users')
            })
            it('Should have API Tokens', () => {
                cy.contains_cc_link('API Tokens')
            })
            it('Should have Administrator Privileges', () => {
                cy.contains_cc_link('Administrator Privileges')
            })
        })

        describe('Technical / Developer Tools', () => {
            it('Should have External Modules', () => {
                cy.contains_cc_link('External Modules')
            })
            it('Should have API Documentation', () => {
                cy.contains_cc_link('API Documentation')
            })
            it('Should have Plugin & Hook Documentation', () => {
                cy.contains_cc_link('Plugin & Hook Documentation')
            })
            it('Should have MySQL Dashboard', () => {
                cy.contains_cc_link('MySQL Dashboard')
            })
        })

        describe('Miscellaneous Modules', () => {
            it('Should have Clinical Data Interoperability Services', () => {
                cy.contains_cc_link('Clinical Data Interoperability Services')
            })
            it('Should have Dynamic Data Pull (DDP) - Custom', () => {
                cy.contains_cc_link('Dynamic Data Pull (DDP) - Custom')
            })
            it('Should have Custom Application Links', () => {
                cy.contains_cc_link('Custom Application Links')
            })
            it('Should have Publication Matching', () => {
                cy.contains_cc_link('Publication Matching')
            })
        })

        describe('System Configuration', () => {
            it('Should have Configuration Check', () => {
                cy.contains_cc_link('Configuration Check')
            })
            it('Should have General Configuration', () => {
                cy.contains_cc_link('General Configuration')
            })
            it('Should have Security & Authentication', () => {
                cy.contains_cc_link('Security & Authentication')
            })
            it('Should have User Settings', () => {
                cy.contains_cc_link('User Settings')
            })
            it('Should have File Upload Settings', () => {
                cy.contains_cc_link('File Upload Settings')
            })
            it('Should have Modules/Services Configuration', () => {
                cy.contains_cc_link('Modules/Services Configuration')
            })
            it('Should have Field Validation Types', () => {
                cy.contains_cc_link('Field Validation Types')
            })
            it('Should have Home Page Settings', () => {
                cy.contains_cc_link('Home Page Settings', 'Home Page Settings')
            })
            it('Should have Project Templates', () => {
                cy.contains_cc_link('Project Templates')
            })
            it('Should have Default Project Settings', () => {
                cy.contains_cc_link('Default Project Settings')
            })
            it('Should have Footer Settings (All Projects)', () => {
                cy.contains_cc_link('Footer Settings (All Projects)')
            })
            it('Should have Cron Jobs', () => {
                cy.contains_cc_link('Cron Jobs')
            })

            it('Should contain the expected Configuration Check', () => {
                cy.visit_version({page: "ControlCenter/check.php"}).then(() => {
                    cy.get("h4").contains("Configuration Check")
                    cy.get("body").contains("TEST 1")
                    cy.get("body").contains("TEST 2")
                    cy.get("body").contains("TEST 3")
                    cy.get("body").contains("TEST 4")
                    cy.get("body").contains("TEST 5")
                    cy.get("body").contains("TEST 6")

                    cy.get("body").contains("Secondary tests")
                    //  cy.get("body").contains("Using SSL")
                    cy.get("body").contains("Using PHP 5.5.0 or higher")
                    cy.get("body").contains("Using MySQL 5 or higher")
                    cy.get("body").contains("GD library (version 2 or higher) is installed")
                    cy.get("body").contains("PHP Fileinfo extension is installed")
                    cy.get("body").contains("REDCap is able to send emails")
                    cy.get("body").contains("The REDCap web server's temp directory is writable")
                    cy.get("body").contains("\"temp\" directory is writable")
                    cy.get("body").contains("File upload directory is writable")
                    // todo: Add test for user-uploaded docs
                    // cy.get("body").contains("")
                    cy.get("body").contains("\"modules\" directory is writable")
                })
            })
        })

    })

})
