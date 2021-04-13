describe('Data Entry through the Survey Feature', () => {

	before(() => {
		cy.set_user_type('standard')
	})

	it.skip('Should have the ability to directly enter data through a survey', () => {
        
	})

	it.skip('Should have the ability to delete all survey-related information and functions without impacting saved data', () => {

	})

	describe('User Interface - Survey Distribution', () => {

		it.skip('Should have the ability to automatically create a participant list using a designated email field when a survey is not in the first instrument position', () => {
		    
		})

		it.skip('Should have the ability for a survey to be generated from within a participant record using Log Out + Open Survey', () => {
		    
		})

		it.skip('Should have the ability for a survey to be generated from within a participant record using Open Survey link', () => {
		    
		})

		it.skip('Should have the ability to prompt the user to leave the survey to avoid overwriting survey responses when opening surveys from a data entry form when using Open Survey link', () => {
		    
		})

		it.skip('Should have the ability to creation of a participant list manually where each survey is assigned a unique survey link when the survey is in the first instrument position', () => {
		    
		})
	})

	describe('User Interface', () => {

		it.skip('Should have the ability for a participant to enter data in a data collection instrument enabled and distributed as a survey', () => {
		    
		})

		it.skip('Should have the ability to submitted survey responses to be changed by a user who has edit survey responses rights', () => {
		    
		})

		it.skip('Should have the ability to support Incomplete surveys status', () => {
		    
		})

		it.skip('Should have the ability to support Partial Survey Response status', () => {
		    
		})

		it.skip('Should have the ability to support Completed Survey Response status', () => {
		    
		})
	})

	describe('Control Center', () => {

		before(() => {
			cy.set_user_type('admin')
		})

		it.skip('Should have the ability for the survey feature to be enabled or disabled', () => {
		    
		})

		it.skip('Should have the ability for "Edit Survey Responses" feature to be enabled or disabled', () => {
		    
		})
	})
})
