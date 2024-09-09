CC = cc
TARGET = main
SRC = main.c
DIST_DIR = dist

all: $(DIST_DIR)/$(TARGET)

$(DIST_DIR)/$(TARGET): $(SRC)
	@mkdir -p $(DIST_DIR)    
	cc  -o $(DIST_DIR)/$(TARGET) $(SRC)

clean:
	rm -f $(DIST_DIR)/$(TARGET)
