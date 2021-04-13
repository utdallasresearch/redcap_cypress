console.log('Using existing script...')

import * as exports from '../core/data/15-entry_via_survey';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
