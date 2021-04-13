describe('Export Data', () => {

	before(() => {
		cy.set_user_type('standard')
	})

	describe('Basic Functionality', () => {

	    it.skip('Should have the ability to mark fields as identifiers', () => {
	            
	    })

	    it.skip('Should have the ability to export all fields within a project', () => {

	    })

	    it.skip('Should allow the ability to export specific forms', () => {

	    })
	})

	describe('Data Export Formats', () => {

    	it.skip('Should have the ability to export to CSV format', () => {

    	})

    	it.skip('Should have the ability to export to SPSS format', () => {

    	})

    	it.skip('Should have the ability to export to SAS format', () => {

    	})

    	it.skip('Should have the ability to export to R format', () => {

    	})

		it.skip('Should have the ability to export to STATA format', () => {

    	})

		it.skip('Should have the ability to export to CDISC ODM (XML) format', () => {

    	})
    })

    describe('De-Identification Options', () => {

    	describe('Known Identifiers', () => {

    		it.skip('Should have the ability to remove all known identifier fields', () => {

    		})

    		it.skip('Should have the ability to hash the Record ID', () => {
    			
    		})

    	})

    	describe('Free Form Text', () => {

    		it.skip('Should have the ability to remove unvalidated text fields', () => {
    			
    		})

    		it.skip('Should have the ability to remove notes box fields', () => {
    			
    		})

    	})

    	describe('Date and Datetime Fields', () => {

    		it.skip('Should have the ability to remove all date and datetime fields', () => {
    			
    		})

    		it.skip('Should have the ability to shift all dates by value between 0 and 364 days', () => {
    			
    		})

    		it.skip('Should have the ability to shift all survey completion timestamps by value between 0 and 364 days', () => {
    			
    		})

    	})

    })

    describe('Export Permissions', () => {

    	it.skip('Should have the ability to restrict users from exporting data', () => {

    	})
    })
})
