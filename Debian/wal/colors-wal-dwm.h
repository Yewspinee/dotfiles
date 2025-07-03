static const char norm_fg[] = "#c5c5c3";
static const char norm_bg[] = "#0f0f0e";
static const char norm_border[] = "#898988";

static const char sel_fg[] = "#c5c5c3";
static const char sel_bg[] = "#FDA52E";
static const char sel_border[] = "#c5c5c3";

static const char urg_fg[] = "#c5c5c3";
static const char urg_bg[] = "#5EA16C";
static const char urg_border[] = "#5EA16C";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
