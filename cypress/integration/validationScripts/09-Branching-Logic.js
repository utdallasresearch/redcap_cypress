describe('09 - Branching Logic', {
        env: {
            coupled_mode: false
        }
    },
    () => {
        describe('Verify Setup', () => {
            it('should verify valid project setup', () => {
                cy.set_user_type('admin')
                cy.mysql_db('seeds/validations/9/validation-pre-9-0')
                cy.visit_version({page: 'ControlCenter/view_projects.php', params: 'view_all=1'})
                    .then(() => {
                        cy.get('table#table-proj_table a')
                            .contains('BranchingLogic')
                            .click()
                    })

                cy.get('div#subheader')
                    .should('contain.text', 'BranchingLogic')

                cy.get('div#setupChklist-modify_project')
                    .within(() => {
                        cy.get('button#setupEnableSurveysBtn')
                            .click()

                        cy.get('button#setupLongiBtn')
                            .click()
                    })

                cy.get('div.ui-dialog')
                    .then(() => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Disable longitudinal data collection?')
                        cy.get('div.ui-dialog-buttonset button')
                            .contains('Disable')
                            .click()
                    })

                cy.wait(500)

                cy.get('div#setupChklist-design').then( () => {
                        cy.get('button')
                            .contains('Online Designer')
                            .click()
                    })

                cy.get('table#table-forms_surveys tbody')
                    .within( () => {
                        cy.get('tr#row_1')
                            .within( () => {
                                cy.get('td:nth-child(2) a')
                                    .should('contain.text', 'Data Types')
                                cy.get('td:nth-child(5) button')
                                    .click()
                            })
                })

                cy.get('button#surveySettingsSubmit')
                    .should('contain.text', 'Save Changes')
                    .click()

                cy.get('div#saveSurveyMsg')
                    .should('exist')
                    .and('contain.text', 'Your survey settings were successfully saved!')

                cy.get('table#table-forms_surveys tbody')
                    .then( () => {
                        cy.get('tr#row_2')
                            .within( () => {
                                cy.get('td:nth-child(2) a')
                                    .should('contain.text', 'Data Dictionary Form')
                                cy.get('td:nth-child(6) button')
                                    .click()
                            })
                        cy.get('div#formActionDropdownDiv')
                            .should('exist')
                        cy.get('ul#formActionDropdown li a')
                            .contains('Delete')
                            .click()

                        cy.get('div.ui-dialog')
                            .should('exist')
                            .within(() => {
                                cy.get('div.ui-dialog-titlebar')
                                    .should('contain.text', 'Delete the selected form?')
                                cy.get('div.ui-dialog-buttonset button')
                                    .contains('Yes, delete it')
                                    .click()
                            })
                    })

                cy.wait(4000)

                cy.get('table#table-forms_surveys tbody')
                    .then( () => {
                        cy.get('tr#row_3')
                            .within( () => {
                                cy.get('td:nth-child(2) a')
                                    .should('contain.text', 'Demo Branching')
                                cy.get('td:nth-child(6) button')
                                    .click()
                            })
                        cy.get('div#formActionDropdownDiv')
                            .should('exist')
                        cy.get('ul#formActionDropdown li a')
                            .contains('Delete')
                            .click()

                        cy.get('div.ui-dialog')
                            .should('exist')
                            .within(() => {
                                cy.get('div.ui-dialog-titlebar')
                                    .should('contain.text', 'Delete the selected form?')
                                cy.get('div.ui-dialog-buttonset button')
                                    .contains('Yes, delete it')
                                    .click()
                            })
                    })

                cy.wait(4000)

                cy.get('table#table-forms_surveys tbody')
                    .then( () => {
                        cy.get('tr#row_4')
                            .within( () => {
                                cy.get('td:nth-child(2) a')
                                    .should('contain.text', 'Text Validation')
                                cy.get('td:nth-child(6) button')
                                    .click()
                            })
                        cy.get('div#formActionDropdownDiv')
                            .should('exist')
                        cy.get('ul#formActionDropdown li a')
                            .contains('Delete')
                            .click()

                        cy.get('div.ui-dialog')
                            .should('exist')
                            .within(() => {
                                cy.get('div.ui-dialog-titlebar')
                                    .should('contain.text', 'Delete the selected form?')
                                cy.get('div.ui-dialog-buttonset button')
                                    .contains('Yes, delete it')
                                    .click()
                            })
                    })

                cy.wait(4000)

                cy.get('table#table-forms_surveys tbody')
                    .then( () => {
                        cy.get('tr#row_1')
                            .within(() => {
                                cy.get('td:nth-child(5)')
                                    .should('contain.html', 'tick_shield_small.png')
                            })
                    })
            })
        })

        describe('User Interface', () => {
            it('9-1: Should have the ability to show a field ONLY when specific conditions are met', () => {
                cy.set_user_type('standard')
                cy.mysql_db('seeds/validations/9/validation-pre-9-1')

                cy.visit_base({url: "/index.php?action=myprojects"})
                    .then( () => {
                        cy.get('table#table-proj_table tbody tr td a')
                            .contains('BranchingLogic')
                            .click()
                    })

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('button')
                            .contains('Online Designer')
                            .click()
                    })

                cy.get('table#table-forms_surveys tbody tr#row_1 td:nth-child(2) a')
                    .contains('Data Types')
                    .click()
                cy.viewport(1280, 1280)
                let rows = cy.get('table#draggable > tbody.formtbody > tr')
                let renumAlert = false

                function dAndDItem() {
                    cy.get('ul#ulnameList li.ui-draggable-handle:first').as('draggable')
                    cy.get('div#dropZone1').as('droppable')

                    cy.get('@draggable')
                        .drag('@droppable', {
                            position: 'center',
                            force: true
                        })

                    // TODO: Various recommended methods for drag-n-drop in cypress no-workie. Resorted to using the
                    //  @4tw/cypress-drag-drop plugin, which works great. Leaving for posterity.

                    // cy.get('@draggable')
                    //     .click()
                    //     .trigger('dragstart', { force: true })
                    // cy.get('@droppable')
                    //     .trigger('dragover', { force: true })
                    //     .trigger('dragcenter', { force: true })
                    //     .trigger('drop', { force: true })

                    // cy.get('ul#ulnameList li:first')
                    //     .trigger('mousedown', { which: 1 })
                    //     .trigger('mousemove', {
                    //         clientX: 650,
                    //         clientY: 550,
                    //         screenX: 650,
                    //         screenY: 550,
                    //         pageX: 650,
                    //         pageY: 550
                    //     })
                    //     .trigger('mouseup', { force: true })
                    }

                function processRows(row) {
                    let rowid = row.attr('id')
                    if( rowid ) {
                        if (rowid.endsWith('-tr') && rowid !== 'record_id-tr' && rowid !== 'descriptive_text_file-sh-tr' && rowid !== 'calculated_field-tr') {
                            cy.get( row )
                                .within(() => {
                                    cy.get('a:nth-child(2):first')
                                        .should('contain.html', 'arrow_branch_side.png')
                                        .click()
                                })

                            cy.get('div.ui-dialog')
                                .then(() => {
                                    cy.get('div.ui-dialog-titlebar')
                                        .should('contain.text', 'Add/Edit Branching Logic')

                                    cy.get('input[value=drag]')
                                        .click()

                                    // implement guards to prevent premature actions in drag-n-drop
                                    cy.get('div#working')
                                        .should('not.be.visible')

                                    cy.get('ul#ulnameList li')
                                        .should('be.visible')
                                        .and('have.length.gt', 5)

                                    dAndDItem()

                                    cy.get('div#dropZone1 li:first')
                                        .should('contain.text', 'record_id')
                                        .within(() => {
                                            cy.get('select')
                                                .focus()
                                                .select('=')
                                                .blur()
                                            cy.get('input')
                                                .focus()
                                                .clear()
                                                .type('999')
                                                .blur()
                                        })

                                    cy.get('div.ui-dialog-buttonset button')
                                        .contains('Save')
                                        .click()
                                })

                            cy.get('tr#' + rowid)
                                .should('contain.text', 'Branching logic:')
                                .and('contain.text', "[record_id] = '999'")

                            if(renumAlert === false) {
                                cy.get('div.ui-dialog')
                                    .then(() => {
                                        cy.get('div.ui-dialog-titlebar')
                                            .should('contain.text', 'Alert')
                                        cy.get('div.ui-dialog-buttonset button')
                                            .contains('Close')
                                            .click()
                                    })
                                renumAlert = true
                            }
                        }
                    }
                }
                rows.each(processRows)
            })

            it('9-2: Should open the public survey', () => {
                cy.set_user_type('standard')
                cy.mysql_db('seeds/validations/9/validation-pre-9-2')

                cy.visit_base({url: "/index.php?action=myprojects"})
                    .then(() => {
                        cy.get('table#table-proj_table tbody tr td a')
                            .contains('BranchingLogic')
                            .click()
                    })

                cy.get('div.hang a')
                    .contains('Survey Distribution Tools')
                    .click()

                cy.get('div.link-actions-container h5')
                    .should('contain.text', 'Link Actions')

                // Get window object
                cy.window().then((win) => {
                    // Replace window.open(url, target)-function with our own arrow function
                    cy.stub(win, 'open', url =>
                    {
                        // change window location to be same as the popup url
                        win.location.href = url;
                    }).as("popup") // alias it with popup, so we can wait refer it with @popup
                })

                cy.get('div.link-actions-container button:first')
                    .should('contain.text', 'Open public survey')
                    .and('not.contain.text', 'Log out')
                    .click()

                // Make sure that it triggered window.open function call
                cy.get("@popup").should("be.called")

                cy.get('h1')
                    .should('contain.text', 'Data Types')

                cy.get('div#surveyinstructions')
                    .should('contain.text', 'Please complete the survey below')

                cy.get('tr#text2-tr')
                    .should('not.be.visible')
                cy.get('tr#ptname-tr')
                    .should('not.be.visible')
                cy.get('tr#textbox-tr')
                    .should('not.be.visible')
                cy.get('tr#notesbox-tr')
                    .should('not.be.visible')
                cy.get('tr#multiple_dropdown_auto-tr')
                    .should('not.be.visible')
                cy.get('tr#multiple_dropdown_manual-tr')
                    .should('not.be.visible')
                cy.get('tr#multiple_radio_auto-tr')
                    .should('not.be.visible')
                cy.get('tr#multiple_radio_manual-tr')
                    .should('not.be.visible')
                cy.get('tr#checkbox-tr')
                    .should('not.be.visible')
                cy.get('tr#signature-tr')
                    .should('not.be.visible')
                cy.get('tr#file_upload-tr')
                    .should('not.be.visible')
                cy.get('tr#descriptive_text_file-sh-tr')
                    .should('not.be.visible')
                cy.get('tr#descriptive_text_file-tr')
                    .should('not.be.visible')
                cy.get('tr#descriptive_text-tr')
                    .should('not.be.visible')
                cy.get('tr#required-tr')
                    .should('not.be.visible')
                cy.get('tr#identifier-tr')
                    .should('not.be.visible')
                cy.get('tr#identifier_2-tr')
                    .should('not.be.visible')
                cy.get('tr#edit_field-tr')
                    .should('not.be.visible')

                cy.get('tr#calculated_field-tr')
                    .should('be.visible')

                cy.get('button')
                    .should('contain.text', 'Submit')
            })

            it('9-3: Should display the Add/Edit record page', () => {
                cy.set_user_type('standard')
                cy.mysql_db('seeds/validations/9/validation-pre-9-3')

                cy.visit_base({url: "/index.php?action=myprojects"})
                    .then(() => {
                        cy.get('table#table-proj_table tbody tr td a')
                            .contains('BranchingLogic')
                            .click()
                    })

                cy.get('div.hang a')
                    .contains('Add / Edit Records')
                    .click()

                cy.get('div.projhdr')
                    .should('contain.text', 'Add / Edit Records')

                cy.get('button')
                    .contains('Add new record')
                    .click()

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'BranchingLogic')
                cy.get('div#dataEntryTopOptions')
                    .should('contain.text', 'Data Types')
                cy.get('table#questiontable')
                    .should('contain.text', 'Adding new Record ID')

                cy.get('tr#record_id-tr')
                    .should('be.visible')
                cy.get('tr#text2-tr')
                    .should('not.be.visible')
                cy.get('tr#ptname-tr')
                    .should('not.be.visible')
                cy.get('tr#textbox-tr')
                    .should('not.be.visible')
                cy.get('tr#notesbox-tr')
                    .should('not.be.visible')
                cy.get('tr#multiple_dropdown_auto-tr')
                    .should('not.be.visible')
                cy.get('tr#multiple_dropdown_manual-tr')
                    .should('not.be.visible')
                cy.get('tr#multiple_radio_auto-tr')
                    .should('not.be.visible')
                cy.get('tr#multiple_radio_manual-tr')
                    .should('not.be.visible')
                cy.get('tr#checkbox-tr')
                    .should('not.be.visible')
                cy.get('tr#signature-tr')
                    .should('not.be.visible')
                cy.get('tr#file_upload-tr')
                    .should('not.be.visible')
                cy.get('tr#descriptive_text_file-sh-tr')
                    .should('not.be.visible')
                cy.get('tr#descriptive_text_file-tr')
                    .should('not.be.visible')
                cy.get('tr#descriptive_text-tr')
                    .should('not.be.visible')
                cy.get('tr#required-tr')
                    .should('not.be.visible')
                cy.get('tr#identifier-tr')
                    .should('not.be.visible')
                cy.get('tr#identifier_2-tr')
                    .should('not.be.visible')
                cy.get('tr#edit_field-tr')
                    .should('not.be.visible')

                cy.get('tr#calculated_field-tr')
                    .should('be.visible')

                cy.get('button')
                    .should('contain.text', 'Save & Exit Form')
            })


            it('9-4: Should display the modify instrument page', () => {
                cy.set_user_type('standard')
                cy.mysql_db('seeds/validations/9/validation-pre-9-4')

                cy.visit_base({url: "/index.php?action=myprojects"})
                    .then(() => {
                        cy.get('table#table-proj_table tbody tr td a')
                            .contains('BranchingLogic')
                            .click()
                    })

                cy.get('div.hang a')
                    .contains('Add / Edit Records')
                    .click()

                cy.get('div.projhdr')
                    .should('contain.text', 'Add / Edit Records')

                cy.get('button')
                    .contains('Add new record')
                    .click()
                cy.get('div#dataEntryTopOptionsButtons button')
                    .contains('Modify instrument')
                    .click()

                // ToDo: Cypress auto-clicks the Leave button, as listed in 9.4

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'BranchingLogic')
                cy.get('div#sub-nav ul li:nth-child(3)')
                    .should('have.class', 'active')
                cy.get('#center > div:nth-child(15) > table > tbody > tr:nth-child(1) > td:nth-child(1)')
                    .should('contain.text', 'Current instrument')
                    .and('contain.text', 'Data Types')

                cy.get('tr#descriptive_text_file-tr td table tbody tr:first td div.frmedit_icons a:nth-child(2)')
                    .should('contain.html', 'arrow_branch_side.png')
                    .click()

                cy.get('div.ui-dialog ')
                    .then( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Add/Edit Branching Logic')
                        cy.get('textarea#advBranchingBox')
                            .should('have.value', "[record_id] = '999'")
                        cy.get('a#linkClearAdv')
                            .contains('Clear logic')
                            .click()
                            .then( () => {
                                cy.get('textarea#advBranchingBox')
                                    .should('not.have.value', "[record_id] = '999'")
                            })

                        cy.get('input[name=optionBranchType]:last')
                            .should('have.value', 'drag')
                            .click()


                        cy.get('#ulnameList > li:nth-child(18)')
                            .as('draggable')

                        cy.get('div#dropZone1').as('droppable')

                        cy.get('@draggable')
                            .drag('@droppable', {
                                position: 'center',
                                force: true
                            })
                        cy.wait(500)
                        cy.get('#dropZone1 > li')
                            .should('contain.text', "multiple_radio_manual = Choice101 (101)")

                        cy.get('button')
                            .contains('Save')
                            .click()
                    })

                cy.get('div.ui-dialog button')
                    .contains('Yes')
                    .click()

            })

            it('9-5: ', () => {
                cy.set_user_type('standard')
                cy.mysql_db('seeds/validations/9/validation-pre-9-5')

                cy.visit_base({url: "/index.php?action=myprojects"})
                    .then(() => {
                        cy.get('table#table-proj_table tbody tr td a')
                            .contains('BranchingLogic')
                            .click()
                    })

                cy.get('div.hang a')
                    .contains('Add / Edit Records')
                    .click()

                cy.get('div.projhdr')
                    .should('contain.text', 'Add / Edit Records')

                cy.get('button')
                    .contains('Add new record')
                    .click()

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'BranchingLogic')
                cy.get('div#dataEntryTopOptions')
                    .should('contain.text', 'Data Types')
                cy.get('table#questiontable')
                    .should('contain.text', 'Adding new Record ID')

                cy.get('div#dataEntryTopOptionsButtons button')
                    .contains('Modify instrument')
                    .click()

                // ToDo: Cypress auto-clicks the Leave button, as listed in 9.8

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'BranchingLogic')
                cy.get('div#sub-nav ul li:nth-child(3)')
                    .should('have.class', 'active')
                cy.get('#center > div:nth-child(15) > table > tbody > tr:nth-child(1) > td:nth-child(1)')
                    .should('contain.text', 'Current instrument')
                    .and('contain.text', 'Data Types')

                cy.get('tr#required-tr td table tbody tr:first td div.frmedit_icons a:nth-child(2)')
                    .should('contain.html', 'arrow_branch_side.png')
                    .click()

                cy.get('div.ui-dialog ')
                    .then( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Add/Edit Branching Logic')
                        cy.get('a#linkClearAdv')
                            .contains('Clear logic')
                            .click()
                            .then( () => {
                                cy.get('textarea#advBranchingBox')
                                    .should('not.have.value', "[record_id] = '999'")
                            })

                        cy.get('input[name=optionBranchType]:last')
                            .should('have.value', 'drag')
                            .click()

                        cy.get('#ulnameList > li:nth-child(21)')
                            .as('draggable')

                        cy.get('div#dropZone1').as('droppable')

                        cy.get('@draggable')
                            .drag('@droppable', {
                                position: 'center',
                                force: true
                            })
                        cy.wait(500)
                        cy.get('#dropZone1 > li')
                            .should('contain.text', "checkbox = Checkbox3 (3)")

                        cy.get('button')
                            .contains('Save')
                            .click()
                    })

                cy.get('div.ui-dialog button')
                    .contains('Yes')
                    .click()

            })

            it('9-11: ', () => {
                cy.set_user_type('standard')
                cy.mysql_db('seeds/validations/9/validation-pre-9-11')

                cy.get('div.hang a')
                    .contains('Survey Distribution Tools')
                    .click()

                cy.get('div.projhdr')
                    .should('contain.text', 'Survey Distribution Tools')

                cy.get('div.link-actions-container h5')
                    .should('contain.text', 'Link Actions')

                cy.get('div.link-actions-container button:first')
                    .should('contain.text', 'Open public survey')
                    .and('not.contain.text', 'Log out')
                    .click()

            })
        })
})
