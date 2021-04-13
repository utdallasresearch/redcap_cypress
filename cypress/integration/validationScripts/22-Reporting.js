console.log('Using existing script...')

import * as exports from '../core/post-production/22-reporting';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
