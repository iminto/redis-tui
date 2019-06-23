# redis-Tui

A Redis Text-based UI client in CLI.

![](./preview.gif)


## TODO

- [x] Solve the problem that the official environment generally disables the `KEYS` command to get the Key list
- [ ] Command auto-completion function when executing commands
- [x] Command execution history function, you can quickly switch the previous command by pressing the up and down buttons
- [ ] The return value of the `SCAN` command is not formatted correctly


## plus

- Use ctrl+b to refresh the redis key list.

## bugs known
- Because tcell library which redis-Tui depends on does not support cygwin/msys,so you can't run it in **cmder**(a 
portable console emulator for Windows) and so on,but you can run it on Win's built-in cmd.