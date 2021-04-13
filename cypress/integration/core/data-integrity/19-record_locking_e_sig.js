describe('Record Locking and E-Signatures', () => {

	before(() => {
		cy.set_user_type('standard')
	})

	 describe('Basic Functionality', () => {

		it.skip('Should display all records with status that is Locked or E-signed for all Data Collection instruments', () => {

	    })

	    it.skip('Should NOT display Data Collection instruments that are NOT designated to be Locked', () => {
	            
	    })

	    it.skip('Should display the Locked status of Data Collection instruments for all records', () => {

	    })

	    it.skip('Should display the E-Signature status of Data Collection instruments for all records', () => {

	    })

	    it.skip('Should have the ability to navigate directly to a selected a record', () => {

	    })
	 })   

    describe('Customization', () => {

    	it.skip('Should have the ability to enable display of the Lock option for each Data Collection instrument', () => {

    	})

    	it.skip('Should have the ability to disable display of the Lock option for each Data Colllection instrument', () => {

    	})

    	it.skip('Should have the ability to enable display of the E-Signature option for each Data Collection instrument', () => {

    	})

    	it.skip('Should have the ability to disable display of the E-Signature option for each Data Colllection instrument', () => {
    		
    	})

    	it.skip('Should have the ability to edit Lock Record Custom Text', () => {

	    })

    	it.skip('Should have the ability to remove Lock Record Custom Text', () => {

	    })
    })

    describe('Filtering Options', () => {

	    it.skip('Should have the Filtering ability to display all rows', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to show timestamp / user', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to hide timestamp / user', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to show Locked records', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to hide Locked records', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to show E-signed records', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to hide E-signed records', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to show both Locked and E-signed records', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to show neither Locked nor E-signed records', () => {
	            
	    })

	    it.skip('Should have the Filtering ability to show Locked but not E-signed records', () => {
	            
	    })
    })

    describe('Editability', () => {

	    it.skip('Should have the ability to support Edits in Development for standard project users', () => {

	    })

	    it.skip('Should NOT have the ability to support Edits in Production for standard project users', () => {

	    })

	    it.skip('Should have the ability to support Edits in Development for administrators', () => {
			cy.set_user_type('admin')
	    })

	    it.skip('Should have the ability to support Edits in Production for administrators', () => {
			cy.set_user_type('admin')
	    })
    })    

})
