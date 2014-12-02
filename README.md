transportmap-tilemill
=====================

An attempt to partially replicate the OpenStreetMap "transport map" style using Tilemill.



Why?
----------------------

Because some friends from a transport authority wanted to make a transport map with OSM data but without the red bus lines.





Imposm cheatsheet
----------------------

transportmap-tilemill relies on imposm 2.5.0 to get the data from OSM .PBF extracts into a PostGIS database.
Do check out the documentation of imposm at http://imposm.org/docs/imposm/latest/index.html

Remember to use the mapping file from this repo, as in:

imposm --read --write -d osm madrid_spain.osm.pbf -m imposm/mapping.py

As of now, this is the "vanilla" mapping file, but I expect it will be need some love to show transport-specific features.


Tilemill files
-----------------------

Just copy/link these to your tilemill project.





TODO
-----------------------

Loads of things.

