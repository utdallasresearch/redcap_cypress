console.log('Using existing script...')

import * as exports from '../core/development/10-data_access_groups';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);

