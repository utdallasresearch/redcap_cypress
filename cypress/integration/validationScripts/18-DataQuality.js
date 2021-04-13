console.log('Using existing script...')

import * as exports from '../core/data-integrity/18-data_quality';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
