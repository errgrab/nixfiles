{ config, pkgs, lib, ... }: {
	home.username = "anon";
	home.homeDirectory = "/home/anon";

	home.stateVersion = "25.05";

	home.packages = with pkgs; [
		aider-chat-full
		bat
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
		kanata
		kitty
		lldb
		llvm
		logseq
		neofetch
		nerd-fonts.iosevka-term
		nerd-fonts.fira-code
		pandoc
		ripgrep
		ripgrep
		slurp
		syncthing
		tmux
		tree
		vscode
		waybar
		weechat
		wl-clipboard
		zoxide
	];

	services.syncthing.enable = true;

	home.activation.chezmoiApply = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
		echo "Running chezmoi setup..."

		if [ ! -d "$HOME/.local/share/chezmoi" ]; then
			${pkgs.chezmoi}/bin/chezmoi init --apply errgrab --force
		else
			${pkgs.chezmoi}/bin/chezmoi apply --force
		fi
	'';

	imports = [
#		./config/waybar/waybar.nix # TODO: Put this in Chezmoi
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
