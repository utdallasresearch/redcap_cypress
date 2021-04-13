console.log('Using existing script...')

import * as exports from '../core/data/14-entry_via_instrument';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
