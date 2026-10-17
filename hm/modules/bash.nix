{
 programs.bash = {
  enable = true;
  initExtra = ''
   export PS1="\[\e[32m\]\u@\h \[\e[m\]\w$ "
  '';
 };
}
