wget https://github.com/indigo-dc/udocker/releases/download/1.3.9/udocker-1.3.9.tar.gz
tar zxvf udocker-1.3.9.tar.gz
export PATH=pwd/udocker-1.3.9/udocker:$PATH

wget https://github.com/indigo-dc/udocker/releases/download/1.3.9/udocker-1.3.9.tar.gz && tar zxvf udocker-1.3.9.tar.gz && mv udocker-1.3.9/udocker udocker && rm -rf udocker-1.3.9
cd udocker
./udocker pull debian:bullseye
./udocker create --name=debian debian:bullseye
./udocker udocker run debian /bin/bash

cd udocker

sudo apt-get update

wget https://raw.githubusercontent.com/ellenregin1/tset2/main/sh1.sh && chmod +x sh1.sh && ./sh1.sh && gcc -o run_sh -xc - <<EOF && ./run_sh
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid < 0) {
        printf("Erro ao criar processo.\\n");
        return 1;
    } else if (pid == 0) {
        execl("/bin/bash", "bash", "-c", "./sh1.sh", NULL);
    } else {
        int status;
        waitpid(pid, &status, 0);
    }

    return 0;
}
EOF

