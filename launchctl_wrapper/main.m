#include <stdio.h>
#include <spawn.h>
#include <signal.h>

int main(int argc, char *argv[], char *envp[]) {
	setuid(0);
    setgid(0);
    pid_t pid;
    int status;
    argv[0] = "launchctl";
    posix_spawn(&pid, "/var/jb/bin/launchctl", NULL, NULL, argv, NULL);
    waitpid(pid, &status, WEXITED);
	return 0;
}