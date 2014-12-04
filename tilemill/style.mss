@land: #ececec;
@text: #606060;
@water: #9fd1eb;
@waterborder: #85c5d3;
@road: #ccc;
@roadborder: #bbb;
@railway: #000;
@railwaytunnel:#a0a0a0;
@typeface: 'Droid Sans Regular';
@green: #D2F2D7;


Map {
  background-color: @water;
}

#countries {
  ::outline {
    line-color: @waterborder;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: @land;
}


// Some tables are generalized. For these, hide/show them at the appropiate zoom levels.
.gen0[zoom<6],
.gen1[zoom>=6][zoom<12],
.detail[zoom>=12] {

  // Green stuff
  .landusages[zoom>9] {
    [type="park"],
    [type="forest"],
    [type="golf_course"],
    [type="farmland"],
    [type="farm"],
    [type="nature_reserve"],
    [type="grass"],
    [type="village_green"],
    [type="garden"] {
      polygon-opacity:1;
      polygon-fill:@green;
      }
  }
  
  
  // Blue stuff
  .waterareas[zoom>8] {
    line-color:@waterborder;
    line-width:0.5;
    polygon-opacity:1;
    polygon-fill:@water;
  }
  
  
  // Main roads change style depending on zoom level
  .mainroads[zoom>=15] {
    ::casing {
      line-width:4;
      line-color:@roadborder;
    }
    ::fill {
      line-width:3;
      line-color:@road;
    }
  }
  .mainroads[zoom=14] {
    line-width:3;
    line-color:@road;   
  }

  
  .mainroads[zoom<14][zoom>8][type!='tertiary'] {
    line-width:1.5;
    line-color:@road;
  }
  .mainroads[zoom<=8][type!='secondary'][type!='tertiary'] {
    line-width:1;
    line-color:@road;
  }
  
  
  // Small roads also change styles slightly, specifically for pedestrians
  .roads[zoom>=13][zoom<=14] {
    line-width:1;
    line-color:@road;
  }
  .roads[zoom>=14] {
    line-width:1.5;
    line-color:@road;
    [zoom>=16] {
      line-width:3;
    }
    [type='pedestrian'],[type='footway'],[type='path'],[type='track'],[type='cycleway'] {
      line-dasharray:3,2;  
      [zoom=16] {
        line-width:1.5;
      }
      [zoom>16] {
        line-width:3;
        line-dasharray: 8,6;
      }
    }
  }
  
  .railways[zoom<=13] {
    line-width:1;
    line-color:@railway;
  }
  .railways[zoom>13] {
    ::casing {
      line-width:3;
      line-color:@railway;
      [tunnel=true] {
        line-color: @railwaytunnel;
      }
    }
    ::fill {
      line-width:2;
      line-color:@land;
      line-dasharray:4,4;
    }
  }
}
  
#buildings[zoom>=14] {
  line-color:#c0c0c0;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#e6e6e6;
}

