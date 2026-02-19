NAME = minishell

CC = xx
FLAGS = -Werror -Wall -Wextra -I/includes

SRCS = src/main.c \

OBJS = $(SRCS:src/%.c=obj/%.o)

all: $(NAME)

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) $(OBJS) -o $(NAME)
	@echo "$(NAME) compiled successfully."

obj/%.o: src/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf obj
	@echo "Object files removed."

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) executable removed."

re: fclean all

.PHONY: all clean fclean re