def base_hash
  # Remember implicit return! We're returning this new Hash _without_ the
  # keyword "return." Nice and neat.
  { :railroads => {

    }}

end

def monopoly_with_second_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
  railroads = base_hash

  railroads[:railroads][:pieces] = 4
  railroads[:railroads][:rent_in_dollars] = {}
  railroads[:railroads][:names] = {}

  railroads
end

def monopoly_with_third_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
  railroads = monopoly_with_second_tier

  railroads[:railroads][:rent_in_dollars] = {
    :one_piece_owned => 25,
    :two_pieces_owned => 50,
    :three_pieces_owned => 100,
    :four_pieces_owned => 200
  }

  railroads[:railroads][:names] = {
    :reading_railroad => {},
    :pennsylvania_railroad => {},
    :b_and_o_railroad =>  {},
    :shortline_railroad => {}
  }
  railroads
end

def monopoly_with_fourth_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
  railroad = monopoly_with_third_tier

  railroad[:railroads][:names][:reading_railroad] = {
    :mortgage_value => 100
  }

  railroad[:railroads][:names][:pennsylvania_railroad] = {
    :mortgage_value => 200
  }
  railroad[:railroads][:names][:b_and_o_railroad] = {
    :mortgage_value => 400
  }
  railroad[:railroads][:names][:shortline_railroad] = {
    :mortgage_value => 800
  }

  railroad
end
