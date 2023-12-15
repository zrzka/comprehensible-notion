OUT_DIR := $(HOME)/.css

.PHONY: directories all clean

all: directories $(OUT_DIR)/www.notion.so.css

directories: $(OUT_DIR)

clean:
	rm -rf $(OUT_DIR)/www.notion.so.css

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

$(OUT_DIR)/www.notion.so.css: www.notion.so.css
	cp -f $(PWD)/$< $@
