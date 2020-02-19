/* https://s3.amazonaws.com/codecademy-content/courses/freelance-1/unit-4/diagram-boxmodel.svg */

/* Elements by default are block elements and will have the same width as the container */

/* height and width */
height: <height>;
width: <width>;

/* border */
border: width style color;

/* border radius */
border-radius: 15px;

/* padding margin*/
padding: 20px 30px;
margin: 20px 30px[auto];
/* or padding-top padding-bottom padding-left padding-right if top=bottom and left=right specify just two value*/

/* margin collapse is the top and bottom margin of two adjacent elements that shrink to the greater's*/

/* minimum and maximum width-height */
max|min-width|height: <some-value>;

/* overflow - ensure that we can view all of an element that is larger than its parent’s containing area */
overflow: scroll|hidden|visible;

/* resetting default */
* {
    margin: 0;
    padding: 0;
}

/* Visibility - hide the content but leave the space*/
visibility: hidden|visible;
/* note: display: none, do not leave space and result into layout change. */

/* box model - default is box-sizing: content-box; which affects the diemention of the element. */
/* the new model is border-box */

/* Block-level elements prevent other elements from appearing in the same horizontal space */

/* Position */