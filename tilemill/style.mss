@land:         hsl(0,0,92%);
@text:         hsl(0,0,35%);
@water:        hsl(190,35%,85%);
@waterborder:  hsl(190,35%,82%);
@green:        hsl(90,30%,85%);
@greenborder:  hsl(90,30%,82%);

@road:         hsl(0,0,85%);
@roadborder:   hsl(0,0,70%);
@railway:      hsl(0,0,20%);
@railwaytunnel:hsl(0,0,60%);

@building:            hsl(0,0,90%);
@buildingborder:      hsl(0,0,75%);
@transportarea:       hsl(0,15%,92%);
@transportareaborder: hsl(0,15%,85%);
@transportbuilding:       hsl(0,30%,90%);
@transportbuildingborder: hsl(0,30%,75%);

@typeface: 'DejaVu Sans Book';


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
      ::outline {
        line-color: @greenborder;
        line-width: 1;
        line-join: round;
      }
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
  line-color:@buildingborder;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@building;
}


// Train stations, airport terminals, bus stations/depots
#transportbuildings {
  line-color:@transportbuildingborder;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@transportbuilding;
}

// Railyards, airports
#transportareas {
  line-color:@transportareaborder;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@transportarea;
}
