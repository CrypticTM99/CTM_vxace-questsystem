# Quest System for RPG Maker VX Ace (By CrypticTM)

-----------------------
What this script does:
-----------------------
This is a lightweight quest system designed for RPG Maker VX Ace.
It allows you to:

- Define quests with IDs, names, and descriptions.
- Track quest states: Not Started, In Progress, Completed, and Failed.
- Use script calls to start, complete, or fail quests.
- Check quest states in conditional branches.
- Handle quest progression through a common event running in parallel.

The system stores quest data in a game variable, keeping progress persistent.

-----------------------
How to install:
-----------------------
1. Open your RPG Maker VX Ace project.
2. Go to the Script Editor and insert the Quest System script in the Materials section above Main.
3. Create a Common Event (e.g., "Quest Handler") and set it to Parallel.
4. Paste the provided common event commands into the event editor.
5. Save your project.

-----------------------
How to use:
-----------------------
- To start a quest, use this script call in an event:
  start_quest(quest_id)

- To complete a quest:
  complete_quest(quest_id)

- To fail a quest:
  fail_quest(quest_id)

- To check a quest state in a conditional branch, use this script condition:
  quest_state(quest_id) == QuestSystem::IN_PROGRESS

Replace 'quest_id' with the ID of your quest.

-----------------------
Notes & Tips:
-----------------------
- Quest data is stored in Game Variable 100 as a hash to maintain quest states.
- You can define your quests in the QuestSystem::QUESTS hash at the top of the script.
- Use switches and variables to trigger quest progress and completion checks inside the common event.
- This system is minimal and flexible — perfect for customization.
- You can expand this with a quest log window or integrate with your UI.
- The common event runs constantly in parallel, so be mindful of performance when adding complex logic.

-----------------------
Credits:
-----------------------
Script by CrypticTM  
RPG Maker VX Ace by Enterbrain, Inc.

Feel free to modify or redistribute the script, but please credit CrypticTM as the original author.
