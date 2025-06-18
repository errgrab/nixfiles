{ config, pkgs, ... }: {
	home.username = "anon";
	home.homeDirectory = "/home/anon";

	home.stateVersion = "25.05";

	home.packages = with pkgs; [
		aider-chat-full
		bemenu
		brave
		brightnessctl
		btop
		chezmoi
		clang
		cozette
		emacs
		equibop
		fabric-ai
		fzf
		ghostty
		gnumake
		grim
		helix
		jujutsu
		kakoune
		kitty
		lldb
		llvm
		neofetch
		nerd-fonts.iosevka-term
		nerd-fonts.victor-mono
		nerd-fonts.zed-mono
		ripgrep
		slurp
		syncthing
		tmux
		tree
		vscode
		waybar
		weechat
		wl-clipboard
	];

	imports = [
		./config/waybar/waybar.nix
#		./config/hyprland/hyprland.nix # TODO: Why not do my config in nix?
#		./config/kitty/kitty.nix # Chezmoi
#		./config/tmux/tmux.nix # Chezmoi
#		./config/neovim/neovim.nix # Chezmoi
#		./config/helix/helix.nix # Chezmoi
#		./config/zsh/zsh.nix # Chezmoi
#		./config/starship/starship.nix # Chezmoi
#		./config/git/git.nix # Chezmoi
#		./config/kakoune/kakoune.nix # Chezmoi
#		./config/files/files.nix # not all, but Chezmoi
	];

	programs.home-manager.enable = true;
}
