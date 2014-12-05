

// Some tables are generalized. For these, hide/show them at the appropiate zoom levels.
.gen0[zoom<6],
.gen1[zoom>=6][zoom<12],
.detail[zoom>=12] ::labels{
  
  .mainroadlabels{
    text-name: '[name]';
    text-face-name: @typeface;
    text-size: 10;
    text-fill: @text;
    text-wrap-width: 0;
    text-halo-radius: 2;
    text-halo-fill: @land;
    //text-min-distance: 2;
    text-placement: line;
    text-placement-type: simple;
    text-dx: 0;
    text-dy: -5; // Push text label "outwards" from the road by offsetting to the right of the line (only works for countries where people drive on the right side of the road - place negative offset otherwise)
    text-avoid-edges: true;
    text-repeat-distance:256;
    
  }
  
}

