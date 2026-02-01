print("Name: Naya Ramadan")
print("Project 2")
print("Title: Presentation")

local snacks = 0
local ladyangry = false
local hangup = false
local presentation = false
local gateopen = false
local guardhappy = false
local late = false
local foundsupplies = false
local siblinghelp = false
local isarrested = false
local tired = false

print("You missed the bus again. You would sleep in but this time, you have a super important presentation.")
print("1 - Call sibling.")
print("2 - Look around.")
print("3 - Sleep.")
print("4 - Run to school.")
io.write("> ")
local choice1 = tonumber(io.read())

if choice1 == 1 then
    print("Your sibling hung up on you... Total snacks: "..snacks)
    hangup = true
elseif choice1 == 2 then
    snacks = snacks + 5
    print("You found some snacks when you looked around! Total snacks: " .. snacks)
elseif choice1 == 3 then
    print("You can't sleep, you have a presentation!")
    tired = true
elseif choice1 == 4 then
    print("You're now running super late, you have to hurry!")
    late = true
else
    print("Invalid choice!")
end

if choice1 == 1 or  choice1 == 2 or  choice1 == 3 or  choice1 == 4 then
print("You're on Main St. Where should you run to now?")
print("1 - Bus Stop")
print("2 - Convenience Store")
print("3 - Park")
io.write("> ")
local choice2 = tonumber(io.read())

if choice2 == 1 then
    print("You see an old lady waiting at the bus stop.")
elseif choice2 == 2 then
    snacks = snacks + 5
    print("You found another 5 snacks in a random dumpster near the store. Total: " .. snacks)
elseif choice2 == 3 then
    print("You took a shortcut and end up at the bus stop with an old lady.")
else
    print("Invalid choice.")
end

if choice2 == 1 or  choice2 == 2 or choice2 == 3 then
print("The old lady at the bus stop has some snacks. What do you do while you wait?")
print("1 - Rob the lady.")
print("2 - Ask for info.")
print("3 - Ignore her.")
io.write("> ")
local choice3 = tonumber(io.read())

if choice3 == 1 then
    snacks = snacks + 30
    ladyangry = true
    print("You robbed her and got away quickly! Total snacks: " .. snacks)
elseif choice3 == 2 then
    ladyangry = false
    print("She tells you that the next bus is coming right now, and you begin to hop on.")
elseif choice3 == 3 then
    print("You see the bus in the distance and begin to step forward.")
    else
        print("Invalid choice.")
end
end

if choice3 == 1 or  choice3 == 2 or  choice3 == 3 then
print("You finally hop off the bus and make it to school with some time to spare. You're trying to find the best way to enter the school without being noticed. What do you do?")
print("1 - Jump the gate.")
print("2 - Bribe guard with snacks.")
print("3 - Walk to back door sneakily.")
io.write("> ")
local choice4 = tonumber(io.read())
if choice4 == 1 then
    if ladyangry == true then
        print("The lady from before turned out to be a security gaurd at school! She caught you, so you had to pay a fine.")
        isarrested = true
        print("Game over!")
    else
        gateopen = true
        print("You successfully jumped the gate!")
    end
elseif choice4 == 2 then
    if snacks >= 10 then
        snacks = snacks - 10
        guardhappy = true
        print("The guard was happy with the snacks and let you through. Remaining snacks: " .. snacks)
    else
        print("You don't have enough snacks to bribe the guard!")
    end
elseif choice4 == 3 then
    print("You sneak in through the back door successfully!")
else
    print("Invalid choice!")
end
end
