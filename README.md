# FS25_extendedCrops

A global script mod for Farming Simulator 25 that adds Rye, Triticale, and Spelt to any map.

## ⚠️ Current Status: Work in Progress
**Note:** This mod is currently in development. As of the latest build, the mod is not being recognized/loaded by Farming Simulator 25. The code for the crops and the injection script is complete, but we are troubleshooting the loading issue.

## Features
This mod adds the following crops globally:
* **Rye**: Includes custom growth stages, balanced yields, and winter crop behavior.
* **Triticale**: A hybrid grain with adjusted physics and economy.
* **Spelt**: Specialized grain with unique growth periods and HUD icons.

All crops are integrated into standard categories like `GRAINHEADER`, `SOWINGMACHINE`, and `FARMSILO`, making them compatible with base game equipment.

## Technical Details
* **Global Injection**: Uses `ExtendedCrops.lua` to append fruit types and fill types to the game managers upon mission start.
* **FS25 Standards**: XML files follow the latest FS25 schemas including `cropCare` (rolling, liming, weeding) and seasonal growth patterns.
* **Optimized Foliage**: Uses base game distance maps (Barley/Wheat) to ensure high performance and stability.
## Known Issues
* The mod is not appearing in the in-game mod list or log as "Loaded".
* Potential conflicts or folder structure issues are being investigated.

## Contributing
If you have experience with global script injection in FS25 or spot an error in the `modDesc.xml` or folder structure that prevents the mod from loading, feel free to open an Issue or submit a Pull Request!
