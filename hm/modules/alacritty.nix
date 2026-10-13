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
     foreground = "#e6edf3";
     background = "#010409";
    };

    cursor = {
     text = "#010409";
     cursor = "#e6edf3";
    }; 
    
    selection = {
     text = "#e6edf3";
     background = "#264f78";
    };
     
    normal = {
     black = "#484f58";
     red = "#ff7b72";
     green = "#3fb950";
     yellow = "#d29922";
     blue = "#58a6ff";
     magenta = "#bc8cff";
     cyan = "#39c5cf";
     white = "#b1bac4";
    }; 
     
    bright = { 
     black = "#6e7681";
     red = "#ffa198";
     green = "#56d364";
     yellow = "#e3b341";
     blue = "#79c0ff";
     magenta = "#d2a8ff";
     cyan = "#56d4dd";
     white = "#ffffff";
    };
   };
  };
 };
}
