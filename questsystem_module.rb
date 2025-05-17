#==============================================================================
# ▶ Quest System Module
#    Author: CrypticTM
#==============================================================================

module QuestSystem
  # Quest States
  NOT_STARTED = 0
  IN_PROGRESS = 1
  COMPLETED = 2
  FAILED = 3

  # Define quests here: ID => { name:, description: }
  QUESTS = {
    1 => { name: "Find the Lost Sword", description: "Locate and retrieve the legendary lost sword." },
    2 => { name: "Save the Villager", description: "Help the villager trapped in the forest." }
  }

  # Initialize or return quest states hash
  def self.quest_states
    $game_variables[100] ||= {}
  end

  # Start a quest by ID
  def self.start_quest(id)
    return unless QUESTS.key?(id)
    quest_states[id] = NOT_STARTED if quest_states[id].nil?
    quest_states[id] = IN_PROGRESS
  end

  # Complete a quest by ID
  def self.complete_quest(id)
    return unless QUESTS.key?(id)
    quest_states[id] = COMPLETED
  end

  # Fail a quest by ID
  def self.fail_quest(id)
    return unless QUESTS.key?(id)
    quest_states[id] = FAILED
  end

  # Check quest state
  def self.quest_state(id)
    quest_states[id] || NOT_STARTED
  end

  # Get quest name by ID
  def self.quest_name(id)
    QUESTS[id] ? QUESTS[id][:name] : "Unknown Quest"
  end

  # Get quest description by ID
  def self.quest_desc(id)
    QUESTS[id] ? QUESTS[id][:description] : "No description."
  end
end

#==============================================================================
# ▶ Game_Interpreter Extension for Quest Script Calls
#==============================================================================

class Game_Interpreter
  # Start quest: call script 'start_quest(1)'
  def start_quest(id)
    QuestSystem.start_quest(id)
  end

  # Complete quest: call script 'complete_quest(1)'
  def complete_quest(id)
    QuestSystem.complete_quest(id)
  end

  # Fail quest: call script 'fail_quest(1)'
  def fail_quest(id)
    QuestSystem.fail_quest(id)
  end

  # Check quest state: call script 'quest_state(1)'
  def quest_state(id)
    QuestSystem.quest_state(id)
  end
end
