local inspect = require"./inspect"

local function dummy(arg1, arg2) return true, arg1, arg2 end
local thread = coroutine.create(function()end)
local file = io.open(".")

print("=== string ===")
print(inspect("hello world"))

print("=== number ===")
print(inspect(5))
print(inspect(5.2))
print(inspect(-9))

print("=== boolean ===")
print(inspect(true))
print(inspect(false))

print("=== nil ===")
print(inspect(nil))

print("=== table ===")
print(inspect({[0]="zero", [-1] = "minus", "hellow", "world", true, 1, 2}))
print(inspect({bye = "hellow", hell="world", 1, 2, 3, 4, 5, 6}))
print(inspect({sub1 = {1,2,3}, sub2 = {bye = "hellow", hell="world"}, sub3 = {bye = "hellow", hell="world", 1, 2, 3}, 1, 2, 3}))

print(inspect({[{}]="table", [dummy] = "function", [thread]="thread", [file]="userdata", [true] = "boolean" }))

print("=== function ===")
print(inspect(function (arg1, arg2) return true, arg1, arg2 end))
print(inspect(pairs))
print(inspect(dummy))

print(inspect({function (arg1, arg2) return true, arg1, arg2 end}))
print(inspect({pairs}))
print(inspect({dummy}))

print("=== thread ===")
print(inspect(thread))
print(inspect({thread}))

print("=== userdata ===")
print(inspect(file))
print(inspect({file}))


file:close()