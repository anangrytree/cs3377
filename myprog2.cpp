#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main() {
	mkdir("dir1", S_IRWXU);
	creat("dir1/file10", S_IRUSR | S_IWUSR);
	mkdir("dir2", S_IRWXU);
	creat("dir2/file20", S_IRUSR | S_IWUSR);
	creat("file1", S_IRUSR | S_IWUSR);
	symlink("dir2/file20", "link1");
}
