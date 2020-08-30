size(500,500);
background(250);
pixelDensity(2);

stroke(#41A3FC);
strokeWeight(26);
strokeJoin(ROUND);
noFill();

beginShape();
vertex(114, 280);
vertex(90, 280);
vertex(75, 434);
vertex(426, 434);
vertex(409, 280);
vertex(385, 280);
endShape();

beginShape();
vertex(250,86);
bezierVertex(309,86,357,134,357,193);
bezierVertex(357,266,250,370,250,370);
bezierVertex(250,370,143,273,143,193);
bezierVertex(143,131,190,86,250,86);
endShape(CLOSE);

ellipse(250,182,80,80);
