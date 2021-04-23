console.log('Using existing script...')

import * as exports from '../core/project/13-my_projects';
Object.entries(exports).forEach(([name, exported]) => window[name] = exported);
