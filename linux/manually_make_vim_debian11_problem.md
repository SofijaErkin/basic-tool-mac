# VIM make on Debian11 Problem

make
Starting make in the src directory.
If there are problems, cd to the src directory and run make there
cd src && make first
make[1]: Entering directory '/home/foruo/vim/src'
/bin/sh install-sh -c -d objects
touch objects/.dirstamp
CC="gcc -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16     " srcdir=. sh ./osdef.sh
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/alloc.o alloc.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from alloc.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from alloc.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from alloc.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from alloc.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/arabic.o arabic.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from arabic.c:31:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from arabic.c:31:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from arabic.c:31:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from arabic.c:31:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/arglist.o arglist.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from arglist.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from arglist.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from arglist.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from arglist.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/autocmd.o autocmd.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from autocmd.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from autocmd.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from autocmd.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from autocmd.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/beval.o beval.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from beval.c:11:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from beval.c:11:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from beval.c:11:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from beval.c:11:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/buffer.o buffer.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from buffer.c:28:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from buffer.c:28:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from buffer.c:28:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from buffer.c:28:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/change.o change.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from change.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from change.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from change.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from change.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/blob.o blob.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from blob.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from blob.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from blob.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from blob.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/blowfish.o blowfish.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from blowfish.c:22:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from blowfish.c:22:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from blowfish.c:22:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from blowfish.c:22:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/cindent.o cindent.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from cindent.c:18:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from cindent.c:18:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from cindent.c:18:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from cindent.c:18:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/clientserver.o clientserver.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from clientserver.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from clientserver.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from clientserver.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from clientserver.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/clipboard.o clipboard.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from clipboard.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from clipboard.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from clipboard.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from clipboard.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/cmdexpand.o cmdexpand.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from cmdexpand.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from cmdexpand.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from cmdexpand.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from cmdexpand.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/cmdhist.o cmdhist.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from cmdhist.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from cmdhist.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from cmdhist.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from cmdhist.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/crypt.o crypt.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from crypt.c:13:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from crypt.c:13:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from crypt.c:13:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from crypt.c:13:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/crypt_zip.o crypt_zip.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from crypt_zip.c:13:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from crypt_zip.c:13:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from crypt_zip.c:13:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from crypt_zip.c:13:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/debugger.o debugger.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from debugger.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from debugger.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from debugger.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from debugger.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/dict.o dict.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from dict.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from dict.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from dict.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from dict.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/diff.o diff.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from diff.c:19:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from diff.c:19:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from diff.c:19:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from diff.c:19:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/digraph.o digraph.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from digraph.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from digraph.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from digraph.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from digraph.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/drawline.o drawline.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from drawline.c:16:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from drawline.c:16:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from drawline.c:16:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from drawline.c:16:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/drawscreen.o drawscreen.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from drawscreen.c:66:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from drawscreen.c:66:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from drawscreen.c:66:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from drawscreen.c:66:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/edit.o edit.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from edit.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from edit.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from edit.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from edit.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/eval.o eval.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from eval.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from eval.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from eval.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from eval.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/evalbuffer.o evalbuffer.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalbuffer.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalbuffer.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from evalbuffer.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalbuffer.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/evalfunc.o evalfunc.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalfunc.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalfunc.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from evalfunc.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalfunc.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/evalvars.o evalvars.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalvars.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalvars.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from evalvars.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalvars.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/evalwindow.o evalwindow.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalwindow.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalwindow.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from evalwindow.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from evalwindow.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/ex_cmds.o ex_cmds.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_cmds.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_cmds.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from ex_cmds.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_cmds.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/ex_cmds2.o ex_cmds2.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_cmds2.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_cmds2.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from ex_cmds2.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_cmds2.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/ex_docmd.o ex_docmd.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_docmd.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_docmd.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from ex_docmd.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_docmd.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/ex_eval.o ex_eval.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_eval.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_eval.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from ex_eval.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_eval.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/ex_getln.o ex_getln.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_getln.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_getln.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from ex_getln.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ex_getln.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/fileio.o fileio.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from fileio.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from fileio.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from fileio.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from fileio.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/filepath.o filepath.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from filepath.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from filepath.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from filepath.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from filepath.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/findfile.o findfile.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from findfile.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from findfile.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from findfile.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from findfile.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/float.o float.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from float.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from float.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from float.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from float.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/fold.o fold.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from fold.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from fold.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from fold.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from fold.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/getchar.o getchar.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from getchar.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from getchar.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from getchar.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from getchar.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/gui_xim.o gui_xim.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_xim.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_xim.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from gui_xim.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_xim.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/hardcopy.o hardcopy.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from hardcopy.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from hardcopy.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from hardcopy.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from hardcopy.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/hashtab.o hashtab.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from hashtab.c:30:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from hashtab.c:30:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from hashtab.c:30:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from hashtab.c:30:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/help.o help.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from help.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from help.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from help.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from help.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/highlight.o highlight.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from highlight.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from highlight.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from highlight.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from highlight.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/if_cscope.o if_cscope.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_cscope.c:12:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_cscope.c:12:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from if_cscope.c:12:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_cscope.c:12:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/if_xcmdsrv.o if_xcmdsrv.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_xcmdsrv.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_xcmdsrv.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from if_xcmdsrv.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_xcmdsrv.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/indent.o indent.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from indent.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from indent.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from indent.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from indent.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/insexpand.o insexpand.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from insexpand.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from insexpand.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from insexpand.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from insexpand.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/list.o list.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from list.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from list.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from list.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from list.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/locale.o locale.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from locale.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from locale.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from locale.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from locale.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/map.o map.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from map.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from map.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from map.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from map.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/mark.o mark.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from mark.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from mark.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from mark.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from mark.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/match.o match.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from match.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from match.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from match.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from match.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/mbyte.o mbyte.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from mbyte.c:80:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from mbyte.c:80:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from mbyte.c:80:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from mbyte.c:80:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/memline.o memline.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from memline.c:45:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from memline.c:45:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from memline.c:45:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from memline.c:45:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/menu.o menu.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from menu.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from menu.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from menu.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from menu.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/misc1.o misc1.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from misc1.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from misc1.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from misc1.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from misc1.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/misc2.o misc2.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from misc2.c:13:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from misc2.c:13:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from misc2.c:13:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from misc2.c:13:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/mouse.o mouse.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from mouse.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from mouse.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from mouse.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from mouse.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/move.o move.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from move.c:20:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from move.c:20:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from move.c:20:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from move.c:20:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/normal.o normal.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from normal.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from normal.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from normal.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from normal.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/ops.o ops.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from ops.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ops.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from ops.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ops.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -I/usr/include/lua5.2 -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv  -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64  -I/usr/lib/x86_64-linux-gnu/perl/5.32/CORE   -I/usr/include/python3.9 -pthread -fPIE -I/usr/include/ruby-2.7.0 -I/usr/include/x86_64-linux-gnu/ruby-2.7.0 -DRUBY_VERSION=27  -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1              -o objects/option.o option.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from option.c:35:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from option.c:35:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from option.c:35:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from option.c:35:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -I/usr/include/lua5.2 -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv  -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64  -I/usr/lib/x86_64-linux-gnu/perl/5.32/CORE   -I/usr/include/python3.9 -pthread -fPIE -I/usr/include/ruby-2.7.0 -I/usr/include/x86_64-linux-gnu/ruby-2.7.0 -DRUBY_VERSION=27  -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1              -o objects/optionstr.o optionstr.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from optionstr.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from optionstr.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from optionstr.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from optionstr.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/os_unix.o os_unix.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from os_unix.c:21:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from os_unix.c:21:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from os_unix.c:21:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from os_unix.c:21:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
creating auto/pathdef.c
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/pathdef.o auto/pathdef.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from ./beval.h:17,
                 from ./vim.h:1872,
                 from auto/pathdef.c:4:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from ./beval.h:17,
                 from ./vim.h:1872,
                 from auto/pathdef.c:4:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from ./gui.h:25,
                 from ./structs.h:114,
                 from ./vim.h:1876,
                 from auto/pathdef.c:4:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from ./beval.h:17,
                 from ./vim.h:1872,
                 from auto/pathdef.c:4:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/popupmenu.o popupmenu.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from popupmenu.c:13:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from popupmenu.c:13:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from popupmenu.c:13:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from popupmenu.c:13:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/popupwin.o popupwin.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from popupwin.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from popupwin.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from popupwin.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from popupwin.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/profiler.o profiler.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from profiler.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from profiler.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from profiler.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from profiler.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/pty.o pty.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from pty.c:43:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from pty.c:43:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from pty.c:43:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from pty.c:43:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/quickfix.o quickfix.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from quickfix.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from quickfix.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from quickfix.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from quickfix.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/regexp.o regexp.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from regexp.c:12:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from regexp.c:12:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from regexp.c:12:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from regexp.c:12:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/register.o register.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from register.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from register.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from register.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from register.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/screen.o screen.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from screen.c:40:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from screen.c:40:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from screen.c:40:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from screen.c:40:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/scriptfile.o scriptfile.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from scriptfile.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from scriptfile.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from scriptfile.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from scriptfile.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/search.o search.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from search.c:13:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from search.c:13:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from search.c:13:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from search.c:13:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/session.o session.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from session.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from session.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from session.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from session.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/sha256.o sha256.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from sha256.c:23:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from sha256.c:23:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from sha256.c:23:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from sha256.c:23:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/sign.o sign.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from sign.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from sign.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from sign.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from sign.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/sound.o sound.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from sound.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from sound.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from sound.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from sound.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/spell.o spell.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from spell.c:59:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from spell.c:59:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from spell.c:59:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from spell.c:59:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/spellfile.o spellfile.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from spellfile.c:240:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from spellfile.c:240:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from spellfile.c:240:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from spellfile.c:240:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/spellsuggest.o spellsuggest.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from spellsuggest.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from spellsuggest.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from spellsuggest.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from spellsuggest.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/strings.o strings.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from strings.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from strings.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from strings.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from strings.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/syntax.o syntax.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from syntax.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from syntax.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from syntax.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from syntax.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/tag.o tag.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from tag.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from tag.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from tag.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from tag.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/term.o term.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from term.c:26:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from term.c:26:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from term.c:26:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from term.c:26:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/terminal.o terminal.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from terminal.c:41:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from terminal.c:41:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from terminal.c:41:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from terminal.c:41:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/testing.o testing.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from testing.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from testing.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from testing.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from testing.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/textformat.o textformat.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from textformat.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from textformat.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from textformat.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from textformat.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/textobject.o textobject.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from textobject.c:13:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from textobject.c:13:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from textobject.c:13:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from textobject.c:13:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/textprop.o textprop.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from textprop.c:29:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from textprop.c:29:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from textprop.c:29:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from textprop.c:29:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/time.o time.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from time.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from time.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from time.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from time.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/typval.o typval.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from typval.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from typval.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from typval.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from typval.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/ui.o ui.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from ui.c:18:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ui.c:18:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from ui.c:18:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from ui.c:18:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/undo.o undo.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from undo.c:87:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from undo.c:87:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from undo.c:87:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from undo.c:87:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/usercmd.o usercmd.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from usercmd.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from usercmd.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from usercmd.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from usercmd.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/userfunc.o userfunc.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from userfunc.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from userfunc.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from userfunc.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from userfunc.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/vim9cmds.o vim9cmds.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9cmds.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9cmds.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from vim9cmds.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9cmds.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/vim9compile.o vim9compile.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9compile.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9compile.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from vim9compile.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9compile.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/vim9execute.o vim9execute.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9execute.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9execute.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from vim9execute.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9execute.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/vim9expr.o vim9expr.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9expr.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9expr.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from vim9expr.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9expr.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/vim9instr.o vim9instr.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9instr.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9instr.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from vim9instr.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9instr.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/vim9script.o vim9script.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9script.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9script.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from vim9script.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9script.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/vim9type.o vim9type.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9type.c:15:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9type.c:15:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from vim9type.c:15:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from vim9type.c:15:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/viminfo.o viminfo.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from viminfo.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from viminfo.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from viminfo.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from viminfo.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/window.o window.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from window.c:10:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from window.c:10:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from window.c:10:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from window.c:10:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/bufwrite.o bufwrite.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from bufwrite.c:14:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from bufwrite.c:14:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from bufwrite.c:14:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from bufwrite.c:14:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/gui.o gui.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui.c:11:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui.c:11:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from gui.c:11:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui.c:11:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/gui_gtk.o gui_gtk.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk.c:34:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk.c:34:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from gui_gtk.c:34:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk.c:34:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
