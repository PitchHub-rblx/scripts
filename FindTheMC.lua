local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/roblox-exploit-library/main/turtle%20library%20red%20version"))()
local window = library:Window("PitchHub - FindTheMC")
local locations = {"Aechotrice", "Alex", "Allay" , "Aerbear" , "Aermoa" , "Angel" , "Axolotl" , "BabyCamel" , "BabyCow" , "BabyDairyCow" , "BabyMooshroom" , "BabyOrangeCat" , "BabyPanda" , "BabyShorthairCat" , "BabyTraderLlama" , "BabyVillager" , "BabyWhiteCat" , "BabyWolf" , "BabyWoolyCow" , "Bat" , "Bee" , "BigSlime" , "BlackCat" , "BlackHorse" , "BlackSheep" , "Blaze" , "BlueSheep" , "BrownAxolotl" , "BrownCat" , "BrownHorse" , "BrownLlama" , "BrownRabbit" , "CalicoCat" , "Camel" , "Cat" , "CaveSpider" , "ChickenJockey" , "Chicken" , "Clownfish" , "Cod" , "ColdFrog" , "Cow" , "Creeper" , "CrossbowPiglin" , "DesertIronGolem" , "DiamondKeyGolem" , "Dolphin" , "Donkey" , "Drowned" , "DungeonPillager" , "Edison" , "ElderGuardian" , "Elephant" , "EnderCat" , "EnderDragon" , "EnderSlime" , "EnderVillager" , "EnderWarrior" , "EnderWolf" , "Enderman" , "Endermite" , "Entity303" , "Evoker" , "FancyChicken" , "FlyingCow" , "Fox" , "Frog" , "Ghast" , "GlowSquid" , "Goat" , "GoldAxolotl" , "GoldRabbit" , "GoldSheep" , "GoldenEnderman" , "GreenParrot" , "Guardian" , "Herobrine" , "Hoglin" , "Husk" , "InfectedZombieJockey" , "IronGolem" , "Jeb" , "KeyGolem" , "LightBlueSheep" , "LimeSheep" , "MagmaCube" , "MidnightChicken" , "Mimic" , "Mooshroom" , "MutantCreeper" , "MysteriousFigure" , "Null" , "Panda" , "Parrot" , "PersianCat" , "Phantom"  , "PhoenixMoa" , "Phyg" , "Pig" , "PiggyBank" , "Piglin" , "PiglinBrute" , "Pillager" , "PinkSheep" , "PolarBear" , "Pufferfish" , "PumpkinSnowGolem" , "RagdollCat" , "RainbowAxolotl" , "RainbowSheep" , "Ravager" , "RedParrot" , "RedSheep" , "Salmon" , "SandLlama" , "SandLlama" , "SandTraderLlama" , "SavannaVillager" , "Shark" , "Sheep" , "Sheepuff" , "ShulkerBox" , "SiameseCat" , "Silverfish" , "Skeleton" , "SkeletonHorse" , "SkeletonHorseman" , "Slime" , "Sniffer" , "SnowGolem" , "SnowyTundraGolem" , "Spider" , "SpiderJockey" , "Squid" , "Steve"  , "Stray" , "Strider" , "Tadpole" , "TargetDummy" , "Tempest" , "TradingVillager" , "Turtle" , "TuxedoCat" , "TuxedoRabbit" , "Vex" , "Villager" , "Vindicator" , "WanderingTrader" , "Warden" , "WarmFrog" , "WhiteHorse" , "WhiteRabbit" , "WhiteVillager" , "Wisp" , "Witch" , "Wither" , "WitherSkeleton" , "WitherSkeletonHorse" , "WitherSkeletonJockey" , "Wolf" , "Zephyr" , "Zoglin" , "Zombie" , "ZombieHorse" , "ZombiePiglin" , "ZombieVillager"         } -- Liste des emplacements

window:Toggle("items", false, function(bool)
    getgenv().item = bool

    while wait() do
        if getgenv().item == true then
            local me = game.Players.LocalPlayer.Character.HumanoidRootPart

            for _, locationName in pairs(locations) do
                local location = game.Workspace.Items:FindFirstChild(locationName)

                if location then
                    location.CFrame = me.CFrame
                end
            end
        end
    end
end)

window:Toggle("rebirth", false, function(bool)  -- you can change window to the ui you want the toggle in 
     getgenv().rebirth = bool
while wait(2) do
         if getgenv().rebirth == true then
game:GetService("ReplicatedStorage"):WaitForChild("ResetFolder"):WaitForChild("RebirthEvent"):FireServer()
end
end-- bool is true or false depending on the state of the toggle
end)

window:Toggle("jump", false, function(bool)  -- you can change window to the ui you want the toggle in 
     getgenv().jump = bool
while wait(1) do
         if getgenv().jump == true then
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end
end-- bool is true or false depending on the state of the toggle
end)
