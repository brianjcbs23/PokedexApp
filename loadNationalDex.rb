require 'sqlite3'

FILENAME = "Pokemon DB - National Dex.csv"
DBNAME = "Pokemon.sqlite"

DB = SQLite3::Database.new(DBNAME)
FILE = File.new(FILENAME)
I = "INSERT INTO Pokemon (NationalDex, Name, Type1, Type2, HP, Attack, Defense, SpAttack, SpDefense, Speed, CatchRate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

lines = FILE.each_line
lines.next
lines.each do |line|
    v = line.split(',')
    DB.execute(I, v[0], v[1], v[2], v[3], v[4], v[5], v[6], v[7], v[8], v[9], v[10])
end

FILE.close
DB.close