if test -z "/usr/bin/glib-compile-resources"; then touch auto/gui_gtk_gresources.h; else \
 /usr/bin/glib-compile-resources --target=auto/gui_gtk_gresources.h --sourcedir=../pixmaps --generate --c-name=gui_gtk --manual-register gui_gtk_res.xml; \
fi
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/gui_gtk_x11.o gui_gtk_x11.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk_x11.c:28:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk_x11.c:28:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from gui_gtk_x11.c:28:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk_x11.c:28:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/gui_gtk_f.o gui_gtk_f.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk_f.c:26:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk_f.c:26:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from gui_gtk_f.c:26:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_gtk_f.c:26:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/gui_beval.o gui_beval.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_beval.c:11:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_beval.c:11:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from gui_beval.c:11:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from gui_beval.c:11:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
/usr/bin/glib-compile-resources --target=auto/gui_gtk_gresources.c --sourcedir=../pixmaps --generate --c-name=gui_gtk --manual-register gui_gtk_res.xml
gcc -c -I. -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv  -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64  -I/usr/lib/x86_64-linux-gnu/perl/5.32/CORE  -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/gui_gtk_gresources.o auto/gui_gtk_gresources.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_encoding.o libvterm/src/encoding.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_keyboard.o libvterm/src/keyboard.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_mouse.o libvterm/src/mouse.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_parser.o libvterm/src/parser.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_pen.o libvterm/src/pen.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_screen.o libvterm/src/screen.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_state.o libvterm/src/state.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_unicode.o libvterm/src/unicode.c
gcc -c -I. -Ilibvterm/include -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -DINLINE="" -DVSNPRINTF=vim_vsnprintf -DSNPRINTF=vim_snprintf -DIS_COMBINING_FUNCTION=utf_iscomposing_uint -DWCWIDTH_FUNCTION=utf_uint2cells -o objects/vterm_vterm.o libvterm/src/vterm.c
gcc -c -I. -I/usr/include/lua5.2 -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1         -o objects/if_lua.o if_lua.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_lua.c:12:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_lua.c:12:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from if_lua.c:12:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_lua.c:12:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
/usr/bin/perl -e 'unless ( $] >= 5.005 ) { for (qw(na defgv errgv)) { print "#define PL_$_$_\n" }}' > auto/if_perl.c
/usr/bin/perl /usr/share/perl/5.32/ExtUtils/xsubpp -prototypes -typemap \
    /usr/share/perl/5.32/ExtUtils/typemap if_perl.xs >> auto/if_perl.c
