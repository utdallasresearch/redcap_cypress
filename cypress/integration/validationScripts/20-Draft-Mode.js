console.log('Using existing script...')

import * as exports from '../core/post-production/20-draft_mode';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
