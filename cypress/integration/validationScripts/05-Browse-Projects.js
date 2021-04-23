describe('5 - Project View/Sort Functions', {
    env: {
        coupled_mode: false
    }
}, () => {
    beforeEach( () => {
        cy.set_user_type('admin')
    })

    it('5-1/2: Should have the ability to view all projects.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')

        cy.visit_version({page: "ControlCenter/index.php"}).then(() => {
            cy.get('div.cc_menu_header')
                .should('contain.text', 'Projects')

            cy.get('div.cc_menu_item')
                .within(() => {
                    cy.get('a')
                        .contains('Browse Projects')
                        .click()
                })
            cy.get('h4')
                .should('contain.text', 'Browse Projects')

            cy.get('div#control_center_window')
                .within(() => {
                    cy.get('button')
                        .contains('View all projects')
                        .click()
                })

            // 5-2
            cy.get('input#project_search')
                .clear()
                .type('First')

            cy.get('button#project_search_btn')
                .should('contain.text', 'Search project title')
                .click()


            cy.get('table#table-proj_table')
                .within(() => {
                    cy.get('a.aGrid')
                        .should('contain.text', 'FirstProject')
                })
        })
    })
    // TODO: The validation script is defined using on the found FirstProject
    // in step 5-2. But since there is only one project found, testing sorting
    // does not make sense. Therefore, I'm returning to view all projects to test sorting.

    // ToDo: Cypress is failing to execute the sort script when clicking the <th> which has the event tied to it.
    it('5-3: Should have the ability to sort project search results.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')

        cy.visit_version({page: "ControlCenter/view_projects.php"})

            cy.get('div#control_center_window')
                .within( () => {
                    cy.get('button')
                        .contains ('View all projects')
                        .click()
                })

            cy.get('th')
                .contains('Project Title')
                .click({force:true})
                .click()

            cy.get('div.bDiv table#table-proj_table tbody tr:first td:first a.aGrid')
                .should('contain.text', 'Basic Demography')



            cy.get('div.hDiv th')
                .contains('PID')
                .click()

            cy.get('div.bDiv table#table-proj_table tbody tr:first td:first a.aGrid')
                .should('contain.text', 'Classic Database')

            cy.get('div.hDiv th')
                .contains('Records')
                .click()
            cy.wait(500)
            cy.get('div.hDiv th')
               .contains('Records')
               .click()

            cy.get('div.bDiv table#table-proj_table tbody tr:first td:first a.aGrid')
                .should('contain.text', 'FirstProject')

            cy.get('div.hDiv th')
                .contains('Fields')
                .click()

            cy.get('div.bDiv table#table-proj_table tbody tr:first td:first a.aGrid')
                .should('contain.text', 'ProjectCopy')

            cy.get('div.hDiv th')
                .contains('Instruments')
                .click()

            cy.get('div.bDiv table#table-proj_table tbody tr:first td:first a.aGrid')
                .should('contain.text', 'FirstProject')

            cy.get('div.hDiv th')
                .contains('Type')
                .click()

            cy.get('div.bDiv table#table-proj_table tbody tr:first td:first a.aGrid')
                .should('contain.text', 'Piping Example Project')

            cy.get('div.hDiv th')
                .contains('Status')
                .click()
            cy.wait(500)
            cy.get('div.hDiv th')
                .contains('Status')
                .click()
            cy.get('div.bDiv table#table-proj_table tbody tr:first td:first a.aGrid')
                .should('contain.text', 'ProjectCopy')
    })

    it('5-4: Should have the ability to view projects accessible by username.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')
        let username = 'test_user'

        cy.visit_version({page: "ControlCenter/view_projects.php"})
            .then(() => {

                cy.get('div#control_center_window input#user_search')
                    .type(username)
                cy.wait(500)
                cy.get('ul#ui-id-1 li.ui-menu-item a')
                    .contains(username)
                    .click()
                cy.get('button#user_search_btn')
                    .contains('View')
                    .click()
        })

        cy.get('table#table-proj_table a.aGrid')
            .should('contain.text', 'FirstProject')
    })

    it('5-5: Should have the ability to view projects by email address.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')

        let email = 'test_user@test.test'

        cy.visit_version({page: "ControlCenter/view_projects.php"})
            .then(() => {
                cy.get('div#control_center_window input#user_search')
                    .type(email)
                cy.wait(500)
                cy.get('ul#ui-id-1 li.ui-menu-item a')
                    .should('contain.text', email)
                    .click()
                cy.get('table#table-proj_table a.aGrid')
                    .should('contain.text', 'FirstProject')
            })
    })
})
