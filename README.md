# 🧹 Mac Dev Scripts

A lightning-fast, drop-in Zsh toolkit for macOS. Currently features a single-command cleanup script to safely wipe React Native, Android, and iOS build caches, freeing up gigabytes of space and fixing broken Metro bundlers in seconds.

## 🚀 One-Line Installation

Open your macOS Terminal and paste this command. It securely downloads the script to a hidden file (`~/.rnclean.sh`) and configures your terminal to load it automatically:

```bash
curl -fsSL [https://raw.githubusercontent.com/sina3p2p/mac-dev-scripts/main/rnclean.sh](https://raw.githubusercontent.com/sina3p2p/mac-dev-scripts/main/rnclean.sh) -o ~/.rnclean.sh && echo 'source ~/.rnclean.sh' >> ~/.zshrc && source ~/.zshrc
```

## 🛠️ Usage

Once installed, simply navigate to your React Native project folder in your terminal and type:

```bash
rnclean
```

## 🗑️ What exactly does `rnclean` delete?

When you run `rnclean`, it safely executes the following steps to give you a clean slate without touching your actual code or `node_modules`:
* **Watchman:** Runs `watchman watch-del-all` to clear stalled file watchers.
* **Metro Bundler:** Deletes `/tmp/metro-*` cache files.
* **Android Caches:** Removes `android/app/build` and `android/.gradle` (freeing up massive amounts of space).
* **iOS Caches:** Removes `ios/build`.

## 🔄 How to Update

To grab the latest version of this script in the future, just run the download command again to overwrite your local file:

```bash
curl -fsSL [https://raw.githubusercontent.com/sina3p2p/mac-dev-scripts/main/rnclean.sh](https://raw.githubusercontent.com/sina3p2p/mac-dev-scripts/main/rnclean.sh) -o ~/.rnclean.sh && source ~/.zshrc
```

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
