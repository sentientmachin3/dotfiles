setopt autocd              # change directory just by typing its name
setopt ksharrays           # arrays start at 0
setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt promptsubst         # enable command substitution in prompt

# hide EOL sign ('%')
export PROMPT_EOL_MARK=""
export LS_COLORS='*~=0;38;2;102;92;84:bd=1;38;2;215;153;33:ca=0;38;2;40;40;40;48;2;204;36;29:cd=0;38;2;250;189;47:di=0;38;2;69;133;136:do=1;38;2;211;134;155:ex=1;38;2;184;187;38:fi=0;38;2;235;219;178;48;2;40;40;40:ln=0;38;2;131;165;152:mh=1:mi=0;38;2;235;219;178;48;2;251;73;52:no=0;38;2;235;219;178;48;2;40;40;40:or=0;38;2;251;73;52:ow=1;38;2;184;187;38:pi=0;38;2;177;98;134:rs=0:sg=0;38;2;40;40;40;48;2;214;93;14:so=1;38;2;177;98;134:st=0;38;2;235;219;178;48;2;69;133;136:su=0;38;2;235;219;178;48;2;204;36;29:tw=0;38;2;235;219;178;48;2;69;133;136:*.a=1;38;2;184;187;38:*.c=0;38;2;152;151;26:*.d=0;38;2;152;151;26:*.h=0;38;2;152;151;26:*.m=0;38;2;152;151;26:*.o=0;38;2;102;92;84:*.p=0;38;2;152;151;26:*.r=0;38;2;152;151;26:*.t=0;38;2;152;151;26:*.z=0;38;2;214;93;14:*.7z=0;38;2;214;93;14:*.as=0;38;2;152;151;26:*.bc=0;38;2;102;92;84:*.bz=0;38;2;214;93;14:*.cc=0;38;2;152;151;26:*.cp=0;38;2;152;151;26:*.cr=0;38;2;152;151;26:*.cs=0;38;2;152;151;26:*.di=0;38;2;152;151;26:*.el=0;38;2;152;151;26:*.ex=0;38;2;152;151;26:*.fs=0;38;2;152;151;26:*.go=0;38;2;152;151;26:*.gv=0;38;2;152;151;26:*.gz=0;38;2;214;93;14:*.hh=0;38;2;152;151;26:*.hi=0;38;2;102;92;84:*.hs=0;38;2;152;151;26:*.jl=0;38;2;152;151;26:*.js=0;38;2;152;151;26:*.ko=1;38;2;184;187;38:*.kt=0;38;2;152;151;26:*.la=0;38;2;102;92;84:*.ll=0;38;2;152;151;26:*.lo=0;38;2;102;92;84:*.md=0;38;2;215;153;33:*.ml=0;38;2;152;151;26:*.mn=0;38;2;152;151;26:*.nb=0;38;2;152;151;26:*.pl=0;38;2;152;151;26:*.pm=0;38;2;152;151;26:*.pp=0;38;2;152;151;26:*.ps=1;38;2;131;165;152:*.py=0;38;2;152;151;26:*.rb=0;38;2;152;151;26:*.rm=1;38;2;142;192;124:*.rs=0;38;2;152;151;26:*.sh=0;38;2;152;151;26:*.so=1;38;2;184;187;38:*.td=0;38;2;152;151;26:*.ts=0;38;2;152;151;26:*.ui=0;38;2;250;189;47:*.vb=0;38;2;152;151;26:*.wv=0;38;2;104;157;106:*.xz=0;38;2;214;93;14:*.aif=0;38;2;104;157;106:*.ape=0;38;2;104;157;106:*.apk=0;38;2;214;93;14:*.arj=0;38;2;214;93;14:*.asa=0;38;2;152;151;26:*.aux=0;38;2;102;92;84:*.avi=1;38;2;142;192;124:*.awk=0;38;2;152;151;26:*.bag=0;38;2;214;93;14:*.bak=0;38;2;102;92;84:*.bat=1;38;2;184;187;38:*.bbl=0;38;2;102;92;84:*.bcf=0;38;2;102;92;84:*.bib=0;38;2;250;189;47:*.bin=1;38;2;254;128;25:*.blg=0;38;2;102;92;84:*.bmp=0;38;2;104;157;106:*.bsh=0;38;2;152;151;26:*.bst=0;38;2;250;189;47:*.bz2=0;38;2;214;93;14:*.c++=0;38;2;152;151;26:*.cfg=0;38;2;250;189;47:*.cgi=0;38;2;152;151;26:*.clj=0;38;2;152;151;26:*.com=1;38;2;184;187;38:*.cpp=0;38;2;152;151;26:*.css=0;38;2;152;151;26:*.csv=0;38;2;215;153;33:*.csx=0;38;2;152;151;26:*.cxx=0;38;2;152;151;26:*.deb=0;38;2;214;93;14:*.def=0;38;2;152;151;26:*.dll=1;38;2;184;187;38:*.dmg=1;38;2;254;128;25:*.doc=1;38;2;131;165;152:*.dot=0;38;2;152;151;26:*.dox=0;38;2;184;187;38:*.dpr=0;38;2;152;151;26:*.elc=0;38;2;152;151;26:*.elm=0;38;2;152;151;26:*.epp=0;38;2;152;151;26:*.eps=0;38;2;104;157;106:*.erl=0;38;2;152;151;26:*.exe=1;38;2;184;187;38:*.exs=0;38;2;152;151;26:*.fls=0;38;2;102;92;84:*.flv=1;38;2;142;192;124:*.fnt=0;38;2;104;157;106:*.fon=0;38;2;104;157;106:*.fsi=0;38;2;152;151;26:*.fsx=0;38;2;152;151;26:*.gif=0;38;2;104;157;106:*.git=0;38;2;102;92;84:*.gvy=0;38;2;152;151;26:*.h++=0;38;2;152;151;26:*.hpp=0;38;2;152;151;26:*.htc=0;38;2;152;151;26:*.htm=0;38;2;215;153;33:*.hxx=0;38;2;152;151;26:*.ico=0;38;2;104;157;106:*.ics=1;38;2;131;165;152:*.idx=0;38;2;102;92;84:*.ilg=0;38;2;102;92;84:*.img=1;38;2;254;128;25:*.inc=0;38;2;152;151;26:*.ind=0;38;2;102;92;84:*.ini=0;38;2;250;189;47:*.inl=0;38;2;152;151;26:*.ipp=0;38;2;152;151;26:*.iso=1;38;2;254;128;25:*.jar=0;38;2;214;93;14:*.jpg=0;38;2;104;157;106:*.kex=1;38;2;131;165;152:*.kts=0;38;2;152;151;26:*.log=0;38;2;102;92;84:*.ltx=0;38;2;152;151;26:*.lua=0;38;2;152;151;26:*.m3u=0;38;2;104;157;106:*.m4a=0;38;2;104;157;106:*.m4v=1;38;2;142;192;124:*.mid=0;38;2;104;157;106:*.mir=0;38;2;152;151;26:*.mkv=1;38;2;142;192;124:*.mli=0;38;2;152;151;26:*.mov=1;38;2;142;192;124:*.mp3=0;38;2;104;157;106:*.mp4=1;38;2;142;192;124:*.mpg=1;38;2;142;192;124:*.nix=0;38;2;250;189;47:*.odp=1;38;2;131;165;152:*.ods=1;38;2;131;165;152:*.odt=1;38;2;131;165;152:*.ogg=0;38;2;104;157;106:*.org=0;38;2;215;153;33:*.otf=0;38;2;104;157;106:*.out=0;38;2;102;92;84:*.pas=0;38;2;152;151;26:*.pbm=0;38;2;104;157;106:*.pdf=1;38;2;131;165;152:*.pgm=0;38;2;104;157;106:*.php=0;38;2;152;151;26:*.pid=0;38;2;102;92;84:*.pkg=0;38;2;214;93;14:*.png=0;38;2;104;157;106:*.pod=0;38;2;152;151;26:*.ppm=0;38;2;104;157;106:*.pps=1;38;2;131;165;152:*.ppt=1;38;2;131;165;152:*.pro=0;38;2;184;187;38:*.ps1=0;38;2;152;151;26:*.psd=0;38;2;104;157;106:*.pyc=0;38;2;102;92;84:*.pyd=0;38;2;102;92;84:*.pyo=0;38;2;102;92;84:*.rar=0;38;2;214;93;14:*.rpm=0;38;2;214;93;14:*.rst=0;38;2;215;153;33:*.rtf=1;38;2;131;165;152:*.sbt=0;38;2;152;151;26:*.sql=0;38;2;152;151;26:*.sty=0;38;2;102;92;84:*.svg=0;38;2;104;157;106:*.swf=1;38;2;142;192;124:*.swp=0;38;2;102;92;84:*.sxi=1;38;2;131;165;152:*.sxw=1;38;2;131;165;152:*.tar=0;38;2;214;93;14:*.tbz=0;38;2;214;93;14:*.tcl=0;38;2;152;151;26:*.tex=0;38;2;152;151;26:*.tgz=0;38;2;214;93;14:*.tif=0;38;2;104;157;106:*.tml=0;38;2;250;189;47:*.tmp=0;38;2;102;92;84:*.toc=0;38;2;102;92;84:*.tsx=0;38;2;152;151;26:*.ttf=0;38;2;104;157;106:*.txt=0;38;2;235;219;178:*.vcd=1;38;2;254;128;25:*.vim=0;38;2;152;151;26:*.vob=1;38;2;142;192;124:*.wav=0;38;2;104;157;106:*.wma=0;38;2;104;157;106:*.wmv=1;38;2;142;192;124:*.xcf=0;38;2;104;157;106:*.xlr=1;38;2;131;165;152:*.xls=1;38;2;131;165;152:*.xml=0;38;2;215;153;33:*.xmp=0;38;2;250;189;47:*.yml=0;38;2;250;189;47:*.zip=0;38;2;214;93;14:*.zsh=0;38;2;152;151;26:*.zst=0;38;2;214;93;14:*TODO=0;38;2;184;187;38:*hgrc=0;38;2;184;187;38:*.bash=0;38;2;152;151;26:*.conf=0;38;2;250;189;47:*.dart=0;38;2;152;151;26:*.diff=0;38;2;152;151;26:*.docx=1;38;2;131;165;152:*.epub=1;38;2;131;165;152:*.fish=0;38;2;152;151;26:*.flac=0;38;2;104;157;106:*.h264=1;38;2;142;192;124:*.hgrc=0;38;2;184;187;38:*.html=0;38;2;215;153;33:*.java=0;38;2;152;151;26:*.jpeg=0;38;2;104;157;106:*.json=0;38;2;250;189;47:*.less=0;38;2;152;151;26:*.lisp=0;38;2;152;151;26:*.lock=0;38;2;102;92;84:*.make=0;38;2;184;187;38:*.mpeg=1;38;2;142;192;124:*.opus=0;38;2;104;157;106:*.orig=0;38;2;102;92;84:*.pptx=1;38;2;131;165;152:*.psd1=0;38;2;152;151;26:*.psm1=0;38;2;152;151;26:*.purs=0;38;2;152;151;26:*.rlib=0;38;2;102;92;84:*.sass=0;38;2;152;151;26:*.scss=0;38;2;152;151;26:*.tbz2=0;38;2;214;93;14:*.tiff=0;38;2;104;157;106:*.toml=0;38;2;250;189;47:*.webm=1;38;2;142;192;124:*.webp=0;38;2;104;157;106:*.woff=0;38;2;104;157;106:*.xbps=0;38;2;214;93;14:*.xlsx=1;38;2;131;165;152:*.yaml=0;38;2;250;189;47:*.cabal=0;38;2;152;151;26:*.cache=0;38;2;102;92;84:*.class=0;38;2;102;92;84:*.cmake=0;38;2;184;187;38:*.dyn_o=0;38;2;102;92;84:*.ipynb=0;38;2;152;151;26:*.mdown=0;38;2;215;153;33:*.patch=0;38;2;152;151;26:*.scala=0;38;2;152;151;26:*.shtml=0;38;2;215;153;33:*.swift=0;38;2;152;151;26:*.toast=1;38;2;254;128;25:*.xhtml=0;38;2;215;153;33:*README=1;38;2;250;189;47:*passwd=0;38;2;250;189;47:*shadow=0;38;2;250;189;47:*.config=0;38;2;250;189;47:*.dyn_hi=0;38;2;102;92;84:*.flake8=0;38;2;184;187;38:*.gradle=0;38;2;152;151;26:*.groovy=0;38;2;152;151;26:*.ignore=0;38;2;184;187;38:*.matlab=0;38;2;152;151;26:*COPYING=0;38;2;235;219;178:*INSTALL=1;38;2;250;189;47:*LICENSE=0;38;2;235;219;178:*TODO.md=0;38;2;184;187;38:*.desktop=0;38;2;250;189;47:*.gemspec=0;38;2;184;187;38:*Doxyfile=0;38;2;184;187;38:*Makefile=0;38;2;184;187;38:*TODO.txt=0;38;2;184;187;38:*setup.py=0;38;2;184;187;38:*.DS_Store=0;38;2;102;92;84:*.cmake.in=0;38;2;184;187;38:*.fdignore=0;38;2;184;187;38:*.kdevelop=0;38;2;184;187;38:*.markdown=0;38;2;215;153;33:*.rgignore=0;38;2;184;187;38:*COPYRIGHT=0;38;2;235;219;178:*README.md=1;38;2;250;189;47:*configure=0;38;2;184;187;38:*.gitconfig=0;38;2;184;187;38:*.gitignore=0;38;2;184;187;38:*.localized=0;38;2;102;92;84:*.scons_opt=0;38;2;102;92;84:*CODEOWNERS=0;38;2;184;187;38:*Dockerfile=0;38;2;250;189;47:*INSTALL.md=1;38;2;250;189;47:*README.txt=1;38;2;250;189;47:*SConscript=0;38;2;184;187;38:*SConstruct=0;38;2;184;187;38:*.gitmodules=0;38;2;184;187;38:*.synctex.gz=0;38;2;102;92;84:*.travis.yml=0;38;2;131;165;152:*INSTALL.txt=1;38;2;250;189;47:*LICENSE-MIT=0;38;2;235;219;178:*MANIFEST.in=0;38;2;184;187;38:*Makefile.am=0;38;2;184;187;38:*Makefile.in=0;38;2;102;92;84:*.applescript=0;38;2;152;151;26:*.fdb_latexmk=0;38;2;102;92;84:*CONTRIBUTORS=1;38;2;250;189;47:*appveyor.yml=0;38;2;131;165;152:*configure.ac=0;38;2;184;187;38:*.clang-format=0;38;2;184;187;38:*.gitattributes=0;38;2;184;187;38:*.gitlab-ci.yml=0;38;2;131;165;152:*CMakeCache.txt=0;38;2;102;92;84:*CMakeLists.txt=0;38;2;184;187;38:*LICENSE-APACHE=0;38;2;235;219;178:*CONTRIBUTORS.md=1;38;2;250;189;47:*.sconsign.dblite=0;38;2;102;92;84:*CONTRIBUTORS.txt=1;38;2;250;189;47:*requirements.txt=0;38;2;184;187;38:*package-lock.json=0;38;2;102;92;84:*.CFUserTextEncoding=0;38;2;102;92;84'

