# Start and/or configure the gpg agent.

GPG_TTY=$(tty)
export GPG_TTY

unset SSH_AGENT_PID
SSH_AUTH_SOCK=$(id -u)
export SSH_AUTH_SOCK="/run/user/$SSH_AUTH_SOCK/gnupg/S.gpg-agent.ssh"

gpg-connect-agent updatestartuptty /bye >/dev/null