gcc -c -I. -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv  -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64  -I/usr/lib/x86_64-linux-gnu/perl/5.32/CORE  -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1         -o objects/if_perl.o auto/if_perl.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from ./beval.h:17,
                 from ./vim.h:1872,
                 from if_perl.xs:38:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from ./beval.h:17,
                 from ./vim.h:1872,
                 from if_perl.xs:38:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from ./gui.h:25,
                 from ./structs.h:114,
                 from ./vim.h:1876,
                 from if_perl.xs:38:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from ./beval.h:17,
                 from ./vim.h:1872,
                 from if_perl.xs:38:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv  -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64  -I/usr/lib/x86_64-linux-gnu/perl/5.32/CORE  -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1         -o objects/if_perlsfio.o if_perlsfio.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_perlsfio.c:16:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_perlsfio.c:16:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from if_perlsfio.c:16:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_perlsfio.c:16:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -I/usr/include/python3.9 -pthread -fPIE -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1         -o objects/if_python3.o if_python3.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_python3.c:32:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_python3.c:32:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from if_python3.c:32:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_python3.c:32:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -I/usr/include/ruby-2.7.0 -I/usr/include/x86_64-linux-gnu/ruby-2.7.0 -DRUBY_VERSION=27 -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1         -o objects/if_ruby.o if_ruby.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_ruby.c:184:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_ruby.c:184:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from if_ruby.c:184:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from if_ruby.c:184:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/netbeans.o netbeans.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from netbeans.c:26:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from netbeans.c:26:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from netbeans.c:26:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from netbeans.c:26:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/job.o job.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from job.c:13:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from job.c:13:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from job.c:13:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from job.c:13:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/channel.o channel.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from channel.c:20:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from channel.c:20:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from channel.c:20:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from channel.c:20:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/xdiffi.o xdiff/xdiffi.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xdiffi.c:23:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xdiffi.c:23:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from xdiff/../gui.h:25,
                 from xdiff/../structs.h:114,
                 from xdiff/../vim.h:1876,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xdiffi.c:23:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xdiffi.c:23:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/xemit.o xdiff/xemit.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xemit.c:23:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xemit.c:23:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from xdiff/../gui.h:25,
                 from xdiff/../structs.h:114,
                 from xdiff/../vim.h:1876,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xemit.c:23:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xemit.c:23:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/xprepare.o xdiff/xprepare.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xprepare.c:23:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xprepare.c:23:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from xdiff/../gui.h:25,
                 from xdiff/../structs.h:114,
                 from xdiff/../vim.h:1876,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xprepare.c:23:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xprepare.c:23:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/xutils.o xdiff/xutils.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xutils.c:23:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xutils.c:23:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from xdiff/../gui.h:25,
                 from xdiff/../structs.h:114,
                 from xdiff/../vim.h:1876,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xutils.c:23:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xutils.c:23:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/xhistogram.o xdiff/xhistogram.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xhistogram.c:44:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xhistogram.c:44:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from xdiff/../gui.h:25,
                 from xdiff/../structs.h:114,
                 from xdiff/../vim.h:1876,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xhistogram.c:44:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xhistogram.c:44:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/xpatience.o xdiff/xpatience.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xpatience.c:22:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xpatience.c:22:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from xdiff/../gui.h:25,
                 from xdiff/../structs.h:114,
                 from xdiff/../vim.h:1876,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xpatience.c:22:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from xdiff/../beval.h:17,
                 from xdiff/../vim.h:1872,
                 from xdiff/xdiff.h:125,
                 from xdiff/xinclude.h:63,
                 from xdiff/xpatience.c:22:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/charset.o charset.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from charset.c:10:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from charset.c:10:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from charset.c:10:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from charset.c:10:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/json.o json.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from json.c:17:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from json.c:17:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from json.c:17:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from json.c:17:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/main.o main.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from main.c:11:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from main.c:11:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from main.c:11:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from main.c:11:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/memfile.o memfile.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from memfile.c:35:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from memfile.c:35:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from memfile.c:35:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from memfile.c:35:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        -o objects/message.o message.c
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from message.c:16:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from message.c:16:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from message.c:16:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from message.c:16:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
  547 | struct _GTimeVal
      |        ^~~~~~~~~
gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16   -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1        version.c -o objects/version.o
In file included from /usr/include/gtk-2.0/gtk/gtkobject.h:37,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:36,
                 from beval.h:17,
                 from vim.h:1872,
                 from version.c:10:
/usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]
  236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);
      | ^~~~
In file included from /usr/include/glib-2.0/gobject/gobject.h:24,
                 from /usr/include/glib-2.0/gobject/gbinding.h:29,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from version.c:10:
/usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here
  679 | {
      | ^
In file included from /usr/include/gtk-2.0/gtk/gtktoolitem.h:31,
                 from /usr/include/gtk-2.0/gtk/gtktoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtkmenutoolbutton.h:30,
                 from /usr/include/gtk-2.0/gtk/gtk.h:126,
                 from gui.h:25,
                 from structs.h:114,
                 from vim.h:1876,
                 from version.c:10:
/usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]
   73 |   GTimeVal last_popdown;
      |   ^~~~~~~~
In file included from /usr/include/glib-2.0/glib/galloca.h:32,
                 from /usr/include/glib-2.0/glib.h:30,
                 from /usr/include/glib-2.0/gobject/gbinding.h:28,
                 from /usr/include/glib-2.0/glib-object.h:22,
                 from /usr/include/glib-2.0/gio/gioenums.h:28,
                 from /usr/include/glib-2.0/gio/giotypes.h:28,
                 from /usr/include/glib-2.0/gio/gio.h:26,
                 from /usr/include/gtk-2.0/gdk/gdkapplaunchcontext.h:30,
                 from /usr/include/gtk-2.0/gdk/gdk.h:32,
                 from /usr/include/gtk-2.0/gtk/gtkwidget.h:34,
                 from beval.h:17,
                 from vim.h:1872,
                 from version.c:10:
/usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here
547 | struct_GTimeVal
      |        ^~~~~~~~~
link.sh: $LINK_AS_NEEDED set to 'yes': invoking linker directly.
  gcc   -L. -Wl,-z,relro -Wl,-z,now -fstack-protector-strong -rdynamic -Wl,-export-dynamic -Wl,-E   -L/usr/local/lib -Wl,--as-needed  -o vim objects/alloc.o objects/arabic.o objects/arglist.o objects/autocmd.o objects/beval.o objects/buffer.o objects/change.o objects/blob.o objects/blowfish.o objects/cindent.o objects/clientserver.o objects/clipboard.o objects/cmdexpand.o objects/cmdhist.o objects/crypt.o objects/crypt_zip.o objects/debugger.o objects/dict.o objects/diff.o objects/digraph.o objects/drawline.o objects/drawscreen.o objects/edit.o objects/eval.o objects/evalbuffer.o objects/evalfunc.o objects/evalvars.o objects/evalwindow.o objects/ex_cmds.o objects/ex_cmds2.o objects/ex_docmd.o objects/ex_eval.o objects/ex_getln.o objects/fileio.o objects/filepath.o objects/findfile.o objects/float.o objects/fold.o objects/getchar.o objects/gui_xim.o objects/hardcopy.o objects/hashtab.o objects/help.o objects/highlight.o objects/if_cscope.o objects/if_xcmdsrv.o objects/indent.o objects/insexpand.o objects/list.o objects/locale.o objects/map.o objects/mark.o objects/match.o objects/mbyte.o objects/memline.o objects/menu.o objects/misc1.o objects/misc2.o objects/mouse.o objects/move.o objects/normal.o objects/ops.o objects/option.o objects/optionstr.o objects/os_unix.o objects/pathdef.o objects/popupmenu.o objects/popupwin.o objects/profiler.o objects/pty.o objects/quickfix.o objects/regexp.o objects/register.o objects/screen.o objects/scriptfile.o objects/search.o objects/session.o objects/sha256.o objects/sign.o objects/sound.o objects/spell.o objects/spellfile.o objects/spellsuggest.o objects/strings.o objects/syntax.o objects/tag.o objects/term.o objects/terminal.o objects/testing.o objects/textformat.o objects/textobject.o objects/textprop.o objects/time.o objects/typval.o objects/ui.o objects/undo.o objects/usercmd.o objects/userfunc.o objects/version.o objects/vim9cmds.o objects/vim9compile.o objects/vim9execute.o objects/vim9expr.o objects/vim9instr.o objects/vim9script.o objects/vim9type.o objects/viminfo.o objects/window.o objects/bufwrite.o objects/gui.o objects/gui_gtk.o objects/gui_gtk_x11.o objects/gui_gtk_f.o objects/gui_beval.o objects/gui_gtk_gresources.o objects/vterm_encoding.o objects/vterm_keyboard.o objects/vterm_mouse.o objects/vterm_parser.o objects/vterm_pen.o objects/vterm_screen.o objects/vterm_state.o objects/vterm_unicode.o objects/vterm_vterm.o objects/if_lua.o  objects/if_perl.o objects/if_perlsfio.o  objects/if_python3.o  objects/if_ruby.o  objects/netbeans.o objects/job.o objects/channel.o objects/xdiffi.o objects/xemit.o objects/xprepare.o objects/xutils.o objects/xhistogram.o objects/xpatience.o  objects/charset.o objects/json.o objects/main.o objects/memfile.o objects/message.o   -lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lharfbuzz -lfontconfig -lfreetype -lSM -lICE -lXpm -lXt -lX11 -lXdmcp -lSM -lICE  -lm -ltinfo   -ldl  -L/usr/lib -llua5.2 -Wl,-E  -fstack-protector-strong -L/usr/local/lib  -L/usr/lib/x86_64-linux-gnu/perl/5.32/CORE -lperl -ldl -lm -lpthread -lcrypt  -L/usr/lib/python3.9/config-3.9-x86_64-linux-gnu -lpython3.9 -lcrypt -lpthread -ldl -lutil -lm -lm  -lruby-2.7 -lm  -L/usr/lib
