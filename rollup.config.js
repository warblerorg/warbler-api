import nodeResolve from 'rollup-plugin-node-resolve';
import commonjs from 'rollup-plugin-commonjs';
import copy from 'rollup-plugin-cpy';
const { absolutePath } = require('swagger-ui-dist');
const { join } = require('path');

/** @type {import('rollup').RollupOptions} */
const config = {
    input: 'ui/index.js',
    output: {
        file: 'public/index.js',
        format: 'esm',
        sourcemap: true,
    },
    plugins: [
        copy({
            files: [
                join(absolutePath(), '*.@(css|png)'),
                'ui/index.html',
                'swagger.yaml',
            ],
            dest: 'public',
            options: { verbose: true },
        }),
        commonjs(),
        nodeResolve(),
    ],
};

export default config;
