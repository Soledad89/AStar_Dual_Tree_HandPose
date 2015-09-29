# Find libleveldb.a - key/value storage system

find_path(LevelDB_INCLUDE_PATH NAMES leveldb/db.h HINTS "/extra/titansc0/jsupanci/leveldb-1.15.0/include/")
#find_library(LevelDB_LIBRARY NAMES libleveldb.a libleveldb.lib)
find_library(LevelDB_LIBRARY NAMES libleveldb.so HINTS "/extra/titansc0/jsupanci/leveldb-1.15.0/")

if(LevelDB_INCLUDE_PATH AND LevelDB_LIBRARY)
  set(LevelDB_FOUND TRUE)
endif(LevelDB_INCLUDE_PATH AND LevelDB_LIBRARY)

if(LevelDB_FOUND)
  if(NOT LevelDB_FIND_QUIETLY)
    message(STATUS "Found LevelDB: ${LevelDB_LIBRARY} ${LevelDB_INCLUDE_PATH}")
  endif(NOT LevelDB_FIND_QUIETLY)
else(LevelDB_FOUND)
  if(LevelDB_FIND_REQUIRED)
    message(FATAL_ERROR "Could not find leveldb library. ${LevelDB_LIBRARY} ${LevelDB_INCLUDE_PATH}")
  endif(LevelDB_FIND_REQUIRED)
endif(LevelDB_FOUND)