link.sh: Linked fine
cd xxd; CC="gcc" CFLAGS=" -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1" LDFLAGS="-L. -Wl,-z,relro -Wl,-z,now -fstack-protector-strong -rdynamic -Wl,-export-dynamic -Wl,-E   -L/usr/local/lib -Wl,--as-needed" \
 make -f Makefile
make[2]: Entering directory '/home/foruo/vim/src/xxd'
gcc  -g -O2 -D_REENTRANT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1 -L. -Wl,-z,relro -Wl,-z,now -fstack-protector-strong -rdynamic -Wl,-export-dynamic -Wl,-E   -L/usr/local/lib -Wl,--as-needed -DUNIX -o xxd xxd.c
make[2]: Leaving directory '/home/foruo/vim/src/xxd'
make[2]: Entering directory '/home/foruo/vim/src/po'
OLD_PO_FILE_INPUT=yes msgfmt -v -o af.mo af.po
1411 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o ca.mo ca.po
2791 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o cs.mo cs.po
1272 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o da.mo da.po
1960 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o de.mo de.po
2785 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o en_GB.mo en_GB.po
181 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o eo.mo eo.po
2334 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o es.mo es.po
1697 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o fi.mo fi.po
2786 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o fr.mo fr.po
2186 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o ga.mo ga.po
2352 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o it.mo it.po
2789 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o ja.mo ja.po
2782 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o ko.UTF-8.mo ko.UTF-8.po
1866 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o ko.mo ko.po
1866 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o lv.mo lv.po
78 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o nb.mo nb.po
1655 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o nl.mo nl.po
1207 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o no.mo no.po
1655 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o pl.mo pl.po
1858 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o pt_BR.mo pt_BR.po
1933 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o ru.mo ru.po
2037 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o sk.mo sk.po
1615 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o sr.mo sr.po
2786 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o sv.mo sv.po
1684 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o tr.mo tr.po
2785 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o uk.mo uk.po
1960 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o vi.mo vi.po
1410 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o zh_CN.UTF-8.mo zh_CN.UTF-8.po
1621 translated messages, 3 fuzzy translations.
OLD_PO_FILE_INPUT=yes msgfmt -v -o zh_TW.UTF-8.mo zh_TW.UTF-8.po
1410 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o zh_TW.mo zh_TW.po
1410 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o cs.cp1250.mo cs.cp1250.po
1272 translated messages.
iconv -f utf-8 -t euc-jp ja.po | \
 sed -e 's/charset=[uU][tT][fF]-8/charset=euc-jp/' -e 's/# Original translations/# Generated from ja.po, DO NOT EDIT/' > ja.euc-jp.po
