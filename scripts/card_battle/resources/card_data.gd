class_name CardData extends Resource

enum CardType { MINION, SPELL }
enum MinionKeyword { NONE, TAUNT, RUSH }

@export var card_id: int
@export var card_name: String
@export var card_type: CardType
@export var mana_cost: int
@export var attack: int = 0
@export var health: int = 0
@export var description: String = ""
@export var keyword: MinionKeyword = MinionKeyword.NONE

## Spell effects
@export var spell_damage: int = 0
@export var spell_heal: int = 0
@export var spell_draw: int = 0

## Battlecry effects
@export var battlecry_damage: int = 0
@export var battlecry_draw: int = 0

## Combat animation
@export var attack_animation: String = "1H_Melee_Attack_Chop"
@export var is_ranged: bool = false

## Visuals
@export var card_art: Texture2D
@export var kaykit_model_path: String = ""
