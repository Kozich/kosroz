%GNUPLOT Metapost output: Mon Aug  8 16:10:03 2016


%% Add \documentclass and \begin{dcoument} for latex
%% NB you should set the environment variable TEX to the name of your
%% latex executable (normally latex) inorder for metapost to work
%% or run
%% mpost --tex=latex ...

% BEGPRE
verbatimtex
\documentclass{article}
\begin{document}
etex
% ENDPRE

warningcheck:=0;
defaultmpt:=mpt:=4;
th:=.6;
%% Have nice sharp joins on our lines
linecap:=butt;
linejoin:=mitered;

def scalepen expr n = pickup pencircle scaled (n*th) enddef;
def ptsize expr n = mpt:=n*defaultmpt enddef;


textmag:= 1.000;
vardef makepic(expr str) =
  if picture str : str scaled textmag
  % otherwise a string
  else: str infont defaultfont scaled (defaultscale*textmag)
  fi
enddef;

def infontsize(expr str, size) =
  infont str scaled (size / fontsize str)
enddef;

color currentcolor; currentcolor:=black;
color fillcolor;
boolean colorlines,dashedlines;
colorlines:=true;
dashedlines:=true;

def _wc = withpen currentpen withcolor currentcolor enddef;
def _ac = addto currentpicture enddef;
def _sms = scaled mpt shifted enddef;
% drawing point-types
def gpdraw (expr n, x, y) =
  if n<0: _ac contour fullcircle _sms (x,y)
  elseif (n=1) or (n=3):
    _ac doublepath ptpath[n] _sms (x,y) _wc;
    _ac doublepath ptpath[n] rotated 90 _sms (x,y) _wc
  elseif n<6: _ac doublepath ptpath[n] _sms (x,y) _wc
  else: _ac contour ptpath[n] _sms (x,y) _wc
  fi
enddef;

% the point shapes
path ptpath[];
%diamond
ptpath0 = ptpath6 = (-1/2,0)--(0,-1/2)--(1/2,0)--(0,1/2)--cycle;
% plus sign
ptpath1 = (-1/2,0)--(1/2,0);
% square
ptpath2 = ptpath7 = (-1/2,-1/2)--(1/2,-1/2)--(1/2,1/2)--(-1/2,1/2)--cycle;
% cross
ptpath3 := (-1/2,-1/2)--(1/2,1/2);
% circle:
ptpath4 = ptpath8:= fullcircle;
% triangle
ptpath5 = ptpath9 := (0,1/2)--(-1/2,-1/2)--(1/2,-1/2)--cycle;

def linetype expr n =
  currentcolor:= if colorlines : col[n] else: black fi;
  if n = -1 :
      drawoptions(withcolor currentcolor withpen (currentpen scaled .5));
  elseif n < 1 :
    drawoptions(_wc);
  else :
    drawoptions( if dashedlines: dashed lt[n] fi _wc);
  fi
enddef;

% dash patterns
picture lt[];
lt1=dashpattern(on 2 off 2); % dashes
lt2=dashpattern(on 2 off 2 on 0.2 off 2); %dash-dot
lt3=lt1 scaled 1.414;
lt4=lt2 scaled 1.414;
lt5=lt1 scaled 2;
lt6:=lt2 scaled 2;
lt7=dashpattern(on 0.2 off 2); %dots

color col[],cyan, magenta, yellow;
cyan=blue+green; magenta=red+blue;yellow=green+red;
col[-2]:=col[-1]:=col0:=black;
col1:=red;
col2:=(.2,.2,1); %blue
col3:=(1,.66,0); %orange
col4:=.85*green;
col5:=.9*magenta;
col6:=0.85*cyan;
col7:=.85*yellow;

%placing text
picture GPtext;
def put_text(expr pic, x, y, r, j) =
  GPtext:=makepic(pic);
  GPtext:=GPtext shifted
    if j = 1: (-(ulcorner GPtext + llcorner GPtext)/2)
    elseif j = 2: (-center GPtext)
    else: (-(urcorner GPtext + lrcorner GPtext)/2)
    fi
    rotated r;
  addto currentpicture also GPtext shifted (x,y)
