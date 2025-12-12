{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    
    settings = {
      diff = {
        colorMoved = "default";
      };
      merge = {
        conflictstyle = "diff3";
      };
    };
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      navigate = true;
      side-by-side = true;
      line-numbers = true;
      syntax-theme = "Nord";
      features = "decorations";
      decorations = {
        commit-decoration-style = "bold yellow box ul";
        file-style = "bold yellow ul";
        file-decoration-style = "none";
        hunk-header-decoration-style = "cyan box ul";
      };
      line-numbers-left-style = "cyan";
      line-numbers-right-style = "cyan";
      line-numbers-minus-style = "red";
      line-numbers-plus-style = "green";
    };
  };

  programs.lazygit = {
    enable = true;
    settings = {
      git = {
        # Новый формат pagers для последних версий lazygit
        pagers = [
          {
            id = "main";
            colorArg = "always";
            pager = "delta --dark --paging=never";
          }
        ];
      };
      
      gui = {
        # Показывать изменения в файлах
        showFileTree = true;
        showRandomTip = false;
        showCommandLog = false;
        
        # Цветовая схема
        theme = {
          activeBorderColor = [ "cyan" "bold" ];
          inactiveBorderColor = [ "white" ];
          selectedLineBgColor = [ "blue" ];
          selectedRangeBgColor = [ "blue" ];
        };
      };

      # Удобные настройки для diff
      customCommands = [
        {
          key = "D";
          command = "git diff --cached";
          context = "files";
          description = "Diff staged changes";
          output = "terminal";  # Изменено с subprocess на output
        }
        {
          key = "<c-d>";
          command = "git diff {{.SelectedFile.Name}}";
          context = "files";
          description = "Diff current file";
          output = "terminal";  # Изменено с subprocess на output
        }
      ];

      # Настройки отображения
      refresher = {
        refreshInterval = 10;
        fetchInterval = 60;
      };
    };
  };
}
