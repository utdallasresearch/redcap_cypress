describe('Manage Project Creation, Deletion, Settings', () => {

	before(() => {
		cy.set_user_type('standard')
	})

	describe('User Interface - General', () => {

		it.skip('Should have the ability to create new projects from a blank slate', () => {

		})

		it.skip('Should have the ability to customize / modify existing Project Title', () => {

		})

		it.skip('Should have the ability to designate the purpose of the project', () => {

		})

		describe('Copy Functionality', () => {

			it.skip('Should have the ability to copy the project with neither data nor users included', () => {

			})

			it.skip('Should have the ability to copy the project with data included but without users', () => {

			})

			it.skip('Should have the ability to copy the project with both data and users included', () => {

			})
		})		
	})

	describe('User Interface - Longitudinal Project Settings', () => {

		it.skip('Should have the ability to enable and disable Longitudinal Data Collection', () => {

		})

		it.skip('Should have the ability to designate data collection instruments for defined events for each arm', () => { 

		})

		it.skip('Should have the ability to define unique event schedules for each arm', () => { 

		})

		it.skip('Should have the ability to create repeating events and instruments', () => { 

		})

		it.skip('Should require administrator approval to delete events for longitudinal projects while in Production mode', () => { 

		})		
	})

	describe('User Interface - Survey Project Settings', () => {

		it.skip('Should have the ability to enable and disable survey functionality at the project level', () => { 

		})

		it.skip('Should have the ability to enable and disable each data collection instrument in a project as a survey', () => { 

		})

		it.skip('Should have the ability to set the survye status to active or offline', () => { 

		})

		it.skip('Should have the ability to create repeating surveys', () => { 

		})		
	})

	describe('User Interface - Survey distribution', () => {

		it.skip('Should have the ability to create a public survey link when the survey is in the first instrument position', () => { 

		})

		it.skip('Should have the ability to create a designated email field', () => { 

		})
		
	})

	describe('Control Center', () => {

		before(() => {
			cy.set_user_type('admin')
		})

		it.skip('Should have the ability to limit creation of new projects to administrators', () => {

		})

		it.skip('Should have the ability to limit the moving of projects to production to administrators', () => {

		})

		it.skip('Should have the ability to enable users to edit survey responses', () => {

		})

		it.skip('Should have the ability to enable Draft Mode changes to be automatically approved under certain conditions', () => {

		})

		it.skip('Should have the ability to limit adding or modifying events and arms while in Production mode to administrators', () => {

		})
	})

})
