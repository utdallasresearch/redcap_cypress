console.log('Using existing script...')

import * as exports from '../core/project/11-status';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
