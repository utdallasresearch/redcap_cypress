console.log('Using existing script...')

import * as exports from '../core/project/12-security_settings';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
