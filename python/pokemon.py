class Pokemon:
    def __init__(self, name, p_type, level, max_health, current_health):
        self.name = name
        self.p_type = p_type
        self.level = level
        self.max_health = max_health
        self.current_health = current_health
        
    # def lose_health(self, enemy):
    #     self.current_health -= enemy.attack(enemy)
    #     print(f"{self.name} now has {self.current_health} health.")
    
    def gain_health(self):
        if self.current_health <= self.max_health - 50:
            self.current_health += 50
        else:
            self.current_health = self.max_health
        print(f"Using potion, {self.name} now has {self.current_health} health.")
    
    def knocked_out(self):
        if self.current_health == 0:
            pass
    
    def revive(self):
        print(f"{self.name} get revived, now has {self.current_health} health.")
    
    def attack(self, enemy):
 
        if self.p_type == "normal":
            if enemy.p_type in ["rock", "steel"]:
                dmg = self.level*0.5
            elif enemy.p_type in ["ghost"]:
                dmg = 0
            else:
                dmg = self.level
        if self.p_type == "fire":
            if enemy.p_type in ["fire", "water", "rock", "dragon"]:
                dmg = self.level*0.5
            elif enemy.p_type in ["grass", "ice", "bug", "steel"]:
                dmg = self.level*2
            else:
                dmg = self.level
        if self.p_type == "water":
            if enemy.p_type in ["water", "grass", "dragon"]:
                dmg = self.level*0.5
            elif enemy.p_type in ["fire", "ground", "rock"]:
                dmg = self.level*2
            else:
                dmg = self.level
        if self.p_type == "electric":
            if enemy.p_type in ["electric", "grass", "dragon"]:
                dmg = self.level*0.5
            elif enemy.p_type in ["water", "flying"]:
                dmg = self.level*2
            elif enemy.p_type in ["ground"]:
                dmg = 0
            else:
                dmg = self.level
        if self.p_type == "grass":
            if enemy.p_type in ["fire", "grass", "poison", "grass", "bug", "dragon", "steel"]:
                dmg = self.level*0.5
            elif enemy.p_type in ["water", "ground", "rock"]:
                dmg = self.level*2
            else:
                dmg = self.level
        if self.p_type == "ice":
            if enemy.p_type in ["fire", "water", "ice", "steel"]:
                dmg = self.level*0.5
            elif enemy.p_type in ["grass", "ground", "flying"]:
                dmg = self.level*2
            else:
                dmg = self.level
        if self.p_type == "fighting":
            if enemy.p_type in ["poison", "flying", "psychic", "bug", "fairy"]:
                dmg = self.level*0.5
            elif enemy.p_type in ["normal", "ice", "rock", "dark", "steel"]:
                dmg = self.level*2
            elif enemy.p_type in ["ghost"]:
                dmg = 0
            else:
                dmg = self.level
           
        print(f"{self.name} just attacked {enemy.name}, dealt {dmg} dmg")
        enemy.current_health -= dmg
              
              
              
class Trainer:
    def __init__(self, name, my_potion, my_pokemon, my_pokemon_active):
        self.name = name
        self.my_potion = my_potion
        self.my_pokemon = my_pokemon
        if my_pokemon_active in my_pokemon:
            self.my_pokemon_active = my_pokemon_active
        else:
            self.my_pokemon_active = None
 
    def use_potion(self):
        self.my_potion -= 1
        self.my_pokemon_active.gain_health()
    
    def attack(self, enemy_active):
        self.my_pokemon_active.attack(enemy_active)
 
    def pokemon_switch(self, bringing_pokemon):
        if bringing_pokemon in self.my_pokemon:
            self.my_pokemon_active = bringing_pokemon
        else:
            self.my_pokemon_active = None
        print(f"{self.name} just switched pokemon to {bringing_pokemon.name}")
              
poke_A = Pokemon("a", "fighting", 25, 200, 170)
poke_C = Pokemon("c", "grass", 34, 360, 300)
poke_D = Pokemon("d", "electric", 32, 345, 345)
 
 
trainer_A = Trainer("A", 6, [poke_A], poke_A)
trainer_B = Trainer("B", 3, [poke_C, poke_D], poke_C)
 
 
 
 
trainer_A.attack(trainer_B.my_pokemon_active)
print(poke_C.current_health)
trainer_B.use_potion()
trainer_B.pokemon_switch(poke_D)

