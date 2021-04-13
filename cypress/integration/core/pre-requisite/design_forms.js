describe('Design Forms using Data Dictionary & Online Designer', () => {

	before(() => {
		//Reset the projects back to what they should be
		cy.mysql_db('projects/pristine')
		
	})

    describe('Online Designer', () => {

    	before(() => {
    		cy.set_user_type('standard')
			
			//Visit Classic Database 
			cy.visit_version({page: 'Design/online_designer.php', params: "pid=13"})
    	})


		it.skip('Should contain Project Setup permisisons for current user', () => {


		})

		it.skip('Should show the project without surveys', () => {

		})

		it ('Should show the project in development mode', () => {


		})

		it.skip('Should show the appropriate options for viewing and designing your data collection instruments', () => {
			// Online Designer
			// Data Dictionary
			// REDCap Shared Library
			// Download PDF of all instruments
			// Download current data dictionary
			// Check for identifiers
		})

		describe('Data Collection Instruments', () => {

			it.skip('Should allow a new instrument to be created', () => {

			})

			it.skip('Should allow an instrument to be renamed', () => {

			})

			it.skip('Should allow an instrument to be deleted', () => {

			})

			it.skip('Should allow instruments to be reordered', () => {

			})

			describe('Field Types', () => {


				it.skip('Should contain all of expected field types', () => {
					// Text Box
					// Notes Box
					// Calculated Field
					// Multiple Choice – Drop Down
					// Multiple Choice – Radio Buttons
					// Checkboxes
					// Signature
					// File Upload
					// Descriptive Text
					// Begin New Section				
				})

				it.skip('Should not allow invalid names', () => {
				
				})

				it.skip('Should allow reordering of fields', () => {
					
				})

				it.skip('Should allow renaming of a field', () => {
					
				})

				it.skip('Should allow copying of a field', () => {
					
				})

				it.skip('Should allow a field to be marked as an identifier', () => {
					
				})

				describe('Text Box', () => {

					it.skip('Should allow the creation of this field type', () => {

					})

				})

				describe('Notes', () => {

					it.skip('Should allow the creation of this field type', () => {

					})

				})

				describe('Calculated Field', () => {

					it.skip('Should allow the creation of this field type', () => {

					})

				})

				describe('Calculated Field', () => {

					it.skip('Should allow the creation of this field type', () => {

					})		

				})

				describe('Multiple Choice', () => {

					describe('Dropdown', () => {
						it.skip('Should allow the creation of this field type', () => {

						})		

						it.skip('Should automatically populate raw values for choices', () => {

						})
					})

					describe('Radio', () => {
						it.skip('Should allow the creation of this field type', () => {

						})	

						it.skip('Should automatically populate raw values for choices', () => {

						})	
					})
					
				})

				describe('Checkboxes', () => {

					it.skip('Should allow the creation of this field type', () => {

					})	

					it.skip('Should automatically populate raw values for choices', () => {

					})

				})

				describe('Signature', () => {

					it.skip('Should allow the creation of this field type', () => {

					})	

				})


				describe('File Upload', () => {

					it.skip('Should allow the creation of this field type', () => {

					})	

				})

				describe('Descriptive Text', () => {
					
					it.skip('Should allow the creation of this field type', () => {

					})	

					it.skip('Should allow an attached image', () => {

					})	


					it.skip('Should allow an attached audio clip', () => {

					})	

				})

				describe('Begin New Section', () => {

					it.skip('Should allow the creation of this field type', () => {

					})	

					it.skip('Should not allow this to be the first field of the form', () => {

					})	

				})
			})
		})
    })

	describe ('Data Dictionary', () => {

		it ('Should contain a Data Dictionary that matches the initial expectation', () => {

		})

		it ('Should add a new field to the project if you contribute a new row to the Data Dictionary file', () => {
			
		})

	})
})
