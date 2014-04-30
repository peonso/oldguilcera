----------------------------
--  Config file for serv  --
----------------------------

-- ip
-- the ip the server should redirect too
-- don't remove ""
ip = "127.0.0.1"

--------------- HOTS CONFIGS ------------------

-- Afk Time to be kicked
kicktime = 15

-- GM Can Kill players and monsters?
GMKiller = "no"

-- yes - reduce time to hp/hp up (work only with two second+ to up hp/mp)
-- no - heal will be duplicated
lifering = "yes"

-- {RED Skull,White Skull,Unjust Leave}
-- 1 = 1 min
LeaveSkull = {"120","5","1"}

-- Kick players already logged?
cankick = "yes"

-- 40 + (2*playerlevel)
BohSpeed = {"100","0"}

---------- Acc Maker------------
life = 185
mana = 35
exp =  4200
level = 8
cap = 470
maglevel = 1
spawnx = 224
spawny = 229
spawnz = 7
masterx = 224
mastery = 229
masterz = 7
maker = "Guilcera God"
-- SKills --
skills = {"10","10","10","10","10","10"}
-- yes if you are using acc-maker or if your php don't give items :P
giveitems = "no"
--- Items ---
slotbackpack = 1987
slotarmor = 2467
slotleft = 2448
slotright = 2512
slotlegs = 2469
slothead = 2461
slotnecklace = 2129
slotfeet = 2643
-- Items Backpack --
-- max 4 items
-- {id1,count1,id2,count2,id3,count3,id4,count4}
itemsbackpack = {"","","","","","","",""}
---------------------------------

-- Learn spells
learnspell = "no"

-- House Rent
housetime = 777777777777777777777777777777777777777
housedepot = 1

-- Rook system
rooksystem = "no"

-- Main Temple Pos
mainx = 224
mainy = 229
mainz = 7

-- Rook Temple Pos to Noobs lvl 6 back to rookguard
rookx = 224
rooky = 229
rookz = 7

-- Delay to decay 1 light lvl of the spell
-- {utevo lux, gran lux, vis lux}
luxlvl = {"7","10","13"}
-- 1 = 1 min
decayLuxLevel = 10

-- PVP ENFORCED with skulls?
pvpenfwithskulls = "no"

-- how much points of life,mana,cap do you get when advancing
-- {no-voc, sorcerer, druid, paladin, knight}
capgain = {"10", "10", "10", "20", "25"}
managain = {"5", "30", "30", "15", "5"}
hpgain = {"5", "5", "5", "10", "15"}

-- Cap System
capsystem = "yes"

-- Muted System
mutedsystem = "yes"
mutedtime = 1

-- World Name
worldName = "Guilcera"

-- Auto Invasion Max 4 invasions
-- invasion {1,2,3,4}
invasion = {"","","",""}

-- Parcel City
-- depotid {1,2,3,4,5,6,7,8}
city = {"peonsville","taumel","dodoma","cona","xanadu","marinia","caralin","turim"}

-- Number max of players in vip of the free-accounts
freeviplist = 40

-- Number max of players in vip of the premmy-accounts
premmyviplist = 60

-- Everybody can use premmy outfits?
premoutfit = "yes"

-- Price of the Premmium Account
precopremmy = 10000

-- Premmy Days by date (pela data)
-- 1 = 1 seg
-- default is: 7*24*60*60 = 7 days
premmytime = 7*24*60*60

-- Price of the promotion 1 = 1gp
precopromotion = 10000

-- Vocations promoteds Names
vocationsPromoteds = {"a master sorcerer", "a elder druid", "a royal paladin", "a elite knight"}

-- Se o player perder a premmy em uma cidade de premmium
-- if the player lose your premmy in an city of the premmium accounts, back to?
-- voltar para cidade normal
kickpremcity = {"224","229","7"}

-- Auto Healer 1/1 mp/hp every second?
autohpmp = "no"

-- OBS: if you want use this form bellow put autohpmp = "no"

-- mp/hp rook(NO Vocation)
rook = {"1","1"}

-- sorcerers and druids MP/HP
-- {mp,hp,promotedmp,promotedhp,timemp,timehp}
sd = {"5","2","5","3","2","2"}

