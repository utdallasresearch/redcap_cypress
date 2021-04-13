// CORE functionality helper commands are in here.
// If you are hoping to add a command for your specific instance this is NOT the place.
//
// For INSTANCE-SPECIFIC implementations, use one of these spots as appropriate:
//   /support/projects/commands.js
//   /support/hooks/commands.js
//   /suport/modules/commands.js
//   /support/plugins/commands.js

function test_link (link, title, try_again = true) {
  cy.get('div#control_center_menu a').
  contains(link).
  click().
  then(($control_center) => {
    if($control_center.find('div#control_center_window').length){
      cy.get('div#control_center_window').then(($a) => {
        if($a.find('div#control_center_window h4').length){
          cy.get('div#control_center_window h4').contains(title)
        } else if ($a.find('div#control_center_window div').length){
          cy.get('div#control_center_window div').contains(title)
        } else {
          cy.get('body').contains(title)
        }
      })
    } else {
      cy.get('body').contains(title)
    }
  })
}

function sorterCompare(col_name, element, selector = null, klass = false, title = false){
  let first_row = null
  let last_row = null

  let main_selector = 'table#table-proj_table tr '

  let expectation = null
  let end_expect = ''
  let last_expectation = null
  let first_expectation = null
  let selector_thing = ''
  let last_row_val = ''
  let first_row_val = ''

  cy.get(main_selector + ' span').should('not.contain', "Loading").then(() => {

    let current_index = 0

    cy.get('th').then((th) => {

      th.each((i, t) => {
        if(t.textContent === col_name){
          current_index = t.cellIndex
        }
      })

      cy.get('th').contains(col_name).click().then(($col)=>{

        cy.get(main_selector).then((tr) => {
            const num_rows = Cypress.$(tr).length

            if(selector === null){
              first_row = Cypress.$(tr[0]).find(element)[current_index]
              last_row = Cypress.$(tr[num_rows - 1]).find(element)[current_index]
            } else {
              first_row = Cypress.$(Cypress.$(tr[0]).find(element)[current_index]).find(selector)[0]
              last_row = Cypress.$(Cypress.$(tr[num_rows - 1]).find(element)[current_index]).find(selector)[0]
            }

            if(klass){
              last_row_val = last_row.className
              first_row_val = first_row.className
              expectation = 'to.have.class'
              last_expectation = expectation + '(last_row_val)'
              first_expectation = expectation + '(first_row_val)'
              selector_thing = 'Cypress.$($e[current_index]).find(selector)[0]'
            } else if (title) {
              last_row_val = last_row.title
              first_row_val = first_row.title
              expectation  = 'to.have.attr'
              last_expectation = expectation + '("title", "' + last_row_val+ '")'
              first_expectation = expectation + '("title", "' + first_row_val + '")'
              selector_thing = 'Cypress.$($e[current_index]).find(selector)[0]'
            } else {
              last_row_val = last_row.textContent
              first_row_val = first_row.textContent
              expectation = 'to.contain'
              last_expectation = expectation + '(last_row_val)'
              first_expectation = expectation + '(first_row_val)'
              selector_thing = '$e[current_index]'
            }

            //See if the first row is what the last row WAS
            cy.get('th').contains(col_name).click().then(()=>{
              cy.get(main_selector + element).then(($e) => {
                cy.get(main_selector + ' span').should('not.contain', "Loading").then(() => {
                  eval('expect(' + selector_thing + ').' + last_expectation)
                })
              })
            })

          //See if the first row is what the first row WAS initially
            cy.get('th').contains(col_name).click().then(()=>{
              cy.get(main_selector + element).then(($e) => {
                cy.get(main_selector + ' span').should('not.contain', "Loading").then(() => {
                  eval('expect(' + selector_thing + ').' + first_expectation)
                })
              })
            })
          })
        })
    })
  })
}

function abstractProjectView(input, project_name, total_projects, dropdown_click){
  cy.get('input#user_search').clear()

  cy.get('input#user_search').type(input).then(() => {

    let $t = dropdown_click ? cy.get('button#user_search_btn') : cy.get('ul#ui-id-1 li a')

    $t.first().click().then(($a) => {
      cy.get('table#table-proj_table tr span').should('not.contain', "Loading").then(() => {
        cy.get('table#table-proj_table tr:first div.projtitle').then(($a) => {
          expect($a).to.contain(project_name)
          cy.get('table#table-proj_table').find('tr:visible').should('have.length', total_projects)
        })
      })
    })
  })
}

Cypress.Commands.add('contains_cc_link', (link, title = '') => {
  if(title === '') title = link
  let t = Cypress.$("div#control_center_menu a:contains(" + JSON.stringify(link) + ")");
  t.length ? test_link(link, title) : test_link(link.split(' ')[0], title.split(' ')[0])
})

Cypress.Commands.add('find_online_designer_field', (name, timeout = 10000) => {
  cy.contains('td', name, { timeout: timeout })
})

