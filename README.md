# Top News App

Top News is an iOS application built using Swift that allows users to stay updated with the latest news from around the world. The app fetches news articles from the [NewsAPI](https://newsapi.org), providing users with up-to-date information on various topics and categories.

## Features

- Browse news by country and category
- View headlines and detailed articles
- Smooth, responsive UI with table view for news articles

## Requirements

- iOS 14.0 or later
- Xcode 12 or later
- A valid [NewsAPI](https://newsapi.org) API key

## Setup and Installation

### Step 1: Clone the Repository

```bash
git clone https://github.com/anastasia-lobareva/TopNews.git
```

### Step 2: Get Your API Key
1. Visit [NewsAPI](https://newsapi.org).
2. Sign up or log in to your account.
3. Generate an API key from your account dashboard.

### Step 3: Insert Your API Key
1. Open the project in Xcode.
2. Navigate to the Constants.swift file located in the project directory.
3. Replace the placeholder string with your API key:

```swift
struct Constants {
    static let apiKey = "YOUR_API_KEY_HERE"
}
```

### Step 4: Build and Run the App
1. Open the project in Xcode.
2. Select your target device or simulator.
3. Build and run the app using Cmd + R.

## Usage

- On app launch, you'll be prompted to select a country for viewing news articles.
- Browse through the latest headlines.
- Tap on any article to view more details.

## Technologies Used

- Swift
- UIKit
- NewsAPI for fetching news articles
- `URLSession` for network requests
- `TableView` for displaying news articles

## License

This project is licensed under the MIT License.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue if you'd like to improve the app or report a bug.

## Acknowledgements

[NewsAPI](https://newsapi.org) for providing the news data.
