const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f0f0e", /* black   */
  [1] = "#5EA16C", /* red     */
  [2] = "#FDA52E", /* green   */
  [3] = "#C6B862", /* yellow  */
  [4] = "#576797", /* blue    */
  [5] = "#A36B9F", /* magenta */
  [6] = "#58A4AB", /* cyan    */
  [7] = "#c5c5c3", /* white   */

  /* 8 bright colors */
  [8]  = "#898988",  /* black   */
  [9]  = "#5EA16C",  /* red     */
  [10] = "#FDA52E", /* green   */
  [11] = "#C6B862", /* yellow  */
  [12] = "#576797", /* blue    */
  [13] = "#A36B9F", /* magenta */
  [14] = "#58A4AB", /* cyan    */
  [15] = "#c5c5c3", /* white   */

  /* special colors */
  [256] = "#0f0f0e", /* background */
  [257] = "#c5c5c3", /* foreground */
  [258] = "#c5c5c3",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
