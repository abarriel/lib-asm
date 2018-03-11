#	Output's Name
NAME = libfts.a

#	GCC flags
CFLAGS = -Werror 
ALL_CFLAGS = -Wall -Wextra $(CFLAGS)

# Sources Objects directories
SRC = \
bzero.s \
strcat.s \
isalpha.s \
isdigit.s \
isalnum.s \
isascii.s \
isprint.s \
toupper.s \
tolower.s \
puts.s \
\
strlen.s \
memset.s \
memcpy.s \
strdup.s \
\
cat.s \
\
bonus/islower.s \
bonus/ismax.s \
bonus/isupper.s \
bonus/max.s \
bonus/min.s \
bonus/pow.s \
bonus/hello.s \

OBJ = $(SRC:%.s=src/%.o)
TESTER = tester
all: makefile $(NAME)

header:
	@echo "\033[1;36m[${NAME}]\033[1;32m Compile && Archive\033[0m"

%.o: %.s
	@printf "\r\033[1;32m. Compiling .\e\033[0m\e[K \033[1;31m$<"
	@~/.brew/bin/nasm -f macho64 $< -o $@

$(NAME): $(OBJ)
	@printf "\r\e\033[0m\e[K\033[1;31m $@ \033[1;32m - Finished\033[0m\n"
	@ar rc $(NAME) $(OBJ)

tester:
	@gcc main.c $(NAME) -Imain.h -o tester

clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(NAME)

re: fclean all		

.PHONY: $(NAME) clean fclean re tester