xof 0302txt 0032
Header {
 1;
 0;
 1;
}
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}
Frame Object011 {
   FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh Object0111 {
 220;
0.008480;-1.704900;-13.860950;,
0.008630;1.494920;-14.074270;,
0.008630;1.485960;-15.193890;,
0.008480;-1.705620;-15.192150;,
0.008640;1.460080;-7.302240;,
0.008480;-1.702830;-10.059840;,
0.008490;-1.697320;0.058260;,
0.008640;1.513260;-2.782840;,
0.008640;1.494270;0.056530;,
-0.059380;1.513270;-2.766550;,
-0.059540;-1.697320;0.058260;,
-0.059390;1.460070;-7.325060;,
-0.059380;1.494270;0.056530;,
-0.059550;-1.705620;-15.192150;,
-0.059390;1.494940;-14.074270;,
-0.059540;-1.704890;-13.860950;,
0.008630;1.485960;-15.193890;,
-0.059550;-1.705620;-15.192150;,
0.008480;-1.705620;-15.192150;,
-0.059390;1.485970;-15.193880;,
-0.059550;-1.705620;-15.192150;,
0.008630;1.485960;-15.193890;,
0.008640;1.494270;0.056530;,
-0.059380;1.513270;-2.766550;,
0.008640;1.513260;-2.782840;,
0.008640;1.494270;0.056530;,
-0.059380;1.494270;0.056530;,
-0.059380;1.513270;-2.766550;,
0.008640;1.460080;-7.302240;,
-0.059380;1.513270;-2.766550;,
-0.059390;1.460070;-7.325060;,
0.008640;1.513260;-2.782840;,
-0.059380;1.513270;-2.766550;,
0.008640;1.460080;-7.302240;,
-0.059390;1.460070;-7.325060;,
0.147640;1.502810;-10.084410;,
0.008640;1.460080;-7.302240;,
0.079610;1.502600;-10.084400;,
0.008650;1.525820;4.002100;,
0.008650;1.468380;7.948180;,
0.008500;-1.689020;15.309150;,
0.008650;1.521570;12.467570;,
0.008650;1.502570;15.307420;,
-0.059370;1.502570;15.307420;,
0.008500;-1.689020;15.309150;,
-0.059530;-1.689010;15.309150;,
0.008650;1.502570;15.307420;,
-0.059370;1.521580;12.483880;,
-0.059530;-1.689010;15.309150;,
-0.059380;1.468370;7.925350;,
-0.059370;1.502570;15.307420;,
-0.059380;1.525810;3.990920;,
-0.059380;1.525810;3.990920;,
0.008640;1.494270;0.056530;,
0.008650;1.525820;4.002100;,
-0.059380;1.525810;3.990920;,
-0.059380;1.494270;0.056530;,
0.008640;1.494270;0.056530;,
0.008650;1.502570;15.307420;,
-0.059370;1.521580;12.483880;,
0.008650;1.521570;12.467570;,
0.008650;1.502570;15.307420;,
-0.059370;1.502570;15.307420;,
-0.059370;1.521580;12.483880;,
0.008650;1.468380;7.948180;,
-0.059370;1.521580;12.483880;,
-0.059380;1.468370;7.925350;,
0.008650;1.521570;12.467570;,
-0.059370;1.521580;12.483880;,
0.008650;1.468380;7.948180;,
-0.059380;1.468370;7.925350;,
0.008650;1.525820;4.002100;,
0.008650;1.468380;7.948180;,
-0.059380;1.468370;7.925350;,
-0.059380;1.525810;3.990920;,
0.008650;1.525820;4.002100;,
0.147640;1.502810;-10.084410;,
-0.059540;-1.702820;-10.059840;,
0.079610;1.502600;-10.084400;,
-0.326980;1.506060;-13.537380;,
0.008480;-1.704900;-13.860950;,
-0.225410;-1.704360;-13.191760;,
-0.356420;1.506120;-13.551900;,
-0.059390;1.494940;-14.074270;,
0.008630;1.494920;-14.074270;,
-0.326980;1.506060;-13.537380;,
0.008630;1.494920;-14.074270;,
-0.356420;1.506120;-13.551900;,
-0.293440;-1.704360;-13.191760;,
-0.059390;1.485970;-15.193880;,
-0.059390;1.494940;-14.074270;,
0.008630;1.485960;-15.193890;,
0.008630;1.494920;-14.074270;,
-0.059390;1.494940;-14.074270;,
-0.059390;1.485970;-15.193880;,
0.008630;1.485960;-15.193890;,
0.008480;-1.702830;-10.059840;,
0.147640;1.502810;-10.084410;,
0.079610;1.502600;-10.084400;,
0.079610;1.502600;-10.084400;,
-0.059540;-1.702820;-10.059840;,
0.008480;-1.702830;-10.059840;,
-0.326980;1.506060;-13.537380;,
-0.225410;-1.704360;-13.191760;,
-0.293440;-1.704360;-13.191760;,
-0.293440;-1.704360;-13.191760;,
-0.356420;1.506120;-13.551900;,
-0.326980;1.506060;-13.537380;,
0.041120;1.808230;-14.990080;,
0.071300;-1.820620;-15.276890;,
0.041120;1.808060;-15.309150;,
0.071300;-1.820480;-15.017930;,
0.356350;1.808220;-14.990100;,
0.041120;1.808060;-15.309150;,
0.356350;1.808040;-15.309150;,
0.041120;1.808230;-14.990080;,
0.356350;1.808040;-15.309150;,
0.338170;-1.820500;-15.017930;,
0.356350;1.808220;-14.990100;,
0.338170;-1.820640;-15.276910;,
0.041120;1.808060;-15.309150;,
0.338170;-1.820640;-15.276910;,
0.356350;1.808040;-15.309150;,
0.041120;1.808060;-15.309150;,
0.071300;-1.820620;-15.276890;,
0.338170;-1.820640;-15.276910;,
0.356350;1.808220;-14.990100;,
0.071300;-1.820480;-15.017930;,
0.041120;1.808230;-14.990080;,
0.356350;1.808220;-14.990100;,
0.338170;-1.820500;-15.017930;,
0.071300;-1.820480;-15.017930;,
0.356410;1.812200;-7.671330;,
0.328770;-1.816390;-7.377780;,
0.356290;1.812320;-7.352280;,
0.328370;-1.816540;-7.641880;,
0.041190;1.812160;-7.671340;,
0.356290;1.812320;-7.352280;,
0.041060;1.812330;-7.352270;,
0.356410;1.812200;-7.671330;,
0.041060;1.812330;-7.352270;,
0.071350;-1.816520;-7.639550;,
0.041190;1.812160;-7.671340;,
0.071250;-1.816380;-7.380120;,
0.356290;1.812320;-7.352280;,
0.071250;-1.816380;-7.380120;,
0.041060;1.812330;-7.352270;,
0.328770;-1.816390;-7.377780;,
0.071250;-1.816380;-7.380120;,
0.356290;1.812320;-7.352280;,
0.041190;1.812160;-7.671340;,
0.328370;-1.816540;-7.641880;,
0.356410;1.812200;-7.671330;,
0.071350;-1.816520;-7.639550;,
0.328370;-1.816540;-7.641880;,
0.041190;1.812160;-7.671340;,
0.041130;1.816540;0.364700;,
0.071310;-1.812320;0.077420;,
0.041140;1.816360;0.045640;,
0.071310;-1.812180;0.336860;,
0.356360;1.816520;0.364700;,
0.041140;1.816360;0.045640;,
0.356360;1.816340;0.045630;,
0.041130;1.816540;0.364700;,
0.356360;1.816340;0.045630;,
0.338180;-1.812200;0.336850;,
0.356360;1.816520;0.364700;,
0.338180;-1.812340;0.077420;,
0.041140;1.816360;0.045640;,
0.338180;-1.812340;0.077420;,
0.356360;1.816340;0.045630;,
0.071310;-1.812320;0.077420;,
0.356360;1.816520;0.364700;,
0.071310;-1.812180;0.336860;,
0.041130;1.816540;0.364700;,
0.338180;-1.812200;0.336850;,
0.356420;1.820500;7.579100;,
0.328780;-1.808090;7.872640;,
0.356300;1.820620;7.898150;,
0.328380;-1.808240;7.608540;,
0.041200;1.820460;7.578630;,
0.356300;1.820620;7.898150;,
0.041070;1.820640;7.898150;,
0.356420;1.820500;7.579100;,
0.041070;1.820640;7.898150;,
0.071360;-1.808220;7.610870;,
0.041200;1.820460;7.578630;,
0.071260;-1.808080;7.869840;,
0.356300;1.820620;7.898150;,
0.071260;-1.808080;7.869840;,
0.041070;1.820640;7.898150;,
0.328780;-1.808090;7.872640;,
0.071260;-1.808080;7.869840;,
0.356300;1.820620;7.898150;,
0.041200;1.820460;7.578630;,
0.328380;-1.808240;7.608540;,
0.356420;1.820500;7.579100;,
0.071360;-1.808220;7.610870;,
0.328380;-1.808240;7.608540;,
0.041200;1.820460;7.578630;,
0.038910;0.789200;0.056910;,
0.156550;1.007790;-10.015860;,
0.156540;0.783150;-10.006680;,
0.038920;1.013850;0.056790;,
0.041020;-1.248080;0.058030;,
0.041030;-1.045000;-9.671230;,
0.041020;-1.254090;-9.662690;,
0.041030;-1.038990;0.057910;,
0.038920;0.797500;15.307330;,
0.038930;1.022150;15.307210;,
0.041030;-1.239780;15.308440;,
0.041040;-1.030690;15.308330;,
0.038900;0.780900;-15.193510;,
0.038910;0.782800;-14.115060;,
0.038920;1.007450;-14.115560;,
0.038910;1.005550;-15.193640;,
0.041020;-1.256380;-15.192400;,
0.041020;-1.254480;-14.117400;,
0.041030;-1.045390;-14.117870;,
0.041020;-1.047290;-15.192510;;

 104;
3;2,1,0;,
3;0,3,2;,
3;6,5,4;,
3;4,7,6;,
3;7,8,6;,
3;11,10,9;,
3;10,12,9;,
3;15,14,13;,
3;18,17,16;,
3;21,20,19;,
3;24,23,22;,
3;27,26,25;,
3;30,29,28;,
3;33,32,31;,
3;36,35,34;,
3;35,37,34;,
3;8,38,6;,
3;40,6,39;,
3;39,6,38;,
3;39,41,40;,
3;41,42,40;,
3;45,44,43;,
3;43,44,46;,
3;49,48,47;,
3;48,50,47;,
3;48,49,10;,
3;49,51,10;,
3;12,10,51;,
3;54,53,52;,
3;57,56,55;,
3;60,59,58;,
3;63,62,61;,
3;66,65,64;,
3;69,68,67;,
3;72,71,70;,
3;75,74,73;,
3;76,4,5;,
3;10,11,77;,
3;77,11,78;,
3;81,80,79;,
3;84,83,82;,
3;82,85,84;,
3;86,79,80;,
3;87,14,15;,
3;15,88,87;,
3;89,13,14;,
3;92,91,90;,
3;95,94,93;,
3;98,97,96;,
3;101,100,99;,
3;104,103,102;,
3;107,106,105;,
3;110,109,108;,
3;108,109,111;,
3;114,113,112;,
3;112,113,115;,
3;118,117,116;,
3;116,117,119;,
3;122,121,120;,
3;125,124,123;,
3;128,127,126;,
3;131,130,129;,
3;134,133,132;,
3;132,133,135;,
3;138,137,136;,
3;136,137,139;,
3;142,141,140;,
3;140,141,143;,
3;146,145,144;,
3;149,148,147;,
3;152,151,150;,
3;155,154,153;,
3;158,157,156;,
3;156,157,159;,
3;162,161,160;,
3;160,161,163;,
3;166,165,164;,
3;164,165,167;,
3;170,169,168;,
3;169,171,168;,
3;174,173,172;,
3;173,175,172;,
3;178,177,176;,
3;176,177,179;,
3;182,181,180;,
3;180,181,183;,
3;186,185,184;,
3;184,185,187;,
3;190,189,188;,
3;193,192,191;,
3;196,195,194;,
3;199,198,197;,
3;202,201,200;,
3;200,201,203;,
3;206,205,204;,
3;204,205,207;,
3;200,203,208;,
3;208,203,209;,
3;204,207,210;,
3;210,207,211;,
3;214,213,212;,
3;212,215,214;,
3;218,217,216;,
3;216,219,218;;
MeshMaterialList {
 4;
 104;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
Material _2___Default {
 0.584314;0.584314;0.584314;1.000000;;
2048.000000;
 0.894118;0.894118;0.894118;;
 0.116863;0.116863;0.116863;;
TextureFilename {
"MET_2.png";
}
 }
Material _3___Default {
 0.584314;0.584314;0.584314;1.000000;;
2048.000000;
 0.894118;0.894118;0.894118;;
 0.116863;0.116863;0.116863;;
TextureFilename {
"CON_12.png";
}
 }
Material _4___Default {
 0.584314;0.584314;0.584314;1.000000;;
2048.000000;
 0.894118;0.894118;0.894118;;
 0.116863;0.116863;0.116863;;
TextureFilename {
"METALL_3.png";
}
 }
Material Material {
 0.752941;0.752941;0.752941;1.000000;;
2048.000000;
 0.301177;0.301177;0.301177;;
 0.023529;0.023529;0.023529;;
 }
}

 MeshNormals {
 220;
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
0.999762;-0.014350;0.016410;,
0.999466;-0.021510;0.024610;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
-1.000000;0.000050;0.000000;,
-1.000000;0.000050;0.000000;,
-0.999760;0.014350;-0.016540;,
-1.000000;0.000050;0.000000;,
-1.000000;0.000050;0.000000;,
-0.985466;-0.011250;-0.169499;,
-0.959306;-0.030110;-0.280759;,
0.000000;-0.000540;-1.000000;,
0.000000;-0.000540;-1.000000;,
0.000000;-0.000540;-1.000000;,
-0.000140;-0.000540;-1.000000;,
-0.000140;-0.000540;-1.000000;,
-0.000140;-0.000540;-1.000000;,
0.001750;0.999976;0.006690;,
0.001750;0.999976;0.006690;,
0.001750;0.999976;0.006690;,
0.000060;0.999977;0.006730;,
0.000060;0.999977;0.006730;,
0.000060;0.999977;0.006730;,
0.003760;0.999925;-0.011670;,
0.003760;0.999925;-0.011670;,
0.003760;0.999925;-0.011670;,
-0.002670;0.999927;-0.011770;,
-0.002670;0.999927;-0.011770;,
-0.002670;0.999927;-0.011770;,
-0.004210;0.999876;0.015170;,
-0.004210;0.999876;0.015170;,
-0.005220;0.999872;0.015100;,
-0.003210;0.999879;0.015250;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
-0.000010;0.000540;1.000000;,
-0.000010;0.000540;1.000000;,
-0.000020;0.000540;1.000000;,
0.000000;0.000540;1.000000;,
-1.000000;0.000050;0.000000;,
-1.000000;0.000050;0.000000;,
-1.000000;0.000050;0.000000;,
-1.000000;0.000050;0.000000;,
-1.000000;0.000050;0.000000;,
0.001260;0.999967;-0.008000;,
0.001260;0.999967;-0.008000;,
0.001260;0.999967;-0.008000;,
0.000060;0.999968;-0.008020;,
0.000060;0.999968;-0.008020;,
0.000060;0.999968;-0.008020;,
0.001790;0.999976;0.006690;,
0.001790;0.999976;0.006690;,
0.001790;0.999976;0.006690;,
0.000050;0.999977;0.006730;,
0.000050;0.999977;0.006730;,
0.000050;0.999977;0.006730;,
0.003790;0.999925;-0.011670;,
0.003790;0.999925;-0.011670;,
0.003790;0.999925;-0.011670;,
-0.002630;0.999927;-0.011770;,
-0.002630;0.999927;-0.011770;,
-0.002630;0.999927;-0.011770;,
-0.005010;0.999882;0.014550;,
-0.005010;0.999882;0.014550;,
-0.005010;0.999882;0.014550;,
-0.002450;0.999890;0.014600;,
-0.002450;0.999890;0.014600;,
-0.002450;0.999890;0.014600;,
0.997866;-0.042940;0.049190;,
-0.999461;0.021510;-0.024820;,
-0.997846;0.042940;-0.049600;,
0.900503;0.050560;0.431901;,
0.900503;0.050560;0.431901;,
0.942003;0.065240;0.329201;,
0.004860;0.999825;-0.018050;,
0.000410;0.999776;-0.021160;,
0.004860;0.999825;-0.018050;,
0.009300;0.999845;-0.014940;,
0.847759;0.035240;0.529209;,
-0.909583;-0.044330;-0.413151;,
-0.942561;-0.055440;-0.329400;,
-1.000000;0.000050;0.000000;,
0.000410;0.999968;-0.008000;,
0.000410;0.999968;-0.008000;,
0.000410;0.999968;-0.008000;,
0.000060;0.999968;-0.008020;,
0.000060;0.999968;-0.008020;,
0.000060;0.999968;-0.008020;,
-0.000150;-0.007660;-0.999971;,
-0.000150;-0.007660;-0.999971;,
-0.000150;-0.007660;-0.999971;,
-0.000040;-0.007660;-0.999971;,
-0.000040;-0.007660;-0.999971;,
-0.000040;-0.007660;-0.999971;,
0.000020;0.107039;0.994255;,
0.000020;0.107039;0.994255;,
0.000020;0.107039;0.994255;,
-0.440300;0.091550;0.893171;,
-0.440300;0.091550;0.893171;,
-0.440300;0.091550;0.893171;,
-0.999965;-0.008320;0.000000;,
-0.999965;-0.008320;0.000000;,
-0.999965;-0.008320;0.000000;,
-0.999965;-0.008320;0.000000;,
0.000050;1.000000;-0.000550;,
0.000050;1.000000;-0.000550;,
0.000050;1.000000;-0.000550;,
0.000050;1.000000;-0.000550;,
0.999987;-0.005010;0.000000;,
0.999987;-0.005010;0.000000;,
0.999987;-0.005010;0.000000;,
0.999987;-0.005010;0.000000;,
-0.000010;-0.008890;-0.999960;,
-0.000010;-0.008890;-0.999960;,
-0.000010;-0.008890;-0.999960;,
-0.000060;-0.008890;-0.999960;,
-0.000060;-0.008890;-0.999960;,
-0.000060;-0.008890;-0.999960;,
0.000040;-0.007670;0.999971;,
0.000040;-0.007670;0.999971;,
0.000040;-0.007670;0.999971;,
0.000020;-0.007670;0.999971;,
0.000020;-0.007670;0.999971;,
0.000020;-0.007670;0.999971;,
0.999970;-0.007660;-0.000570;,
0.999970;-0.007660;-0.000570;,
0.999971;-0.007590;0.000390;,
0.999969;-0.007740;-0.001530;,
-0.000040;1.000000;-0.000450;,
-0.000040;1.000000;-0.000450;,
0.000050;1.000000;-0.000540;,
-0.000130;1.000000;-0.000370;,
-0.999965;-0.008320;-0.000380;,
-0.999965;-0.008320;-0.000380;,
-0.999965;-0.008310;-0.000380;,
-0.999965;-0.008320;-0.000370;,
0.000010;-0.007670;0.999971;,
0.000010;-0.007670;0.999971;,
0.000010;-0.007670;0.999971;,
-0.009080;-0.006960;0.999935;,
-0.009080;-0.006960;0.999935;,
-0.009080;-0.006960;0.999935;,
0.000030;-0.008120;-0.999967;,
0.000030;-0.008120;-0.999967;,
0.000030;-0.008120;-0.999967;,
-0.009080;-0.008840;-0.999920;,
-0.009080;-0.008840;-0.999920;,
-0.009080;-0.008840;-0.999920;,
-0.999965;-0.008320;0.000000;,
-0.999965;-0.008320;0.000000;,
-0.999965;-0.008320;0.000000;,
-0.999965;-0.008320;0.000000;,
0.000050;1.000000;-0.000550;,
0.000050;1.000000;-0.000550;,
0.000050;1.000000;-0.000550;,
0.000050;1.000000;-0.000550;,
0.999987;-0.005010;0.000000;,
0.999987;-0.005010;0.000000;,
0.999987;-0.005010;0.000000;,
0.999987;-0.005010;0.000000;,
-0.000010;-0.008760;-0.999962;,
-0.000010;-0.008760;-0.999962;,
-0.000010;-0.008760;-0.999962;,
-0.000010;-0.008760;-0.999962;,
0.000010;-0.007670;0.999971;,
0.000010;-0.007670;0.999971;,
0.000010;-0.007670;0.999971;,
0.000010;-0.007670;0.999971;,
0.999970;-0.007660;-0.000560;,
0.999970;-0.007660;-0.000560;,
0.999971;-0.007590;0.000390;,
0.999969;-0.007740;-0.001520;,
-0.000040;1.000000;-0.000460;,
-0.000040;1.000000;-0.000460;,
0.000050;1.000000;-0.000540;,
-0.000130;1.000000;-0.000370;,
-0.999965;-0.008320;-0.000380;,
-0.999965;-0.008320;-0.000380;,
-0.999965;-0.008310;-0.000390;,
-0.999965;-0.008320;-0.000370;,
0.000010;-0.007800;0.999970;,
0.000010;-0.007800;0.999970;,
0.000010;-0.007800;0.999970;,
-0.010870;-0.006950;0.999917;,
-0.010870;-0.006950;0.999917;,
-0.010870;-0.006950;0.999917;,
0.001490;-0.008120;-0.999966;,
0.001490;-0.008120;-0.999966;,
0.001490;-0.008120;-0.999966;,
-0.009090;-0.008960;-0.999919;,
-0.009090;-0.008960;-0.999919;,
-0.009090;-0.008960;-0.999919;,
0.999970;0.000110;0.007790;,
0.999932;0.000190;0.011680;,
0.999932;0.000430;0.011690;,
0.999992;-0.000050;0.003890;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000040;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000050;0.000000;,
1.000000;-0.000040;0.000000;;

 104;
3;2,1,0;,
3;0,3,2;,
3;6,5,4;,
3;4,7,6;,
3;7,8,6;,
3;11,10,9;,
3;10,12,9;,
3;15,14,13;,
3;18,17,16;,
3;21,20,19;,
3;24,23,22;,
3;27,26,25;,
3;30,29,28;,
3;33,32,31;,
3;36,35,34;,
3;35,37,34;,
3;8,38,6;,
3;40,6,39;,
3;39,6,38;,
3;39,41,40;,
3;41,42,40;,
3;45,44,43;,
3;43,44,46;,
3;49,48,47;,
3;48,50,47;,
3;48,49,10;,
3;49,51,10;,
3;12,10,51;,
3;54,53,52;,
3;57,56,55;,
3;60,59,58;,
3;63,62,61;,
3;66,65,64;,
3;69,68,67;,
3;72,71,70;,
3;75,74,73;,
3;76,4,5;,
3;10,11,77;,
3;77,11,78;,
3;81,80,79;,
3;84,83,82;,
3;82,85,84;,
3;86,79,80;,
3;87,14,15;,
3;15,88,87;,
3;89,13,14;,
3;92,91,90;,
3;95,94,93;,
3;98,97,96;,
3;101,100,99;,
3;104,103,102;,
3;107,106,105;,
3;110,109,108;,
3;108,109,111;,
3;114,113,112;,
3;112,113,115;,
3;118,117,116;,
3;116,117,119;,
3;122,121,120;,
3;125,124,123;,
3;128,127,126;,
3;131,130,129;,
3;134,133,132;,
3;132,133,135;,
3;138,137,136;,
3;136,137,139;,
3;142,141,140;,
3;140,141,143;,
3;146,145,144;,
3;149,148,147;,
3;152,151,150;,
3;155,154,153;,
3;158,157,156;,
3;156,157,159;,
3;162,161,160;,
3;160,161,163;,
3;166,165,164;,
3;164,165,167;,
3;170,169,168;,
3;169,171,168;,
3;174,173,172;,
3;173,175,172;,
3;178,177,176;,
3;176,177,179;,
3;182,181,180;,
3;180,181,183;,
3;186,185,184;,
3;184,185,187;,
3;190,189,188;,
3;193,192,191;,
3;196,195,194;,
3;199,198,197;,
3;202,201,200;,
3;200,201,203;,
3;206,205,204;,
3;204,205,207;,
3;200,203,208;,
3;208,203,209;,
3;204,207,210;,
3;210,207,211;,
3;214,213,212;,
3;212,215,214;,
3;218,217,216;,
3;216,219,218;;
 }
MeshTextureCoords {
 220;
-3.150580;0.947120;,
-3.206530;0.061230;,
-3.500190;0.063710;,
-3.499730;0.947320;,
-1.430360;0.070880;,
-2.153620;0.946550;,
0.500170;0.945030;,
-0.245000;0.056150;,
0.499710;0.061410;,
1.240730;0.056150;,
0.499830;0.945020;,
2.436340;0.070880;,
0.500290;0.061410;,
4.499730;0.947320;,
4.206530;0.061220;,
4.150580;0.947120;,
0.499650;0.063710;,
0.481770;0.947320;,
0.499610;0.947320;,
0.481810;0.063710;,
0.481770;0.947320;,
0.499650;0.063710;,
0.499650;0.500290;,
0.481810;1.240730;,
0.499650;1.245000;,
0.499650;0.500290;,
0.481810;0.500290;,
0.481810;1.240730;,
0.499650;2.430360;,
0.481810;1.240730;,
0.481810;2.436340;,
0.499650;1.245000;,
0.481810;1.240730;,
0.499650;2.430360;,
0.481810;2.436340;,
0.536110;3.160070;,
0.499650;2.430360;,
0.518270;3.160060;,
1.534560;0.052680;,
2.569540;0.068580;,
4.500190;0.942730;,
3.754890;0.053850;,
4.499730;0.059110;,
0.518180;0.059110;,
0.500380;0.942730;,
0.518230;0.942720;,
0.500340;0.059110;,
-2.759170;0.053850;,
-3.500190;0.942720;,
-1.563560;0.068580;,
-3.499730;0.059110;,
-0.531630;0.052680;,
0.481810;-0.531630;,
0.499650;0.500290;,
0.499660;-0.534560;,
0.481810;-0.531630;,
0.481810;0.500290;,
0.499650;0.500290;,
0.499660;-3.499730;,
0.481820;-2.759170;,
0.499660;-2.754890;,
0.499660;-3.499730;,
0.481820;-3.499730;,
0.481820;-2.759170;,
0.499660;-1.569540;,
0.481820;-2.759170;,
0.481810;-1.563560;,
0.499660;-2.754890;,
0.481820;-2.759170;,
0.499660;-1.569540;,
0.481810;-1.563560;,
0.499660;-0.534560;,
0.499660;-1.569540;,
0.481810;-1.563560;,
0.481810;-0.531630;,
0.499660;-0.534560;,
-2.160070;0.059050;,
3.153620;0.946550;,
3.160060;0.059110;,
-3.065720;0.058150;,
-3.150580;0.947120;,
-2.975070;0.946980;,
0.463890;4.069530;,
0.481810;4.206530;,
0.499650;4.206530;,
0.471610;4.065720;,
-3.206530;0.061230;,
4.069530;0.058130;,
3.975070;0.946970;,
4.500190;0.063710;,
0.481810;4.206530;,
0.499650;4.500190;,
0.499650;4.206530;,
0.481810;4.206530;,
0.481810;4.500190;,
0.499650;4.500190;,
0.499610;0.946550;,
0.536110;0.059050;,
0.518270;0.059110;,
0.518270;0.059110;,
0.481770;0.946550;,
0.499610;0.946550;,
0.528390;0.058150;,
0.498540;0.946980;,
0.516380;0.946970;,
0.516380;0.946970;,
0.536110;0.058130;,
0.528390;0.058150;,
0.974270;3.446050;,
0.022480;3.521270;,
0.974220;3.529730;,
0.022520;3.453350;,
-2.446050;0.541340;,
-2.529730;0.458660;,
-2.529740;0.541340;,
-2.446050;0.458660;,
0.025780;3.529740;,
0.977480;3.453350;,
0.025740;3.446050;,
0.977520;3.521280;,
0.974220;0.458660;,
0.022480;0.536570;,
0.974220;0.541340;,
0.974220;0.458660;,
0.022480;0.466570;,
0.022480;0.536570;,
0.025740;0.541340;,
0.977480;0.466570;,
0.025730;0.458660;,
0.025740;0.541340;,
0.977480;0.536570;,
0.977480;0.466570;,
0.024690;1.553850;,
0.976410;1.476860;,
0.024660;1.470170;,
0.976440;1.546130;,
-0.553850;0.458680;,
-0.470170;0.541320;,
-0.470170;0.458640;,
-0.553850;0.541350;,
0.975340;1.470170;,
0.023560;1.545510;,
0.975300;1.553850;,
0.023600;1.477470;,
0.024660;0.541320;,
0.976400;0.466560;,
0.024660;0.458640;,
0.976410;0.534100;,
0.976400;0.466560;,
0.024660;0.541320;,
0.975300;0.458680;,
0.023560;0.534000;,
0.975310;0.541350;,
0.023560;0.466590;,
0.023560;0.534000;,
0.975300;0.458680;,
0.976440;-0.553850;,
0.024660;-0.478500;,
0.976400;-0.470170;,
0.024700;-0.546550;,
1.553850;0.541340;,
1.470170;0.458660;,
1.470170;0.541340;,
1.553850;0.458660;,
0.023610;-0.470170;,
0.975310;-0.546550;,
0.023560;-0.553850;,
0.975340;-0.478500;,
0.976400;0.458660;,
0.024660;0.536570;,
0.976390;0.541340;,
0.024660;0.466580;,
0.023560;0.541340;,
0.975300;0.466580;,
0.023560;0.458660;,
0.975310;0.536570;,
0.022520;-2.446050;,
0.974230;-2.523040;,
0.022480;-2.529730;,
0.974270;-2.453770;,
3.445930;0.458680;,
3.529730;0.541320;,
3.529740;0.458650;,
3.446050;0.541360;,
0.977520;-2.529740;,
0.025740;-2.454390;,
0.977470;-2.445930;,
0.025770;-2.522310;,
0.022480;0.541320;,
0.974230;0.466560;,
0.022480;0.458650;,
0.974230;0.534110;,
0.974230;0.466560;,
0.022480;0.541320;,
0.977470;0.458680;,
0.025730;0.534000;,
0.977480;0.541360;,
0.025740;0.466590;,
0.025730;0.534000;,
0.977470;0.458680;,
0.499870;-0.213980;,
-2.142030;-0.271310;,
-2.139620;-0.212400;,
0.499840;-0.272900;,
0.500160;1.000360;,
-2.051640;0.947090;,
-2.049400;1.001930;,
0.500130;0.945520;,
4.499770;-0.216160;,
4.499740;-0.275080;,
4.500060;0.998180;,
4.500030;0.943340;,
-3.500030;-0.211800;,
-3.217170;-0.212300;,
-3.217300;-0.271220;,
-3.500060;-0.270730;,
-3.499740;1.002540;,
-3.217790;1.002040;,
-3.217910;0.947200;,
-3.499770;0.947700;;
}
}
 }
