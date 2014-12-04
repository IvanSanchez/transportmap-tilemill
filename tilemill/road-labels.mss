

// Some tables are generalized. For these, hide/show them at the appropiate zoom levels.
.gen0[zoom<6],
.gen1[zoom>=6][zoom<12],
.detail[zoom>=12] ::labels{
  
  .mainroadlabels[zoom>=14]{
    text-name: '[name]';
    text-face-name: @typeface;
    text-size: 10;
    text-fill: @text;
    text-wrap-width: 0;
    text-halo-radius: 2;
    text-halo-fill: @land;
    text-min-distance: 2;
    text-placement: line;
    text-placement-type: simple;
    text-dx: 5;
    text-dy: 5;
    text-avoid-edges: true;
  }
  
}
