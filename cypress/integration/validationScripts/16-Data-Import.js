console.log('Using existing script...')

import * as exports from '../core/data/16-import';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
