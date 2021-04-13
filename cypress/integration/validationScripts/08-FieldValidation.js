describe('8 - Field Validation / Data Integrity', {
    env: {
        coupled_mode: false
    }
},
    () => {
        describe('Verify Settings', () => {

            it('8-0: Should verify core validation types are not available or enabled.', () => {
                cy.set_user_type('admin')
                cy.mysql_db('seeds/validations/8/validation-pre-8-0')

                cy.visit_version({page: "/ControlCenter/validation_type_setup.php"}).then(
                    () => {
                        cy.get('h4')
                            .should('contain.text', 'Field Validation Types')

                        cy.get('div#val_table')
                            .within(() => {
                                cy.get('table tbody tr:first')
                                    .should('contain.text', 'Validation Types Currently Available for Use in All' +
                                        ' Projects')

                                cy.get('table tbody')
                                    .within( () => {
                                        cy.get('tr#date_dmy td:nth-child(2)')
                                            .should('contain.html', 'delete.png')

                                        cy.get('tr#datetime_mdy td:nth-child(2)')
                                            .should('contain.html', 'delete.png')

                                        cy.get('tr#datetime_seconds_ymd td:nth-child(2)')
                                            .should('contain.html', 'delete.png')

                                        cy.get('tr#email td:nth-child(2)')
                                            .should('contain.html', 'delete.png')

                                        cy.get('tr#integer td:nth-child(2)')
                                            .should('contain.html', 'delete.png')

                                        cy.get('tr#number td:nth-child(2)')
                                            .should('contain.html', 'delete.png')

                                        cy.get('tr#number_1dp_comma_decimal td:nth-child(2)')
                                            .should('contain.html', 'delete.png')

                                        cy.get('tr#time td:nth-child(2)')
                                            .should('contain.html', 'delete.png')
                                    })
                            })
                    })
            })
        })

        describe('Field Validation Settings', () => {

            it('8-1-3: Should import the project data dictionary.', () => {
                cy.set_user_type('admin')
                cy.mysql_db('seeds/validations/8/validation-pre-8-1')

                let testFile = '8_FieldValidation_DataDictionary.csv'

                cy.visit_version({page: ""}).then(() => {

                    cy.get('a.nav-link')
                        .contains('My Projects')
                        .click()

                    cy.get('div.projtitle')
                        .within( () => {
                            cy.get('a')
                                .contains('FieldValidation')
                                .click()
                        })

                    cy.get('div#subheader')
                        .should('contain.text', 'FieldValidation')

                    cy.get('button')
                        .contains('Data Dictionary')
                        .click()

                    cy.get('input[name="uploadedfile"]')
                        .attachFile(testFile)
                    cy.wait(1000)
                    cy.get('button#submit')
                        .click()

                    cy.wait(1000)

                    cy.get('button')
                        .contains('Commit Changes')
                        .click()

                    cy.get('body')
                        .should('contain.text', 'Changes Made Successfully!')
                })
            })

            it('8-4-5: Should verify disabled field validations are not available.', () => {
                cy.set_user_type('admin')
                cy.mysql_db('seeds/validations/8/validation-pre-8-4')

                cy.visit_version({page: "ProjectSetup/index.php", params: "pid=17"}).then(() => {

                    cy.get('div#subheader')
                        .should('contain.text', 'FieldValidation')

                    cy.get('button')
                        .contains('Online Designer')
                        .click()

                    cy.get('div.projtitle')
                        .within( () => {
                            cy.get('a')
                                .contains('Text Validation')
                                .click()
                        })

                    cy.get('input#btn-val_date_dmy-sh-f')
                        .click()

                    cy.get('div.ui-dialog')
                        .within( () => {
                            cy.get('div.ui-dialog-titlebar')
                                .should('contain.text', 'Add New Field')

                            cy.get('div#add_field_settings')
                                .within( () => {
                                    cy.get('select[name=field_type]')
                                        .select('Text Box (Short Text, Number, Date/Time, ...)')
                                    cy.wait(500)

                                    // ToDo: Adding text to these elements so we can test for their existence when we
                                    //  cancel
                                    cy.get('textarea#field_label')
                                        .type('Text')

                                    cy.get('input#field_name')
                                        .type('text')

                                    cy.get('select#val_type')
                                        .should('not.have.value', 'date_dmy')
                                        .should('not.have.value', 'datetime_mdy')
                                        .should('not.have.value', 'datetime_seconds_ymd')
                                        .should('not.have.value', 'email')
                                        .should('not.have.value', 'integer')
                                        .should('not.have.value', 'number')
                                        .should('not.have.value', 'number_1dp_comma_decimal')
                                        .should('not.have.value', 'time')
                                })

                            cy.get('div.ui-dialog-buttonset')
                                .within( () => {
                                    cy.get('button')
                                        .contains('Cancel')
                                        .first()
                                        .click()
                                })

                            cy.wait(500)
                        })

                    cy.get('table#draggable tbody')
                        .within( () => {
                            cy.get('label')
                                .should('not.contain.text', 'Text')
                        })
                })
            })

            it('8-6: Should enable field validation types.', () => {
                cy.set_user_type('admin')
                cy.mysql_db('seeds/validations/8/validation-pre-8-6')

                cy.visit_version({page: "/ControlCenter/validation_type_setup.php"}).then(
                    () => {
                        cy.get('h4')
                            .should('contain.text', 'Field Validation Types')

                        cy.get('div#val_table table tbody tr:first')
                            .should('contain.text', 'Validation Types Currently Available for Use in All Projects')
                        cy.wait(300)
                        cy.get('div#val_table table tbody tr#date_dmy td:nth-child(3)')
                            .within( () => {
                                cy.get('button')
                                    .click()
                            })
                        cy.wait(300)
                        cy.get('div#val_table table tbody tr#datetime_mdy td:nth-child(3)')
                            .within( () => {
                                cy.get('button')
                                    .click()
                            })
                        cy.wait(300)
                        cy.get('div#val_table table tbody tr#datetime_seconds_ymd td:nth-child(3)')
                            .within( () => {
                                cy.get('button')
                                    .click()
                            })
                        cy.wait(300)
                        cy.get('div#val_table table tbody tr#email td:nth-child(3)')
                            .within( () => {
                                cy.get('button')
                                    .click()
                            })
                        cy.wait(300)
                        cy.get('div#val_table table tbody tr#integer td:nth-child(3)')
                            .within( () => {
                                cy.get('button')
                                    .click()
                            })
                        cy.wait(300)
                        cy.get('div#val_table table tbody tr#number td:nth-child(3)')
                            .within( () => {
                                cy.get('button')
                                    .click()
                            })
                        cy.wait(300)
                        cy.get('div#val_table table tbody tr#number_1dp_comma_decimal td:nth-child(3)')
                            .within( () => {
                                cy.get('button')
                                    .click()
                            })
                        cy.wait(300)
                        cy.get('div#val_table table tbody tr#time td:nth-child(3)')
                            .within( () => {
                                cy.get('button')
                                    .click()
                            })
                        cy.wait(300)


                        cy.get('table tbody tr#date_dmy td:nth-child(2)')
                            .should('contain.html', 'tick.png')

                        cy.get('table tbody tr#datetime_mdy td:nth-child(2)')
                            .should('contain.html', 'tick.png')

                        cy.get('table tbody tr#datetime_seconds_ymd td:nth-child(2)')
                            .should('contain.html', 'tick.png')

                        cy.get('table tbody tr#email td:nth-child(2)')
                            .should('contain.html', 'tick.png')

                        cy.get('table tbody tr#integer td:nth-child(2)')
                            .should('contain.html', 'tick.png')

                        cy.get('table tbody tr#number td:nth-child(2)')
                            .should('contain.html', 'tick.png')

                        cy.get('table tbody tr#number_1dp_comma_decimal td:nth-child(2)')
                            .should('contain.html', 'tick.png')

                        cy.get('table tbody tr#time td:nth-child(2)')
                            .should('contain.html', 'tick.png')
                    })


            })

            it('8-7: Should verify field validations are available.', () => {
                cy.set_user_type('admin')
                cy.mysql_db('seeds/validations/8/validation-pre-8-7')

                cy.visit_version({page: "ProjectSetup/index.php", params: "pid=17"}).then(() => {

                    cy.get('div#subheader')
                        .should('contain.text', 'FieldValidation')

                    cy.get('button')
                        .contains('Online Designer')
                        .click()

                    cy.get('div.projtitle')
                        .within( () => {
                            cy.get('a')
                                .contains('Text Validation')
                                .click()
                        })

                    cy.get('input#btn-val_date_dmy-sh-f')
                        .click()

                    cy.get('div.ui-dialog')
                        .within( () => {
                            cy.get('div.ui-dialog-titlebar')
                                .should('contain.text', 'Add New Field')

                            cy.get('div#add_field_settings')
                                .within( () => {
                                    cy.get('select[name=field_type]')
                                        .select('Text Box (Short Text, Number, Date/Time, ...)')
                                    cy.wait(500)

                                    // ToDo: Adding text to these elements so we can test for their existence when we
                                    //  cancel
                                    cy.get('textarea#field_label')
                                        .type('Text')

                                    cy.get('input#field_name')
                                        .type('text')

                                    cy.get('select#val_type')
                                        .select('Date (D-M-Y)')
                                            .should('have.value', 'date_dmy')
                                        .select('Datetime (M-D-Y H:M)')
                                            .should('have.value', 'datetime_mdy')
                                        .select('Datetime w/ seconds (Y-M-D H:M:S)')
                                            .should('have.value', 'datetime_seconds_ymd')
                                        .select('Email')
                                            .should('have.value', 'email')
                                        .select('Integer')
                                            .should('have.value', 'integer')
                                        .select('Number')
                                            .should('have.value', 'number')
                                        .select('Number (1 decimal place - comma as decimal)')
                                            .should('have.value', 'number_1dp_comma_decimal')
                                        .select('Time (HH:MM)')
                                            .should('have.value', 'time')
                                })

                            cy.get('div.ui-dialog-buttonset')
                                .within( () => {
                                    cy.get('button')
                                        .contains('Cancel')
                                        .first()
                                        .click()
                                })

                            cy.wait(500)
                        })

                    cy.get('table#draggable tbody')
                        .within( () => {
                            cy.get('label')
                                .should('not.contain.text', 'Text')
                        })
                })
            })

            it('8-8-10: Should properly validate input data of different types.', () => {
                cy.set_user_type('admin')
                cy.mysql_db('seeds/validations/8/validation-pre-8-7')
                let currentDate = new Date();
                let curYear = currentDate.getFullYear();

                cy.visit_version({page: "ProjectSetup/index.php", params: "pid=17"})

                cy.get('div#subheader')
                    .should('contain.text', 'FieldValidation')

                cy.get('div.menubox div.hang a')
                    .contains('Add / Edit Records')
                    .click()

                cy.get('div.projhdr')
                    .should('contain.text', 'Add / Edit Records')

                cy.get('button')
                    .contains('Add new record')
                    .click()

                cy.get('button#submit-btn-saverecord:first')
                    .click()

                cy.get('table#event_grid_table tbody tr.odd:first')
                    .within( () => {
                        cy.get('td:first')
                            .should('contain.text', 'Text Validation')
                        cy.get('td:nth-child(2) a')
                            .click()
                    })

                // 8-9
                cy.get('table#questiontable tbody tr#val_date_dmy-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_date_dmy]')
                            .type('01-31-' + curYear)
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided could not be validated because it does not follow the expected format. Please try again.')
                            .should('contain.text', 'Required format: Date (D-M-Y)')

                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#val_date_dmy-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_date_dmy]')
                            .clear()
                            .type('31-01-' + curYear)
                            .blur()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.dropdown-menu a#submit-btn-savecontinue:first')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')

                // 8-10
                cy.get('table#questiontable tbody tr#val_datetime_mdy-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_datetime_mdy]')
                            .clear()
                            .type('01-31-' + curYear)
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided could not be validated because it does not follow the expected format. Please try again.')
                            .should('contain.text', 'Required format: Datetime (M-D-Y H:M)')

                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                    cy.get('table#questiontable tbody tr#val_datetime_mdy-tr td:nth-child(2)')
                        .within( () => {
                            cy.get('input[name=val_datetime_mdy]')
                                .clear()
                                .type('01-31-' + curYear + ' 10:00')
                                .blur()
                        })

                    cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                        .within( () => {
                            cy.get('button#submit-btn-dropdown')
                                .click()
                        })

                    cy.get('div.btn-group button')
                        .contains('Save & Stay')
                        .click()

                    cy.get('div.darkgreen')
                        .should('contain.text', 'Record ID')
                        .and('contain.text', '1')
                        .and('contain.text', 'successfully edited')


                // 8-11
                cy.get('table#questiontable tbody tr#val_datetime_seconds_ymd-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_datetime_seconds_ymd]')
                            .clear()
                            .type( curYear + '-01-31 10:00')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided could not be validated because it does not follow the expected format. Please try again.')
                            .should('contain.text', 'Required format: Datetime w/ seconds (Y-M-D H:M:S)')

                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#val_datetime_seconds_ymd-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_datetime_seconds_ymd]')
                            .clear()
                            .type( curYear + '-01-31 10:00:04')
                            .blur()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')

                // 8-12
                cy.get('table#questiontable tbody tr#val_email-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_email]')
                            .clear()
                            .type( 'redcap@')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'This field must be a valid email address (like joe@user.com). Please re-enter it now.')

                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#val_email-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_email]')
                            .clear()
                            .type( 'redcap@user.com')
                            .blur()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')

                // 8-13
                cy.get('table#questiontable tbody tr#val_integer-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_integer]')
                            .clear()
                            .type( '50.2')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'This value you provided is not an integer. Please try again.')

                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#val_integer-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_integer]')
                            .clear()
                            .type( '50')
                            .blur()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')

                // 8-14
                cy.get('table#questiontable tbody tr#val_number-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_number]')
                            .clear()
                            .type( 'abc')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'This value you provided is not a number. Please try again.')

                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#val_number-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_number]')
                            .clear()
                            .type( '6.78')
                            .blur()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')


                // 8-15
                cy.get('table#questiontable tbody tr#val_number_1dp-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_number_1dp]')
                            .clear()
                            .type( '10.9')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided could not be validated because it does not follow the expected format. Please try again.')
                            .should('contain.text', 'Required format: Number (1 decimal place - comma as decimal)')


                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#val_number_1dp-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_number_1dp]')
                            .clear()
                            .type( '10,9')
                            .blur()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')

                // 8-16
                cy.get('table#questiontable tbody tr#val_time-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_time]')
                            .clear()
                            .type( '17')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value entered must be a time value in the following format HH:MM within the range 00:00-23:59 (e.g., 04:32 or 23:19).')


                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#val_time-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=val_time]')
                            .clear()
                            .type( '17:00')
                            .blur()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')


                // 8-17
                cy.get('table#questiontable tbody tr#ran_date_dmy-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=ran_date_dmy]')
                            .clear()
                            .type( '15-02-19')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided is outside the suggested range. (01-01-2019 - 31-01-2019). This value is admissible, but you may wish to double check it.')


                        cy.get('button')
                            .contains('Close')
                            .click()
                    })



                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')


                // 8-18
                cy.get('table#questiontable tbody tr#ran_datetime_mdy-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=ran_datetime_mdy]')
                            .clear()
                            .type( '01-15-19 16:00')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided is outside the suggested range. (01-01-2019 10:00 - 01-01-2019 15:36). This value is admissible, but you may wish to double check it.')


                        cy.get('button')
                            .contains('Close')
                            .click()
                    })



                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')


                // 8-19
                cy.get('table#questiontable tbody tr#ran_datetime_seconds_ymd-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=ran_datetime_seconds_ymd]')
                            .clear()
                            .type( curYear + '01-15 09:15:10')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided is outside the suggested range. (2019-01-01 09:00:00 - 2019-01-01 09:15:00). This value is admissible, but you may wish to double check it.')


                        cy.get('button')
                            .contains('Close')
                            .click()
                    })



                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')


                // 8-20
                cy.get('table#questiontable tbody tr#ran_integer-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=ran_integer]')
                            .clear()
                            .type( '30')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided is outside the suggested range. (0 - 10). This value is admissible, but you may wish to double check it.')


                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')


                // 8-21
                cy.get('table#questiontable tbody tr#ran_number-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=ran_number]')
                            .clear()
                            .type( '5.5')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided is outside the suggested range. (5.505 - 6.005). This value is admissible, but you may wish to double check it.')


                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')


                // 8-22
                cy.get('table#questiontable tbody tr#ran_number_1dp-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=ran_number_1dp]')
                            .clear()
                            .type( '21,8')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided is outside the suggested range. (1,0 - 20,0). This value is admissible, but you may wish to double check it.')


                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')


                // 8-23
                cy.get('table#questiontable tbody tr#ran_time-tr td:nth-child(2)')
                    .within( () => {
                        cy.get('input[name=ran_time]')
                            .clear()
                            .type( '05:01')
                            .blur()
                    })

                cy.get('div.ui-dialog')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Alert')

                        cy.get('div.ui-dialog-content')
                            .should('contain.text', 'The value you provided is outside the suggested range. (06:00 - 08:00). This value is admissible, but you may wish to double check it.')

                        cy.get('button')
                            .contains('Close')
                            .click()
                    })

                cy.get('table#questiontable tbody tr#__SUBMITBUTTONS__-tr')
                    .within( () => {
                        cy.get('button#submit-btn-dropdown')
                            .click()
                    })

                cy.get('div.btn-group button')
                    .contains('Save & Stay')
                    .click()

                cy.get('div.darkgreen')
                    .should('contain.text', 'Record ID')
                    .and('contain.text', '1')
                    .and('contain.text', 'successfully edited')

            })

        })
    })
