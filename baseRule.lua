-- Default layout order                 
layouts = {                           --
    awful.layout.suit.tile             ,
    awful.layout.suit.max              ,
    awful.layout.suit.fair             ,
    awful.layout.suit.tile.bottom      ,
    awful.layout.suit.floating         ,
    awful.layout.suit.max.fullscreen   ,
}                                     --
layouts_all = {                       --
    awful.layout.suit.tile             ,
    awful.layout.suit.max              ,
    awful.layout.suit.fair             ,
    awful.layout.suit.tile.left        ,
    awful.layout.suit.tile.bottom      ,
    awful.layout.suit.tile.top         ,
    awful.layout.suit.fair.horizontal  ,
    awful.layout.suit.spiral           ,
    --awful.layout.suit.spiral.dwindle ,
    awful.layout.suit.max.fullscreen   ,
    awful.layout.suit.magnifier        ,
    awful.layout.suit.floating         ,
----------------------------------------
}


shifty.config.tags = { 
-- Default tags
-- NAME             PARAMETER                         VALUE                       
["Term"] =       {  init        = true                                           ,
                    position    = 1                                              ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("term.png")       ,
                    max_clients = 5                                              ,
                    screen      = {config.data().scr.pri, config.data().scr.sec} ,
                    layout      = awful.layout.suit.tile                       } ,
["Internet"] =   {  init        = true                                           ,
                    position    = 2                                              ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("net.png")        ,
                    screen      = config.data().scr.pri                            ,
                    layout      = awful.layout.suit.max                        } ,
["Files"] =      {  init        = true                                           ,
                    position    = 3                                              ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("folder.png")     ,
                    max_clients = 5                                              ,
                    screen      = config.data().scr.pri                            ,
                    layout      = awful.layout.suit.tile                       } ,
["Develop"] =    {  init        = true                                           ,
                    position    = 4                                              ,
                    exclusive   = true                                           ,
                    screen      = {config.data().scr.pri, config.data().scr.sec}     ,
                    icon        = utils.tools.invertedIconPath("bug.png")        ,
                    layout      = awful.layout.suit.max                        } ,
["Edit"] =       {  init        = true                                           ,
                    position    = 5                                              ,
                    exclusive   = true                                           ,
                    screen      = {config.data().scr.pri, config.data().scr.sec}     ,
                    icon        = utils.tools.invertedIconPath("editor.png")     ,
                    max_clients = 5                                              ,
                    layout      = awful.layout.suit.tile.bottom                } ,
["Media"] =      {  init        = true                                           ,
                    position    = 6                                              ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("media.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["Doc"] =        {  init        = true                                           ,
                    position    = 7                                              ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("info.png")       ,
                    screen      = config.data().scr.music                          ,
                    layout      = awful.layout.suit.max                        } ,
----------------------------------------------------------------------------------
                    
-- Volatile tags
-- NAME             PARAMETER                         VALUE                       
["Imaging"] =    {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("image.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["Picture"] =    {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("image.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["Video"] =      {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("video.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["Movie"] =      {  init        = false                                          ,
                    position    = 12                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("video.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["3D"] =         {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("3d.png")         ,
                    layout      = awful.layout.suit.max.fullscreen             } ,
["Music"] =      {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    screen      = config.data().scr.music or config.data().scr.pri   ,
                    icon        = utils.tools.invertedIconPath("media.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["Down"] =       {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("download.png")   ,
                    layout      = awful.layout.suit.max                        } ,
["Office"] =     {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("office.png")     ,
                    layout      = awful.layout.suit.max                        } ,
["RSS"] =        {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("rss.png")        ,
                    layout      = awful.layout.suit.max                        } ,
["Chat"] =       {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    screen      = config.data().scr.sec or config.data().scr.sec     ,
                    icon        = utils.tools.invertedIconPath("chat.png")       ,
                    layout      = awful.layout.suit.tile                       } ,
["Burning"] =    {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    icon        = utils.tools.invertedIconPath("burn.png")       ,
                    layout      = awful.layout.suit.tile                       } ,
["Mail"] =       {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    screen      = config.data().scr.sec or config.data().scr.pri     ,
                    icon        = utils.tools.invertedIconPath("mail2.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["IRC"] =        {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = true                                           ,
                    screen      = config.data().scr.irc or config.data().scr.pri     ,
                    init        = true                                           ,
                    spawn       = "konversation"                                 ,
                    icon        = utils.tools.invertedIconPath("irc.png")        ,
                    layout      = awful.layout.suit.fair                       } ,
["Test"] =       {  init        = false                                          ,
                    position    = 99                                             ,
                    exclusive   = false                                          ,
                    screen      = config.data().scr.sec or config.data().scr.pri     ,
                    leave_kills = true                                           ,
                    persist     = true                                           ,
                    icon        = utils.tools.invertedIconPath("tools.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["Config"] =     {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = false                                          ,
                    icon        = utils.tools.invertedIconPath("tools.png")      ,
                    layout      = awful.layout.suit.max                        } ,
["Game"] =       {  init        = false                                          ,
                    screen      = config.data().scr.pri                            ,
                    position    = 10                                             ,
                    exclusive   = false                                          ,
                    icon        = utils.tools.invertedIconPath("game.png")       ,
                    layout      = awful.layout.suit.max                        } ,
["Gimp"] =       {  init        = false                                          ,
                    position    = 10                                             ,
                    exclusive   = false                                          ,
                    icon        = utils.tools.invertedIconPath("image.png")      ,
                    layout      = awful.layout.tile                              ,
                    nmaster     = 1                                              ,
                    incncol     = 10                                             ,
                    ncol        = 2                                              ,
                    mwfact      = 0.00                                         } ,
["Other"] =       { init        = true                                           ,
                    position    = 15                                             ,
                    exclusive   = false                                          ,
                    icon        = utils.tools.invertedIconPath("term.png")       ,
                    max_clients = 5                                              ,
                    screen      = {3, 4, 5}                                      ,
                    layout      = awful.layout.suit.tile                       } ,
["MediaCenter"] = { init        = true                                           ,
                    position    = 15                                             ,
                    exclusive   = false                                          ,
                    icon        = utils.tools.invertedIconPath("video.png")      ,
                    max_clients = 5                                              ,
                    screen      = config.data().scr.media or config.data().scr.pri   ,
                    init        = "mythfrontend"                                 ,
                    layout      = awful.layout.suit.tile                       } ,
----------------------------------------------------------------------------------
}
--shifty.config.tags = config.data().shifty_tags


local shifty_rules = {
-- Default tags
--          APP1              APP2                APP3            APP4             APP5                      RULES                   
{match = { "xterm"         , "urxvt"          , "aterm"     , "sauer_client" , "mythfrontend"      } , honorsizehints = false       ,
                                                                                                       slave = false                ,
                                                                                                       tag = "Term"               } ,
{match = { "Kimberlite"    , "Kling"          , "Krong"     , "ktechlab_test"                      } , tag = "Test"               } ,
{match = { "Opera"         , "Firefox"        , "ReKonq"    , "Dillo"        , "Arora"               ,                             --
           "Chromium"      , "nightly"        , "Nightly"   , "minefield"    , "Minefield"         } , tag = "Internet"           } ,
{match = { "Thunar"        , "Konqueror"      , "Dolphin"   , "ark"          , "Nautilus",         } , tag = "Files"              } ,
{match = { "Kate"          , "KDevelop"       , "Codeblocks", "Code::Blocks" , "DDD",              } , tag = "Develop"            } ,
{match = { "KWrite"        , "GVim"           , "Emacs"     , "Code::Blocks" , "DDD"               } , tag = "Edit"               } ,
{match = { "Xine"          , "xine Panel"     , "xine*"     , "MPlayer"      , "GMPlayer"            ,                             --
           "XMMS"          ,                                                                       } , tag = "Media"              } ,
{match = { "VLC"                                                                                   } , tag = "Movie"              } ,
{match = { "Inkscape"      , "KolourPaint"    , "Krita"     , "Karbon"       , "Karbon14"          } , tag = "Imaging"            } ,
{match = { "Digikam"       , "F-Spot"         , "GPicView"  , "ShowPhoto"    , "KPhotoAlbum"       } , tag = "Picture"            } ,
{match = { "KDenLive"      , "Cinelerra"      , "AVIDeMux"  , "Kino"         ,                     } , honorsizehints = true        ,
                                                                                                       tag = "Video"              } ,
{match = { "Blender"       , "Maya"           , "K-3D"      , "KPovModeler"  ,                     } , tag = "3D"                 } ,
{match = { "Amarok"        , "SongBird"       , "last.fm"   ,                                      } , tag = "Music"              } ,
{match = { "Assistant"     , "Okular"         , "Evince"    , "EPDFviewer"   , "xpdf"                ,                             --
           "Xpdf"          ,                                                                       } , tag = "Doc"                } ,
{match = { "Transmission"  , "KGet"           ,                                                    } , tag = "Down"               } ,
{match = { "mythfrontend"  , "xbmc"           ,                                                    } , tag = "MediaCenter"          ,
                                                                                                       honorsizehints = false     } ,
{match = { "OOWriter"      , "OOCalc"         , "OOMath"    , "OOImpress"    , "OOBase"              ,                             --
           "SQLitebrowser" , "Silverun"       , "Workbench" , "KWord"        , "KSpread"             ,                             --
           "KPres","Basket", "openoffice.org" , "OpenOffice.*"               ,                     } , tag = "Office"             } ,
{match = { "Pidgin"        , "Kopete"         ,                                                    } , tag = "Chat"               } ,
{match = { "Konversation"  , "Botch"          , "WeeChat"   , "weechat"      , "irssi"             } , tag = "IRC"                } ,
{match = { "Systemsettings", "Kcontrol"       , "gconf-editor"               ,                     } , tag = "Config"             } ,
{match = { "k3b"           ,                                                                       } , tag = "Burning"            } ,
{match = { "sauer_client"  , "Cube 2$"        , "Cube 2: Sauerbraten"        ,                     } , tag = "Game"               } ,
{match = { "Thunderbird"   , "kmail"          , "evolution" ,                                      } , tag = "Mail"               } ,
{match = { "ksnapshot"     , "pinentry"       , "gtksu"     , "kcalc"        , "xcalc"               ,                             --
           "feh"           , "Gradient editor", "About KDE" , "Paste Special", "Background color"    ,                             --
           "kcolorchooser" , "plasmoidviewer" , "plasmaengineexplorer"                             } , intrusive = true,          } ,
{match = { "rssStock"      ,                                                                       } , tag = "RSS"                  ,
                                                                                                       honorsizehints = false     } ,
{match = { "gimp"          ,                                                                       } , honorsizehints = false       ,
                                                                                                       tag = "Gimp"               } ,
-- Custom
--          APP1              APP2               APP3            APP4             APP5                      RULES                    
{match = { "^Conky$"       ,                                                                       } , intrusive = true             ,
                                                                                                       geometry  = {64,39}          ,
                                                                                                       sticky    = true           } ,
{match = {"gimp-image-window"                              ,                                       } , slave     = true             ,
                                                                                                       geometry  = {0,0,200,800}    ,
                                                                                                       struts    = { right=200 }  } ,
{match = {"gimp-dock"      , "Tool Options"                ,                                       } , slave     = true             ,
                                                                                                       geometry  = {nil,0,0,0}    } ,
{match = {"gimp-toolbox"   , "gimp.toolbox" ,   "ToolBox"  ,                                       } , slave     = false            ,
                                                                                                       geometry  = {0,0,0,0}      } ,
-- Slave
--          APP1              APP2               APP3            APP4             APP5                      RULES                    
{match = { "pcmanfm"      , "Moving"          , "^Moving$"   , "Extracting"   , "^Extracting$"       ,                             --
           "Deleting"     , "^Deleting$"      , "Copying"    , "^Copying$"    ,                    } , slave = true               } ,

-- Floating clients
--          APP1              APP2               APP3            APP4             APP5                      RULES                    
{match = { "MPlayer"      , "pinentry"        , "ksnapshot"  , "pinentry"     , "gtksu"              ,                             --
           "xine"         , "feh"             , "kmix"       , "kcalc"        , "xcalc"              ,                             --
           "yakuake"      , "Select Color$"   , "kruler"     , "kcolorchooser", "Paste Special"      ,                             --
           "New Form"     , "Insert Picture"  , "kcharselect", "mythfrontend" , "plasmoidviewer"   } , float = true               } ,
{match = { "Konversation" , "Opera"           , "Firefox"    , "Chrome"       , "Okular"             ,                             --
           "*OpenOffice*" , "OpenOffice"      , "Qt Designer",                                     } , float = false              } ,
-------------------------------------------------------------------------------------------------------------------------------------



-- Buttons                                                                       
{ match = { "" }                                                                ,
  buttons = awful.util.table.join(                                             --
      awful.button({        }, 1, function (c) client.focus = c; c:raise() end) ,
      awful.button({ modkey }, 1, awful.mouse.client.move                     ) ,
      awful.button({ modkey }, 3, awful.mouse.client.resize                   ) ,
      awful.button({ modkey }, 2, ultiLayout.common.drag_cg_under_cursor      ) ,
      awful.button({ modkey, "Control" }, 1, ultiLayout.common.drag_cg_under_cursor      ) ,
      awful.button({ modkey }, 9, awful.mouse.client.move                     ) ,
      awful.button({ modkey }, 8, awful.mouse.client.resize)                  ) ,
  titlebar = false                                                              ,
}                                                                               ,
---------------------------------------------------------------------------------
}
utils.persistent.loadClassesRules(shifty_rules)
shifty.config.apps = shifty_rules
