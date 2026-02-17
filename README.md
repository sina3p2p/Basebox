# 📦 Basebox

**Basebox** is a modular, drop-in Zsh toolkit for macOS. It is designed to be a "foundation" for your machine—simply add `.sh` scripts to this repository, and they will automatically load into your terminal environment.

Currently features `rnclean.sh`: a lightning-fast cleanup script to safely wipe React Native, Android, and iOS build caches, freeing up gigabytes of space in seconds.

## 🚀 One-Line Installation (No Git Required)

Open your macOS Terminal and paste this entire block. It downloads the latest version of **Basebox**, extracts it to a hidden folder (`~/.basebox`), and configures Zsh to load every script inside it:

```bash
curl -L https://github.com/sina3p2p/basebox/archive/refs/heads/main.zip -o basebox.zip && unzip -q basebox.zip && rm -rf ~/.basebox && mv basebox-main ~/.basebox && rm basebox.zip && grep -q "basebox" ~/.zshrc || echo '\n# Load all Basebox Scripts\nif [ -d "$HOME/.basebox" ]; then\n  for script in $HOME/.basebox/*.sh(N); do\n    source "$script"\n  done\nfi' >> ~/.zshrc && source ~/.zshrc
```

## 🛠️ Usage

Once installed, simply type the name of any function included in your scripts. For example, to clean a React Native project, navigate to the project folder and type:

```bash
rnclean
```

## 🗑️ What exactly does `rnclean` delete?

When you run `rnclean`, it safely executes the following steps to give you a clean slate without touching your actual code:
* **Watchman:** Clears stalled file watchers using `watchman watch-del-all`.
* **Metro Bundler:** Wipes `/tmp/metro-*` cache files.
* **Android Caches:** Removes `android/app/build` and `android/.gradle`.
* **iOS Caches:** Removes `ios/build`.

## 🔄 How to Update

Once **Basebox** is installed, you don't need to copy long commands anymore. To get the latest scripts and tools from GitHub, simply run:

```bash
update-basebox
```

*Note: This command completely replaces your local `~/.basebox` folder with the latest version from GitHub.*

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
