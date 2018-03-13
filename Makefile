#	Output's Name
NAME = libfts.a

# Sources Objects directories
SRC = \
isdigit.s \
isascii.s \
isprint.s \
isalpha.s \
isalnum.s \
tolower.s \
toupper.s \
strlen.s \
puts.s \
bzero.s \
memset.s \
fast/strlen.s \
bonus/hello.s \
bonus/islower.s \
bonus/isupper.s \
bonus/max.s \
bonus/min.s \
#strcat.s 
# memcpy.s \
# strdup.s \
# cat.s \

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

testASM: $(NAME)
	@gcc main.c $(NAME) -o tester

testC: $(NAME)
	@gcc -Wextra -Wall  main.c ressources/libft/libft.a -o tester

clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(NAME)

re: fclean all		

.PHONY: $(NAME) clean fclean re tester