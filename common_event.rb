◆Comment：Quest System Handler
◆Script： # You can optionally do quest-specific logic here
◆
◆If：Script: quest_state(1) == QuestSystem::IN_PROGRESS
  ◆Comment：Check quest 1 progress, do something
  ◆Script： # Example: If player reaches a certain map or variable, complete quest
  ◆If：Variable [5] == 1
    ◆Script：complete_quest(1)
    ◆Text：None, Window, Bottom
    ：    ：Quest Completed: Find the Lost Sword!
  ◆End
◆End
◆
◆If：Script: quest_state(2) == QuestSystem::IN_PROGRESS
  ◆Comment：Check quest 2 progress, do something
  ◆If：Switch [10] == ON
    ◆Script：complete_quest(2)
    ◆Text：None, Window, Bottom
    ：    ：Quest Completed: Save the Villager!
  ◆End
◆End
