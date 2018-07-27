describe "Rockstar grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-rockstar")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.rockstar")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.rockstar"
