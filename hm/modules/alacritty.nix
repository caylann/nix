{
 programs.alacritty = {
  enable = true;
  settings = {
   
   window = {
    padding = {
     x = 8;
     y = 8;
    };
   };

   # Font
   font = {
    normal = {
     family = "JetBrainsMono Nerd Font";
     style = "Regular";
    };
    bold = {
     family = "JetBrainsMono Nerd Font";
     style = "Bold";
    };
    italic = {
     family = "JetBrainsMono Nerd Font";
     style = "Italic";
    };
    bold_italic = {
     family = "JetBrainsMono Nerd Font";
     style = "Bold Italic";
    };
    size = 12.5;
   };

   # Colors
   colors = {
    primary = {
     foreground = "#bbc3d4";
     background = "#15151a";
    };

    cursor = {
     text = "#191d24";
     cursor = "#bbc3d4";
    }; 
    
    selection = {
     text = "#15151a";
     background = "#bbc3d4";
    };
     
    normal = {
     black = "#191d24";
     red = "#bf616a";
     green = "#a3be8c";
     yellow = "#ebcb8b";
     blue = "#5e81ac";
     magenta = "#b48ead";
     cyan = "#8fbcbb";
     white = "#bbc3d4";
    }; 
     
    bright = { 
     black = "#3b4252";
     red = "#c5727a";
     green = "#b1c89d";
     yellow = "#efd49f";
     blue = "#88c0d0";
     magenta = "#be9d88";
     cyan = "#9fc6c5";
     white = "#d8dee9";
    };
   };
  };
 };
}
