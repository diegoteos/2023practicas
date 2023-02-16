module.exports = {
    env: {
        browser: true,
        es2021: true,
        jquery: true
    },
    extends: 'standard',
    plugins: [
        '@sweetalert2/eslint-config'
    ],
    overrides: [],
    parserOptions: {
        ecmaVersion: 'latest'
    },
    rules: {
        indent: [
            'error',
            4
        ]
    }
}
