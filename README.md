callisto
========================================
A Whitespace interpreter and tool suite, written in Lua

#   commands
----------------------------------------
##  run

##  interpreter subcommands
### pause
### continue
### step
### stop
### reset
### dump

##  convert
| flag | aliases | arguments | default | description |
|:---|:---|:---|:---|:---|
| --source-enc |  | string | 'auto' | encoding to be used, tries to make an educated guess on 'auto'; allows 'auto', 'whitespace', 'greyspace', 'bytespace' |
| --destination-enc |  | string | 'auto' | encoding to be used, tries to make an educated guess on 'auto'; allows 'auto', 'whitespace', 'greyspace', 'bytespace' |
| --source | -s | string | 'STDIN' |  |
| --destination | -d | string | 'STDOUT' |  |
| --strip-comments | -c | boolean | false | remove any non-syntax tokens from source |

##  compile
| flag | aliases | arguments | default | description |
|:---|:---|:---|:---|:---|
| --source |  | string | 'STDIN' |  |
| --destination |  | string | 'STDIN' |  |
| --target | -t | string | 'lua' | set target architecture, allows 'lua','jar','bytecode-lua','bytecode-jvm' |
| --optimisation | -o | number | 0 | set maximum optimisation level |

##  weave
| flag | aliases | arguments | default | description |
|:---|:---|:---|:---|:---|
| --source |  |  |  |  |
| --destination |  |  |  |  |
| --padding | -p | number | 0 | set the amount of optional in-place padding to perform |

##  global option flags
| flag | aliases | arguments | default | description |
|:---|:---|:---|:---|:---|
| --interactive | -i,--prompt,-p | boolean | true | load instructions from STDIN, open a input prompt until ASCII 'End of Transmission' is encountered |
| --spec | -s,--level,-l | number | 0.3 | Whitespace language specification to be used; allows '0.2' and '0.3' |
| --quiet | -q | boolean | false |  |
| --verbose | -v | boolean | false | increase log verbosity, may be used multiple times: -v,-vv,-vvv |
| --version |  |  |  | show detailed version information |
| --help | -h | boolean | false | show usage and syntax information |

#   architecture
----------------------------------------

##  data stack

##  data heap

##  io module

