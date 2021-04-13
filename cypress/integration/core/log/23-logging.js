describe('Logging', () => {

	before(() => {
		cy.set_user_type('standard')
	})

	it.skip('Should have the ability to export the logs to a CSV file', () => {

	})

	describe('Log of User Actions', () => {

		it.skip('Should keep a record of the time / date of user actions', () => {
			
		})

		it.skip('Should keep a record of when a Data Export is performed', () => {

		})

		it.skip('Should keep a record of E-signature events', () => {

		})

		it.skip('Should keep a record of changes to project instruments (Manage / Design)', () => {

		})

	 	describe('Data Recorded', () => {

	    	it.skip('Should keep a record of the username who performed the action', () => {

	    	})

			it.skip('Should keep a record of the specific data change made', () => { 

			})

	    	describe('Updated Data', () => {

	    		it.skip('Should keep a record of the new value for an updated record', () => {

	    		})

	    		it.skip('Should keep a record of the new value for an updated E-signature', () => {

	    		})

	    		it.skip('Should keep a record of the new value for lock/unlock actions', () => {

	    		})

	    	})

    		it.skip('Should keep a record of the fields exported', () => {

    		})

	    })

		describe('Changes to Records', () => {

		    it.skip('Should keep a record of all create actions', () => {
	            
		    })

		    it.skip('Should keep a record of all update actions', () => {
		            
		    })

		    it.skip('Should keep a record of all delete actions', () => {
		            
		    })

		    it.skip('Should keep a record of all record locks', () => {
		            
		    })

		    it.skip('Should keep a record of all record unlocks', () => {
		            
		    })
		   
		})

		describe('Changes to User Roles', () => {

		    it.skip('Should keep a record of all created user roles', () => {
		            
		    })

		    it.skip('Should keep a record of all updated user roles', () => {
		            
		    })

		    it.skip('Should keep a record of all deleted user roles', () => {
		            
		    })
		})

		describe('Changes to Individual User Permissions', () => {

		    it.skip('Should keep a record of all created user permissions', () => {
		            
		    })

		    it.skip('Should keep a record of all updated user permissions', () => {
		            
		    })

		    it.skip('Should keep a record of all deleted user permissions', () => {
		            
		    })
		})	

	})

	describe('Filtering Options', () => {

		describe('By Event Type', () => {

			it.skip('Should allow filtering on ALL Event Types (excluding Page Views)', () => {

			})

			it.skip('Should allow filtering by Data Export type', () => {

			})

			it.skip('Should allow filtering by Manage/Design type', () => {

			})

			it.skip('Should allow filteirng by User or Role (created-updated-deleted)', () => {

			})

			it.skip('Should allow filtering by Record (created-updated-deleted)', () => {

			})

			it.skip('Should allow filtering by Record (created only)', () => {

			})

			it.skip('Should allow filtering by Record (updated only)', () => {

			})

			it.skip('Should allow filtering by Record (deleted only)', () => {

			})

			it.skip('Should allow filtering by Record locking and e-signatures', () => {

			})

			it.skip('Should allow filtering by Page Views', () => {

			})	
		})

		describe('By Specific Username', () => {

			it.skip('Should allow filtering by Username (all users for a given study selectable)', () => {

			})	

		})

		describe('By Specific Record', () => {

			it.skip('Should allow filtering by Record (all records for a given study selectable)', () => {

			})				

		})

	})
})
