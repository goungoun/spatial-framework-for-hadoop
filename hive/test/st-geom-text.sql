select ST_AsJson(ST_Polygon(1.5,2.5, 3.0,2.2, 2.2,1.1));
select ST_AsJson(ST_Polygon(1.5,2.5, 3.0,2.2, 2.2,1.1, 1.5, 2.5));
select ST_AsJson(ST_Polygon(0.1,2.2, 3.0,2.2, 2.2,1.1, 0.1, 2.2));
select ST_AsJson(ST_Polygon(1,1, 1,4, 4,4, 4,1));
select ST_AsText(ST_Polygon(1,1, 1,4, 4,1));
select ST_AsText(ST_Polygon(1,1, 4,1, 1,4));
select ST_AsText(ST_Polygon(1,1, 1,4, 4,1, 1,1));
select ST_AsText(ST_Polygon(1,1, 4,1, 1,4, 1,1));
select ST_AsText(ST_LineString(array(0,0), array(2,2)));
select ST_AsText(ST_LineString(array(ST_Point(0,0), ST_Point(2,2))));
select st_AsText(ST_Envelope(ST_LineString(0,0, 2,2)));
select st_AsText(ST_Envelope(ST_Polygon(1,1, 4,1, 4,4, 1,4)));
select st_AsText(ST_Envelope(st_polygon(2,0, 2,3, 3,0)));
select ST_AsText(ST_Intersection(ST_Point(1,1), ST_Point(1,1)));
select ST_AsText(ST_Intersection(ST_LineString(0,2, 0,4), ST_Point(0,3)));
select ST_AsText(ST_Intersection(ST_GeomFromText('linestring(0 2, 0 0, 2 0)'), ST_GeomFromText('linestring(0 3, 0 1, 1 0, 3 0)')));
select ST_AsText(ST_Intersection(ST_LineString(0,2, 0,4), ST_LineString(0,2, 0,4)));
select ST_AsText(ST_Intersection(ST_LineString(0,2, 0,4), ST_LineString(0,3, 0,5)));
select ST_AsText(ST_Intersection(ST_LineString(0,2, 0,5), ST_LineString(1,3, 0,3, 0,4, 1,4)));
select ST_AsText(ST_Intersection(ST_LineString(0,2, 2,3), ST_Polygon(1,1, 4,1, 4,4, 1,4)));
select ST_AsText(ST_Intersection(ST_Polygon(1,1, 1,4, 4,4, 4,1), ST_LineString(1,1, 1,4)));
select ST_AsText(ST_Intersection(ST_Polygon(1,1, 1,4, 4,4, 4,1), ST_LineString(1,3, 1,4, 0,4)));
select ST_AsText(ST_Intersection(ST_Polygon(2,0, 2,3, 3,0), ST_Polygon(1,1, 4,1, 4,4, 1,4)));
select ST_AsText(ST_Intersection(ST_Polygon(1,0, 3,0, 1,2), ST_Polygon(0,1, 2,1, 0,3)));
select ST_AsText(ST_Intersection(ST_Polygon('polygon((1 0, 3 0, 1 2, 1 0))'), ST_Polygon('polygon((0 1, 2 1, 0 3, 0 1))')));
select ST_AsText(ST_Intersection(ST_Polygon('polygon((3 0, 3 3, 0 3, 3 0))'), ST_Polygon('polygon((2 2, 5 2, 2 5, 2 2))')));
select ST_AsText(ST_Intersection(ST_Polygon('polygon((2 0, 2 2, 0 2, 2 0))'), ST_Polygon('polygon((1 1, 3 1, 1 3, 1 1))')));
select ST_AsText(ST_Intersection(ST_Polygon('polygon((0 0, 2 0, 0 2, 0 0))'), ST_Polygon('polygon((0 0, 1 0, 0 1, 0 0))')));
select ST_AsText(ST_Intersection(ST_Polygon('polygon((0 0, 3 0, 0 3, 0 0))'), ST_Polygon('polygon((1 1, 2 1, 1 2, 1 1))')));
select ST_AsText(ST_Intersection(ST_Polygon('polygon((0 0, 2 0, 0 2, 0 0))'), ST_Polygon('polygon((1 1, 1 0, 0 1, 1 1))')));
select ST_AsText(ST_Intersection(ST_Polygon('polygon((0 0, 1 0, 0 1, 0 0))'), ST_Polygon('polygon((0 0, 1 0, 0 1, 0 0))')));
select ST_AsText(ST_Intersection(ST_Polygon('polygon((0 0, 3 0, 0 3, 0 0))'), ST_Polygon('polygon((2 2, 2 0, 3 0, 3 3, 0 3, 0 2, 2 2))')));
select ST_AsText(ST_Centroid(ST_Point(2, 3)));
select ST_AsText(ST_Centroid(ST_GeomFromText('multipoint ((0 0), (1 1), (1 -1), (6 0))')));
select ST_AsText(ST_Centroid(ST_GeomFromText('linestring ((0 0, 6 0))')));
select ST_AsText(ST_Centroid(ST_GeomFromText('linestring ((0 0, 2 4, 6 8))')));
select ST_AsText(ST_Centroid(ST_GeomFromText('polygon ((0 0, 0 8, 8 8, 8 0, 0 0))')));
select ST_AsText(ST_Centroid(ST_GeomFromText('polygon ((1 1, 5 1, 3 4))')));
select ST_Area(ST_Buffer(ST_GeomFromText('point (0 0)'), 1));
select ST_GeodesicLengthWGS84(ST_SetSRID(ST_LineString(179.98,-80, -179.98, -80.03), 4326));
select ST_GeodesicLengthWGS84(ST_SetSRID(ST_LineString(179.98,80, -179.98, 80.03), 4326));
select ST_GeodesicLengthWGS84(ST_SetSRID(ST_LineString(179.98,-0.01, -179.98, 0.02), 4326));
select ST_AsText(ST_Buffer(ST_GeomFromText('polygon ((0 0, 3 0, 3 2, 5 2, 5 5, 2 5, 2 3, 0 3, 0 0))'), -1));
select ST_AsText(ST_Centroid(ST_GeomFromText('polygon ((0 0, 3 6, 6 0, 0 0))')));
select ST_AsText(ST_Centroid(ST_GeomFromText('polygon ((0 0, 0 8, 8 0, 0 0))')));
select ST_AsText(ST_Centroid(ST_MultiPolygon(array(1,1, 1,2, 2,2, 2,1), array(3,3, 3,4, 4,4, 4,3))));
SELECT ST_AsText(ST_Difference(ST_MultiPoint(1, 1, 1.5, 1.5, 2, 2), ST_Point(1.5, 1.5)));
SELECT ST_AsText(ST_Difference(ST_Polygon(0, 0, 0, 10, 10, 10, 10, 0), ST_Polygon(0, 0, 0, 5, 5, 5, 5, 0)));
SELECT ST_AsText(ST_SymmetricDiff(ST_Point('point(0 0)'), ST_Point('point(2 2)')));
SELECT ST_AsText(ST_SymmetricDiff(ST_MultiPoint('multipoint((0 0))'), ST_MultiPoint('multipoint((2 2))')));
SELECT ST_AsText(ST_SymmetricDiff(ST_LineString('linestring(0 2, 2 2)'), ST_LineString('linestring(1 2, 3 2)')));
SELECT ST_AsText(ST_SymmetricDiff(ST_Polygon('polygon((0 0, 2 0, 2 2, 0 2, 0 0))'), ST_Polygon('polygon((1 1, 3 1, 3 3, 1 3, 1 1))')));
select ST_AsText(ST_SetSRID(ST_MultiLineString(array(0,80, 0.03, 80.04)), 4326));
select ST_AsText(ST_SetSRID(ST_MultiLineString(array(0.0, 80.0, 0.03, 80.04)), 4326));
select ST_AsText(ST_SetSRID(ST_GeomFromText('MultiLineString((0 80, 0.03 80.04))'), 4326));
select ST_AsText(ST_GeomFromText('MultiLineString((0 80, 0.03 80.04))', 4326));
select ST_AsJson(ST_Intersection(ST_Linestring(0,0, 1,1), ST_Linestring(2,2, 3,3)));
select ST_AsJson(ST_GeomFromJson('{"x":0.0,"y":0.0}'));
select ST_AsText(ST_GeomFromGeoJson('{"type":"Point", "coordinates":[1.2, 2.4]}'));
select ST_AsJson(ST_GeomFromGeoJson('{"type":"Point", "coordinates":[1.2, 2.4]}'));
select ST_AsText(ST_GeomFromGeoJson('{"type":"LineString", "coordinates":[[1,2], [3,4]]}'));
select ST_AsJson(ST_GeomFromJson('{"x":1.2,"y":2.4,"spatialReference":{"wkid":4326}}'));
select ST_AsJson(ST_GeomFromJson('{"x":1.2,"y":2.4,"spatialReference":{"wkid": 0}}'));
select ST_AsGeoJson(ST_GeomFromJson('{"x":1.2,"y":2.4,"spatialReference":{"wkid":4326}}'));
select ST_AsGeoJson(ST_GeomFromJson('{"x":1.2,"y":2.4,"spatialReference":{"wkid": 0}}'));
SELECT ST_AsGeoJSON(ST_MultiLineString(array(1, 1, 2, 2, 3, 3), array(10, 10, 11, 11, 12, 12)));
select ST_AsText(ST_GeomFromGeoJson(ST_AsGeoJson(ST_Point(1.2, 2.4))));
select ST_AsText(ST_GeomFromGeoJson(ST_AsGeoJson(ST_LineString(1,2, 3,4))));
select ST_AsText(ST_Boundary(ST_LineString(0,1, 1,0)));
select ST_AsText(ST_Boundary(ST_Polygon(1,1, 4,1, 1,4)));
select ST_AsText(ST_Boundary(ST_Polygon('polygon ((0 0, 8 0, 0 8, 0 0), (1 1, 1 5, 5 1, 1 1))')));
select ST_AsJson(ST_PointN(ST_GeomFromText('multipoint ((10 40), (40 30), (20 20), (30 10))', 0), 0));
select ST_AsJson(ST_PointN(ST_GeomFromText('multipoint ((10 40), (40 30), (20 20), (30 10))', 0), 1));
select ST_AsJson(ST_PointN(ST_GeomFromText('multipoint ((10 40), (40 30), (20 20), (30 10))', 0), 2));
select ST_AsJson(ST_PointN(ST_GeomFromText('multipoint ((10 40), (40 30), (20 20), (30 10))', 0), 4));
select ST_AsJson(ST_PointN(ST_GeomFromText('linestring (10.02 20.01, 10.32 23.98, 11.92 25.64)'), 0));
select ST_AsJson(ST_PointN(ST_GeomFromText('linestring (10.02 20.01, 10.32 23.98, 11.92 25.64)'), 1));
select ST_AsJson(ST_PointN(ST_GeomFromText('linestring (10.02 20.01, 10.32 23.98, 11.92 25.64)'), 2));
select ST_AsJson(ST_PointN(ST_GeomFromText('linestring (10.02 20.01, 10.32 23.98, 11.92 25.64)'), 3));
select ST_AsText(ST_ExteriorRing(ST_Polygon(1,1, 1,4, 4,1)));
select ST_AsText(ST_ExteriorRing(ST_Polygon('polygon ((1 1, 4 1, 1 4))')));
select ST_AsText(ST_ExteriorRing(ST_Polygon('polygon ((0 0, 8 0, 0 8, 0 0), (1 1, 1 5, 5 1, 1 1))')));
select ST_AsText(ST_GeometryN(ST_GeomFromText('multipoint (10 40, 40 30, 20 20, 30 10)'), 3));
select ST_AsText(ST_GeometryN(ST_GeomFromText('multilinestring ((2 4, 10 10), (20 20, 7 8))'), 2));
select ST_AsJson(ST_GeometryN(ST_GeomFromText('multilinestring ((2 4, 10 10), (20 20, 7 8))'), 2));
select ST_AsText(ST_GeometryN(ST_GeomFromText('multipolygon (((3 3, 4 6, 5 3, 3 3)),((8 24, 1 28, 9 25, 8 24)), ((13 33, 7 36, 1 40, 10 43, 13 33)))'), 1));
select ST_AsText(ST_InteriorRingN(ST_Polygon('polygon ((0 0, 8 0, 0 8, 0 0), (1 1, 1 5, 5 1, 1 1))'), 1));
