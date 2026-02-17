# 🧹 Mac Dev Scripts

A modular, drop-in Zsh toolkit for macOS. Simply add `.sh` files to this repository, and they will automatically load into your terminal. 

Currently features `rnclean.sh`: a single-command cleanup script to safely wipe React Native, Android, and iOS build caches, freeing up gigabytes of space and fixing broken Metro bundlers in seconds.

## 🚀 One-Line Installation (No Git Required)

Open your macOS Terminal and paste this entire block. It downloads the latest version of this repo as a ZIP, extracts it to a hidden folder (`~/.mac-dev-scripts`), and configures Zsh to load every `.sh` script inside it:

```bash
curl -L [https://github.com/sina3p2p/mac-dev-scripts/archive/refs/heads/main.zip](https://github.com/sina3p2p/mac-dev-scripts/archive/refs/heads/main.zip) -o scripts.zip && unzip -q scripts.zip && rm -rf ~/.mac-dev-scripts && mv mac-dev-scripts-main ~/.mac-dev-scripts && rm scripts.zip && grep -q "mac-dev-scripts" ~/.zshrc || echo '\n# Load all Mac Dev Scripts\nfor script in ~/.mac-dev-scripts/*.sh; do source "$script"; done' >> ~/.zshrc && source ~/.zshrc
```

## 🛠️ Usage

Once installed, simply type the name of any function included in your scripts. For example, navigate to a React Native project and type:

```bash
rnclean
```

## 🗑️ What exactly does `rnclean` delete?

When you run `rnclean`, it safely executes the following steps to give you a clean slate without touching your actual code or `node_modules`:
* **Watchman:** Runs `watchman watch-del-all` to clear stalled file watchers.
* **Metro Bundler:** Deletes `/tmp/metro-*` cache files.
* **Android Caches:** Removes `android/app/build` and `android/.gradle`.
* **iOS Caches:** Removes `ios/build`.

## 🔄 How to Update

To download the latest scripts and replace your local copies, just run the installation command again. It is designed to safely overwrite your old scripts while keeping your `.zshrc` clean:

```bash
curl -L [https://github.com/sina3p2p/mac-dev-scripts/archive/refs/heads/main.zip](https://github.com/sina3p2p/mac-dev-scripts/archive/refs/heads/main.zip) -o scripts.zip && unzip -q scripts.zip && rm -rf ~/.mac-dev-scripts && mv mac-dev-scripts-main ~/.mac-dev-scripts && rm scripts.zip && source ~/.zshrc
```

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
