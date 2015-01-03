assert = chai.assert

describe 'deck', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()

  describe 'hit', ->
    it 'should give the last card from the deck', ->
      lastCard = deck.last()
      assert.strictEqual deck.length, 50
      hand.hit()
      assert.strictEqual lastCard, hand.last()
      assert.strictEqual deck.length, 49

  describe 'three players', ->
    it 'should deal 8 cards', ->
      hand2 = deck.dealPlayer()
      hand3 = deck.dealPlayer()
      hand4 = deck.dealDealer()
      assert.strictEqual deck.length, 44


