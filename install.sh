# Install Nix
curl -L https://nixos.org/nix/install | sh

# Run Nix
. ~/.nix-profile/etc/profile.d/nix.sh

# Install Nix Packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.git \
	nixpkgs.antibody \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.yarn \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.direnv \

# stow
stow nvim
stow zsh

# Tell Linux about zsh shell
command -v zsh | sudo tee -a /etc/shells

# Set zsh as default shell
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
