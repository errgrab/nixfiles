{ config, pkgs, ... }: {
	home.username = "anon";
	home.homeDirectory = "/home/anon";

	home.stateVersion = "25.05";

	imports = [
		./config/pkgs/pkgs.nix
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
