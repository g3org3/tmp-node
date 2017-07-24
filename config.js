'use strict'

// Deps
const Confidence = require('confidence')

// Main Config
const config = {
  projectName: '',
  env: process.env.NODE_ENV || 'development',
  port: process.env.APP_PORT || 1337,
  production: 'production',
  logConf: true
}

const store = new Confidence.Store(config)
module.exports = {
  config: store.get('/', { env: store.get('/env') }),
  get: (key, criteria) => store.get(key, criteria || {})
}
