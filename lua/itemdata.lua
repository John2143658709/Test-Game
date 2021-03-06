return {
    {
        texture = loadTexture("brick.png"),
        cooldown = .5,
        baseDamage = 5,
        abiCost = 10,
        onUse = function(self)
            Bullet(1, self.player, self.player:facing() + .2);
            Bullet(1, self.player, self.player:facing());
            Bullet(1, self.player, self.player:facing() - .2);
        end,
    }, {
        texture = loadTexture("water.png"),
        cooldown = .3,
        baseDamage = 5,
        abiCost = 0,
        onUse = function(self)
            Bullet(0, self.player, self.player:facing());
        end,
    },
}
