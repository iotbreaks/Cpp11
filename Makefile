#compiler: gcc for C program, define as g++ for C++
CC = g++

## Main logic directory
#MAIN_LOGIC_SOURCE_FILES = ./src/Main.cpp ./src/classes/Application.cpp ./src/classes/GCLogger.cpp
#
#POCO_FOUNDATION_LIB="/usr/local/lib/libPocoFoundation.so"
#POCO_UTIL_LIB="/usr/local/lib/libPocoUtil.so"
#POCO_NET_LIB="/usr/local/lib/libPocoNet.so"
#POCO_NETSSL_LIB="/usr/local/lib/libPocoNetSSL.so"
#POCO_CRYPTO_LIB="/usr/local/lib/libPocoCrypto.so"
#POCO_XML_LIB="/usr/local/lib/libPocoXML.so"
#POCO_JSON_LIB="/usr/local/lib/libPocoJSON.so"
#POCO_ZIP_LIB="/usr/local/lib/libPocoZip.so"
#POCO_SHARED_LIBS=$(POCO_FOUNDATION_LIB) $(POCO_UTIL_LIB) $(POCO_NET_LIB) $(POCO_NETSSL_LIB) $(POCO_CRYPTO_LIB) $(POCO_XML_LIB) $(POCO_JSON_LIB) $(POCO_ZIP_LIB)
#
## compiler flags:
##  -g    adds debugging information to the executable file
##  -Wall turns on most, but not all, compiler warnings
#CFLAGS  = -g -Wall -std=c++11 $(POCO_SHARED_LIBS) 


MAIN_LOGIC_SOURCE_FILES = ./Main.cpp 
CFLAGS  = -g -Wall -std=c++11 
all: out

out: $(MAIN_LOGIC_SOURCE_FILES) 
	$(CC) $(CFLAGS) -o out $(MAIN_LOGIC_SOURCE_FILES)

clean:
	$(RM) out
