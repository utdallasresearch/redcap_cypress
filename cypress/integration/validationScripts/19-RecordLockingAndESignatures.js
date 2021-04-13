console.log('Using existing script...')

import * as exports from '../core/data-integrity/19-record_locking_e_sig';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
