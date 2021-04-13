describe('Data Comparison Tool / DDE Module', () => {

    before(() => {
        cy.set_user_type('standard')
    })

    describe('Data Entry Person Roles', () => {

    	it.skip('Should have the ability to designate Data Entry Person 1', () => {
            
    	})

    	it.skip('Should have the ability to designate Data Entry Person 2', () => {
            
    	})

    	it.skip('Should have the ability to restrict Data Entry Persons from viewing each others data', () => {
            
    	})

    	it.skip('Should assign Reviewer rights to all users not designated as Data Person 1 or 2', () => {

    	})
    })

    describe('Review / Adjudication Process', () => {

		it.skip('Should have the ability to compare two records within the same project and display the differences between them', () => {
	            
	    })

    	it.skip('Should allow Reviewer to view and adjudicate the differences between duplicate records', () => {

    	})

    	it.skip('Should allow Reviewers to merge both entires into a third, single record', () => {

    	})
    })

    describe('Control Center', () => {

        before(() => {
            cy.set_user_type('admin')
        })

        it.skip('Should have the ability to enable / disable the Double Data Entry module', () => {
            
        })
    })
})
