require 'sqlite3'
require 'Math'

POKEBALL = {
    "pokeball" => 1,
    "greatball" => 1.5,
    "ultraball" => 2,
    "safariball" => 1.5,
    "levelball" => 1,
    "levelball<2" => 2,
    "levelball<4" => 4,
    "levelball>4" => 8,
    "lureball" => 1,
    "lureballFishing" => 3,
    "moonball" => 1,
    "moonballYes" => 4,
    "friendball" => 1,
    "loveball" => 1,
    "loveballYes" => 8,
    "heavyballLight" => -20,
    "heavyball" => 0,
    "heavyballHeavy" =>20,
    "heavyballReallyHeavy" => 30,
    "heavyballFat" => 40,
    "fastball" => 1,
    "fastballFast" => 4,
    
}

STATUS = {
    "sleep" => 2,
    "freeze" => 2,
    "paralyze" => 1.5,
    "poison" => 1.5,
    "burn" => 1.5
}

def catchRate(numbers)
    rate = numbers.rate
    max = numbers.max
    current = numbers.current
    ball = numbers.ball
    status = numbers.status

    a = (3 * max - 2 * current) * rate * ball * status / (3 * max )
    b = (1048560 / sqrt(sqrt((16711680 / a).floor).floor).floor)).floor
    p = a/255


end

def main()
    puts
end
