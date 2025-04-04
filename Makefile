NAME		:=	balatro
OBJ_DIR		:=	obj/
SRC_PATH	:=	src/
MLX			:=	libmlx42.a
MLX_PATH	:=	MLX42/build
LIBMLX		:=	./MLX42
OBJS_FAGS	:=	$(MLX) -ldl -lglfw -pthread -lm
CXX         :=  g++
CXXFLAGS    :=  -Wextra -Wall -Werror -Wunreachable-code -Ofast -Iincludes -g3 -std=c++17

# SRCS #
CARDS		:=  Card
PLAYER		:= 
MAIN		:= main 
RAYS	 	:=  
PARSING	 	:= 

PLAIN_SRCS  :=  $(addsuffix .cpp, $(addprefix main/,      $(MAIN))) \
                $(addsuffix .cpp, $(addprefix rays/,       $(RAYS))) \
                $(addsuffix .cpp, $(addprefix parsing/,   $(PARSING))) \
                $(addsuffix .cpp, $(addprefix player/,    $(PLAYER))) \
                $(addsuffix .cpp, $(addprefix cards/,   $(CARDS)))

SRCS        := $(addprefix $(SRC_PATH), $(PLAIN_SRCS))
OBJS        := $(addprefix $(OBJ_DIR), $(PLAIN_SRCS:.cpp=.o))

define ASCII_LONG                                                        
 .@..............................................................................................@. 
 .@..........@@@@@...............................................................................@. 
 .@........@@@@@@@@..............................................................................@. 
 .@...........@@@................................................................................@. 
 .@...........@@@................................................................................@. 
 .@.....@@@...@@@................................................................................@. 
 .@.....@@@@@.@@@................................................................................@. 
 .@.......@...@.....................................@@@@@@@......................................@. 
 .@........@@@@..................................@@@@@@@@@@@@....................................@. 
 .@.......@@@.@@@...............................@@@@@@@@@@@@@@...................................@. 
 .@.....@@@.....@@............................@@@@@@@@@@@@@@@@@@.................................@. 
 .@.....@@@....@@@..........................@@@@@@@@@@@@@@.....@@................................@. 
 .@.....@@@.....@@..........................@@@@@@@@@@@@@@.....@@................................@. 
 .@.......@@@.@@@.........................@@@@@@@@@@@@@@@@.....@@................................@. 
 .@......................................@@@@@@@@@@@@@@@@@@@@@@..................................@. 
 .@.....@@@@@@.@@@@@.....................@@@@@@@@@@@@@@@@@@......................................@. 
 .@.......@@@...@@...........@@@@@@@@@.@@@@@@@@@@@@@@@@@@@@@@.@@@@@@@@@..........................@. 
 .@.......@@@.@@.........@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@......................@. 
 .@.......@@@@@@@........@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@......................@. 
 .@.......@@@...@@......@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.....................@. 
 .@.....@.@@@@.@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.....................@. 
 .@................@..@@@@@@@@@.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.@@@@@@@@@...................@. 
 .@.....@@@@@@@@@@....@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@...................@. 
 .@.......@@@...@@.....@@@@@......@@@@@@@@@@@@@.......@@@@@@@@@@@@......@@@@@@...................@. 
 .@.......@@@@@@@....@@.....@@....@@@@@@@..................@@@@@@@....@@.....@@..................@. 
 .@.......@@@........@@.....@@..@@@@@@@@@@@@............@@@@@@@@@@@@..@@.....@@..................@. 
 .@.......@@@.........@@...@....@@@@@@@@@@@@@@@......@@@@@@@@@@@@@@@....@...@@...................@. 
 .@.....@@@@@@@@@@@.....@@@.....@@@@@@@@@.@@@.@@....@@.@@@.@@@@@@@@@.....@@@.....................@. 
 .@.............................@@@@@.@..@@@@@@......@@@@@@....@@@@@.............................@. 
 .@.....@@@@@@@@@.................@@@.@........................@@@...............................@. 
 .@.......@@@...@@................@...@.......@@@@@@@@.......@...@...............@@@@..@@@@@.....@. 
 .@.......@@@...@@..............@@..@.@@@@@@............@@@@@@....@@...............@@@.@@@.......@. 
 .@.......@@@@@@@...............@@....@@@@@@@@@@@@@@@@@@@@@@@@....@@...............@@@@@@@.......@. 
 .@.......@@@.@@@.................@@...@@@@@@@@@@@@@@@@@@@@@@....@................@@...@@@.......@. 
 .@.....@@@@@..@@@@................@@@...@@@@..........@@@@...@@@.................@@...@@@.......@. 
 .@.................................@@....@@@@@@@@@@@@@@@@....@@...................@@@@@@@@@.....@. 
 .@...................................@@.@..@@@@@@@@@@@@....@@...................................@. 
 .@...........................@@@@@@@@@..@.....@@@@@@........@@@@@@@@@...........@@@@@@@@@@@.....@. 
 .@........................@@@@@@@@@@@.@@@@@@..........@@@@@@@@..@@@@.@@@..............@@@.......@. 
 .@.....................@@@@@@@@@@....@@@.@@...@@@@@@@...@@@....@..@@@@@.@@@...........@@@.......@. 
 .@..................@@@@@@@@@@...@@@....@@@@@@@@@@.@@@@@@@.@@@@@.@...@@@@@.@@@....@@@@@@@.......@. 
 .@..................@@@@@@....@@@@..@.@@@@@@...@@@@..@.@@@@@..@@@@@@..@..@@@@@...@@....@@.......@. 
 .@.................@@@@@....@@@@@.@@.@@@@@@........@@.@..@@@@..@@@@@@......@@@@..@@@@@@@@@@.....@. 
 .@.................@@@@@@@@...@..@.@@@@@@....@@@@@@......@@@@@@.@@@....@@@@..@@.................@. 
 .@.................@@@@@@@@@@@..@.@@@@@@.@@@@@@@@@@@@@@...@@@@@@....@@@@@@@@@.@..@@@.@@@@@@.....@. 
 .@.................@@@@@@@@@@@@@.@@@@@..@@@@@@@@@@@@@@@@@...@@@@@.@@@@@@@@@@@@...@@...@@@.......@. 
 .@..................@@@@@@@@@@.@@@@@@@..@@@@@@@@@@@@@@@@@@..@@@@@@@.@@@@@@@@......@@@@@@@.......@. 
 .@.................@@@@@@@@....@@@@@@@@@@@@@@@@....@@@@@@@.@@@@@@@@....@@@@@@@.....@@.@@@.......@. 
 .@.................@@@@@@@.....@@@@@@@@@@@@@@@......@@@@@@@@@@@@@@@.....@@@@@@...@@@...@@.......@. 
 .@..................@@@@.......@@@@@@@@@@@@@..........@@@@@@@@@@@@@.......@@@..@@@@@.@@@@@@.....@. 
 .@..............................@@@@@@@@@@@............@@@@@@@@@@@@.............................@. 
 .@.............................@@@@@@@@@..................@@@@@@@@@...............@@@.@@@.......@. 
 .@.............................@@@@@@@......................@@@@@@@..............@@.....@@@.....@. 
 .@.............................@@@@@@@@....................@@@@@@@@..............@@@....@@@.....@. 
 .@...........................................................@@@@................@@.....@@@.....@. 
 .@................................................................................@@@.@@@.......@. 
 .@..................................................................................@@@@........@. 
 .@......................................................................................@.......@. 
 .@................................................................................@@@.@@@@@.....@. 
 .@................................................................................@@@...@@@.....@. 
 .@................................................................................@@@...........@. 
 .@................................................................................@@@...........@. 
 .@...............................................................................@@@@@@@........@. 
 .@...............................................................................@@@@@..........@. 
 .@..............................................................................................@. 

