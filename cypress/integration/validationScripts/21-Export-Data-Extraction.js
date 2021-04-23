console.log('Using existing script...')

import * as exports from '../core/post-production/21-export_data';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
