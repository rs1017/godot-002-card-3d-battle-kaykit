# KayKit Card Battle Expansion Design Plan

Date: 2026-02-13
Format: Markdown (.md)
Images: stored in images/ and linked with relative paths
Data: stored in .csv files

---
## Page 1 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 2 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 3 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 4 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 5 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 6 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 7 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 8 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 9 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 10 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 11 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 12 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 13 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 14 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 15 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 16 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 17 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 18 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 19 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 20 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 21 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 22 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 23 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 24 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 25 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 26 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 27 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 28 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 29 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 30 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 31 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 32 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 33 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 34 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 35 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 36 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 37 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 38 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 39 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 40 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 41 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 42 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 43 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 44 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 45 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 46 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 47 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 48 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 49 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 50 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 51 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 52 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 53 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 54 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 55 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 56 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 57 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 58 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 59 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 60 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 61 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 62 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 63 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 64 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 65 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 66 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 67 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 68 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 69 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 70 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 71 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 72 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 73 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 74 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 75 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 76 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 77 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 78 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 79 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 80 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 81 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 82 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 83 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 84 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 85 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 86 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 87 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 88 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 89 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 90 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 91 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 92 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 93 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 94 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 95 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 96 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 97 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 98 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 99 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 100 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 101 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 102 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 103 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 104 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 105 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 106 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 107 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 108 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 109 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 110 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 111 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 112 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 113 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 114 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 115 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 116 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 117 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 118 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 119 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 120 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 121 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 122 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 123 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 124 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 125 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 126 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 127 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 128 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 129 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 130 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 131 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 132 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 133 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 134 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 135 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 136 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 137 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 138 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 139 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 140 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 141 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 142 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 143 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 144 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 145 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 146 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 147 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 148 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 149 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 150 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 151 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 152 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 153 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 154 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 155 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 156 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 157 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 158 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 159 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 160 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 161 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 162 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 163 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 164 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 165 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 166 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 167 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 168 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 169 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 170 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 171 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 172 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 173 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 174 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 175 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 176 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 177 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 178 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 179 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 180 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 181 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 182 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 183 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 184 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 185 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 186 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 187 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 188 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 189 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 190 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 191 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 192 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 193 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 194 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 195 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 196 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 197 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 198 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 199 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 200 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 201 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 202 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 203 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 204 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 205 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 206 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 207 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 208 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 209 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 210 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 211 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 212 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 213 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 214 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 215 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 216 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 217 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 218 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 219 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 220 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 221 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 222 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 223 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 224 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 225 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 226 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 227 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 228 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 229 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 230 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 231 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 232 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 233 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 234 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 235 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 236 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 237 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 238 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 239 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 240 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 241 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 242 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 243 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 244 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 245 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 246 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 247 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 248 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 249 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 250 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 251 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 252 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 253 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 254 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 255 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 256 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 257 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 258 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 259 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 260 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 261 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 262 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 263 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 264 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 265 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 266 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 267 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 268 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 269 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 270 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 271 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 272 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 273 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 274 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 275 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 276 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 277 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 278 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 279 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 280 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 281 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 282 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 283 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 284 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 285 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 286 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 287 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 288 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 289 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 290 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 291 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 292 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 293 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 294 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 295 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 296 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 297 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 298 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 299 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 300 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 301 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 302 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 303 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 304 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 305 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 306 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 307 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 308 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 309 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 310 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 311 - Main Page Benchmark

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 312 - Map and Bridge Control

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 313 - Turn Loop UX

### Reference Images
![Reference A](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)
![Reference B](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 314 - Deck and Card Rule Design

### Reference Images
![Reference A](./images/reference/screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg)
![Reference B](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 315 - Combat Formula

### Reference Images
![Reference A](./images/reference/screenshot_03_ss_346d2d960336e8093e2a6cf3a2648ddbce10e4b2.jpg)
![Reference B](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 316 - Win/Lose Direction

### Reference Images
![Reference A](./images/reference/screenshot_04_ss_d1dd61e5ce82e21e2b1637e8e0dceabb037bf58c.jpg)
![Reference B](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 317 - Animation Timing

### Reference Images
![Reference A](./images/reference/screenshot_05_ss_111e635c7f33fc47366f2c43139e333799fbaf04.jpg)
![Reference B](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 318 - Card Inventory UX

### Reference Images
![Reference A](./images/reference/screenshot_06_ss_06fa2fc78e91876b638fba5262a892d04fb06032.jpg)
![Reference B](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 319 - Character Description

### Reference Images
![Reference A](./images/reference/screenshot_07_ss_759e6021df563722cc938823e74624253b8cf2bc.jpg)
![Reference B](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---
## Page 320 - QA and Fun Validation

### Reference Images
![Reference A](./images/reference/screenshot_08_ss_1101dea05326bfc5ed7fec4bb87c2c1f7d50ad34.jpg)
![Reference B](./images/reference/screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- docs/ralph/planning/card_rules.csv
- docs/ralph/planning/deck_rules.csv
- docs/ralph/planning/combat_formula.csv
- docs/ralph/planning/map_design.csv
- docs/ralph/planning/character_profiles.csv
- docs/ralph/planning/animation_states.csv
- docs/ralph/planning/victory_defeat_flow.csv
- docs/ralph/planning/qa_fun_checklist.csv

---

