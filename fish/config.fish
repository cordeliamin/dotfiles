if status is-interactive
    # Commands to run in interactive sessions can go here
end

# suppress fish welcome message
set fish_greeting

# speedy keys
if command -q xset
    xset r rate 240 60
end

export LLVM_DIR="~/repos/csc488/llvm-project-llvmorg-15.0.7/build/"
export CLASSPATH=".:/usr/local/lib/antlr-4.11.1-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.13.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.13.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

zoxide init fish | source
