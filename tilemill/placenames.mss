
#places{
  // Separating these styles with subselectors will ensure that
  // the most important labels are never obscured by a less important
  // label.
  ::city{
    [type='city'][zoom<12] {
      text-size: 15;
      text-face-name: @typeface;
      text-halo-fill: @land;
      text-fill: @text;
      text-halo-radius: 2;
      text-name: [name];
      text-margin:20;
    }
    [type='city'][zoom>=12] {
      text-size: 15;
      text-face-name: @typeface;
      text-halo-fill: @land;
      text-fill: @text;
      text-halo-radius: 2;
      text-name: [name];
      text-character-spacing: 5;
      text-transform: uppercase;
      text-margin:20;
    }
  }  
  
  ::town{
    [type='town'][zoom>8] {
      text-size: 12;
      text-face-name: @typeface;
      text-halo-fill: @land;
      text-fill: @text;
      text-halo-radius: 2;
      text-name: [name];
      text-margin:20;
    }
  }
  
  ::village{
    [type='village'][zoom>9] {
      text-size: 12;
      text-face-name: @typeface;
      text-halo-fill: @land;
      text-fill: @text;
      text-halo-radius: 2;
      text-name: [name];
      text-margin:20;
    }
  }
  ::suburb{
    [type='suburb'][zoom>10][zoom<=12] {
      text-size: 12;
      text-face-name: @typeface;
      text-halo-fill: @land;
      text-fill: @text;
      text-halo-radius: 2;
      text-name: [name];
      text-margin:20;
    }
    [type='suburb'][zoom>12] {
      text-size: 15;
      text-face-name: @typeface;
      text-halo-fill: @land;
      text-fill: @text;
      text-halo-radius: 2;
      text-name: [name];
      text-character-spacing: 5;
      text-transform: uppercase;
      text-margin:20;
    }
  }
  ::hamlet{
    [type='hamlet'][zoom>11] {
      text-size: 12;
      text-face-name: @typeface;
      text-halo-fill: @land;
      text-fill: @text;
      text-halo-radius: 2;
      text-name: [name];
      text-margin:20;
    }
  }
  ::locality{
    [type='locality'][zoom>11] {
      text-size: 12;
      text-face-name: @typeface;
      text-halo-fill: @land;
      text-fill: @text;
      text-halo-radius: 2;
      text-name: [name];
      text-margin:20;
    }
  }
}


