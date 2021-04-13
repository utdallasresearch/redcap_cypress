// ***********************************************************
// This example plugins/index.js can be used to load plugins
//
// You can change the location of this file or turn off loading
// the plugins file with the 'pluginsFile' configuration option.
//
// You can read more here:
// https://on.cypress.io/plugins-guide
// ***********************************************************

// This function is called when a project is opened or re-opened (e.g. due to
// the project's config changing)
const shell = require('shelljs')
const sed_lite = require('sed-lite').sed
const fs = require('fs')

module.exports = (on, config) => {
  // `on` is used to hook into various events Cypress emits
  // `config` is the resolved Cypress config

  on('task', {

  	populateStructureAndData({redcap_version, advanced_user_info, source_location}) {

 		// DEFINE OTHER LOCATIONS
		var test_seeds_location = shell.pwd() + '/test_db';
		var seeds_location = test_seeds_location + '/seeds';

		var db_prefix_sql = test_seeds_location + '/structure_prefix.sql';
		var sql_path = source_location + '/redcap_v' + redcap_version + '/Resources/sql';
		var install_sql = sql_path + '/install.sql';
		var data_sql = sql_path + '/install_data.sql';

		if(advanced_user_info === "true"){
			var user_sql = seeds_location + '/user_info/advanced.sql';
		} else {
			var user_sql=`${seeds_location}/user_info/standard.sql`
		}

		var auth_sql = seeds_location + '/auth.sql';
		var rights_sql = seeds_location + '/rights.sql';
		var config_sql = seeds_location + '/config.sql';
		var projects_sql = seeds_location + '/projects.sql';

		//CREATE STRUCTURE FILE
		var structure_and_data_file = test_seeds_location + '/structure_and_data.sql';

		//REMOVE EXISTING STRUCTURE AND DATA FILE
		shell.rm(structure_and_data_file);

		//CREATE NEW STRUCTURE AND DATA FILE FROM REDCAP SOURCE
		shell.cat(db_prefix_sql).to(structure_and_data_file);
		shell.cat(install_sql).toEnd(structure_and_data_file);
		shell.cat(data_sql).toEnd(structure_and_data_file);

		shell.cat(user_sql).toEnd(structure_and_data_file);
		shell.cat(auth_sql).toEnd(structure_and_data_file);
		shell.cat(rights_sql).toEnd(structure_and_data_file);


		//DEMO PROJECT SEEDS
		for(i = 1; i<=12; i++){
			let demo_sql=`${sql_path}/create_demo_db${i}.sql`
			shell.cat(demo_sql).toEnd(structure_and_data_file)
		}

		shell.cat(projects_sql).toEnd(structure_and_data_file);
		shell.cat(config_sql).sed('REDCAP_VERSION_MAGIC_STRING', redcap_version).toEnd(structure_and_data_file);

		shell.ShellString('\nCOMMIT;').toEnd(structure_and_data_file);

		if (fs.existsSync(structure_and_data_file)) {
        	return true
      	}

		return false
  	},

  	generateMySQLCommand({mysql_name, host, port, db_name, db_user, db_pass, type, replace, include_db_name}) {
  		if(include_db_name){
  			var db_cmd=`${mysql_name} -h${host} --port=${port} ${db_name} -u${db_user} -p${db_pass}`;
  		} else {
	  		var db_cmd=`${mysql_name} -h${host} --port=${port} -u${db_user} -p${db_pass}`;
  		}
  		
		var sql=`${shell.pwd()}/test_db/${type}.sql`;
		var tmp=`${sql}.tmp`;

		//REPLACE ALL INSTANCES OF THE REDCAP_DB_NAME MAGIC CONSTANT
		var replace_db_name = sed_lite(`s/REDCAP_DB_NAME/${db_name}/g`);
		var new_file = replace_db_name(shell.cat(sql));

		//REPLACE ALL INSTANCES OF THE REPLACEMENT CALLED FOR IN THE COMMAND
		if(replace === ''){

		} else {
			var replace_string = sed_lite(`s/${replace}/g`);
			new_file = replace_string(new_file);
		}

		var final_file = new shell.ShellString(new_file);

		//OUTPUT TO TEMPORARY FILE
		final_file.to(tmp)

		//FORMULATE DB CMD
		if (fs.existsSync(tmp)) {
        	return { cmd: `${db_cmd} < ${tmp}`, tmp: tmp };
      	}		
  	},

  	deleteFile({path}){
		if (fs.existsSync(path)) {
        	shell.rm(path)

        	if (!fs.existsSync(path)) {
        		return true
        	}

        	return false
      	}			
  	},

	  readExcelFile (filename) {
		  // we must read the Excel file using Node library
		  // and can return the parsed list to the browser
		  // for the spec code to validate it
		  console.log('reading Excel file %s', filename)
		  console.log('from cwd %s', process.cwd())

		  return readXlsxFile(filename)
	  },

	  validateZipFile (filename) {
		  // now let's validate the downloaded ZIP file
		  // the validations depend on your projects. For this example
		  // we will check that the zip has two entries "a.txt" and "b.txt"
		  // and that the contents of the zipped file "a.txt" are the same as expected

		  // Tip: use https://github.com/cthackers/adm-zip to load and unzip the Zip contents
		  console.log('loading zip', filename)
		  const zip = new AdmZip(filename)
		  const zipEntries = zip.getEntries()

		  const names = zipEntries.map((entry) => entry.entryName).sort()

		  console.log('zip file %s has entries %o', filename, names)

		  // since this is plugins code we do not have built-in "expect" or "assert" functions
		  // instead we can throw an Error object which fails the "cy.task" command
		  if (names.length !== 2) {
			  throw new Error(`List of files ${names.join(',')} in ${filename} has extra files`)
		  }

		  // if there is no error, let's print positive message to the terminal
		  // to let the user know this validation was successful
		  console.log('✅ number of entries')

		  if (!names.includes('a.txt')) {
			  throw new Error(`List of files ${names.join(',')} in ${filename} is missing a.txt`)
		  }

		  console.log('✅ has a.txt entry')

		  if (!names.includes('b.txt')) {
			  throw new Error(`List of files ${names.join(',')} in ${filename} is missing b.txt`)
		  }

		  console.log('✅ has b.txt entry')

		  // confirm the contents of an entry inside the Zip file
		  // the entry is just a text file in our case
		  // let's grab its text content and compare to the expected string
		  const aEntry = zip.readAsText('a.txt').trim()
		  const expectedText = stripIndent`
      hello zip
      and Cypress recipes
      `

		  if (aEntry !== expectedText) {
			  console.error('Expected file a.txt to have text')
			  console.error('------')
			  console.error(expectedText)
			  console.error('------')
			  console.error('but it had text')
			  console.error('------')
			  console.error(aEntry)
			  console.error('------')
			  throw new Error(stripIndent`
          Invalid a.txt entry in the zip file ${filename}
          See terminal for more details
        `)
		  }

		  console.log('✅ a.txt file has the expected contents')

		  // any other validations?

		  return null
	  },

	  // a task to find one file matching the given mask
	  // returns just the first matching file
	  async findFiles (mask) {
		  if (!mask) {
			  throw new Error('Missing a file mask to search')
		  }

		  console.log('searching for files %s', mask)

		  const list = await globby(mask)

		  if (!list.length) {
			  console.log('found no files')

			  return null
		  }

		  console.log('found %d files, first one %s', list.length, list[0])

		  return list[0]
	  },

	  deleteFolder (folderName) {
		  console.log('deleting folder %s', folderName)

		  return new Promise((resolve, reject) => {
			  rmdir(folderName, { maxRetries: 10, recursive: true }, (err) => {
				  if (err) {
					  console.error(err)

					  return reject(err)
				  }

				  resolve(null)
			  })
		  })
	  },
  })  	

}
