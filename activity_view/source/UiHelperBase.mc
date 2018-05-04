using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;

class UiHelperBase {

    var colorFg;
    var colorFg2;
    var colorBg;
    var colorLine;
    var colorAvg;
    var colorNow;
    var colorCal;
    var colorStep;
    var colorDist;

    var dc;
    var width;
    var height;
    // max width of data row box
    var maxWidth;

    function initialize() {
    }

    function initColors() {
        colorFg = Gfx.COLOR_WHITE;
        colorFg2 = Gfx.COLOR_LT_GRAY;
        colorBg = Gfx.COLOR_BLACK;
        colorAvg = Gfx.COLOR_PINK;
        colorLine = Gfx.COLOR_DK_GRAY;
        colorNow = Gfx.COLOR_DK_GRAY;
        colorCal = Gfx.COLOR_BLUE;
        colorStep = Gfx.COLOR_YELLOW;
        colorDist = Gfx.COLOR_GREEN;
    }

    function initLayout(aDc) {
        dc = aDc;
        width = dc.getWidth();
        height = dc.getHeight();
        maxWidth = width;
    }

    public function draw() {
    }

    public function getDisplayValue(value) {
        if ( value instanceof Toybox.Lang.Double ) {
            if ( value > 9999 ) {
                return value.format("%d");
            }
            else {
                return value.format("%.1f");
            }
        }
        else if ( value instanceof Toybox.Lang.Float ) {
            if ( value > 9999 ) {
                return value.format("%d");
            }
            else {
                return value.format("%.1f");
            }
        }
        else if ( value instanceof Toybox.Lang.Number ) {
            if ( value > 99999 ) {
                return ">99999";
            }
            else {
                return value.format("%d");
            }
        }
        else {
          return value;
        }
    }

}


