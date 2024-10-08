/**
 * @file GetColumnBug grammar for tree-sitter
 * @author Segev Finer <segev@swimm.io>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "get_column_bug",

  externals: $ => [
    $.char
  ],

  rules: {
    source_file: $ => repeat($.char),
  }
});
