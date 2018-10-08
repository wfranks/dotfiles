# # C-b is not acceptable -- Vim uses it
set-option -g prefix C-a
bind-key C-a last-window

# Allowing the clipboard to work in tmux.
set -g default-shell $SHELL
set -g default-command 'reattach-to-user-namespace -l ${SHELL}'
setw -g mode-keys vi
bind-key -T copy-mode-vi 'v' send -X begin-selection # Begin selection in copy mode.
bind-key -T copy-mode-vi 'C-v' send -X rectangle-toggle # Begin selection in copy mode.
bind-key -T copy-mode-vi 'y' send -X copy-selection # Yank selection in copy mode.
unbind-key -T copy-mode-vi v

# Reload Conf
bind-key R source-file ~/.tmux.conf; display-message "~/.tmux.conf is reloaded"

# Making tabs more intuitive.
set -g status-position top
set -g base-index 1
set -g pane-base-index 1
set -g renumber-windows on
bind-key -n C-t new-window
bind-key -n C-T new-window -c "#{pane_current_path}"
bind-key -n C-w kill-pane

# Making splits easier.
bind \ split-window -h
bind | split-window -h -c '#{pane_current_path}'
bind - split-window
bind _ split-window -c '#{pane_current_path}'

# Plugin Manager
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @themepack 'block/yellow'
set -g @plugin 'jimeh/tmux-themepack'
set -g @plugin 'christoomey/vim-tmux-navigator'

run '~/dotfiles/tpm/tpm'
