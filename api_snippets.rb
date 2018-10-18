class API < Sinatra::Base
  def initialize
    @ledger = Ledger.new
    super() # rest of initialization from Sinatra
  end
end

# Later, caller do this:
app = API.new

class API < Sintra::Base
  def initialize(ledger:)
    @ledger = ledger
    super()
  end
end

# Later, callers do this:
app = API.new(ledger: Ledger.new)
def initialize(ledger: Ledger.new)
  @ledger = ledger
  super()
end

# Spedocode for what happens inside the API class:
#
result = @ledger.record('some' => 'data')
result.success?      # => Boolean
result.expense_id    # => a number
result.error_message # = > a string or nil