OLD_PO_FILE_INPUT=yes msgfmt -v -o ja.euc-jp.mo ja.euc-jp.po
2782 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o ja.sjis.mo ja.sjis.po
2782 translated messages.
rm -f pl.UTF-8.po
iconv -f iso-8859-2 -t utf-8 pl.po | \
 sed -e 's/charset=ISO-8859-2/charset=UTF-8/' -e 's/# Original translations/# Generated from pl.po, DO NOT EDIT/' > pl.UTF-8.po
OLD_PO_FILE_INPUT=yes msgfmt -v -o pl.UTF-8.mo pl.UTF-8.po
1858 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o pl.cp1250.mo pl.cp1250.po
1858 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o ru.cp1251.mo ru.cp1251.po
2037 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o sk.cp1250.mo sk.cp1250.po
1615 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o uk.cp1251.mo uk.cp1251.po
1960 translated messages.
OLD_PO_FILE_INPUT=yes msgfmt -v -o zh_CN.mo zh_CN.po
1621 translated messages, 3 fuzzy translations.
OLD_PO_FILE_INPUT=yes msgfmt -v -o zh_CN.cp936.mo zh_CN.cp936.po
1621 translated messages, 3 fuzzy translations.
echo af ca cs cs.cp1250 da de en_GB eo es fi fr ga it ja ja.euc-jp ja.sjis ko ko.UTF-8 lv nb nl no pl pl.UTF-8 pl.cp1250 pt_BR ru ru.cp1251 sk sk.cp1250 sr sv tr uk uk.cp1251 vi zh_CN zh_CN.UTF-8 zh_CN.cp936 zh_TW zh_TW.UTF-8  | tr " " "\n" |sed -e '/\./d' | sort > LINGUAS
msgfmt --desktop -d . --template gvim.desktop.in -o tmp_gvim.desktop
rm -f LINGUAS
if command -v desktop-file-validate; then desktop-file-validate tmp_gvim.desktop; fi
/usr/bin/desktop-file-validate
mv tmp_gvim.desktop gvim.desktop
echo af ca cs cs.cp1250 da de en_GB eo es fi fr ga it ja ja.euc-jp ja.sjis ko ko.UTF-8 lv nb nl no pl pl.UTF-8 pl.cp1250 pt_BR ru ru.cp1251 sk sk.cp1250 sr sv tr uk uk.cp1251 vi zh_CN zh_CN.UTF-8 zh_CN.cp936 zh_TW zh_TW.UTF-8  | tr " " "\n" |sed -e '/\./d' | sort > LINGUAS
msgfmt --desktop -d . --template vim.desktop.in -o tmp_vim.desktop
rm -f LINGUAS
if command -v desktop-file-validate; then desktop-file-validate tmp_vim.desktop; fi
/usr/bin/desktop-file-validate
mv tmp_vim.desktop vim.desktop
make[2]: Leaving directory '/home/foruo/vim/src/po'
make[2]: Entering directory '/home/foruo/vim/src/po'
make[2]: Nothing to be done for 'converted'.
make[2]: Leaving directory '/home/foruo/vim/src/po'
make[1]: Leaving directory '/home/foruo/vim/src'