# custom widget
open_wt_tmux() { open-worktree.sh | tmux-worktree.sh }
zle -N open_wt_tmux


# Keybindings
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~"	delete-char
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^F"   open_wt_tmux

# enable completion features
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case insensitive tab completion

# History configurations
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it

# force zsh to show the complete history
alias history="history 0"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PROMPT="%F{185}%n@%m %F{230}%~ $ "
else
    PROMPT='${debian_chroot:+($debian_chroot)}%n@%m:%~%# '
fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    TERM_TITLE='\e]0;${debian_chroot:+($debian_chroot)}%n@%m: %~\a'
    ;;
*)
    ;;
esac

precmd() {
    # Print the previously configured title
    print -Pn "$TERM_TITLE"

    # Print a new line before the prompt, but only if it is not the first line
    if [ "$new_line_before_prompt" = yes ]; then
	if [ -z "$_NEW_LINE_BEFORE_PROMPT" ]; then
	    _NEW_LINE_BEFORE_PROMPT=1
	else
	    print ""
	fi
    fi
}

# enable color support of ls, less and man, and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(env TERM=xterm-256color dircolors -b)"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'

    export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
    export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
    export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
    export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
    export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
    export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
    export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

    # Take advantage of $LS_COLORS for completion as well
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

# some more aliases
source ~/.aliases
source ~/.private_aliases

export PATH="$PATH:$HOME/.local/bin:$HOME/.config/scripts:$HOME/go/bin"
export NODE_PATH="$HOME/.nvm/versions/node/v14.19.1/lib/node_modules"
# export QT_QPA_PLATFORM=xcb
export GPG_TTY=$(tty)

source /usr/share/nvm/init-nvm.sh
