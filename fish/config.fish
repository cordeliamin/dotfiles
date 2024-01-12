if status is-interactive
    # Commands to run in interactive sessions can go here
end

# suppress fish welcome message
set fish_greeting

# speedy keys
if command -q xset
    xset r rate 240 60
end

# trash instead of rm
if command -q trash
    alias rm=trash
end
