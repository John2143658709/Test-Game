--This file gets run when the game starts

player = newEntity(0)
    :setControlled()
    :spawn()
    :setPos(700, 500)
    :setHealth(90)

enemies = {}
for i = 1, 100 do
    enemies[i] = newEntity(1)
        :grantAI(1) --AI_WANDER
        :setPos(300, 500)
        :spawn()
end

table.insert(enemies, newEntity(1):grantAI(2):spawn()) --AI_CHASE

enemies[1]:unspawn()
enemies[55]:unspawn()
enemies[101]:unspawn()

--Old C Code:
-- pent player = newEntity(0);
-- spawnEntity(player);
-- setControlledEntity(player);

-- for(int i = 0; i < 100; i++){
    -- pent e = newEntity(1);
    -- grantAI(e, AI_WANDER);
    -- spawnEntity(e);
-- }

-- for(int i = 0; i < 1; i++){
    -- pent e = newEntity(1);
    -- grantAI(e, AI_WANDER);
    -- spawnEntity(e);
-- }
