console.log('Using existing script...')

import * as exports from '../core/log/23-logging';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