enddef;

beginfig(0);
w:=5.000in;h:=3.000in;
a:=w/1200.0;b:=h/720.0;
scalepen 1; ptsize 1.000;linetype -2;
draw (159.0a,88.0b)--(175.6a,88.0b);
draw (1136.3a,88.0b)--(1119.7a,88.0b);
put_text( btex  0.01 etex, 137.8a, 88.0b, 0, 3);
linetype -2;
draw (159.0a,147.2b)--(167.3a,147.2b);
draw (1136.3a,147.2b)--(1128.0a,147.2b);
draw (159.0a,181.8b)--(167.3a,181.8b);
draw (1136.3a,181.8b)--(1128.0a,181.8b);
draw (159.0a,206.3b)--(167.3a,206.3b);
draw (1136.3a,206.3b)--(1128.0a,206.3b);
draw (159.0a,225.3b)--(167.3a,225.3b);
draw (1136.3a,225.3b)--(1128.0a,225.3b);
draw (159.0a,240.9b)--(167.3a,240.9b);
draw (1136.3a,240.9b)--(1128.0a,240.9b);
draw (159.0a,254.1b)--(167.3a,254.1b);
draw (1136.3a,254.1b)--(1128.0a,254.1b);
draw (159.0a,265.5b)--(167.3a,265.5b);
draw (1136.3a,265.5b)--(1128.0a,265.5b);
draw (159.0a,275.5b)--(167.3a,275.5b);
draw (1136.3a,275.5b)--(1128.0a,275.5b);
draw (159.0a,284.5b)--(175.6a,284.5b);
draw (1136.3a,284.5b)--(1119.7a,284.5b);
put_text( btex  0.1 etex, 137.8a, 284.5b, 0, 3);
linetype -2;
draw (159.0a,343.7b)--(167.3a,343.7b);
draw (1136.3a,343.7b)--(1128.0a,343.7b);
draw (159.0a,378.3b)--(167.3a,378.3b);
draw (1136.3a,378.3b)--(1128.0a,378.3b);
draw (159.0a,402.8b)--(167.3a,402.8b);
draw (1136.3a,402.8b)--(1128.0a,402.8b);
draw (159.0a,421.8b)--(167.3a,421.8b);
draw (1136.3a,421.8b)--(1128.0a,421.8b);
draw (159.0a,437.4b)--(167.3a,437.4b);
draw (1136.3a,437.4b)--(1128.0a,437.4b);
draw (159.0a,450.6b)--(167.3a,450.6b);
draw (1136.3a,450.6b)--(1128.0a,450.6b);
draw (159.0a,462.0b)--(167.3a,462.0b);
draw (1136.3a,462.0b)--(1128.0a,462.0b);
draw (159.0a,472.0b)--(167.3a,472.0b);
draw (1136.3a,472.0b)--(1128.0a,472.0b);
draw (159.0a,481.0b)--(175.6a,481.0b);
draw (1136.3a,481.0b)--(1119.7a,481.0b);
put_text( btex  1 etex, 137.8a, 481.0b, 0, 3);
linetype -2;
draw (159.0a,540.2b)--(167.3a,540.2b);
draw (1136.3a,540.2b)--(1128.0a,540.2b);
draw (159.0a,574.8b)--(167.3a,574.8b);
draw (1136.3a,574.8b)--(1128.0a,574.8b);
draw (159.0a,599.3b)--(167.3a,599.3b);
draw (1136.3a,599.3b)--(1128.0a,599.3b);
draw (159.0a,618.3b)--(167.3a,618.3b);
draw (1136.3a,618.3b)--(1128.0a,618.3b);
draw (159.0a,633.9b)--(167.3a,633.9b);
draw (1136.3a,633.9b)--(1128.0a,633.9b);
draw (159.0a,647.1b)--(167.3a,647.1b);
draw (1136.3a,647.1b)--(1128.0a,647.1b);
draw (159.0a,658.5b)--(167.3a,658.5b);
draw (1136.3a,658.5b)--(1128.0a,658.5b);
draw (159.0a,668.5b)--(167.3a,668.5b);
draw (1136.3a,668.5b)--(1128.0a,668.5b);
draw (159.0a,677.5b)--(175.6a,677.5b);
draw (1136.3a,677.5b)--(1119.7a,677.5b);
put_text( btex  10 etex, 137.8a, 677.5b, 0, 3);
linetype -2;
draw (159.0a,88.0b)--(159.0a,104.6b);
draw (159.0a,677.5b)--(159.0a,660.9b);
put_text( btex  0 etex, 159.0a, 44.0b, 0, 2);
linetype -2;
draw (256.7a,88.0b)--(256.7a,104.6b);
draw (256.7a,677.5b)--(256.7a,660.9b);
put_text( btex  500 etex, 256.7a, 44.0b, 0, 2);
linetype -2;
draw (354.5a,88.0b)--(354.5a,104.6b);
draw (354.5a,677.5b)--(354.5a,660.9b);
put_text( btex  1000 etex, 354.5a, 44.0b, 0, 2);
linetype -2;
draw (452.2a,88.0b)--(452.2a,104.6b);
draw (452.2a,677.5b)--(452.2a,660.9b);
put_text( btex  1500 etex, 452.2a, 44.0b, 0, 2);
linetype -2;
draw (549.9a,88.0b)--(549.9a,104.6b);
draw (549.9a,677.5b)--(549.9a,660.9b);
put_text( btex  2000 etex, 549.9a, 44.0b, 0, 2);
linetype -2;
draw (647.7a,88.0b)--(647.7a,104.6b);
draw (647.7a,677.5b)--(647.7a,660.9b);
put_text( btex  2500 etex, 647.7a, 44.0b, 0, 2);
linetype -2;
draw (745.4a,88.0b)--(745.4a,104.6b);
draw (745.4a,677.5b)--(745.4a,660.9b);
put_text( btex  3000 etex, 745.4a, 44.0b, 0, 2);
linetype -2;
draw (843.1a,88.0b)--(843.1a,104.6b);
draw (843.1a,677.5b)--(843.1a,660.9b);
put_text( btex  3500 etex, 843.1a, 44.0b, 0, 2);
linetype -2;
draw (940.8a,88.0b)--(940.8a,104.6b);
draw (940.8a,677.5b)--(940.8a,660.9b);
put_text( btex  4000 etex, 940.8a, 44.0b, 0, 2);
linetype -2;
draw (1038.6a,88.0b)--(1038.6a,104.6b);
draw (1038.6a,677.5b)--(1038.6a,660.9b);
put_text( btex  4500 etex, 1038.6a, 44.0b, 0, 2);
linetype -2;
draw (1136.3a,88.0b)--(1136.3a,104.6b);
draw (1136.3a,677.5b)--(1136.3a,660.9b);
put_text( btex  5000 etex, 1136.3a, 44.0b, 0, 2);
linetype -2;
linetype -2;
draw (159.0a,677.5b)--(159.0a,88.0b)--(1136.3a,88.0b)--(1136.3a,677.5b)--(159.0a,677.5b);
linetype -2;
linetype -2;
linetype 1;
currentcolor:=0.5804*red+0*green+0.8275*blue;
put_text( btex H(x) etex, 971.3a, 638.9b, 0, 3);
linetype -2;
linetype 1;
currentcolor:=0.5804*red+0*green+0.8275*blue;
draw (992.5a,638.9b)--(1093.9a,638.9b);
draw (248.3a,430.6b)--(256.7a,431.3b)--(265.1a,432.0b)--(273.4a,432.7b)--(281.8a,433.4b)
--(290.2a,434.1b)--(298.6a,434.8b)--(307.0a,435.5b)--(315.4a,436.2b)--(323.8a,436.9b)
--(332.2a,437.6b)--(340.6a,438.2b)--(349.0a,438.9b)--(357.4a,439.6b)--(365.8a,440.3b)
--(374.2a,441.0b)--(382.6a,441.6b)--(391.0a,442.3b)--(399.4a,443.0b)--(407.7a,443.6b)
--(416.1a,444.3b)--(424.5a,445.0b)--(432.9a,445.6b)--(441.3a,446.3b)--(449.7a,446.9b)
--(458.1a,447.6b)--(466.5a,448.2b)--(474.9a,448.9b)--(483.3a,449.5b)--(491.7a,450.2b)
--(500.1a,450.8b)--(508.5a,451.5b)--(516.9a,452.1b)--(525.3a,452.7b)--(533.6a,453.4b)
--(542.0a,454.0b)--(550.4a,454.6b)--(558.8a,455.3b)--(567.2a,455.9b)--(575.6a,456.5b)
--(584.0a,457.1b)--(592.4a,457.8b)--(600.8a,458.4b)--(609.2a,459.0b)--(617.6a,459.6b)
--(626.0a,460.2b)--(634.4a,460.9b)--(642.8a,461.5b)--(651.2a,462.1b)--(659.5a,462.7b)
--(667.9a,463.3b)--(676.3a,463.9b)--(684.7a,464.5b)--(693.1a,465.1b)--(701.5a,465.7b)
--(709.9a,466.3b)--(718.3a,466.9b)--(726.7a,467.5b)--(735.1a,468.1b)--(743.5a,468.7b)
--(751.9a,469.3b)--(760.3a,469.9b)--(768.7a,470.4b)--(777.1a,471.0b)--(785.5a,471.6b)
--(793.8a,472.2b)--(802.2a,472.8b)--(810.6a,473.4b)--(819.0a,473.9b)--(827.4a,474.5b)
--(835.8a,475.1b)--(844.2a,475.7b)--(852.6a,476.3b)--(861.0a,476.8b)--(869.4a,477.4b)
--(877.8a,478.0b)--(886.2a,478.5b)--(894.6a,479.1b)--(903.0a,479.7b)--(911.4a,480.2b)
--(919.7a,480.8b)--(928.1a,481.4b)--(936.5a,481.9b)--(944.9a,482.5b)--(953.3a,483.0b)
--(961.7a,483.6b)--(970.1a,484.2b)--(978.5a,484.7b)--(986.9a,485.3b)--(995.3a,485.8b)
--(1003.7a,486.4b)--(1012.1a,486.9b)--(1020.5a,487.5b)--(1028.9a,488.0b)--(1037.3a,488.6b)
--(1045.7a,489.1b)--(1054.0a,489.7b)--(1062.4a,490.2b)--(1070.8a,490.8b)--(1079.2a,491.3b);
linetype -2;
linetype 2;
currentcolor:=0*red+0.6196*green+0.451*blue;
put_text( btex HK(x) etex, 971.3a, 594.9b, 0, 3);
linetype -2;
linetype 2;
currentcolor:=0*red+0.6196*green+0.451*blue;
draw (992.5a,594.9b)--(1093.9a,594.9b);
draw (248.3a,390.2b)--(256.7a,391.8b)--(265.1a,393.4b)--(273.4a,395.0b)--(281.8a,396.5b)
--(290.2a,398.1b)--(298.6a,399.6b)--(307.0a,401.1b)--(315.4a,402.6b)--(323.8a,404.1b)
--(332.2a,405.5b)--(340.6a,407.0b)--(349.0a,408.4b)--(357.4a,409.8b)--(365.8a,411.2b)
--(374.2a,412.6b)--(382.6a,413.9b)--(391.0a,415.3b)--(399.4a,416.6b)--(407.7a,418.0b)
--(416.1a,419.3b)--(424.5a,420.6b)--(432.9a,421.9b)--(441.3a,423.2b)--(449.7a,424.4b)
--(458.1a,425.7b)--(466.5a,426.9b)--(474.9a,428.2b)--(483.3a,429.4b)--(491.7a,430.6b)
--(500.1a,431.8b)--(508.5a,433.0b)--(516.9a,434.2b)--(525.3a,435.4b)--(533.6a,436.6b)
--(542.0a,437.7b)--(550.4a,438.9b)--(558.8a,440.0b)--(567.2a,441.2b)--(575.6a,442.3b)
--(584.0a,443.4b)--(592.4a,444.5b)--(600.8a,445.6b)--(609.2a,446.7b)--(617.6a,447.8b)
--(626.0a,448.9b)--(634.4a,450.0b)--(642.8a,451.1b)--(651.2a,452.1b)--(659.5a,453.2b)
--(667.9a,454.2b)--(676.3a,455.3b)--(684.7a,456.3b)--(693.1a,457.4b)--(701.5a,458.4b)
--(709.9a,459.4b)--(718.3a,460.4b)--(726.7a,461.4b)--(735.1a,462.4b)--(743.5a,463.4b)
--(751.9a,464.4b)--(760.3a,465.4b)--(768.7a,466.4b)--(777.1a,467.4b)--(785.5a,468.3b)
--(793.8a,469.3b)--(802.2a,470.2b)--(810.6a,471.2b)--(819.0a,472.2b)--(827.4a,473.1b)
--(835.8a,474.0b)--(844.2a,475.0b)--(852.6a,475.9b)--(861.0a,476.8b)--(869.4a,477.8b)
--(877.8a,478.7b)--(886.2a,479.6b)--(894.6a,480.5b)--(903.0a,481.4b)--(911.4a,482.3b)
--(919.7a,483.2b)--(928.1a,484.1b)--(936.5a,485.0b)--(944.9a,485.9b)--(953.3a,486.8b)
--(961.7a,487.7b)--(970.1a,488.5b)--(978.5a,489.4b)--(986.9a,490.3b)--(995.3a,491.1b)
--(1003.7a,492.0b)--(1012.1a,492.9b)--(1020.5a,493.7b)--(1028.9a,494.6b)--(1037.3a,495.4b)
--(1045.7a,496.3b)--(1054.0a,497.1b)--(1062.4a,497.9b)--(1070.8a,498.8b)--(1079.2a,499.6b);
ptsize 0.500;
linetype -2;
currentcolor:=0.3373*red+0.7059*green+0.9137*blue;
put_text( btex "H10.dat" using 2:1 etex, 971.3a, 550.9b, 0, 3);
linetype -2;
currentcolor:=0.3373*red+0.7059*green+0.9137*blue;
gpdraw(0,298.1a,305.5b);
gpdraw(0,310.4a,305.5b);
gpdraw(0,317.6a,354.6b);
gpdraw(0,328.5a,496.5b);
gpdraw(0,337.1a,343.2b);
gpdraw(0,345.7a,357.2b);
gpdraw(0,355.9a,330.0b);
gpdraw(0,366.2a,310.1b);
gpdraw(0,374.2a,343.2b);
gpdraw(0,383.9a,375.7b);
gpdraw(0,396.7a,392.7b);
gpdraw(0,407.1a,375.7b);
gpdraw(0,418.4a,390.9b);
gpdraw(0,430.0a,351.9b);
gpdraw(0,440.1a,330.0b);
gpdraw(0,450.0a,330.0b);
gpdraw(0,461.0a,284.0b);
gpdraw(0,471.0a,322.6b);
gpdraw(0,482.6a,362.2b);
gpdraw(0,494.6a,362.2b);
gpdraw(0,503.7a,371.5b);
gpdraw(0,512.2a,389.2b);
gpdraw(0,520.4a,364.6b);
gpdraw(0,529.9a,364.6b);
gpdraw(0,538.3a,349.1b);
gpdraw(0,548.0a,277.7b);
gpdraw(0,555.7a,373.6b);
gpdraw(0,567.2a,422.6b);
gpdraw(0,578.1a,428.4b);
gpdraw(0,585.5a,522.4b);
gpdraw(0,595.5a,512.1b);
gpdraw(0,605.3a,512.6b);
gpdraw(0,615.7a,512.6b);
gpdraw(0,626.2a,402.3b);
gpdraw(0,634.9a,411.0b);
gpdraw(0,643.7a,379.8b);
gpdraw(0,651.0a,364.6b);
gpdraw(0,657.8a,351.9b);
gpdraw(0,661.0a,295.4b);
gpdraw(0,666.7a,310.1b);
gpdraw(0,674.1a,377.8b);
gpdraw(0,682.9a,403.8b);
gpdraw(0,691.8a,403.8b);
gpdraw(0,699.0a,385.5b);
gpdraw(0,706.6a,314.5b);
gpdraw(0,713.5a,387.4b);
gpdraw(0,720.7a,387.4b);
gpdraw(0,728.0a,399.2b);
gpdraw(0,735.8a,441.9b);
gpdraw(0,742.0a,409.6b);
gpdraw(0,749.3a,440.9b);
gpdraw(0,757.6a,443.8b);
gpdraw(0,764.0a,417.6b);
gpdraw(0,770.3a,408.2b);
gpdraw(0,777.2a,369.2b);
gpdraw(0,785.6a,343.2b);
gpdraw(0,795.5a,387.4b);
gpdraw(0,803.5a,411.0b);
gpdraw(0,810.9a,426.1b);
gpdraw(0,819.4a,443.8b);
gpdraw(0,828.7a,453.5b);
gpdraw(0,835.1a,472.9b);
gpdraw(0,840.3a,464.5b);
gpdraw(0,848.3a,456.0b);
gpdraw(0,853.0a,420.2b);
gpdraw(0,857.4a,390.9b);
gpdraw(0,864.6a,421.4b);
gpdraw(0,873.2a,452.7b);
gpdraw(0,881.4a,464.5b);
gpdraw(0,886.3a,445.6b);
gpdraw(0,893.9a,423.8b);
gpdraw(0,898.3a,385.5b);
gpdraw(0,904.2a,402.3b);
gpdraw(0,912.6a,405.3b);
gpdraw(0,919.3a,460.0b);
gpdraw(0,924.1a,458.4b);
gpdraw(0,930.6a,441.9b);
gpdraw(0,937.7a,469.5b);
gpdraw(0,945.4a,531.6b);
gpdraw(0,952.3a,539.3b);
gpdraw(0,957.6a,539.6b);
gpdraw(0,963.0a,542.3b);
gpdraw(0,969.2a,482.9b);
gpdraw(0,975.9a,463.7b);
gpdraw(0,982.8a,473.5b);
gpdraw(0,990.3a,456.8b);
gpdraw(0,999.2a,434.9b);
gpdraw(0,1007.5a,441.9b);
gpdraw(0,1012.2a,418.9b);
gpdraw(0,1013.9a,409.6b);
gpdraw(0,1017.8a,428.4b);
gpdraw(0,1028.1a,426.1b);
gpdraw(0,1034.1a,459.2b);
gpdraw(0,1040.0a,459.2b);
gpdraw(0,1049.7a,444.7b);
gpdraw(0,1052.5a,466.7b);
gpdraw(0,1051.2a,614.4b);
gpdraw(0,1061.3a,614.4b);
gpdraw(0,1068.0a,614.7b);
gpdraw(0,1067.1a,614.7b);
gpdraw(0,1064.9a,542.6b);
gpdraw(0,1060.8a,550.7b);
gpdraw(0,1057.8a,553.6b);
gpdraw(0,1054.3a,549.4b);
gpdraw(0,1052.8a,566.8b);
gpdraw(0,1053.0a,555.1b);
gpdraw(0,1053.4a,552.3b);
gpdraw(0,1048.9a,605.8b);
gpdraw(0,1008.5a,557.1b);
gpdraw(0,967.6a,561.7b);
gpdraw(0,934.9a,557.8b);
gpdraw(0,907.0a,390.9b);
gpdraw(0,875.3a,394.4b);
gpdraw(0,849.5a,390.9b);
gpdraw(0,819.0a,387.4b);
gpdraw(0,791.0a,507.9b);
gpdraw(0,766.7a,505.7b);
gpdraw(0,739.2a,497.6b);
gpdraw(0,710.2a,504.8b);
gpdraw(0,673.5a,373.6b);
gpdraw(0,636.6a,359.8b);
gpdraw(0,589.4a,406.8b);
gpdraw(0,546.5a,381.8b);
gpdraw(0,524.0a,369.2b);
gpdraw(0,499.4a,389.2b);
gpdraw(0,467.9a,354.6b);
gpdraw(0,443.8a,379.8b);
gpdraw(0,415.1a,425.0b);
gpdraw(0,387.2a,405.3b);
gpdraw(0,358.3a,390.9b);
gpdraw(0,331.2a,362.2b);
gpdraw(0,303.9a,196.2b);
gpdraw(0,281.7a,381.8b);
gpdraw(0,267.4a,441.9b);
gpdraw(0,257.5a,452.7b);
gpdraw(0,251.5a,476.2b);
gpdraw(0,281.3a,482.9b);
gpdraw(0,290.2a,461.5b);
gpdraw(0,300.7a,442.8b);
gpdraw(0,311.9a,436.9b);
gpdraw(0,323.2a,420.2b);
gpdraw(0,332.6a,437.9b);
gpdraw(0,341.2a,450.1b);
gpdraw(0,350.9a,457.6b);
gpdraw(0,361.5a,473.5b);
gpdraw(0,371.4a,468.1b);
gpdraw(0,380.5a,469.5b);
gpdraw(0,391.1a,460.0b);
gpdraw(0,401.4a,456.0b);
gpdraw(0,411.3a,462.2b);
gpdraw(0,420.6a,450.1b);
gpdraw(0,430.2a,458.4b);
gpdraw(0,439.5a,455.2b);
gpdraw(0,449.2a,445.6b);
gpdraw(0,457.7a,475.5b);
gpdraw(0,465.1a,478.7b);
gpdraw(0,473.7a,478.7b);
gpdraw(0,481.4a,482.9b);
gpdraw(0,489.8a,463.0b);
gpdraw(0,498.7a,452.7b);
gpdraw(0,507.3a,440.9b);
gpdraw(0,514.4a,428.4b);
gpdraw(0,522.1a,440.9b);
gpdraw(0,530.7a,438.9b);
gpdraw(0,540.0a,467.4b);
gpdraw(0,549.0a,477.4b);
gpdraw(0,557.1a,470.9b);
gpdraw(0,568.6a,488.7b);
gpdraw(0,575.5a,474.9b);
gpdraw(0,584.3a,474.9b);
gpdraw(0,592.7a,467.4b);
gpdraw(0,601.0a,453.5b);
gpdraw(0,603.9a,463.7b);
gpdraw(0,608.6a,471.5b);
gpdraw(0,612.3a,485.8b);
gpdraw(0,613.1a,482.3b);
gpdraw(0,613.4a,465.9b);
gpdraw(0,615.1a,467.4b);
gpdraw(0,616.6a,481.1b);
gpdraw(0,617.8a,481.7b);
gpdraw(0,618.4a,484.1b);
gpdraw(0,618.1a,485.3b);
gpdraw(0,616.8a,452.7b);
gpdraw(0,614.5a,447.4b);
gpdraw(0,611.6a,443.8b);
gpdraw(0,610.3a,457.6b);
gpdraw(0,611.7a,485.3b);
gpdraw(0,615.9a,486.4b);
gpdraw(0,621.9a,497.1b);
gpdraw(0,629.1a,502.5b);
gpdraw(0,636.7a,484.7b);
gpdraw(0,644.9a,498.6b);
gpdraw(0,652.2a,486.4b);
gpdraw(0,658.8a,472.2b);
gpdraw(0,666.4a,470.9b);
gpdraw(0,675.2a,449.2b);
gpdraw(0,685.8a,449.2b);
gpdraw(0,695.5a,435.9b);
gpdraw(0,703.5a,437.9b);
gpdraw(0,713.4a,433.8b);
gpdraw(0,724.7a,448.3b);
gpdraw(0,735.4a,456.0b);
gpdraw(0,746.3a,456.0b);
gpdraw(0,755.9a,463.7b);
gpdraw(0,763.5a,472.9b);
gpdraw(0,773.3a,474.9b);
gpdraw(0,781.8a,473.5b);
gpdraw(0,790.2a,463.7b);
gpdraw(0,799.4a,439.9b);
gpdraw(0,807.2a,435.9b);
gpdraw(0,814.4a,449.2b);
gpdraw(0,821.9a,453.5b);
gpdraw(0,830.0a,453.5b);
gpdraw(0,838.1a,490.9b);
gpdraw(0,846.0a,489.2b);
gpdraw(0,853.6a,497.6b);
gpdraw(0,861.5a,518.7b);
gpdraw(0,868.5a,495.1b);
gpdraw(0,874.1a,489.2b);
gpdraw(0,880.9a,479.3b);
gpdraw(0,886.4a,442.8b);
gpdraw(0,893.2a,454.3b);
gpdraw(0,900.8a,466.7b);
gpdraw(0,907.7a,467.4b);
gpdraw(0,914.1a,477.4b);
gpdraw(0,920.8a,463.0b);
gpdraw(0,926.9a,478.1b);
gpdraw(0,933.1a,474.9b);
gpdraw(0,939.7a,482.9b);
gpdraw(0,945.8a,482.9b);
gpdraw(0,951.4a,465.2b);
gpdraw(0,957.9a,479.3b);
gpdraw(0,964.7a,467.4b);
gpdraw(0,970.2a,463.7b);
gpdraw(0,976.0a,463.0b);
gpdraw(0,982.2a,452.7b);
gpdraw(0,988.7a,451.0b);
gpdraw(0,994.4a,459.2b);
gpdraw(0,1000.7a,452.7b);
gpdraw(0,1008.8a,452.7b);
gpdraw(0,1017.2a,448.3b);
gpdraw(0,1023.9a,460.7b);
gpdraw(0,1023.4a,468.1b);
gpdraw(0,1029.1a,474.9b);
gpdraw(0,1035.7a,482.3b);
gpdraw(0,1040.1a,475.5b);
gpdraw(0,1042.5a,470.2b);
gpdraw(0,1044.4a,472.9b);
gpdraw(0,1047.6a,478.1b);
gpdraw(0,1051.5a,476.8b);
gpdraw(0,1056.5a,477.4b);
gpdraw(0,1061.7a,458.4b);
gpdraw(0,1067.5a,450.1b);
gpdraw(0,1071.8a,462.2b);
gpdraw(0,1074.1a,454.3b);
gpdraw(0,1074.9a,482.9b);
gpdraw(0,1075.6a,482.3b);
gpdraw(0,1076.0a,469.5b);
gpdraw(0,1075.7a,474.2b);
gpdraw(0,1076.5a,446.5b);
gpdraw(0,1077.8a,444.7b);
gpdraw(0,1079.2a,459.2b);
gpdraw(0,1076.9a,464.5b);
gpdraw(0,1076.7a,478.7b);
gpdraw(0,1077.0a,484.1b);
gpdraw(0,1077.3a,484.7b);
gpdraw(0,1077.3a,484.1b);
gpdraw(0,1077.2a,467.4b);
gpdraw(0,1077.2a,470.2b);
gpdraw(0,1077.2a,452.7b);
gpdraw(0,1077.2a,445.6b);
gpdraw(0,1077.2a,450.1b);
gpdraw(0,1077.2a,432.8b);
gpdraw(0,1077.2a,432.8b);
gpdraw(0,1077.2a,432.8b);
gpdraw(0,1077.2a,432.8b);
gpdraw(0,1077.2a,432.8b);
gpdraw(0,1077.2a,432.8b);
gpdraw(0,1077.2a,432.8b);
gpdraw(0,502.6a,432.8b);
gpdraw(0,476.3a,432.8b);
gpdraw(0,447.1a,432.8b);
gpdraw(0,411.5a,432.8b);
gpdraw(0,376.8a,432.8b);
gpdraw(0,344.3a,432.8b);
gpdraw(0,311.1a,432.8b);
gpdraw(0,275.8a,432.8b);
gpdraw(0,248.3a,432.8b);
gpdraw(0,1043.2a,550.9b);
scalepen 2.000;
linetype -2;
scalepen 1.000;
linetype -2;
draw (159.0a,677.5b)--(159.0a,88.0b)--(1136.3a,88.0b)--(1136.3a,677.5b)--(159.0a,677.5b);
ptsize 1.000;
linetype -2;
endfig;
% BEGPOST
verbatimtex
 \end{document}
etex
% ENDPOST
end.