Cypress.Commands.add('compare_value_by_field_label', (name, value, timeout = 10000) => {
  cy.contains('td', name, { timeout: timeout }).parent().parentsUntil('tr').last().parent().then(($tr) => {
    const name = $tr[0]['attributes']['sq_id']['value']
    cy.get('[name="' + name + '"]', { force: true }).should(($a) => {
      expect($a[0]['value']).to.equal(value)
    })
  })
})

Cypress.Commands.add('select_field_by_label', (name, timeout = 10000) => {
  cy.contains('td', name, { timeout: timeout }).parent().parentsUntil('tr').last().parent().then(($tr) => {
    const name = $tr[0]['attributes']['sq_id']['value']
    cy.get('[name="' + name + '"]', { force: true }).then(($a) => {
      return $a[0]
    })
  })
})

Cypress.Commands.add('initial_save_field', () => {
  cy.get('input#field_name').then(($f) => {
    cy.contains('button', 'Save').
    should('be.visible').
    click().
    then(() => {

      cy.contains('Alert').then(($a) => {
        if($a.length){
          cy.get('button[title=Close]:last:visible').click()
          cy.get('input#auto_variable_naming').click()
          cy.contains('button', 'Enable auto naming').click().then(() => {
            cy.contains('button', 'Save').click()
          })
        }
      })
    })
  })
})

Cypress.Commands.add('save_field', () => {
  cy.get('input#field_name').then(($f) => {
    cy.contains('button', 'Save').click()
  })

})

Cypress.Commands.add('add_field', (field_name, type) => {
  cy.get('input#btn-last').click().then(() => {
    cy.get('textarea#field_label').clear().type(field_name).then(() => {
      cy.get('select#val_type').select(type).should('have.value', type).then(() => {
        cy.save_field()
        cy.find_online_designer_field(field_name)
      })
    })
  })
})

Cypress.Commands.add('add_users_to_project', (usernames = [], project_id) => {
      cy.visit_version({page: 'UserRights/index.php', params: 'pid=' + project_id})

      //Add each username specified
      for(var username of usernames){
        cy.get('input#new_username',).type(username, {force: true})
        cy.get('button#addUserBtn').click({force: true})
        cy.get('div#editUserPopup').should(($div) => {
          expect($div).to.be.visible
        })

        let button_label = /(Save Changes|Add user)/

        cy.get('button').contains(button_label).click()
        cy.get('div#working').should(($div) => {
          expect($div).to.not.be.visible
        })
      }
})

Cypress.Commands.add('add_users_to_data_access_groups', (groups = [], usernames = [], project_id) => {
    cy.visit_version({page: 'index.php', params: 'route=DataAccessGroupsController:index&pid=' + project_id})
        .then( () => {
            for (let i = 0; i < groups.length; i++) {
                let cur_group = groups[i]
                let cur_user = usernames[i]

                cy.get('input#new_group')
                    .clear()
                    .type(cur_group)
                cy.get('button#new_group_button')
                    .click()
                cy.get('table#table-dags_table')
                    .should('contain.text', cur_group)

                cy.get('select#group_users')
                    .select(cur_user)
                    .then( () => {
                        cy.get('select#groups')
                            .select(cur_group)
                            .then( () => {
                              cy.get('button#user_group_button')
                                  .click()
                            })
                      cy.get('.dagMsg')
                          .should('exist')
                          .and('contain.text', 'User "' + cur_user + '" has been assigned to Data Access Group "' + cur_group + '"!')


                    })
            }
        })
})


Cypress.Commands.add('check_column_sort_values', (col_name, element, selector = null) => {
  sorterCompare(col_name, element, selector)
})

Cypress.Commands.add('check_column_sort_classes', (col_name, element, selector = null) => {
  sorterCompare(col_name, element, selector, 1)
})

Cypress.Commands.add('check_column_sort_titles', (col_name, element, selector = null) => {
  sorterCompare(col_name, element, selector, 0, 1)
})

Cypress.Commands.add('visible_projects_user_input_click_view', (input, project_name, total_projects) => {
  abstractProjectView(input, project_name, total_projects, true)
})

Cypress.Commands.add('visible_projects_user_input', (input, project_name, total_projects) => {
  abstractProjectView(input, project_name, total_projects, false)
})

Cypress.Commands.add('select_record', (params) => {
  cy.get('a[href="/redcap_v' + Cypress.env('redcap_version') + '' + params + ']').click()
})

Cypress.Commands.add('get_project_table_row_col', (row = '1', col = '0') => {
  cy.get('table#table-proj_table tr:nth-child(' + row + ') td:nth-child(' + col + ')')
})

Cypress.Commands.add('require_redcap_stats', () => {
  cy.server()
  cy.route({method: 'POST', url: '**/ProjectGeneral/project_stats_ajax.php'}).as('project_stats_ajax')
  cy.wait('@project_stats_ajax').then((xhr, error) => { })
})