-- MP\hp pally
pa = {"3","4","4","4","2","2"}

-- kina
ki = {"2","5","3","5","2","2"}

-- PVP Team Acc 1/1 and 2/2
team = "no"

-- how x Skills of tibia global?
-- 1 = 1x
speedskills = 5

-- how x ml of tibia global?
-- 1 = 1x
speedml = 3

-- Die Percent
-- 1 = 1%
diepercent = 3

-- how x exp of tibia global?
-- 1 = 1x
multiexp = 5

-- how many unjustified to be banned?
pkban = 10

-- Player banned time?
-- 1 = 1 second
-- default is: 2*24*60*60 (2 days)
bantime = 2*24*60*60

-- exhausted time in ms (1000 = 1sec)
exhaustedheal = 1900

-- Block Multi-Clients?
antimc = "no"

-- One character for account?
oneplayerforacc = "no"

-- how many summons player can have?
maxsummons = 2

-- summons for sorc/druid only = no, for all vocations = yes
summonsallvoc = "no"

-- Formulas de Attack com qualquer arma
-- Forms of attacks with any weapon
-- Full Attack,Balanced,Full Defense
attackforms = {"2.2", "1.1", "0.6"}

-- Formulas de Defesa do Shield (NÃO INCLUI ARMADURA)
-- Forms of Defense of the Shield (NO IS INCLUDED ARMOR)
-- Full Attack,Balanced,Full Defense
defenseforms = {"0.5", "0.7", "1.0"}

-- Damage Form/x
-- Knight, Paladin
-- Default - {"2.0","1.5"}
dmg = {"2.0","1.5"}

-- Saving Players,Houses,etc...
-- 1 = 1 minute
saveserver = 1

-- default is from (2*lvl+3*mlvl)*0.24 to (2*lvl+3*mlvl)*0.55
-- 0.24 min dmg, 0.55 max dmg
burstarrowdmg = {"2.0", "3.0", "0.24", "0.55"}
-----------------------------------------------


---------------- CVS CONFIGS -------------------
-- datadir
datadir = "data/"

-- map
-- sets what map to load, if sql, determines the sql map
map = "data/world/guilcera.otbm"

-- mapkind
-- OTBM, SQL , XML for OTX maps and BIN to OTM Maps
-- Sorry, sql don't working yet..
mapkind = "OTBM"

-- sourcedata
-- SQL for acc/player info from SQL, XML for acc/player info from XML
-- Sorry, sql don't working yet..
sourcedata = "XML"

-- loginmsg
-- the message the player gets when he logs in
loginmsg = "Welcome to Guilcera."

-- port
-- the port otserv listens on
-- don't remove ""
port = "7171"

-- servername
-- name of our server
servername = "Guilcera"

-- ownername
-- name of the owner of our server
ownername = "peonso"

-- owneremail
-- email of the owner of our server
owneremail = "nobody@tibia.de"

-- url
-- the url for more server info
url = "http://Nothing.org"

-- location
-- the location of the server
location = "Brazil"

-- motd
-- The messagebox you sometimes get before you choose characters
-- not working yet
motd = "Guilcera Server 3.2.3, using HoTs."
-- don't remove ""
motdnum="1"

-- use md5 passwords for accounts, yes/no
md5passwords = "no"

-- world type. options: pvp, no-pvp, pvp-enforced
worldtype = "pvp"

-- max number of players allowed
-- don't remove ""
maxplayers = "200"

-- exhausted time in ms (1000 = 1sec)
exhausted = 1900

-- how many ms to add if the player is already exhausted and tries to cast a spell (1000 = 1sec)
exhaustedadd = 100

-- how long does the player has to stay out of fight to get pz unlocked in ms (1000 = 1sec)
pzlocked = 30*1000

-- allow multiple logins of the same char
allowclones = 0

-- vocation names
vocations = {"a sorcerer", "a druid", "a paladin", "a knight"}

--- SQL part
sql_host = "127.0.0.1"
sql_user = "root"
sql_pass = ""
sql_db   = "otserv"

--- SQL MAP part
sqlmap = "test_map"
map_host = "127.0.0.1"
map_user = "root"

----------------------------
