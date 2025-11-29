# shell integration for foot

# is this bash?
[ -n "${BASH_VERSION:-}" ] || return 0

# is it interactive?
[[ $- == *i* ]] || return 0

# is the terminal foot?
[[ "$TERM" == "foot" ]] || return 0

osc7_cwd()
{
    local c e i s=
    for ((i = 0; i < ${#PWD}; ++i)); do
        c=${PWD:$i:1}
        case "$c" in
            [A-Za-z0-9-/:_.!\'\(\)~]) s+="$c";;
            *) printf -v e '%%%02X' "'$c"; s+="$e";;
        esac
    done
    printf '\e]7;file://%s%s\e\\' "$HOSTNAME" "$s"
}
prompt_mark() { printf '\e]133;A\e\\'; }

PROMPT_COMMAND+=(osc7_cwd prompt_mark)

return 0
