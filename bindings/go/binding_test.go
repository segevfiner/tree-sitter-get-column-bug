package tree_sitter_get_column_bug_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_get_column_bug "github.com/tree-sitter/tree-sitter-get_column_bug/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_get_column_bug.Language())
	if language == nil {
		t.Errorf("Error loading GetColumnBug grammar")
	}
}
