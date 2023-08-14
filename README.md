# FoodByte

## Overview

**FoodByte** is an iOS application developed in Swift using the **Model-View-Controller (MVC)** architectural pattern. It provides a seamless user experience for food ordering, allowing users to browse a list of available appetizers, view detailed item information, manage their account, and review order history. The project is built with modular components, emphasizing clean UI and efficient data management.

## Features

1. **Appetizer List**: Displays a list of possible appetizers, each with detailed previews and images.
2. **Orders**: Keeps a history of past orders for easy reference.
3. **Account**: A simple form that allows users to view and update their account details.

## Directory Structure

The following directory tree outlines the project structure and its main components:

```
  ├─ .idea/
  │  └─ modules.xml
  ├─ Appetizers/
  │  ├─ API/
  │  │  └─ NetworkManager.swift               # Handles network requests and API interactions.
  │  ├─ Assets.xcassets/                      # Asset catalog for managing images and colors.
  │  │  ├─ AppIcon.appiconset/                # App icon for FoodByte.
  │  │  ├─ asian-flank-steak.imageset/        # Image for a specific appetizer item.
  │  │  ├─ brandPrimary.colorset/             # Primary color for the app theme.
  │  │  └─ food-placeholder.imageset/         # Placeholder image for unavailable appetizers.
  │  ├─ Domain/
  │  │  ├─ APError.swift                      # Custom error handling for API calls.
  │  │  ├─ FoodByte.swift                     # Core business logic for the food items.
  │  │  └─ User.swift                         # Data model for managing user information.
  │  ├─ Preview Content/
  │  │  └─ Preview Assets.xcassets/           # Assets for SwiftUI previews.
  │  ├─ UI/
  │  │  ├─ Alert/
  │  │  │  └─ Alert.swift                     # Custom alert messages for the app.
  │  │  ├─ Screen/
  │  │  │  ├─ Modal/
  │  │  │  │  └─ FoodByteDetailView.swift     # Displays detailed appetizer information.
  │  │  │  ├─ AccountView.swift               # View for managing user account.
  │  │  │  ├─ FoodByteListView.swift          # List of available appetizers.
  │  │  │  ├─ LoadingView.swift               # A loading indicator view.
  │  │  │  └─ OrderView.swift                 # Displays order history.
  │  │  ├─ Widget/
  │  │  │  ├─ Button.swift                    # Custom button widget.
  │  │  │  ├─ DismissButton.swift             # Button to dismiss modal views.
  │  │  │  ├─ FoodByteListItem.swift          # UI component for a list item in the appetizer list.
  │  │  │  └─ RemoteImage.swift               # Displays images fetched from a URL.
  │  │  └─ Colors+Ext.swift                   # Extension for managing app color schemes.
  │  ├─ Utils/
  │  │  └─ String+Ext.swift                   # String extensions for utilities.
  │  ├─ ViewModel/
  │  │  ├─ AccountViewViewModel.swift         # ViewModel for managing account view logic.
  │  │  └─ FoodByteListViewVM.swift           # ViewModel for handling appetizer list data.
  │  ├─ FoodByteApp.swift                     # Main entry point for the SwiftUI app.
  │  └─ FoodByteTabView.swift                 # Tab view for navigating between screens.
  ├─ Appetizers.xcodeproj/                    # Xcode project configuration.
  ├─ .gitignore                               # File specifying which files to ignore in Git.
  └─ README.md                                # Project readme file.
```

## Installation

To run the project locally, you need:

- **macOS** with **Xcode** installed (version 13 or later)
- **Swift 5.5+**
  
Follow these steps to set up the project:

1. Clone the repository:

   ```bash
   git clone https://github.com/Pirate-Emperor/FoodByte.git
   ```

2. Open the `Appetizers.xcodeproj` in Xcode.

3. Ensure that the required assets and Swift files are correctly loaded.

4. Build and run the project on your simulator or iOS device.

## Usage

### Appetizer List

- Users can browse through the available appetizers.
- A tap on any appetizer opens a detailed view with additional information, including an image and description.

### Orders

- Displays a list of all past orders.
- Users can view past orders and their details for future reference.

### Account

- Users can manage their personal information by editing the account form.
- All changes are saved and updated for future sessions.

## API Integration

The **NetworkManager.swift** in the `API/` folder handles all API calls, fetching data from the server for appetizers, orders, and user account information. It includes error handling (`APError.swift`) to ensure smooth operations in case of network issues.

## UI Components

- The **FoodByteListItem.swift** manages the visual representation of individual appetizers in the list.
- The **AccountView.swift** provides a user interface for updating personal details.
- The **FoodByteDetailView.swift** presents detailed information for a selected appetizer.

## Custom Extensions and Utilities

The project includes several utility extensions and helper methods, such as **String+Ext.swift** for string manipulation and **Colors+Ext.swift** for managing color themes.

## ViewModel Architecture

This project uses ViewModel components to manage state and business logic. Examples include:

- **AccountViewViewModel.swift**: Handles all logic related to the account view, including form submission and data validation.
- **FoodByteListViewVM.swift**: Manages the fetching and display of appetizer data, ensuring a clean separation between the view and model layers.

## Contributing

Feel free to fork the repository, make changes, and submit pull requests. Contributions are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

**Pirate-Emperor**

[![Twitter](https://skillicons.dev/icons?i=twitter)](https://twitter.com/PirateKingRahul)
[![Discord](https://skillicons.dev/icons?i=discord)](https://discord.com/users/1200728704981143634)
[![LinkedIn](https://skillicons.dev/icons?i=linkedin)](https://www.linkedin.com/in/piratekingrahul)

[![Reddit](https://img.shields.io/badge/Reddit-FF5700?style=for-the-badge&logo=reddit&logoColor=white)](https://www.reddit.com/u/PirateKingRahul)
[![Medium](https://img.shields.io/badge/Medium-42404E?style=for-the-badge&logo=medium&logoColor=white)](https://medium.com/@piratekingrahul)

- GitHub: [Pirate-Emperor](https://github.com/Pirate-Emperor)
- Reddit: [PirateKingRahul](https://www.reddit.com/u/PirateKingRahul/)
- Twitter: [PirateKingRahul](https://twitter.com/PirateKingRahul)
- Discord: [PirateKingRahul](https://discord.com/users/1200728704981143634)
- LinkedIn: [PirateKingRahul](https://www.linkedin.com/in/piratekingrahul)
- Skype: [Join Skype](https://join.skype.com/invite/yfjOJG3wv9Ki)
- Medium: [PirateKingRahul](https://medium.com/@piratekingrahul)

---