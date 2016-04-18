/* eslint-disable */
var webpack = require('webpack');
var path = require('path');
var fs = require('fs');

module.exports = {
  target: 'node',
  cache: true,
  context: __dirname,
  debug: true,
  devtools: "source-map",
  entry:   ["./src/server.js"],

  output:  {
    path:     path.join(__dirname, "dist/server"),
    filename: "server.js"
  },

  plugins: [
    new webpack.optimize.DedupePlugin(),
    new webpack.optimize.OccurenceOrderPlugin(),
    // new webpack.optimize.UglifyJsPlugin()
  ],

  module: {
    loaders: [
      {include: /\.json$/, loaders: ['json-loader']},
      {
        test: /\.js?$/,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel', // 'babel-loader' is also a legal name to reference
        query: {
          presets: ['es2015']
        }
      }
  ]
  },

  resolve: {
    extensions: ["", ".json", ".jsx", ".js"],
    modulesDirectories: [
      "src", "node_modules"
    ]
  },

  node:    {
    __dirname: true,
    fs:        'empty'
  }

}
