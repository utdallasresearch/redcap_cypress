describe('5 - Project View/Sort Functions', {
    env: {
        coupled_mode: false
    }
}, () => {
    beforeEach( () => {
        cy.set_user_type('admin')
    })
    // 5-1

    it('Should have the ability to view all projects.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')

        cy.visit_version({page: "ControlCenter/index.php"}).then(() => {
            cy.get('div.cc_menu_header')
                .should('contain.text', 'Projects')

            cy.get('div.cc_menu_item')
                .within( () => {
                    cy.get('a')
                        .contains('Browse Projects')
                        .click()
                })
            cy.get('h4')
                .should('contain.text', 'Browse Projects')

            cy.get('div#control_center_window')
                .within( () => {
                    cy.get('button')
                        .contains ('View all projects')
                        .click()
                })
        })
    })

    // 5-2

    it('Should have the ability to filter projects by title.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')

        cy.visit_version({page: "ControlCenter/index.php"}).then(() => {
            cy.get('div.cc_menu_header')
                .should('contain.text', 'Projects')

            cy.get('div.cc_menu_item')
                .within( () => {
                    cy.get('a')
                        .contains('Browse Projects')
                        .click()
                })
            cy.get('h4')
                .should('contain.text', 'Browse Projects')
            cy.get('div#control_center_window')
                .within( () => {
                    cy.get('input#project_search')
                        .type('First')

                    cy.get('button#project_search_btn')
                        .should('contain.text', 'Search project title')
                        .click()
                })
            })

            cy.get('table#table-proj_table')
                .within( () => {
                    cy.get('a.aGrid')
                        .should('contain.text', 'FirstProject')
                })
    })

    // 5-3
    // TODO: The validation script is defined using on the found FirstProject
    // in step 5-2. But since there is only one project found, testing sorting
    // does not make sense. Therefore, I'm returning to view all projects to test sorting.

    it('Should have the ability to sort project search results.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')

        cy.visit_version({page: "ControlCenter/view_projects.php"}).then(() => {

            cy.get('div#control_center_window')
                .within( () => {
                    cy.get('button')
                        .contains ('View all projects')
                        .click()
                })

            cy.get('div.hDiv')
                .within( () => {
                    cy.get('th')
                        .contains('Project Title')
                        .click()
                })
            cy.get('div.bDiv')
                .within( () => {
                    cy.get('table#table-proj_table')
                        .within( () => {
                            cy.get('tbody')
                                .within( () => {
                                    cy.get('tr:first')
                                        .within( () => {
                                            cy.get('td:first')
                                                .within( () => {
                                                    cy.get('a.aGrid')
                                                        .should('contain.text', 'Basic Demography')
                                                })
                                        })
                                })

                        })
                })


            cy.get('div.hDiv')
                .within( () => {
                    cy.get('th')
                        .contains('PID')
                        .click()
                })
            cy.get('div.bDiv')
                .within( () => {
                    cy.get('table#table-proj_table')
                        .within( () => {
                            cy.get('tbody')
                                .within( () => {
                                    cy.get('tr:first')
                                        .within( () => {
                                            cy.get('td:first')
                                                .within( () => {
                                                    cy.get('a.aGrid')
                                                        .should('contain.text', 'Classic Database')
                                                })
                                        })
                                })

                        })
                })

            cy.get('div.hDiv')
                .within( () => {
                    cy.get('th')
                        .contains('Records')
                        .click()
                    cy.wait(500)
                    cy.get('th')
                        .contains('Records')
                        .click()
                })
            cy.get('div.bDiv')
                .within( () => {
                    cy.get('table#table-proj_table')
                        .within( () => {
                            cy.get('tbody')
                                .within( () => {
                                    cy.get('tr:first')
                                        .within( () => {
                                            cy.get('td:first')
                                                .within( () => {
                                                    cy.get('a.aGrid')
                                                        .should('contain.text', 'FirstProject')
                                                })
                                        })
                                })

                        })
                })

            cy.get('div.hDiv')
                .within( () => {
                    cy.get('th')
                        .contains('Fields')
                        .click()
                })
            cy.get('div.bDiv')
                .within( () => {
                    cy.get('table#table-proj_table')
                        .within( () => {
                            cy.get('tbody')
                                .within( () => {
                                    cy.get('tr:first')
                                        .within( () => {
                                            cy.get('td:first')
                                                .within( () => {
                                                    cy.get('a.aGrid')
                                                        .should('contain.text', 'ProjectCopy')
                                                })
                                        })
                                })

                        })
                })

            cy.get('div.hDiv')
                .within( () => {
                    cy.get('th')
                        .contains('Instruments')
                        .click()
                })
            cy.get('div.bDiv')
                .within( () => {
                    cy.get('table#table-proj_table')
                        .within( () => {
                            cy.get('tbody')
                                .within( () => {
                                    cy.get('tr:first')
                                        .within( () => {
                                            cy.get('td:first')
                                                .within( () => {
                                                    cy.get('a.aGrid')
                                                        .should('contain.text', 'FirstProject')
                                                })
                                        })
                                })

                        })
                })

            cy.get('div.hDiv')
                .within( () => {
                    cy.get('th')
                        .contains('Type')
                        .click()
                })
            cy.get('div.bDiv')
                .within( () => {
                    cy.get('table#table-proj_table')
                        .within( () => {
                            cy.get('tbody')
                                .within( () => {
                                    cy.get('tr:first')
                                        .within( () => {
                                            cy.get('td:first')
                                                .within( () => {
                                                    cy.get('a.aGrid')
                                                        .should('contain.text', 'Piping Example Project')
                                                })
                                        })
                                })

                        })
                })

            cy.get('div.hDiv')
                .within( () => {
                    cy.get('th')
                        .contains('Status')
                        .click()
                    cy.wait(500)
                    cy.get('th')
                        .contains('Status')
                        .click()
                })
            cy.get('div.bDiv')
                .within( () => {
                    cy.get('table#table-proj_table')
                        .within( () => {
                            cy.get('tbody')
                                .within( () => {
                                    cy.get('tr:first')
                                        .within( () => {
                                            cy.get('td:first')
                                                .within( () => {
                                                    cy.get('a.aGrid')
                                                        .should('contain.text', 'ProjectCopy')
                                                })
                                        })
                                })

                        })
                })
        })
    })

    // 5-4

    it('Should have the ability to view projects accessible by username.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')
        let username = 'test_user'

        cy.visit_version({page: "ControlCenter/view_projects.php"}).then(() => {

            cy.get('div#control_center_window')
                .within(() => {
                    cy.get('input#user_search')
                        .type(username)
                })
            cy.wait(500)
            cy.get('ul#ui-id-1')
                .within( () => {
                    cy.get('li.ui-menu-item')
                        .within( () => {
                            cy.get('a')
                                .contains(username)
                                .click()
                        })
                })
            cy.get('button#user_search_btn')
                .contains('View')
                .click()
        })

        cy.get('table#table-proj_table')
            .within( () => {
                cy.get('a.aGrid')
                    .should('contain.text', 'FirstProject')
            })

    })

    // 5-5

    it('Should have the ability to view projects by email address.', () => {
        cy.mysql_db('seeds/validations/5/validation-pre-5-1')

        let username = 'test_user'
        let email = 'test_user@test.test'

        cy.visit_version({page: "ControlCenter/view_projects.php"}).then(() => {
            cy.get('div#control_center_window')
                .within(() => {
                    cy.get('input#user_search')
                        .type(email)
                })
            cy.wait(500)
            cy.get('ul#ui-id-1')
                .within( () => {
                    cy.get('li.ui-menu-item')
                        .within( () => {
                            cy.get('a')
                                .should('contain.text', email)
                                .click()
                        })
                })
            cy.get('table#table-proj_table')
                .within( () => {
                    cy.get('a.aGrid')
                        .should('contain.text', 'FirstProject')
                })
        })
    })
})
