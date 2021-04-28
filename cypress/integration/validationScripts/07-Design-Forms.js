import {
    validateImage, deleteDownloadsFolder,
} from '../utils'

const path = require('path')
const downloadsFolder = Cypress.config('downloadsFolder')

beforeEach( () => {
    deleteDownloadsFolder
})

describe('7 - Design Forms Using Data Dictionary and Online Designer', {
    env: {
        coupled_mode: false
    }
},
() => {

    describe('Form Creation', () => {
        // TODO: Right off the bat, the validation script is wrong. The user needs to login, click My
        //  Projects, select the first project, then start step one.

        it('7-1: Should verify user has project design and setup privileges.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-1')

            let username = 'test_user'

            cy.visit_base({url: "/"}).then(() => {

                cy.get('a.nav-link')
                    .contains('My Projects')
                    .click()

                cy.get('table#table-proj_table')
                    .within(() => {
                        cy.get('a.aGrid')
                            .contains('FirstProject')
                            .click()
                    })

                cy.subnavItem('projHome')

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#app_panel')
                    .within( () => {
                        cy.get('div.hang')
                            .contains('User Rights')
                            .click()
                    })

                cy.get('table#table-user_rights_roles_table')
                    .within(() => {
                        cy.get('tr:last')
                            .within(() => {
                                cy.get('td') // role name
                                    .next('td') // username
                                    .should('contain.text', username)
                                    .next('td') //expiration
                                    .next('td') // Project Design and Setup
                                    .should('contain.html', 'images/tick.png')
                            })
                    })
            })
        })

        it('7-2: Should verify the project does not use surveys and is in development mode.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-2')

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-modify_project')
                    .within( () => {
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button#setupEnableSurveysBtn')
                                    .next('i')
                                    .should('have.class', 'fa-minus-circle')
                            })
                    })

                cy.get('div#home_setup_panel')
                    .within( () => {
                        cy.get('div.fs11')
                            .within( () => {
                                cy.get('div')
                                    .should('contain.text', 'Project status')
                                    .should('contain.text', 'Development')
                            })
                    })

            })
        })

        it('7-3: Should verify design instruments tools are available.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-3')

            // let username = 'test_user'

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .should('contain.text', 'Online Designer')
                                cy.get('button')
                                    .should('contain.text', 'Data Dictionary')
                                cy.get('button')
                                    .should('contain.text', 'REDCap Shared Library')
                                cy.get('a')
                                    .should('contain.text', 'Download PDF of all instruments')
                                cy.get('a')
                                    .should('contain.text', 'Download the current Data Dictionary')
                                cy.get('a')
                                    .should('contain.text', 'Check For Identifiers')
                            })

                    })

            })
        })

        it('7-4: Should download the project data dictionary.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-4')

            cy.visit_base({url: "/"})
                .then( () => {

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

                    cy.get('div#subheaderDiv2')
                        .should('contain.text', 'FirstProject')

                    cy.get('div#setupChklist-design')
                        .within( () => {
                            cy.get('div.chklisthdr')
                                .should('contain.text', 'Design your data collection instruments')
                            cy.get('div.chklisttext')
                                .within( () => {
                                    cy.get('a')
                                        .contains('Download the current Data Dictionary')
                                })

                        })

                    cy.request_version({page: 'Design/data_dictionary_download.php', params: "pid=14&delimiter=,"}).as('file')

                    cy.get('@file').should((response) => {
                        expect(response.status).to.eq(200)
                        expect(response).to.have.property('headers').contains({"content-type": "application/csv"})
                })

            })
        })

        it.skip('7-5: Should download the project data dictionary.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-5')

            cy.visit_base({url: "/"})
                .then( () => {

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

                    cy.get('div#subheaderDiv2')
                        .should('contain.text', 'FirstProject')

                    cy.get('div#setupChklist-design')
                        .within( () => {
                            cy.get('div.chklisthdr')
                                .should('contain.text', 'Design your data collection instruments')
                            cy.get('div.chklisttext')
                                .within( () => {
                                    cy.get('a')
                                        .contains('Download the current Data Dictionary')
                                })

                        })

                    cy.request_version({page: 'Design/data_dictionary_download.php', params: "pid=14&delimiter=,"}).as('file')

                    cy.get('@file').should((response) => {
                        expect(response.status).to.eq(200)
                        expect(response).to.have.property('headers').contains({"content-type": "application/csv"})
                    })

                })
        })

        it('7-6: Should upload the project data dictionary.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-6')

            let dataDictionary = '7-6-data_dictionary.csv'
            cy.visit_base({url: "/"})
                 .then( () => {
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

                    cy.get('div#subheaderDiv2')
                        .should('contain.text', 'FirstProject')

                    cy.get('div#setupChklist-design')
                        .within( () => {
                            cy.get('div.chklisthdr')
                                .should('contain.text', 'Design your data collection instruments')
                            cy.get('div.chklisttext')
                                .within( () => {
                                    cy.get('button')
                                        .contains('Data Dictionary')
                                        .click()
                                })
                        })

                    cy.get('div#center')
                        .within( () => {
                            cy.get('div.round')
                                .should('contain.text', 'Upload your Data Dictionary file')
                                .within( () => {
                                    cy.get('input[name=uploadedfile]')
                                        .attachFile(dataDictionary)
                                    cy.wait(1000)
                                    cy.get('button#submit')
                                        .click()
                                })
                        })

                     cy.get('div#center')
                         .within( () => {
                             cy.get('div.darkgreen')
                                 .should('exist')
                                 .should('contain.text', 'Your document was uploaded successfully and awaits your confirmation below.')
                         })

                    cy.get('div.blue')
                        .should('exist')
                        .should('contain.text', 'Are you ready to commit the changes')
                        .within( () => {
                            cy.wait(1000)
                            cy.get('button')
                                .contains('Commit Changes')
                                .click()
                        })
                    cy.get('div.green')
                        .should('contain.text', 'Changes Made Successfully!')
            })
        })
    })

    describe('Field Creation', () => {

        it('7-7/8: Should upload and reject the project data dictionary with duplication error.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-7')

            let dataDictionary = '7-7-duplicate_data_dictionary.csv'

            cy.visit_base({url: "/"}).then( () => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .contains('Data Dictionary')
                                    .click()
                            })
                    })

                cy.get('div#center')
                    .within( () => {
                        cy.get('div.round')
                            .within(() => {
                                cy.get('input[name=uploadedfile]')
                                    .attachFile(dataDictionary)
                                cy.wait(1000)
                                cy.get('button#submit')
                                    .click()
                            })
                    })

                cy.get('div.darkgreen')
                    .should('not.exist')

                cy.get('div.red')
                    .should('exist')
                    .should('contain.text', 'Errors found in your Data Dictionary')
                    .should('contain.text', 'The following variable/field names were duplicated. Please rename these field names so that they only appear once.')
                    .should('contain.text', 'dd_form (A8)')

            })
        })

        it('7-9/10: Should upload the corrected project data dictionary.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-9')

            let dataDictionary = '7-9-corrected_data_dictionary.csv'

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')

                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .contains('Data Dictionary')
                                    .click()
                            })
                    })

                    cy.get('div#center div.round')
                        .within(() => {
                            cy.get('input[name=uploadedfile]')
                                .attachFile(dataDictionary)
                            cy.wait(1000)
                            cy.get('button#submit')
                                .click()
                            cy.wait(1000)
                        })

                cy.get('div.darkgreen')
                    .should('exist')
                    .should('contain.text', 'Your document was uploaded successfully and awaits your confirmation below.')

                cy.get('div.blue')
                    .should('exist')
                    .should('contain.text', 'Are you ready to commit the changes')
                    .within( () => {
                        cy.get('button')
                            .contains('Commit Changes')
                            .click()
                        cy.wait(1000)
                    })

                cy.get('div.green')
                    .should('contain.text', 'Changes Made Successfully!')

            })
        })

        it('7-11: Should verify new data dictionary form fields.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-11')

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .contains('Online Designer')
                                    .click()
                            })
                    })

                cy.get('div#forms_surveys')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ftitle')
                            .should('contain.text', 'Data Collection Instruments')

                        cy.get('div.bDiv')
                            .should('contain.text', 'My First Instrument')
                            .should('contain.text', 'My First Instrument 2')
                            .should('contain.text', 'Data Dictionary Form')
                            .within( () => {
                                cy.get('a')
                                    .contains('Data Dictionary Form')
                                    .click()
                            })
                    })

                cy.get('form#form')
                    .within( () => {
                        cy.get('table#draggable')
                            .within( () => {
                                cy.get('tbody.formtbody')
                                    .within( () => {
                                        cy.get('tr:first')
                                            .should('contain.text', 'Testing data dictionary upload')
                                            .next('tr')
                                            .should('contain.text', 'Testing data dictionary upload')
                                    })
                            })
                    })

                cy.get('button')
                    .contains('Return to list of instruments')
                    .click()

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#forms_surveys')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ftitle')
                            .should('contain.text', 'Data Collection Instruments')
                    })



            })
        })

        it('7-12: Should add the demo branching instrument.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-12')

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .contains('Online Designer')
                                    .click()
                            })
                    })

                cy.get('div#forms_surveys')
                    .should('exist')
                    .within( () => {
                        cy.get('div.ftitle')
                            .should('contain.text', 'Data Collection Instruments')

                        cy.get('div.bDiv')
                            .should('contain.text', 'My First Instrument')
                            .should('contain.text', 'My First Instrument 2')
                            .should('contain.text', 'Data Dictionary Form')

                        cy.get('button')
                            .contains('Create')
                            .click()
                    })

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr:last')
                                    .within( () => {
                                        cy.get('button')
                                            .contains('Add instrument here')
                                            .click()
                                    })
                            })
                    })

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr:last')
                                    .within( () => {
                                        cy.get('input#new_form-data_dictionary_form')
                                            .type('Demo Branching')
                                        cy.get('input[value=Create]')
                                            .click()
                                    })
                            })
                    })
                cy.wait(500)
                cy.get('div#forms_surveys')
                    .should('exist')
                    .within( () => {
                        cy.get('div.bDiv')
                            .should('contain.text', 'My First Instrument')
                            .should('contain.text', 'My First Instrument 2')
                            .should('contain.text', 'Data Dictionary Form')
                            .should('contain.text', 'Demo Branching')
                    })

            })
        })

        it('7-13: Should allow renaming of an instrument.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-13')

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .contains('Online Designer')
                                    .click()
                            })
                    })

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr:first')
                                    .within( () => {
                                        cy.get('button.jqbuttonsm')
                                            .should('contain.text', 'Choose action')
                                            .click()
                                    })
                            })
                    })

                cy.get('ul#formActionDropdown')
                    .within( () => {
                        cy.get('a')
                            .contains('Rename')
                            .click()
                    })

                cy.get('input#form_menu_description_input-my_first_instrument')
                    .clear()
                    .type('Data Types')
                    .next('input[type=button]')
                    .click()
                cy.wait(500)
                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr:first')
                                    .within( () => {
                                        cy.get('a')
                                            .should('contain.text', 'Data Types')

                                    })
                            })
                    })
            })
        })

        it('7-14: Should allow copying of an instrument, saving with a new name.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-14')

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .contains('Online Designer')
                                    .click()
                            })
                    })

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr#row_2')
                                    .within( () => {
                                        cy.get('button.jqbuttonsm')
                                            .should('contain.text', 'Choose action')
                                            .click()
                                    })
                            })
                    })

                cy.get('ul#formActionDropdown')
                    .within( () => {
                        cy.get('a')
                            .contains('Copy')
                            .click()
                    })


                cy.get('div.ui-dialog')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Copy instrument')

                        cy.get('input#copy_instrument_new_name')
                            .clear()
                            .type('Text Validation')

                        cy.get('button.ui-button')
                            .contains('Copy instrument')
                            .click()
                    })

                cy.wait(5000)

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr:last')
                                    .within( () => {
                                        cy.get('a')
                                            .should('contain.text', 'Text Validation')
                                    })
                            })
                    })
            })
        })

        it('7-15: Should verify that copied instruments have versions appended to the field names.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-15')

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .contains('Online Designer')
                                    .click()
                            })
                    })

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr:last')
                                    .within( () => {
                                        cy.get('a')
                                            .contains('Text Validation')
                                            .click()
                                    })
                            })
                    })

                cy.get('div#center')
                    .within( () => {
                        cy.get('table')
                            .within( () => {
                                cy.get('td')
                                    .within( () => {
                                        cy.get('span#form_menu_description_label')
                                            .should('contain.text', 'Text Validation')
                                    })

                            })
                    })

                cy.get('span.designVarName')
                    .should('contain.text', '_v2')

                cy.get('button')
                    .contains('Return to list of instruments')
                    .click()

                cy.get('div.ftitle')
                    .should('contain.text', 'Data Collection Instruments')

                cy.get('div#sub-nav')
                    .within( () => {
                        cy.get('li.active')
                            .should('contain.text', 'Online Designer')

                })
            })
        })

        it('7-16: Should delete an instrument.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-16')

            cy.visit_base({url: "/"}).then(() => {

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

                cy.get('div#subheaderDiv2')
                    .should('contain.text', 'FirstProject')

                cy.get('div#setupChklist-design')
                    .within( () => {
                        cy.get('div.chklisthdr')
                            .should('contain.text', 'Design your data collection instruments')
                        cy.get('div.chklisttext')
                            .within( () => {
                                cy.get('button')
                                    .contains('Online Designer')
                                    .click()
                            })
                    })

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr#row_2')
                                    .within( () => {
                                        cy.get('button.jqbuttonsm')
                                            .should('contain.text', 'Choose action')
                                            .click()
                                    })
                            })
                    })

                cy.get('ul#formActionDropdown')
                    .within( () => {
                        cy.get('a')
                            .contains('Delete')
                            .click()
                    })

                cy.get('div.ui-dialog')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Delete the selected form?')

                        cy.get('button.ui-button')
                            .contains('Yes, delete it')
                            .click()
                    })

                cy.wait(3500)

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr')
                                    .within( () => {
                                        cy.get('td')
                                            .should('not.contain.text', 'My First Instrument 2')
                                    })
                            })
                    })

            })
        })

        it('7-17: Should use drag-n-drop to re-order instruments.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-17')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"}).then(() => {

                // TODO: Due to a bug in cypress, the re-order drag-n-drop is dropping at the #2 position, not
                //  first. Yay.

                cy.get('table#table-forms_surveys td.dragHandle:last')
                    .trigger('mousedown', { which: 1, pageX:340, pageY: 556})
                    .trigger('mousemove', { which: 1, pageX:340, pageY: 457, force: true})
                    .trigger('mouseup', {force: true})

                cy.get('table#table-forms_surveys')
                    .within( () => {
                        cy.get('tbody')
                            .within( () => {
                                cy.get('tr:nth-child(2)')
                                    .within( () => {
                                        cy.get('td:nth-child(2)')
                                            .should('contain.text', 'Text Validation')
                                    })
                            })
                    })
            })
        })

        it('7-18: Should designate all instruments in arm 1 to event 1.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-18')

            cy.visit_version({page: "Design/designate_forms.php", params: "pid=14"})
                .then(() => {
                    cy.get('div#sub-nav:first')
                        .within( () => {
                            cy.get('li.active')
                                .should('contain.text', 'Designate Instruments for My Events')
                        })
                    cy.get('button.jqbuttonmed')
                        .contains('Begin Editing')
                        .click()
                    cy.get('table#event_grid_table tbody')
                        .within( () => {
                            cy.get('tr')
                                .within( () => {
                                    cy.get('td:nth-child(2)')
                                        .within( () => {
                                            cy.get('input')
                                                .check()
                                        })
                                })

                        })
                    cy.get('button#save_btn')
                        .click()

                    cy.wait(500)
                    cy.get('table#event_grid_table tbody')
                        .within( () => {
                            cy.get('tr')
                                .within( () => {
                                    cy.get('td:nth-child(2)')
                                        .should('contain.html', 'images/tick.png')
                                })
                        })
            })
        })

        it('7-19/20: Should add a field to the Data Types instrument.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-19')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
                .then(() => {
                    cy.get('div#sub-nav li.active')
                        .should('contain.text', 'Online Designer')

                    cy.get('table#table-forms_surveys tbody tr')
                        .within(() => {
                            cy.get('td a')
                                .contains('Data Types')
                                .click()
                        })
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Text Box (Short Text, Number, Date/Time, ...)')
                        .should('have.value', 'text')
                        .select('Notes Box (Paragraph Text)')
                        .should('have.value', 'textarea')
                        .select('Calculated Field')
                        .should('have.value', 'calc')
                        .select('Multiple Choice - Drop-down List (Single Answer)')
                        .should('have.value', 'select')
                        .select('Multiple Choice - Radio Buttons (Single Answer)')
                        .should('have.value', 'radio')
                        .select('Checkboxes (Multiple Answers)')
                        .should('have.value', 'checkbox')
                        .select('Signature (draw signature with mouse or finger)')
                        .should('have.value', 'file')
                        .select('File Upload (for users to upload files)')
                        .should('have.value', 'file')
                        .select('Descriptive Text (with optional Image/Video/Audio/File Attachment)')
                        .should('have.value', 'descriptive')
                        .select('Begin New Section (with optional text)')
                        .should('have.value', 'section_header')

                    // 7-21
                    cy.get('select#field_type')
                        .select('Text Box (Short Text, Number, Date/Time, ...)')

                    cy.get('div#quesTextDiv')
                        .within( () => {
                            cy.get('tbody tr:first td:first')
                                .should('contain.text', 'Field Label')
                                .within( () => {
                                    cy.get('textarea#field_label')
                                        .should('exist')
                                })
                            cy.get('tbody tr:first td:nth-child(2)')
                                .within( () => {
                                    cy.get('div#div_var_name')
                                        .should('exist')
                                        .should('contain.text', 'Variable Name')
                                        .within( () => {
                                            cy.get('input#field_name')
                                        })
                                    cy.get('div#div_val_type')
                                        .should('exist')
                                        .should('contain.text', 'Validation?')
                                        .within( () => {
                                            cy.get('select#val_type')
                                                .should('not.contain.value')
                                        })
                                    cy.get('div#div_field_req')
                                        .should('exist')
                                        .should('contain.text', 'Required?*')
                                        .within( () => {
                                            cy.get('input#field_req0')
                                                .should('be.checked')
                                        })

                                    cy.get('div#div_field_phi')
                                        .should('exist')
                                        .should('contain.text', 'Identifier?')
                                        .within( () => {
                                            cy.get('input#field_phi0')
                                                .should('be.checked')
                                        })

                                    cy.get('div#div_custom_alignment')
                                        .should('exist')
                                        .should('contain.text', 'Custom Alignment')
                                        .within( () => {
                                            cy.get('select#custom_alignment')
                                                .should('not.contain.value')
                                        })

                                    cy.get('div#div_field_note')
                                        .should('exist')
                                        .should('contain.text', 'Field Note')
                                        .within( () => {
                                            cy.get('input#field_note')
                                                .should('exist')
                                                .should('not.contain.value')
                                        })
                                })
                        })

                    // 7-22
                    cy.get('div#quesTextDiv')
                        .within( () => {
                            cy.get('tbody tr:first td:first')
                                .should('contain.text', 'Field Label')
                                .within(() => {
                                    cy.get('textarea#field_label')
                                        .type('Text Box')
                                })
                            cy.get('tbody tr:first td:nth-child(2)')
                                .within(() => {
                                    cy.get('div#div_var_name')
                                        .should('exist')
                                        .should('contain.text', 'Variable Name')
                                        .within(() => {
                                            cy.get('input#field_name')
                                                .type('textbox')
                                        })
                                })
                        })

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()

                })

            cy.get('table#design-textbox')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Text Box')
                        })
                })
        })

        it('7-23: Should reject improper variable names.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-23')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14&page=data_types"})
                .then( () => {
                    cy.get('table#design-textbox tbody tr:first td:first')
                        .within( () => {
                            cy.get('span.od-field-icons')
                                .within( () => {
                                    cy.get('a:first')
                                        .click()
                                })
                        })
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Edit Field')
                    cy.get('div#add_field_settings')
                        .within( () => {
                            cy.get('input#field_name')
                                .should('have.value', 'textbox')
                                .clear()
                                .type('1textbox')
                                .blur()
                            cy.get('input#field_name')
                                .should('have.value', 'textbox')
                            cy.get('input#field_name')
                                .clear()
                                .type('Textbox')
                                .blur()
                            cy.get('input#field_name')
                                .should('have.value', 'textbox')
                            cy.get('input#field_name')
                                .clear()
                                .type('text-box')
                                .blur()
                            cy.get('input#field_name')
                                .should('have.value', 'text_box')
                            cy.get('input#field_name')
                                .clear()
                                .type('#textbox')
                                .blur()
                            cy.get('input#field_name')
                                .should('have.value', 'textbox')
                            cy.get('input#field_name')
                                .clear()
                                .type('#text.box')
                                .blur()
                            cy.get('input#field_name')
                                .should('have.value', 'text_box')
                            cy.get('input#field_name')
                                .clear()
                                .type('#text(box)')
                                .blur()
                            cy.get('input#field_name')
                                .should('have.value', 'text_box')
                            cy.get('input#field_name')
                                .clear()
                                .type('#textbox')
                                .blur()
                            cy.get('input#field_name')
                                .should('have.value', 'textbox')

                        })
                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()
                })
        })

        it('7-24: Should create a notes text box.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-24')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})

            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Notes Box (Paragraph Text)')
                        .blur()

                    cy.get('textarea#field_label')
                        .type('Notes Box')
                        .blur()

                    cy.get('textarea#field_label')
                        .should('have.value', 'Notes Box')

                    cy.get('input#field_name')
                        .type('notesbox')
                        .blur()

                    cy.get('input#field_name')
                        .should('have.value', 'notesbox')

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()
                })
        })

        it('7-25: Should create a calculated field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-25')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})

            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .focus()
                        .select('Calculated Field')
                        .blur()

                    cy.get('textarea#field_label')
                        .focus()
                        .type('Calculated Field')
                        .blur()
                        .should('have.value', 'Calculated Field')

                    cy.get('input#field_name')
                        .focus()
                        .type('calculated_field')
                        .blur()
                        .should('have.value', 'calculated_field')

                    // ToDo: Changes in 10.6.4 to display a Logic Editor modal instead
                    //  of textarea element_enum
                    // cy.get('textarea[name=element_enum]')
                    //     .focus()
                    //     .type('3*2', {force: true})
                    //     .blur()

                    cy.get('textarea[name=element_enum]')
                        .click()
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Logic Editor')

                    cy.get('textarea.ace_text-input')
                        .focus()
                        .type('3*2')
                        .blur()

                    cy.get('span.logicValidatorOkay')
                        .should('not.contain.text', 'Error in syntax')

                    cy.get('div.ui-dialog-buttonset button')
                        .contains('Update & Close Editor')
                        .click()
                })

            cy.get('div.ui-dialog div.ui-dialog-buttonpane')
                .within( () => {
                    cy.get('button')
                        .contains('Save')
                        .click()
                })

            cy.get('table#design-calculated_field')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Calculated Field')
                                .next('td')
                                .within( () => {
                                    cy.get('a')
                                        .should('contain.text', 'View equation')
                                        .click()
                                })
                        })
                })
            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Calculation equation for variable "calculated_field"')

                    cy.get('div#viewEq table tbody tr:nth-child(3) td')
                        .should('contain.text', 'Calculation')
                        .next('td')
                        .should('contain.text', '3*2')
                })
        })

        it('7-26: Should create a multiple-choice drop down auto list field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-26')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Multiple Choice - Drop-down List (Single Answer)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('Multiple Choice Dropdown Auto')
                        .blur()
                        .should('have.value', 'Multiple Choice Dropdown Auto')

                    cy.get('div#div_element_enum')
                        .within(() => {
                            cy.get('span')
                                .should('contain.text', 'Choices (one choice per line)')
                            cy.get('textarea#element_enum')
                                .type('DDChoice1{enter}DDChoice2{enter}DDChoice3{enter}')
                                .blur()
                        })
                })

                cy.get('div[aria-labelledby=ui-id-2]')
                    .within( () => {
                        cy.get('div.ui-dialog-titlebar')
                            .should('contain.text', 'Raw values for choices were added automatically')
                        cy.get('div#element_enum_clone')
                            .should('contain.text', '1 was set as the raw value for DDChoice1')
                            .should('contain.text', '2 was set as the raw value for DDChoice2')
                            .should('contain.text', '3 was set as the raw value for DDChoice3')
                        cy.get('button.ui-button')
                            .contains('Close')
                            .click()
                    })

                cy.get('div.ui-dialog')
                    .within( () => {
                        cy.get('input#field_name')
                            .type('multiple_dropdown_auto')
                            .blur()

                        cy.get('input#field_name')
                            .should('have.value', 'multiple_dropdown_auto')

                        cy.get('button.ui-button')
                            .contains('Save')
                            .click()

                    })

            cy.get('table#design-multiple_dropdown_auto')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Multiple Choice Dropdown Auto')
                        })
                })
        })

        it('7-27: Should create a multiple-choice drop down manual list field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-27')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Multiple Choice - Drop-down List (Single Answer)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('Multiple Choice Dropdown Manual')
                        .blur()
                        .should('have.value', 'Multiple Choice Dropdown Manual')

                    cy.get('div#div_element_enum')
                        .within(() => {
                            cy.get('span')
                                .should('contain.text', 'Choices (one choice per line)')
                            cy.get('textarea#element_enum')
                                .type('5, DDChoice5{enter}7, DDChoice7{enter}6, DDChoice6{enter}')
                                .blur()
                        })

                    cy.get('input#field_name')
                        .type('multiple_dropdown_manual')
                        .blur()

                    cy.get('input#field_name')
                        .should('have.value', 'multiple_dropdown_manual')

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()
                })

            cy.get('table#design-multiple_dropdown_manual')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Multiple Choice Dropdown Manual')
                        })
                })
        })

        it('7-28: Should create a multiple-choice radio button auto field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-28')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Multiple Choice - Radio Buttons (Single Answer)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('Radio Button Auto')
                        .blur()
                        .should('have.value', 'Radio Button Auto')

                    cy.get('div#div_element_enum')
                        .within(() => {
                            cy.get('span')
                                .should('contain.text', 'Choices (one choice per line)')
                            cy.get('textarea#element_enum')
                                .type('Choice1{enter}Choice2{enter}Choice.3{enter}')
                                .blur()
                        })
                })

            cy.get('div[aria-labelledby=ui-id-2]')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Raw values for choices were added automatically')
                    cy.get('div#element_enum_clone')
                        .should('contain.text', '1 was set as the raw value for Choice1')
                        .should('contain.text', '2 was set as the raw value for Choice2')
                        .should('contain.text', '3 was set as the raw value for Choice.3')
                    cy.get('button.ui-button')
                        .contains('Close')
                        .click()
                })

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('input#field_name')
                        .type('multiple_radio_auto')
                        .blur()

                    cy.get('input#field_name')
                        .should('have.value', 'multiple_radio_auto')

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()

                })

            cy.get('table#design-multiple_radio_auto')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Radio Button Auto')
                        })
                })

        })

        it('7-29: Should create a multiple-choice radio button manual field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-29')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Multiple Choice - Radio Buttons (Single Answer)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('Radio Button Manual')
                        .blur()
                        .should('have.value', 'Radio Button Manual')

                    cy.get('div#div_element_enum')
                        .within(() => {
                            cy.get('span')
                                .should('contain.text', 'Choices (one choice per line)')
                            cy.get('textarea#element_enum')
                                .type('9..9,Choice99{enter}100,Choice100{enter}101,Choice101{enter}')
                                .blur()
                        })

                    cy.get('input#field_name')
                        .type('multiple_radio_manual')
                        .blur()

                    cy.get('input#field_name')
                        .should('have.value', 'multiple_radio_manual')

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()

                })

            cy.get('table#design-multiple_radio_manual')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Radio Button Manual')
                        })
                })

        })

        it('7-30: Should verify a multiple-choice radio button manual field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-30')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('table#design-multiple_radio_manual td.frmedit:last')
                .within( () => {
                    cy.get('a:first')
                        .click()
                })

            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Edit Field')

                    cy.get('div#div_element_enum')
                        .within( () => {
                            cy.get('textarea#element_enum')
                                .should('have.value', '9..9, Choice99\n100, Choice100\n101, Choice101')
                        })
                    cy.get('button.ui-button')
                        .contains('Cancel')
                        .click()
                })

            cy.get('div#subheader')
                .should('contain.text', 'FirstProject')
            cy.get('div#sub-nav ul li.active')
                .should('contain.text', 'Online Designer')
        })

        it('7-31: Should create checkboxen field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-31')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Checkboxes (Multiple Answers)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('Checkbox')
                        .blur()
                        .should('have.value', 'Checkbox')

                    cy.get('div#div_element_enum')
                        .within(() => {
                            cy.get('span')
                                .should('contain.text', 'Choices (one choice per line)')
                            cy.get('textarea#element_enum')
                                .type('1,Checkbox1{enter}2,Checkbox2{enter}3,Checkbox3{enter}')
                                .blur()
                        })

                    cy.get('input#field_name')
                        .type('checkbox')
                        .blur()
                        .should('have.value', 'checkbox')

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()

                })

            cy.get('table#design-checkbox')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Checkbox')
                        })
                })
        })

        it('7-32: Should create a signature field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-32')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Signature (draw signature with mouse or finger)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('Signature')
                        .blur()
                        .should('have.value', 'Signature')

                    cy.get('input#field_name')
                        .type('signature')
                        .blur()
                        .should('have.value', 'signature')

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()

                })

            cy.get('table#design-signature')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Signature')
                                .next('td')
                                .should('contain.text', 'Add signature')
                        })
                })
        })

        it('7-33: Should create a file upload field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-33')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('File Upload (for users to upload files)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('File Upload')
                        .blur()
                        .should('have.value', 'File Upload')

                    cy.get('input#field_name')
                        .type('file_upload')
                        .blur()
                        .should('have.value', 'file_upload')

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()

                })

            cy.get('table#design-file_upload')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'File Upload')
                                .next('td')
                                .should('contain.text', 'Upload file')
                        })
                })
        })

        it('7-34: Should create a descriptive text field with optional file attachment.', () => {
            let uploadfile = '7-34-image.jpg'
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-34')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Descriptive Text (with optional Image/Video/Audio/File Attachment)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('Descriptive Text with File')
                        .blur()
                        .should('have.value', 'Descriptive Text with File')

                    cy.get('input#field_name')
                        .type('descriptive_text_file')
                        .blur()
                        .should('have.value', 'descriptive_text_file')

                    cy.get('div#div_attach_upload_link')
                        .within(() => {
                            cy.get('a')
                                .contains('Upload file')
                                .click()
                        })
                })

            cy.get('div.ui-dialog[aria-labelledby=ui-id-2]')
                .within( () => {
                    cy.get('input[name="myfile"]')
                        .attachFile(uploadfile)
                    cy.get('button.ui-button')
                        .contains('Upload file')
                        .click()
                    cy.wait(2000)
                    cy.get('div#div_attach_doc_success')
                        .should('contain.text', 'Document was successfully uploaded!')
                    cy.get('button.ui-button')
                        .contains('Close')
                        .click()
                })

            cy.get('div.ui-dialog[aria-labelledby=ui-id-1]')
                .within( () => {
                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()
                })

            cy.get('table#design-descriptive_text_file')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Descriptive Text with File')
                                .should('contain.text', '7-34-image.jpg')
                        })
                })
        })

        it('7-35: Should create a descriptive text field with no attachment.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-35')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Add New Field')

                    cy.get('select#field_type')
                        .select('Descriptive Text (with optional Image/Video/Audio/File Attachment)')
                        .blur()
                    cy.get('textarea#field_label')
                        .type('Descriptive Text')
                        .blur()
                        .should('have.value', 'Descriptive Text')

                    cy.get('input#field_name')
                        .type('descriptive_text')
                        .blur()
                        .should('have.value', 'descriptive_text')

                    cy.get('button.ui-button')
                        .contains('Save')
                        .click()
                })

            cy.get('table#design-descriptive_text')
                .within( () => {
                    cy.get('tr:nth-child(2)')
                        .within( () => {
                            cy.get('td:first')
                                .should('contain.text', 'Descriptive Text')
                        })
                })
        })

        it('7-36/37: Should have descriptive text with file field element.', () => {

            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-36')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('div#west div.menubox div.hang a')
                .contains('Add / Edit Records')
                .click()

            cy.get('div.projhdr')
                .should('contain.text', 'Add / Edit Records')

            cy.get('select#record')
                .select('1')

            cy.get('div#record_display_name')
                .should('contain.text', 'Arm 1: Arm 1')

            cy.get('table#event_grid_table tbody td')
                .should('contain.text', 'Data Types')
                .next('td')
                .should('contain.html', 'circle_green.png')

            cy.get('table#event_grid_table tbody tr:first td:nth-child(2) a')
                .click()

            cy.get('div#dataEntryTopOptions')
                .should('contain.text', 'Data Types')
            cy.get('table#questiontable tbody tr:first td div.yellow')
                .should('contain.text', 'Event 1 (Arm 1: Arm 1)')

            cy.get("table#questiontable tbody tr#descriptive_text_file-tr")
                .should('contain.text', 'Descriptive Text with File')
                .should('contain.text', 'Attachment:')
                .should('contain.text', '7-34-image.jpg')
                .within( () => {
                    cy.get('a')
                        .click()
                })

            const source = './cypress/fixtures/7-34-image.jpg'

            // the filename that is stored within seed data
            const target = '../www/edocs/20201124105500_pid14_5rtZFo.jpg'

            cy.readFile(source, 'binary').then((file) => {
                cy.writeFile(target, file, 'binary')
            })

            cy.log('**confirm downloaded image**')

            // the filename is changed on download by the server to original filename
            validateImage('cypress/downloads/7-34-image.jpg')

            cy.get('button#submit-btn-saverecord:first')
                .click()

            cy.wait(500)

            cy.get('div.projhdr')
                .should('contain.text', 'Record Home Page')
        })

        it('7-38: Should prevent section break from being created at the end of a form.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-38')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog-titlebar')
                .should('contain.text', 'Add New Field')

            cy.get('select#field_type')
                .select('Begin New Section (with optional text)')
                .blur()
            cy.get('textarea#field_label')
                .type('Section Break')
                .blur()
                .should('have.value', 'Section Break')

            cy.get('button.ui-button')
                .contains('Save')
                .click()

            // having trouble accessing the alert text that is auto-confirmed
            // So instead, I'm testing to verify the section break is NOT added at the end of the form
            cy.get('table#design-section_break')
               // .should('not.exist')
                .should('not.exist')
        })

        it('7-39: Should create a section break.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-39')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-descriptive_text_file-f')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog-titlebar')
                .should('contain.text', 'Add New Field')

            cy.get('select#field_type')
                .select('Begin New Section (with optional text)')
                .blur()
            cy.get('textarea#field_label')
                .type('Section Break')
                .blur()
                .should('have.value', 'Section Break')

            cy.get('button.ui-button')
                .contains('Save')
                .click()

            cy.get('table#design-descriptive_text_file-sh')
                .should('exist')
                .should('contain.text', 'Section Break')
        })

        it('7-40: Should create an identifier element.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-40')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog-titlebar')
                .should('contain.text', 'Add New Field')

            cy.get('select#field_type')
                .select('Text Box (Short Text, Number, Date/Time, ...)')
                .blur()

            cy.get('textarea#field_label')
                .type('Identifier')
                .blur()
                .should('have.value', 'Identifier')

            cy.get('div#div_var_name')
                .should('contain.text', 'Variable Name')
                .within( () => {
                    cy.get('input#field_name')
                        .type('identifier')
                })

            cy.get('div#div_field_phi')
                .should('contain.text', 'Identifier?')
                .within( () => {
                    cy.get('input#field_phi1')
                        .click()
                })

            cy.get('button.ui-button')
                .contains('Save')
                .click()

            cy.get('table#design-identifier')
                .should('exist')
                .should('contain.text', 'Identifier')
        })

        it('7-41: Should create a required field element.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-41')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('input#btn-last')
                .should('have.value', 'Add Field')
                .click()

            cy.get('div.ui-dialog-titlebar')
                .should('contain.text', 'Add New Field')

            cy.get('select#field_type')
                .select('Text Box (Short Text, Number, Date/Time, ...)')
                .blur()

            cy.get('textarea#field_label')
                .type('Required')
                .blur()
                .should('have.value', 'Required')

            cy.get('div#div_var_name')
                .should('contain.text', 'Variable Name')
                .within( () => {
                    cy.get('input#field_name')
                        .type('required')
                })

            cy.get('div#div_field_req')
                .should('contain.text', 'Required?')
                .within( () => {
                    cy.get('input#field_req1')
                        .click()
                })

            cy.get('button.ui-button')
                .contains('Save')
                .click()

            cy.get('table#design-required')
                .should('exist')
                .should('contain.text', 'Required')
                .should('contain.text', '* must provide value')
        })

        it('7-42: Should drag and drop re-order fields', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-42')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })

            cy.get('table#design-required')
                .trigger('mousedown', { which: 1, pageX:572, pageY: 2327})
                .trigger('mousemove', { which: 1, pageX:572, pageY: 2144, force: true})
                .trigger('mouseup', {force: true})

            cy.get('table#draggable tr#descriptive_text-tr')
                .next('tr')
                .should('have.id', 'required-tr')
        })

        it('7-43: Should delete a data dictionary form from instruments.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-43')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr:nth-child(2)')
                .within( () => {
                    cy.get('td:nth-child(2)')
                        .should('contain.text', 'Data Dictionary Form')
                        .click()
                })

            cy.get('table tr#dd_form-tr table#design-dd_form:first a:last')
                .should('contain.html', 'cross.png')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'DELETE FIELD?')
                    cy.get('button.ui-button')
                        .contains('Delete')
                        .click()
                })

            cy.wait(500)

            cy.get('span.designVarName')
                .should('not.contain.text', 'dd_form')
        })

        it('7-44: Should move a field between data instruments', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-44')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Dictionary Form')
                        .click()
                })
            cy.get('span#form_menu_description_label')
                .should('contain.text', 'Data Dictionary Form')

            cy.get('span.od-field-icons a:nth-child(4)')
                .should('contain.html', 'file_move.png')
                .click()

            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Move field to another location')

                    cy.get('select#move_after_field')
                        .select('identifier')
                        .should('have.value', 'identifier')


                    cy.get('button.ui-button')
                        .contains('Move field')
                        .click()
                })
            cy.wait(500)
            cy.get('div.ui-dialog')
                .within( () => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Successfully moved')
                    cy.get('button.ui-button:nth-child(1)')
                        .contains( 'Close')
                        .click()
                })
            cy.get('td.frmedit')
                .should('not.contain.html', 'a href')
        })

        it('7-45: Should change upload field to text box edit field.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-45')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })
            cy.get('span#form_menu_description_label')
                .should('contain.text', 'Data Types')

            cy.get('#dd_test-tr')
                .within(() => {
                    cy.get('span.od-field-icons a:nth-child(1)')
                        .should('contain.html', 'pencil.png')
                        .click()
                })


            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'Edit Field')

                    cy.get('select#field_type')
                        .select('Text Box (Short Text, Number, Date/Time, ...)')
                        .should('have.value', 'text')

                    cy.get('textarea#field_label')
                        .clear()
                        .type('Edit Field')
                        .should('have.value', 'Edit Field')

                    cy.get('input#field_name')
                        .clear()
                        .type('edit_field')
                        .should('have.value', 'edit_field')

                    cy.get('button')
                        .contains('Save')
                        .click()
                })
            cy.wait(500)

            cy.get('tr#edit_field-tr span.designVarName')
                .should('contain.text', 'edit_field')

            cy.get('tr#edit_field-tr label#label-edit_field')
                .should('contain.text', 'Edit Field')
        })

        it('7-46: Should allow copy identifier field but cancel.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-46')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })
            cy.get('span#form_menu_description_label')
                .should('contain.text', 'Data Types')

            cy.get('#identifier-tr')
                .within(() => {
                    cy.get('span.od-field-icons a:nth-child(3)')
                        .should('contain.html', 'page_copy.png')
                        .click()
                })

            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'COPY FIELD?')

                    cy.get('button')
                        .contains('Cancel')
                        .click()
                })

            cy.wait(500)

            cy.get('tr#identifier-tr')
                .within(() => {
                    cy.get('span.designVarName')
                        .should('contain.text', 'identifier')
                })
            cy.get('tr#identifier_2-tr')
                .should('not.exist')
        })

        it('7-47: Should allow copy of identifier field with auto-generated unique name.', () => {
            cy.set_user_type('standard')
            cy.mysql_db('seeds/validations/7/validation-pre-7-47')

            cy.visit_version({page: "Design/online_designer.php", params: "pid=14"})
            cy.get('div#sub-nav li.active')
                .should('contain.text', 'Online Designer')

            cy.get('table#table-forms_surveys tbody tr')
                .within(() => {
                    cy.get('td a')
                        .contains('Data Types')
                        .click()
                })
            cy.get('span#form_menu_description_label')
                .should('contain.text', 'Data Types')

            cy.get('#identifier-tr')
                .within(() => {
                    cy.get('span.od-field-icons a:nth-child(3)')
                        .should('contain.html', 'page_copy.png')
                        .click()
                })

            cy.get('div.ui-dialog')
                .within(() => {
                    cy.get('div.ui-dialog-titlebar')
                        .should('contain.text', 'COPY FIELD?')

                    cy.get('button')
                        .contains('Copy field')
                        .click()
                })

            cy.wait(500)

            cy.get('tr#identifier_2-tr')
                .should('exist')
        })
    })
})