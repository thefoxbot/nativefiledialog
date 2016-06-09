package = "nfd"
version = "scm-1"
source = {
   url = "git://github.com/Alloyed/nativefiledialog.git"
}
description = {
   summary = "A tiny, neat C library that portably invokes native file open and save dialogs.",
   detailed = "A tiny, neat C library that portably invokes native file open and save dialogs.  Write dialog code once and have it pop up native dialogs on all supported platforms.  Avoid linking large dependencies like wxWidgets and qt.",
   homepage = "https://github.com/Alloyed/nativefiledialog/tree/master/lua",
   license = "zlib"
}
dependencies = {
   "lua ~> 5.1"
}
-- TODO: We can probably use the linux makefile for freebsd.
supported_platforms = { "linux", "macosx" }
external_dependencies = {
   platforms = {
      linux = {
         gtk3 = {
            library = "gtk-3",
         }
      }
   }
}
build = {
   platforms = {
      linux = {
         type = "make",
         makefile = "lua/Makefile.linux",
         build_variables = {
            CFLAGS="$(CFLAGS)",
            LIBFLAG="$(LIBFLAG)",
            LUA_LIBDIR="$(LUA_LIBDIR)",
            LUA_INCDIR="$(LUA_INCDIR)",
         },
         install_variables = {
            INST_LIBDIR="$(LIBDIR)",
         },
      },
      windows = {
         type = "builtin",
         modules = {
            nfd = {
               sources = {
                  "src/nfd_common.c",
                  "src/nfd_win.cpp",
                  "lua/nfd_wrap_lua.c"
               },
               defines = {"_CRT_SECURE_NO_WARNINGS"},
               libraries = {"comctl32"},
               incdirs = {"src/include"}
            }
         }
      },
      macosx = {
         type = "make",
         makefile = "lua/Makefile.osx",
         build_variables = {
            CFLAGS="$(CFLAGS)",
            LIBFLAG="$(LIBFLAG)",
            LUA_LIBDIR="$(LUA_LIBDIR)",
            LUA_INCDIR="$(LUA_INCDIR)",
         },
         install_variables = {
            INST_LIBDIR="$(LIBDIR)",
         },
      }
   }
}
