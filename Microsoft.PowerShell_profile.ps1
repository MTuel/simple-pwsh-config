#oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/gruvbox.omp.json' | Invoke-Expression

Invoke-Expression (&starship init powershell)

Import-Module PSReadLine

Set-PsReadLineOption -EditMode "Vi"

# Shows navigable menu of all options when hitting Tab.
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for Arrow keys.
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

# Shortcut for fzf.
Set-Alias f fzf

# Replace builtin 'ls' with eza.
Set-Alias ls eza

# In case I forget to use ripgrep instead of grep.
Set-Alias grep rg

Invoke-Expression (& { (zoxide init powershell | Out-String) })
