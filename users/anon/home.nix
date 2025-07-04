{ config, pkgs, lib, ... }: {
	home.username = "anon";
	home.homeDirectory = "/home/anon";

	home.stateVersion = "25.05";

	home.packages = with pkgs; [
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
		fzf
		ghostty
		gnumake
		grim
		helix
		kakoune
		kanata
		kitty
		lldb
		llvm
		logseq
		neofetch
		nerd-fonts.iosevka-term
		pandoc
		ripgrep
		slurp
		tmux
		tree
		vscode
		waybar
		weechat
		wl-clipboard
	];

	home.activation.chezmoiApply = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
		echo "Running chezmoi setup..."

		if [ ! -d "$HOME/.local/share/chezmoi" ]; then
			${pkgs.chezmoi}/bin/chezmoi init --apply errgrab --force
		else
			${pkgs.chezmoi}/bin/chezmoi apply --force
		fi
	'';

	imports = [
		./config/kanata/service.nix
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