endef                                                                                                                                                                                                                                                            
export ASCII_LONG

# ASCII COLORS #
BLACK=\033[0;30m
RED=\033[0;31m
#RED=\033[38;5;208m
GREEN=\033[0;32m
YELLOW=\033[0;33m
BLUE=\033[0;34m
MAG=\033[0;35m
CYAN=\033[38;5;6m
#WHITE=\033[1;37m
WHITE=\033[38;5;255m
PAPYRUS=\033[38;5;223m
PINK=\033[38;5;213m
END=\033[0m
WHITEB=\033[48;5;255m
CYANB=\033[48;5;6m
PINKB=\033[48;5;213m

all: $(NAME)

$(NAME): $(OBJS) $(MLX)
	@$(CXX) $(CXXFLAGS) $(OBJS) $(OBJS_FAGS) $(MLX) -o $(NAME)
	@printf "\033[0;32;3mBalatro\t\033[0;32;0m✅\033[0;32;3m\n\n"
	@printf "$(GREEN)$$ASCII_LONG\n"

$(OBJ_DIR)%.o: $(SRC_PATH)%.cpp
	@mkdir -p $(@D)
	@$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

$(MLX):
	@cmake $(LIBMLX) -B $(LIBMLX)/build && make -C $(LIBMLX)/build -j4
	@mv $(MLX_PATH)/$(MLX) ./

clean:
	@rm -fr $(OBJ_DIR)

fclean:
	@rm -fr $(OBJ_DIR)
	@rm -f $(NAME)
	@rm -f $(MLX)
	@rm -fr $(MLX_PATH)
	
re: fclean all

.PHONY: all clean fclean re
