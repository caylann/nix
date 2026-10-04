{
 programs.fastfetch = {
  enable = true;
  settings = {
   logo = {
        type = "builtin";
        height = 10;
        width = 10;
        padding = {
           top = 1;
           left = 4;
        };
    };
    modules = [
        "break"
        {
            type = "custom";
            format = "${builtins.fromJSON "\"\\u001b[90m\""}┌──────────────────────Hardware──────────────────────┐";
        }
        {
            type = "host";
            key = "󰌢  PC";
            keyColor = "green";
        }
        {
            type = "cpu";
            key = "│ ├󰻠 ";
            keyColor = "green";
        }
        {
            type = "gpu";
            key = "│ ├󰍹 ";
            keyColor = "green";
        }
        {
            type = "memory";
            key = "│ ├󰑭 ";
            keyColor = "green";
        }
        {
            type = "disk";
            key = "└ └󰋊 ";
            keyColor = "green";
        }
        {
            type = "custom";
            format = "${builtins.fromJSON "\"\\u001b[90m\""}└────────────────────────────────────────────────────┘";
        }
        "break"
        {
            type = "custom";
            format = "${builtins.fromJSON "\"\\u001b[90m\""}┌──────────────────────Software──────────────────────┐";
        }
        {
            type = "os";
            key = "  OS";
            keyColor = "yellow";
        }
        {
            type = "kernel";
            key = "│ ├󰌽 ";
            keyColor = "yellow";
        }
        {
            type = "packages";
            key = "│ ├󰏗 ";
            keyColor = "yellow";
        }
        {
            type = "shell";
            key = "│ ├󰞷 ";
            keyColor = "yellow";
        } 
        {
            type = "de";
            key = "󰧨  DE";
            keyColor = "blue";
        }
        {
            type = "wm";
            key = "└ └󱂬 ";
            keyColor = "yellow";
        }
        {
            type = "wmtheme";
            key = "│ ├󰉦 ";
            keyColor = "blue";
        }
        # {
            # type = "terminal";
            # key = "└ └󰆍 ";
            # keyColor = "blue";
        # }
        {
            type = "custom";
            format = "${builtins.fromJSON "\"\\u001b[90m\""}└────────────────────────────────────────────────────┘";
        }
        "break"
        {
            type = "custom";
            format = "${builtins.fromJSON "\"\\u001b[90m\""}┌────────────────────Stats / Time────────────────────┐";
        }
        {
            type = "command";
            key = "  ›  OS Age  ";
            keyColor = "magenta";
            text = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
        }
        {
            type = "uptime";
            key = "  ›  Uptime  ";
            keyColor = "magenta";
        }
        {
            type = "datetime";
            key = "  ›  DateTime  ";
            keyColor = "magenta";
        }
        {
            type = "custom";
            format = "${builtins.fromJSON "\"\\u001b[90m\""}└────────────────────────────────────────────────────┘";
        }
        {
            type = "colors";
            paddingLeft = 2;
            symbol = "circle";
        }
    ];	
  };
 };
}
