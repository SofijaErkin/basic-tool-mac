# Problems during Debian 11 manually make VIM

## Notice

Debian 11 make VIM 113 times for two warnings and two notes.

## Terminal output

    /usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]

    236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);

        | ^~~~

    /usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here

    679 | {

        | ^

    /usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]

    73 |   GTimeVal last_popdown;

      |   ^~~~~~~~

    /usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here

    547 | struct _GTimeVal

        |        ^~~~~~~~~
