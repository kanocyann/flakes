{ pkgs, ... }: {
  programs.firefox = {
    enable = true;
    package = pkgs.wrapFirefox pkgs.firefox-unwrapped {
      extraPolicies = {
        DisplayBookmarksToolbar = true;
        Preferences = {
          "browser.toolbars.bookmarks.visibility" = "never";
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "media.ffmpeg.vaapi.enabled" = true;
        };
      };
    };
    profiles.default = {
          id = 0;
          isDefault = true;
          name = "kano";
	  search = import ./search.nix;
          settings = import ./settings.nix;
          userChrome = ''
	         #sidebar-box,
              .sidebar-panel[lwt-sidebar-brighttext] {
                background-color: var(--base_color1) !important;
              }


              /* The default sidebar width. */
              /* #sidebar-box { */
              /*   overflow: hidden!important; */
              /*   position: relative!important; */
              /*   transition: all 300ms!important; */
              /*   min-width: 60px !important; */
              /*   max-width: 60px !important; */
              /* } */

              /* The sidebar width when hovered. */
              /* #sidebar-box #sidebar,#sidebar-box:hover { */
              /*   transition: all 300ms!important; */
              /*   min-width: 60px !important; */
              /*   max-width: 200px !important; */
              /* } */


              /* only remove TST headers */
        #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] #sidebar-header {
                display: none; /* remove sidebar header */
                border-color: var(--base_color2) !important;
              }
	                    .sidebar-splitter {
                /* display: none;  remove sidebar split line */
                min-width: 1px !important;
                max-width: 1px !important;
                border-color: var(--base_color2) !important;
              }



              /*================== URL BAR ==================*/


      '';
         userContent = ''
                /*hide all scroll bars*/
                /* *{ scrollbar-width: none !important } */


                @-moz-document url-prefix("about:") {
                    :root {
                        --in-content-page-background: #1E1E2E !important;
                    }
                }
        
        
                @-moz-document url-prefix(about:home), url-prefix(about:newtab){

            /* show nightly logo instead of default firefox logo in newtabpage */
            .search-wrapper .logo-and-wordmark .logo {
                background: url("${./logo.png}") no-repeat center !important;
                background-size: auto !important;
                background-size: 82px !important;
                display: inline-block !important;
                height: 82px !important;
                width: 82px !important;
            }
	    .search-wrapper .logo-and-wordmark .wordmark {
	      display: none !important;
	      }
	      .top-sites-list {
	        display: none !important;
		}

            body {
                background-color: #000000 !important;
                background: url("${./bg.png}") no-repeat fixed !important;
                background-size: cover !important;
                --newtab-background-color: #000000 !important;
                --newtab-background-color-secondary: #101010 !important;
            }

            body[lwt-newtab-brighttext] {
                --newtab-background-color: #000000 !important;
                --newtab-background-color-secondary: #101010 !important;

            }

            .top-site-outer .top-site-icon {
                background-color: transparent !important;

            }

            .top-site-outer .tile {
                background-color: rgba(49, 49, 49, 0.4) !important;
            }

            .top-sites-list:not(.dnd-active) .top-site-outer:is(.active, :focus, :hover) {
                background: rgba(49, 49, 49, 0.3) !important;
            }

            .top-site-outer .context-menu-button:is(:active, :focus) {
                background-color: transparent !important;
            }

            .search-wrapper .search-handoff-button{
                border-radius: 40px !important;
                background-color: rgba(49, 49, 49, 0.4) !important;
            }
        }
      '';
    };
  };
}
