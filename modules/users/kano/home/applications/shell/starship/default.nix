{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      character = {
        success_symbol = "[ ](pink)";
        error_symbol = "[ ](bold red)";
      };
      directory = {
        style = "blue";
      };
        format = builtins.concatStringsSep "" [
        "$directory"
        "$git_branch"
        "$git_commit"
        "$git_state"
        "$git_status"
        "$nodejs"
        "$python"
        "$rust"
        "$character"
      ];

      git_status = {
        deleted = "✗";
        modified = "✶";
        staged = "✓";
        stashed = "≡";
      };

	};
    };
}

