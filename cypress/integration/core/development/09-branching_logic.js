describe('Branching Logic', () => {
    before(() => {
        cy.mysql_db('projects/pristine').then(() => {
            cy.set_user_type('admin')

            cy.visit_version({page: 'ProjectSetup/index.php', params: 'pid=5'})
            
            cy.get('button#setupEnableSurveysBtn').click().then(() => {

                //Make sure the button says Disable first (which indicates survey is enabled)
                cy.get('button#setupEnableSurveysBtn').should(($updated) => {
                    expect($updated[0]).to.contain('Disable')
                })
            
                cy.visit_version({page: 'ProjectSetup/other_functionality.php', params: "pid=5"})
                cy.get('button').contains('Move back to Development status').click()

                cy.get('body', { timeout: 10000 }).should(($body) => {
                    expect($body).to.contain('The project is now back in development status.')
                }).then(() => {
                    cy.visit_version({page: 'Design/online_designer.php', params: "pid=5"})
                    cy.get('button').contains('Enable').click()
                    cy.get('button').contains('Save Changes').click()

                    cy.get('div#saveSurveyMsg').should(($div) => {

                        expect($div).not.to.be.visible

                    }).then(() => {
                        cy.visit_version({page: 'Design/online_designer.php', params: 'pid=5&page=demographics'})
                        cy.find_online_designer_field("Last Name").parent().parentsUntil('tr').find('img[title="Branching Logic"]').click()
                        cy.get('textarea#advBranchingBox').click()

                        cy.wait(100)

                        cy.get('div.ui-dialog')
                            .within( () => {
                                cy.get('div.ui-dialog-titlebar')
                                    .should('contain.text', 'Logic Editor')

                                cy.get('textarea.ace_text-input')
                                    .clear()
                                    .type('[first_name]!=""')

                                cy.get('button')
                                    .contains('Update & Close Editor')
                                    .click()
                            })
                        cy.get('div.ui-dialog')
                            .within(() => {
                                cy.get('button').contains('Save').click()
                            })

                    })
                })
            })    
        })
    })

    describe('User Interface', () => {
        before(() => {
            cy.visit_version({page: 'DataEntry/record_home.php', params: "pid=5"})
            cy.get('button').contains('Add new record').click()
        })
        it('Should have the ability to show a field ONLY when specific conditions are met', () => {
            cy.get('input[name=first_name]').type('John')
            cy.get('input[name=email]').type('John@wisc.edu')
            cy.get('tr#last_name-tr').should(($tr) => {
                expect($tr).to.have.css('Display', 'table-row')
            })
            cy.get('input[name=first_name]').clear()
            cy.get('input[name=email]').clear()

            cy.get('tr#last_name-tr').should(($tr) => {
                expect($tr).to.have.css('Display', 'none')
            })
        })
    })

    describe('Survey Interface', () => {
        before(() => {
            cy.get('a').contains('Survey Distribution Tools').click()
            cy.get('button').contains('Leave without saving changes').click()
            cy.get('input#longurl').invoke('attr', 'value').then(($val) =>{
                cy.visit($val)
            })
        })
        it('Should have the ability to show a field ONLY when specific conditions are met', () => {
            cy.get('input[name=first_name]').type('John')
            cy.get('input[name=email]').type('John@wisc.edu')
            cy.get('tr#last_name-tr').should(($tr) => {
                expect($tr).to.have.css('Display', 'table-row')
            })
            cy.get('input[name=first_name]').clear()
            cy.get('input[name=email]').clear()
            cy.get('tr#last_name-tr').should(($tr) => {
                expect($tr).to.have.css('Display', 'none')
            })
        })
    })

})
