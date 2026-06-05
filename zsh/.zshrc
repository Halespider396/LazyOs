# ══════════════════════════════════════════════════════════════
# .zshrc — LazyOS
# ══════════════════════════════════════════════════════════════

# ── History ────────────────────────────────────────────────────
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# ── Options ────────────────────────────────────────────────────
setopt AUTO_CD
setopt CORRECT
setopt GLOB_DOTS

# ── Completion ─────────────────────────────────────────────────
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ── Prompt ─────────────────────────────────────────────────────
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %F{#7ab3d4}(%b)%f'
setopt PROMPT_SUBST

PROMPT='%F{#1a3a5c}┌─%f%F{#7ab3d4}[%f%F{#e8f4ff}%~%f%F{#7ab3d4}]%f${vcs_info_msg_0_}
%F{#1a3a5c}└─%f%F{#7ab3d4}❯%f '

# ── Aliases ────────────────────────────────────────────────────
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias vim='nvim'
alias vi='nvim'
alias cat='bat --style=plain' 2>/dev/null || alias cat='cat'
alias top='btop'
alias ff='fastfetch'
alias hyprconf='nvim ~/.config/hypr/hyprland.lua'
alias zshrc='nvim ~/.zshrc && source ~/.zshrc'

# ── Plugins (if installed) ─────────────────────────────────────
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && \
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && \
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ── Fastfetch on terminal open ─────────────────────────────────
fastfetch
