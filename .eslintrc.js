module.exports = {
  root: true,
  extends: [
    'eslint:recommended',
    'jquery'
  ],
  env: {
    browser: true,
    commonjs: true,
    jquery: true,
    es6: true
  },
  parserOptions: {
    sourceType: 'module'
  },
  rules: {
    quotes: [
      'error',
      'single'
    ],
    'no-unused-vars': [
      'error',
      {
        'args': 'all',
        'argsIgnorePattern': '^_'
      }
    ],
    camelcase: [
      'error',
      {
        'properties': 'never'
      }
    ]
  },
  overrides: [
    {
      files: [ '*.ts' ],
      parser: '@typescript-eslint/parser',
      plugins: [
        '@typescript-eslint'
      ],
      extends: [
        'plugin:@typescript-eslint/eslint-recommended',
        'plugin:@typescript-eslint/recommended'
      ],
      rules: {
        '@typescript-eslint/no-explicit-any': 'off'
      }
    }
  ]
};
