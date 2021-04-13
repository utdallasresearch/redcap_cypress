console.log('Using existing script...')

import * as exports from '../core/data/17-compare';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
