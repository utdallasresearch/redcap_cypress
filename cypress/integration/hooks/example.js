describe('Hook Example', () => {

	before(() => {

	    //Fetch the hooks SQL seed data (located in test_db/hooks/example.sql)
	    cy.mysql_db('/hooks/example')
	})

    it.skip('Your hook spec here', () => {

    })

})
