assert = chai.assert

describe "hand constructor", ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()

  it "should create a two card hand", ->
    # assert.strictEqual collection.length, 52
    assert.strictEqual hand.length, 2

  # it 'creates an AK?', ->
  #   aceKing = new Hand ([0,52], @deck)
  #   console.dir(aceKing)
