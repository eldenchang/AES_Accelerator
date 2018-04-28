/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 26 21:27:10 2018
/////////////////////////////////////////////////////////////


module InvSBox ( data_in, data_out );
  input [7:0] data_in;
  output [7:0] data_out;
  wire   N491, N492, N493, N494, N495, N496, N497, N498, N499, N500, N501,
         N502, N503, N504, N505, N506, N507, N508, N509, N510, N511, N512,
         N513, N514, N515, N516, N517, N518, N519, N520, N521, N522, N523,
         N524, N525, N526, N527, N528, N529, N530, N531, N532, N533, N534,
         N535, N536, N537, N538, N539, N540, N541, N542, N543, N544, N545,
         N546, N547, N548, N549, N550, N551, N552, N553, N554, N555, N556,
         N557, N558, N559, N560, N561, N562, N563, N564, N565, N566, N567,
         N568, N569, N570, N571, N572, N573, N574, N575, N576, N577, N578,
         N579, N580, N581, N582, N583, N584, N585, N586, N587, N588, N589,
         N590, N591, N592, N593, N594, N595, N596, N597, N598, N599, N600,
         N601, N602, N603, N604, N605, N606, N607, N608, N609, N610, N611,
         N612, N613, N614, N615, N616, N617, N618, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577;

  BUFX2 U338 ( .A(n353), .Y(n210) );
  INVX2 U339 ( .A(data_in[7]), .Y(n405) );
  BUFX2 U340 ( .A(n356), .Y(n211) );
  BUFX2 U341 ( .A(n350), .Y(n212) );
  INVX2 U342 ( .A(data_in[6]), .Y(n468) );
  BUFX2 U343 ( .A(n348), .Y(n213) );
  BUFX2 U344 ( .A(n358), .Y(n214) );
  BUFX2 U345 ( .A(n349), .Y(n215) );
  INVX2 U346 ( .A(data_in[4]), .Y(n387) );
  BUFX2 U347 ( .A(n347), .Y(n216) );
  BUFX2 U348 ( .A(n357), .Y(n217) );
  NOR2X1 U349 ( .A(n367), .B(data_in[2]), .Y(n220) );
  NAND2X1 U350 ( .A(n220), .B(data_in[0]), .Y(n348) );
  NOR2X1 U351 ( .A(data_in[1]), .B(data_in[2]), .Y(n221) );
  NAND2X1 U352 ( .A(n221), .B(data_in[0]), .Y(n347) );
  OAI22X1 U353 ( .A(N586), .B(n213), .C(N570), .D(n216), .Y(n219) );
  NOR2X1 U354 ( .A(n368), .B(n367), .Y(n224) );
  NAND2X1 U355 ( .A(data_in[0]), .B(n224), .Y(n350) );
  NOR2X1 U356 ( .A(n368), .B(data_in[1]), .Y(n225) );
  NAND2X1 U357 ( .A(n225), .B(data_in[0]), .Y(n349) );
  OAI22X1 U358 ( .A(N618), .B(n212), .C(N602), .D(n215), .Y(n218) );
  NOR2X1 U359 ( .A(n219), .B(n218), .Y(n237) );
  NAND2X1 U360 ( .A(n220), .B(n366), .Y(n356) );
  NAND2X1 U361 ( .A(n221), .B(n366), .Y(n353) );
  NOR2X1 U362 ( .A(N562), .B(n210), .Y(n222) );
  NOR2X1 U363 ( .A(n369), .B(n222), .Y(n223) );
  OAI21X1 U364 ( .A(N578), .B(n211), .C(n223), .Y(n227) );
  NAND2X1 U365 ( .A(n224), .B(n366), .Y(n358) );
  NAND2X1 U366 ( .A(n225), .B(n366), .Y(n357) );
  OAI22X1 U367 ( .A(N610), .B(n214), .C(N594), .D(n217), .Y(n226) );
  NOR2X1 U368 ( .A(n227), .B(n226), .Y(n236) );
  OAI22X1 U369 ( .A(N522), .B(n213), .C(N506), .D(n216), .Y(n229) );
  OAI22X1 U370 ( .A(N554), .B(n212), .C(N538), .D(n215), .Y(n228) );
  NOR2X1 U371 ( .A(n229), .B(n228), .Y(n235) );
  NOR2X1 U372 ( .A(N498), .B(n210), .Y(n230) );
  NOR2X1 U373 ( .A(data_in[3]), .B(n230), .Y(n231) );
  OAI21X1 U374 ( .A(N514), .B(n211), .C(n231), .Y(n233) );
  OAI22X1 U375 ( .A(N546), .B(n214), .C(N530), .D(n217), .Y(n232) );
  NOR2X1 U376 ( .A(n233), .B(n232), .Y(n234) );
  AOI22X1 U377 ( .A(n237), .B(n236), .C(n235), .D(n234), .Y(n238) );
  OAI22X1 U378 ( .A(N585), .B(n213), .C(N569), .D(n216), .Y(n240) );
  OAI22X1 U379 ( .A(N617), .B(n212), .C(N601), .D(n215), .Y(n239) );
  NOR2X1 U380 ( .A(n240), .B(n239), .Y(n254) );
  NOR2X1 U381 ( .A(N561), .B(n210), .Y(n241) );
  NOR2X1 U382 ( .A(n369), .B(n241), .Y(n242) );
  OAI21X1 U383 ( .A(N577), .B(n211), .C(n242), .Y(n244) );
  OAI22X1 U384 ( .A(N609), .B(n214), .C(N593), .D(n217), .Y(n243) );
  NOR2X1 U385 ( .A(n244), .B(n243), .Y(n253) );
  OAI22X1 U386 ( .A(N521), .B(n213), .C(N505), .D(n216), .Y(n246) );
  OAI22X1 U387 ( .A(N553), .B(n212), .C(N537), .D(n215), .Y(n245) );
  NOR2X1 U388 ( .A(n246), .B(n245), .Y(n252) );
  NOR2X1 U389 ( .A(N497), .B(n210), .Y(n247) );
  NOR2X1 U390 ( .A(data_in[3]), .B(n247), .Y(n248) );
  OAI21X1 U391 ( .A(N513), .B(n211), .C(n248), .Y(n250) );
  OAI22X1 U392 ( .A(N545), .B(n214), .C(N529), .D(n217), .Y(n249) );
  NOR2X1 U393 ( .A(n250), .B(n249), .Y(n251) );
  AOI22X1 U394 ( .A(n254), .B(n253), .C(n252), .D(n251), .Y(n255) );
  OAI22X1 U395 ( .A(N584), .B(n213), .C(N568), .D(n216), .Y(n257) );
  OAI22X1 U396 ( .A(N616), .B(n212), .C(N600), .D(n215), .Y(n256) );
  NOR2X1 U397 ( .A(n257), .B(n256), .Y(n271) );
  NOR2X1 U398 ( .A(N560), .B(n210), .Y(n258) );
  NOR2X1 U399 ( .A(n369), .B(n258), .Y(n259) );
  OAI21X1 U400 ( .A(N576), .B(n211), .C(n259), .Y(n261) );
  OAI22X1 U401 ( .A(N608), .B(n214), .C(N592), .D(n217), .Y(n260) );
  NOR2X1 U402 ( .A(n261), .B(n260), .Y(n270) );
  OAI22X1 U403 ( .A(N520), .B(n213), .C(N504), .D(n216), .Y(n263) );
  OAI22X1 U404 ( .A(N552), .B(n212), .C(N536), .D(n215), .Y(n262) );
  NOR2X1 U405 ( .A(n263), .B(n262), .Y(n269) );
  NOR2X1 U406 ( .A(N496), .B(n210), .Y(n264) );
  NOR2X1 U407 ( .A(data_in[3]), .B(n264), .Y(n265) );
  OAI21X1 U408 ( .A(N512), .B(n211), .C(n265), .Y(n267) );
  OAI22X1 U409 ( .A(N544), .B(n214), .C(N528), .D(n217), .Y(n266) );
  NOR2X1 U410 ( .A(n267), .B(n266), .Y(n268) );
  AOI22X1 U411 ( .A(n271), .B(n270), .C(n269), .D(n268), .Y(n272) );
  OAI22X1 U412 ( .A(N583), .B(n213), .C(N567), .D(n216), .Y(n274) );
  OAI22X1 U413 ( .A(N615), .B(n212), .C(N599), .D(n215), .Y(n273) );
  NOR2X1 U414 ( .A(n274), .B(n273), .Y(n288) );
  NOR2X1 U415 ( .A(N559), .B(n210), .Y(n275) );
  NOR2X1 U416 ( .A(n369), .B(n275), .Y(n276) );
  OAI21X1 U417 ( .A(N575), .B(n211), .C(n276), .Y(n278) );
  OAI22X1 U418 ( .A(N607), .B(n214), .C(N591), .D(n217), .Y(n277) );
  NOR2X1 U419 ( .A(n278), .B(n277), .Y(n287) );
  OAI22X1 U420 ( .A(N519), .B(n213), .C(N503), .D(n216), .Y(n280) );
  OAI22X1 U421 ( .A(N551), .B(n212), .C(N535), .D(n215), .Y(n279) );
  NOR2X1 U422 ( .A(n280), .B(n279), .Y(n286) );
  NOR2X1 U423 ( .A(N495), .B(n210), .Y(n281) );
  NOR2X1 U424 ( .A(data_in[3]), .B(n281), .Y(n282) );
  OAI21X1 U425 ( .A(N511), .B(n211), .C(n282), .Y(n284) );
  OAI22X1 U426 ( .A(N543), .B(n214), .C(N527), .D(n217), .Y(n283) );
  NOR2X1 U427 ( .A(n284), .B(n283), .Y(n285) );
  AOI22X1 U428 ( .A(n288), .B(n287), .C(n286), .D(n285), .Y(n289) );
  OAI22X1 U429 ( .A(N582), .B(n213), .C(N566), .D(n216), .Y(n291) );
  OAI22X1 U430 ( .A(N614), .B(n212), .C(N598), .D(n215), .Y(n290) );
  NOR2X1 U431 ( .A(n291), .B(n290), .Y(n305) );
  NOR2X1 U432 ( .A(N558), .B(n210), .Y(n292) );
  NOR2X1 U433 ( .A(n369), .B(n292), .Y(n293) );
  OAI21X1 U434 ( .A(N574), .B(n211), .C(n293), .Y(n295) );
  OAI22X1 U435 ( .A(N606), .B(n214), .C(N590), .D(n217), .Y(n294) );
  NOR2X1 U436 ( .A(n295), .B(n294), .Y(n304) );
  OAI22X1 U437 ( .A(N518), .B(n213), .C(N502), .D(n216), .Y(n297) );
  OAI22X1 U438 ( .A(N550), .B(n212), .C(N534), .D(n215), .Y(n296) );
  NOR2X1 U439 ( .A(n297), .B(n296), .Y(n303) );
  NOR2X1 U440 ( .A(N494), .B(n210), .Y(n298) );
  NOR2X1 U441 ( .A(data_in[3]), .B(n298), .Y(n299) );
  OAI21X1 U442 ( .A(N510), .B(n211), .C(n299), .Y(n301) );
  OAI22X1 U443 ( .A(N542), .B(n214), .C(N526), .D(n217), .Y(n300) );
  NOR2X1 U444 ( .A(n301), .B(n300), .Y(n302) );
  AOI22X1 U445 ( .A(n305), .B(n304), .C(n303), .D(n302), .Y(n306) );
  OAI22X1 U446 ( .A(N581), .B(n213), .C(N565), .D(n216), .Y(n308) );
  OAI22X1 U447 ( .A(N613), .B(n212), .C(N597), .D(n215), .Y(n307) );
  NOR2X1 U448 ( .A(n308), .B(n307), .Y(n322) );
  NOR2X1 U449 ( .A(N557), .B(n210), .Y(n309) );
  NOR2X1 U450 ( .A(n369), .B(n309), .Y(n310) );
  OAI21X1 U451 ( .A(N573), .B(n211), .C(n310), .Y(n312) );
  OAI22X1 U452 ( .A(N605), .B(n214), .C(N589), .D(n217), .Y(n311) );
  NOR2X1 U453 ( .A(n312), .B(n311), .Y(n321) );
  OAI22X1 U454 ( .A(N517), .B(n213), .C(N501), .D(n216), .Y(n314) );
  OAI22X1 U455 ( .A(N549), .B(n212), .C(N533), .D(n215), .Y(n313) );
  NOR2X1 U456 ( .A(n314), .B(n313), .Y(n320) );
  NOR2X1 U457 ( .A(N493), .B(n210), .Y(n315) );
  NOR2X1 U458 ( .A(data_in[3]), .B(n315), .Y(n316) );
  OAI21X1 U459 ( .A(N509), .B(n211), .C(n316), .Y(n318) );
  OAI22X1 U460 ( .A(N541), .B(n214), .C(N525), .D(n217), .Y(n317) );
  NOR2X1 U461 ( .A(n318), .B(n317), .Y(n319) );
  AOI22X1 U462 ( .A(n322), .B(n321), .C(n320), .D(n319), .Y(n323) );
  OAI22X1 U463 ( .A(N580), .B(n213), .C(N564), .D(n216), .Y(n325) );
  OAI22X1 U464 ( .A(N612), .B(n212), .C(N596), .D(n215), .Y(n324) );
  NOR2X1 U465 ( .A(n325), .B(n324), .Y(n339) );
  NOR2X1 U466 ( .A(N556), .B(n210), .Y(n326) );
  NOR2X1 U467 ( .A(n369), .B(n326), .Y(n327) );
  OAI21X1 U468 ( .A(N572), .B(n211), .C(n327), .Y(n329) );
  OAI22X1 U469 ( .A(N604), .B(n214), .C(N588), .D(n217), .Y(n328) );
  NOR2X1 U470 ( .A(n329), .B(n328), .Y(n338) );
  OAI22X1 U471 ( .A(N516), .B(n213), .C(N500), .D(n216), .Y(n331) );
  OAI22X1 U472 ( .A(N548), .B(n212), .C(N532), .D(n215), .Y(n330) );
  NOR2X1 U473 ( .A(n331), .B(n330), .Y(n337) );
  NOR2X1 U474 ( .A(N492), .B(n210), .Y(n332) );
  NOR2X1 U475 ( .A(data_in[3]), .B(n332), .Y(n333) );
  OAI21X1 U476 ( .A(N508), .B(n211), .C(n333), .Y(n335) );
  OAI22X1 U477 ( .A(N540), .B(n214), .C(N524), .D(n217), .Y(n334) );
  NOR2X1 U478 ( .A(n335), .B(n334), .Y(n336) );
  AOI22X1 U479 ( .A(n339), .B(n338), .C(n337), .D(n336), .Y(n340) );
  OAI22X1 U480 ( .A(N595), .B(n215), .C(N579), .D(n213), .Y(n342) );
  OAI21X1 U481 ( .A(N611), .B(n212), .C(data_in[3]), .Y(n341) );
  NOR2X1 U482 ( .A(n342), .B(n341), .Y(n364) );
  OR2X1 U483 ( .A(N555), .B(n210), .Y(n343) );
  OAI21X1 U484 ( .A(n211), .B(N571), .C(n343), .Y(n344) );
  OAI21X1 U485 ( .A(N587), .B(n217), .C(n370), .Y(n346) );
  OAI22X1 U486 ( .A(N563), .B(n216), .C(N603), .D(n214), .Y(n345) );
  NOR2X1 U487 ( .A(n346), .B(n345), .Y(n363) );
  OAI22X1 U488 ( .A(N515), .B(n213), .C(N499), .D(n216), .Y(n352) );
  OAI22X1 U489 ( .A(N547), .B(n212), .C(N531), .D(n215), .Y(n351) );
  NOR2X1 U490 ( .A(n352), .B(n351), .Y(n362) );
  NOR2X1 U491 ( .A(N491), .B(n210), .Y(n354) );
  NOR2X1 U492 ( .A(data_in[3]), .B(n354), .Y(n355) );
  OAI21X1 U493 ( .A(N507), .B(n211), .C(n355), .Y(n360) );
  OAI22X1 U494 ( .A(N539), .B(n214), .C(N523), .D(n217), .Y(n359) );
  NOR2X1 U495 ( .A(n360), .B(n359), .Y(n361) );
  AOI22X1 U496 ( .A(n364), .B(n363), .C(n362), .D(n361), .Y(n365) );
  INVX2 U497 ( .A(data_in[0]), .Y(n366) );
  INVX2 U498 ( .A(data_in[1]), .Y(n367) );
  INVX2 U499 ( .A(data_in[2]), .Y(n368) );
  INVX2 U500 ( .A(data_in[3]), .Y(n369) );
  INVX2 U501 ( .A(n344), .Y(n370) );
  INVX2 U502 ( .A(n323), .Y(data_out[5]) );
  INVX2 U503 ( .A(n289), .Y(data_out[3]) );
  INVX2 U504 ( .A(n340), .Y(data_out[6]) );
  INVX2 U505 ( .A(n306), .Y(data_out[4]) );
  INVX2 U506 ( .A(n365), .Y(data_out[7]) );
  INVX2 U507 ( .A(n238), .Y(data_out[0]) );
  INVX2 U508 ( .A(n272), .Y(data_out[2]) );
  INVX2 U509 ( .A(n255), .Y(data_out[1]) );
  NAND3X1 U510 ( .A(n371), .B(n372), .C(n373), .Y(N618) );
  OAI21X1 U511 ( .A(data_in[4]), .B(n374), .C(n375), .Y(N617) );
  NAND3X1 U512 ( .A(n376), .B(n377), .C(n378), .Y(N616) );
  AND2X1 U513 ( .A(n379), .B(n380), .Y(n378) );
  NAND3X1 U514 ( .A(n371), .B(n381), .C(n382), .Y(N615) );
  INVX1 U515 ( .A(N554), .Y(n381) );
  NAND3X1 U516 ( .A(n383), .B(n384), .C(n385), .Y(N614) );
  OAI21X1 U517 ( .A(n386), .B(n387), .C(n388), .Y(N613) );
  NOR2X1 U518 ( .A(n389), .B(n390), .Y(n388) );
  NAND3X1 U519 ( .A(n391), .B(n392), .C(n393), .Y(N612) );
  NOR2X1 U520 ( .A(n374), .B(n394), .Y(n393) );
  OAI21X1 U521 ( .A(n395), .B(n396), .C(n397), .Y(N611) );
  NAND3X1 U522 ( .A(n398), .B(n399), .C(n400), .Y(N610) );
  NAND3X1 U523 ( .A(n401), .B(n402), .C(n403), .Y(N609) );
  AND2X1 U524 ( .A(n396), .B(n404), .Y(n403) );
  OAI21X1 U525 ( .A(data_in[5]), .B(n405), .C(n406), .Y(N608) );
  AND2X1 U526 ( .A(N567), .B(n407), .Y(n406) );
  NAND3X1 U527 ( .A(n408), .B(n372), .C(n409), .Y(N607) );
  AND2X1 U528 ( .A(n410), .B(n411), .Y(n409) );
  NAND3X1 U529 ( .A(n412), .B(n404), .C(n413), .Y(N606) );
  AOI21X1 U530 ( .A(data_in[4]), .B(n414), .C(n415), .Y(n413) );
  INVX1 U531 ( .A(n416), .Y(n415) );
  NAND3X1 U532 ( .A(n417), .B(n418), .C(n419), .Y(N605) );
  OAI21X1 U533 ( .A(data_in[6]), .B(n420), .C(n421), .Y(N604) );
  AOI21X1 U534 ( .A(n422), .B(data_in[7]), .C(n423), .Y(n421) );
  NAND3X1 U535 ( .A(n424), .B(n425), .C(n426), .Y(N603) );
  NOR2X1 U536 ( .A(n427), .B(n428), .Y(n426) );
  NAND3X1 U537 ( .A(n404), .B(n429), .C(n430), .Y(N602) );
  INVX1 U538 ( .A(n431), .Y(n430) );
  OAI21X1 U539 ( .A(n387), .B(n386), .C(n432), .Y(n431) );
  OAI21X1 U540 ( .A(data_in[7]), .B(n428), .C(n400), .Y(N601) );
  NOR2X1 U541 ( .A(n427), .B(n433), .Y(n400) );
  NAND3X1 U542 ( .A(n399), .B(n434), .C(n435), .Y(N600) );
  NAND2X1 U543 ( .A(n436), .B(n437), .Y(N599) );
  NAND3X1 U544 ( .A(n438), .B(n439), .C(n440), .Y(N598) );
  OAI21X1 U545 ( .A(data_in[7]), .B(data_in[4]), .C(n441), .Y(N597) );
  NOR2X1 U546 ( .A(n442), .B(n443), .Y(n441) );
  NAND3X1 U547 ( .A(N527), .B(n371), .C(n444), .Y(N596) );
  NOR2X1 U548 ( .A(n445), .B(n446), .Y(n444) );
  OAI21X1 U549 ( .A(data_in[7]), .B(n447), .C(n448), .Y(N595) );
  AND2X1 U550 ( .A(n449), .B(n376), .Y(n448) );
  OAI21X1 U551 ( .A(data_in[7]), .B(n450), .C(n451), .Y(N594) );
  NOR2X1 U552 ( .A(n452), .B(n374), .Y(n451) );
  NAND3X1 U553 ( .A(n453), .B(n454), .C(n455), .Y(N593) );
  NAND3X1 U554 ( .A(n456), .B(n435), .C(n457), .Y(N592) );
  NOR2X1 U555 ( .A(n458), .B(n459), .Y(n457) );
  NAND2X1 U556 ( .A(n460), .B(n417), .Y(n459) );
  OAI21X1 U557 ( .A(n422), .B(n396), .C(n461), .Y(N591) );
  NAND3X1 U558 ( .A(n462), .B(n379), .C(n463), .Y(N590) );
  NAND2X1 U559 ( .A(n464), .B(n465), .Y(N589) );
  AOI21X1 U560 ( .A(n466), .B(n450), .C(n467), .Y(n465) );
  OAI21X1 U561 ( .A(n468), .B(n404), .C(n469), .Y(N588) );
  NOR2X1 U562 ( .A(N505), .B(n470), .Y(n469) );
  INVX1 U563 ( .A(n471), .Y(n470) );
  NAND3X1 U564 ( .A(n455), .B(n371), .C(n472), .Y(N587) );
  NOR2X1 U565 ( .A(n433), .B(n473), .Y(n472) );
  OAI21X1 U566 ( .A(data_in[7]), .B(n428), .C(n474), .Y(N586) );
  AND2X1 U567 ( .A(n410), .B(n376), .Y(n474) );
  NAND3X1 U568 ( .A(n410), .B(n401), .C(n383), .Y(N585) );
  NAND3X1 U569 ( .A(n475), .B(n476), .C(n397), .Y(N584) );
  OAI21X1 U570 ( .A(n477), .B(n405), .C(n478), .Y(N583) );
  AND2X1 U571 ( .A(n437), .B(n384), .Y(n478) );
  NAND3X1 U572 ( .A(n479), .B(n453), .C(n480), .Y(N582) );
  AOI21X1 U573 ( .A(n481), .B(n477), .C(n482), .Y(n480) );
  OAI21X1 U574 ( .A(n450), .B(n405), .C(n483), .Y(N580) );
  NOR2X1 U575 ( .A(n484), .B(n485), .Y(n483) );
  NAND3X1 U576 ( .A(n404), .B(n434), .C(n486), .Y(N579) );
  NAND3X1 U577 ( .A(n392), .B(n402), .C(n487), .Y(N578) );
  NOR2X1 U578 ( .A(n488), .B(n445), .Y(n487) );
  NAND3X1 U579 ( .A(n456), .B(n416), .C(n489), .Y(N577) );
  NOR2X1 U580 ( .A(n490), .B(n488), .Y(n489) );
  NAND3X1 U581 ( .A(n435), .B(n382), .C(n491), .Y(N576) );
  AOI21X1 U582 ( .A(n420), .B(n427), .C(n443), .Y(n491) );
  OAI21X1 U583 ( .A(n490), .B(n429), .C(n492), .Y(N575) );
  OAI21X1 U584 ( .A(n490), .B(n468), .C(n493), .Y(N574) );
  NOR2X1 U585 ( .A(n423), .B(n446), .Y(n493) );
  OAI21X1 U586 ( .A(n405), .B(n447), .C(n494), .Y(N573) );
  NOR2X1 U587 ( .A(n495), .B(n496), .Y(n494) );
  NAND3X1 U588 ( .A(n463), .B(n476), .C(n436), .Y(N572) );
  NAND3X1 U589 ( .A(n497), .B(n449), .C(n498), .Y(N571) );
  NOR2X1 U590 ( .A(n499), .B(n445), .Y(n498) );
  OAI21X1 U591 ( .A(n500), .B(n387), .C(n411), .Y(N570) );
  NAND3X1 U592 ( .A(n456), .B(n383), .C(n373), .Y(N569) );
  NAND3X1 U593 ( .A(n429), .B(n454), .C(n436), .Y(N568) );
  NAND2X1 U594 ( .A(n501), .B(n502), .Y(N567) );
  NAND3X1 U595 ( .A(n503), .B(n396), .C(n464), .Y(N566) );
  NAND3X1 U596 ( .A(n432), .B(n419), .C(n504), .Y(N565) );
  NOR2X1 U597 ( .A(n446), .B(n505), .Y(n504) );
  OAI21X1 U598 ( .A(data_in[4]), .B(n414), .C(n506), .Y(N564) );
  NOR2X1 U599 ( .A(n499), .B(n394), .Y(n506) );
  INVX1 U600 ( .A(n379), .Y(n394) );
  NAND3X1 U601 ( .A(n398), .B(n396), .C(n507), .Y(N563) );
  AOI22X1 U602 ( .A(n450), .B(data_in[7]), .C(n466), .D(n408), .Y(n507) );
  NAND3X1 U603 ( .A(n419), .B(n439), .C(n508), .Y(N562) );
  NOR2X1 U604 ( .A(n389), .B(n509), .Y(n508) );
  INVX1 U605 ( .A(n510), .Y(n509) );
  NAND3X1 U606 ( .A(n396), .B(n511), .C(n512), .Y(N561) );
  AOI21X1 U607 ( .A(n408), .B(n468), .C(n513), .Y(n512) );
  OAI21X1 U608 ( .A(data_in[4]), .B(n374), .C(n514), .Y(N560) );
  NOR2X1 U609 ( .A(n427), .B(n482), .Y(n514) );
  NAND3X1 U610 ( .A(n383), .B(n455), .C(n515), .Y(N559) );
  AND2X1 U611 ( .A(n392), .B(n416), .Y(n515) );
  NAND3X1 U612 ( .A(n384), .B(n516), .C(n461), .Y(N558) );
  AOI21X1 U613 ( .A(n468), .B(n477), .C(n505), .Y(n461) );
  NAND3X1 U614 ( .A(n517), .B(n510), .C(n518), .Y(N557) );
  AOI21X1 U615 ( .A(n420), .B(n372), .C(n446), .Y(n518) );
  NAND3X1 U616 ( .A(n429), .B(n519), .C(n520), .Y(N556) );
  AOI21X1 U617 ( .A(data_in[5]), .B(n396), .C(n420), .Y(n520) );
  NAND3X1 U618 ( .A(n432), .B(n412), .C(n521), .Y(N555) );
  OAI21X1 U619 ( .A(data_in[6]), .B(n447), .C(n376), .Y(N554) );
  NAND3X1 U620 ( .A(n471), .B(n382), .C(n522), .Y(N553) );
  NAND3X1 U621 ( .A(n398), .B(n523), .C(n407), .Y(N552) );
  NAND2X1 U622 ( .A(n380), .B(n401), .Y(N551) );
  NAND3X1 U623 ( .A(n524), .B(n453), .C(n392), .Y(N550) );
  NAND3X1 U624 ( .A(n392), .B(n502), .C(n464), .Y(N549) );
  NAND2X1 U625 ( .A(n471), .B(n503), .Y(N548) );
  NAND3X1 U626 ( .A(n416), .B(n399), .C(n525), .Y(N547) );
  AND2X1 U627 ( .A(n462), .B(n456), .Y(n525) );
  NAND3X1 U628 ( .A(n526), .B(n412), .C(n527), .Y(N546) );
  NOR2X1 U629 ( .A(n420), .B(n528), .Y(n527) );
  NAND2X1 U630 ( .A(n371), .B(n453), .Y(n528) );
  NAND2X1 U631 ( .A(n374), .B(n387), .Y(n453) );
  NAND3X1 U632 ( .A(n382), .B(n511), .C(n529), .Y(N545) );
  AND2X1 U633 ( .A(n418), .B(n376), .Y(n529) );
  NAND2X1 U634 ( .A(n391), .B(n373), .Y(N544) );
  NOR2X1 U635 ( .A(n496), .B(n530), .Y(n373) );
  INVX1 U636 ( .A(n497), .Y(n496) );
  NAND3X1 U637 ( .A(n436), .B(n526), .C(n531), .Y(N543) );
  NAND3X1 U638 ( .A(n532), .B(n399), .C(n533), .Y(N542) );
  NOR2X1 U639 ( .A(n443), .B(n505), .Y(n533) );
  INVX1 U640 ( .A(n463), .Y(n505) );
  NAND2X1 U641 ( .A(n466), .B(n387), .Y(n463) );
  NOR2X1 U642 ( .A(n534), .B(n390), .Y(n532) );
  NAND3X1 U643 ( .A(n399), .B(n517), .C(n535), .Y(N541) );
  NOR2X1 U644 ( .A(n484), .B(n445), .Y(n535) );
  INVX1 U645 ( .A(n536), .Y(n445) );
  NAND3X1 U646 ( .A(n372), .B(n418), .C(n537), .Y(N540) );
  AOI21X1 U647 ( .A(data_in[7]), .B(n408), .C(n433), .Y(n537) );
  INVX1 U648 ( .A(n475), .Y(n433) );
  NAND2X1 U649 ( .A(n538), .B(n468), .Y(n418) );
  OAI21X1 U650 ( .A(data_in[4]), .B(n427), .C(n539), .Y(N539) );
  NOR2X1 U651 ( .A(n386), .B(n390), .Y(n539) );
  INVX1 U652 ( .A(n502), .Y(n390) );
  OAI21X1 U653 ( .A(data_in[5]), .B(n405), .C(n540), .Y(N538) );
  AOI21X1 U654 ( .A(data_in[4]), .B(n396), .C(n473), .Y(n540) );
  INVX1 U655 ( .A(n419), .Y(n473) );
  OR2X1 U656 ( .A(n541), .B(n542), .Y(N537) );
  OAI21X1 U657 ( .A(n450), .B(n405), .C(n392), .Y(n542) );
  NAND3X1 U658 ( .A(n382), .B(n371), .C(n502), .Y(n541) );
  NAND2X1 U659 ( .A(n375), .B(n410), .Y(N536) );
  NAND2X1 U660 ( .A(data_in[4]), .B(data_in[6]), .Y(n410) );
  INVX1 U661 ( .A(n543), .Y(n375) );
  OAI21X1 U662 ( .A(data_in[5]), .B(n466), .C(n439), .Y(n543) );
  NAND3X1 U663 ( .A(n416), .B(n398), .C(n522), .Y(N535) );
  NOR2X1 U664 ( .A(n544), .B(n466), .Y(n522) );
  NAND3X1 U665 ( .A(n407), .B(n439), .C(n545), .Y(N534) );
  NOR2X1 U666 ( .A(n495), .B(n477), .Y(n545) );
  INVX1 U667 ( .A(n479), .Y(n495) );
  NAND2X1 U668 ( .A(n500), .B(n387), .Y(n479) );
  INVX1 U669 ( .A(n371), .Y(n500) );
  NAND3X1 U670 ( .A(n516), .B(n546), .C(n432), .Y(N533) );
  INVX1 U671 ( .A(N530), .Y(n546) );
  NAND3X1 U672 ( .A(n385), .B(n524), .C(n471), .Y(N532) );
  NAND3X1 U673 ( .A(n412), .B(n377), .C(n380), .Y(N531) );
  NOR2X1 U674 ( .A(n482), .B(n423), .Y(n380) );
  INVX1 U675 ( .A(n511), .Y(n423) );
  NAND2X1 U676 ( .A(n408), .B(n419), .Y(N530) );
  NAND2X1 U677 ( .A(n481), .B(n387), .Y(n419) );
  NAND3X1 U678 ( .A(n547), .B(n382), .C(n548), .Y(N529) );
  NOR2X1 U679 ( .A(n458), .B(n443), .Y(n548) );
  INVX1 U680 ( .A(n462), .Y(n443) );
  NAND2X1 U681 ( .A(n481), .B(n428), .Y(n462) );
  INVX1 U682 ( .A(n398), .Y(n458) );
  NOR2X1 U683 ( .A(N581), .B(n549), .Y(n547) );
  NAND2X1 U684 ( .A(n412), .B(n502), .Y(N581) );
  NAND3X1 U685 ( .A(n396), .B(n438), .C(n435), .Y(N528) );
  NAND3X1 U686 ( .A(n432), .B(n372), .C(n550), .Y(N527) );
  NOR2X1 U687 ( .A(n530), .B(n544), .Y(n550) );
  INVX1 U688 ( .A(n424), .Y(n544) );
  NAND2X1 U689 ( .A(data_in[4]), .B(n405), .Y(n424) );
  INVX1 U690 ( .A(n425), .Y(n530) );
  NAND2X1 U691 ( .A(data_in[5]), .B(data_in[6]), .Y(n432) );
  NAND3X1 U692 ( .A(n399), .B(n371), .C(n551), .Y(N526) );
  INVX1 U693 ( .A(n552), .Y(n551) );
  OAI21X1 U694 ( .A(n396), .B(n438), .C(n407), .Y(n552) );
  NAND3X1 U695 ( .A(n502), .B(n519), .C(n553), .Y(N525) );
  AOI21X1 U696 ( .A(n427), .B(n408), .C(n513), .Y(n553) );
  NAND2X1 U697 ( .A(n526), .B(n434), .Y(N524) );
  NAND2X1 U698 ( .A(n481), .B(n438), .Y(n434) );
  OR2X1 U699 ( .A(n554), .B(n555), .Y(N523) );
  OAI21X1 U700 ( .A(data_in[4]), .B(n468), .C(n398), .Y(n555) );
  NAND3X1 U701 ( .A(n511), .B(n429), .C(n385), .Y(n554) );
  NAND3X1 U702 ( .A(n402), .B(n425), .C(n556), .Y(N522) );
  AOI21X1 U703 ( .A(data_in[7]), .B(n414), .C(n389), .Y(n556) );
  NOR2X1 U704 ( .A(n384), .B(data_in[6]), .Y(n389) );
  NAND2X1 U705 ( .A(data_in[7]), .B(n387), .Y(n425) );
  NAND2X1 U706 ( .A(n501), .B(n557), .Y(N521) );
  NOR3X1 U707 ( .A(n499), .B(n477), .C(n484), .Y(n501) );
  INVX1 U708 ( .A(n377), .Y(n499) );
  OAI21X1 U709 ( .A(data_in[7]), .B(n450), .C(n502), .Y(N520) );
  NAND2X1 U710 ( .A(n374), .B(data_in[5]), .Y(n502) );
  OAI21X1 U711 ( .A(n422), .B(n372), .C(n558), .Y(N519) );
  NOR2X1 U712 ( .A(n559), .B(n534), .Y(n558) );
  INVX1 U713 ( .A(n385), .Y(n534) );
  NAND3X1 U714 ( .A(n392), .B(n454), .C(n560), .Y(N518) );
  AOI21X1 U715 ( .A(n374), .B(n447), .C(n513), .Y(n560) );
  INVX1 U716 ( .A(n503), .Y(n513) );
  NAND2X1 U717 ( .A(n482), .B(n405), .Y(n503) );
  NAND2X1 U718 ( .A(n427), .B(n387), .Y(n392) );
  NAND3X1 U719 ( .A(n407), .B(n377), .C(n561), .Y(N517) );
  AOI21X1 U720 ( .A(n414), .B(n387), .C(n446), .Y(n561) );
  INVX1 U721 ( .A(n486), .Y(n446) );
  NAND2X1 U722 ( .A(n374), .B(data_in[4]), .Y(n407) );
  NAND3X1 U723 ( .A(n449), .B(n411), .C(n435), .Y(N516) );
  NAND2X1 U724 ( .A(data_in[5]), .B(data_in[7]), .Y(n411) );
  NAND2X1 U725 ( .A(n447), .B(n468), .Y(n449) );
  NAND3X1 U726 ( .A(n562), .B(n402), .C(n371), .Y(N515) );
  NAND2X1 U727 ( .A(n559), .B(n405), .Y(n402) );
  NAND2X1 U728 ( .A(n492), .B(n456), .Y(N514) );
  INVX1 U729 ( .A(n563), .Y(n492) );
  NAND3X1 U730 ( .A(n475), .B(n562), .C(n471), .Y(n563) );
  NAND2X1 U731 ( .A(n422), .B(n481), .Y(n471) );
  NAND3X1 U732 ( .A(n416), .B(n404), .C(n564), .Y(N513) );
  NOR2X1 U733 ( .A(n467), .B(n565), .Y(n564) );
  NAND2X1 U734 ( .A(n439), .B(n562), .Y(n565) );
  NAND2X1 U735 ( .A(n482), .B(data_in[7]), .Y(n562) );
  INVX1 U736 ( .A(n383), .Y(n467) );
  NAND3X1 U737 ( .A(n379), .B(n523), .C(n382), .Y(N512) );
  INVX1 U738 ( .A(n549), .Y(n523) );
  NOR2X1 U739 ( .A(n524), .B(data_in[4]), .Y(n549) );
  NAND2X1 U740 ( .A(data_in[4]), .B(data_in[7]), .Y(n379) );
  NAND3X1 U741 ( .A(n475), .B(n371), .C(n566), .Y(N511) );
  AOI21X1 U742 ( .A(data_in[7]), .B(n414), .C(n567), .Y(n566) );
  INVX1 U743 ( .A(n526), .Y(n567) );
  NAND2X1 U744 ( .A(n568), .B(n396), .Y(N510) );
  XOR2X1 U745 ( .A(n429), .B(n450), .Y(n568) );
  NAND3X1 U746 ( .A(n376), .B(n371), .C(n569), .Y(N509) );
  AOI21X1 U747 ( .A(data_in[6]), .B(n387), .C(n484), .Y(n569) );
  NOR2X1 U748 ( .A(n387), .B(data_in[6]), .Y(n484) );
  NAND2X1 U749 ( .A(n374), .B(n428), .Y(n376) );
  NAND3X1 U750 ( .A(n435), .B(n404), .C(n486), .Y(N508) );
  NAND2X1 U751 ( .A(n490), .B(data_in[7]), .Y(n486) );
  NAND2X1 U752 ( .A(n386), .B(n387), .Y(n404) );
  NAND3X1 U753 ( .A(n377), .B(n417), .C(n511), .Y(N507) );
  NAND2X1 U754 ( .A(n422), .B(data_in[6]), .Y(n417) );
  NAND3X1 U755 ( .A(n510), .B(n401), .C(n371), .Y(N506) );
  NAND2X1 U756 ( .A(n386), .B(n468), .Y(n371) );
  NAND2X1 U757 ( .A(n387), .B(n468), .Y(n401) );
  NAND2X1 U758 ( .A(n374), .B(n438), .Y(n510) );
  NAND3X1 U759 ( .A(n385), .B(n377), .C(n456), .Y(N505) );
  NAND2X1 U760 ( .A(n427), .B(data_in[4]), .Y(n456) );
  NAND2X1 U761 ( .A(n427), .B(data_in[5]), .Y(n377) );
  NAND3X1 U762 ( .A(n497), .B(n557), .C(n412), .Y(N504) );
  NAND2X1 U763 ( .A(n477), .B(n405), .Y(n497) );
  OAI21X1 U764 ( .A(data_in[7]), .B(n490), .C(n570), .Y(N503) );
  INVX1 U765 ( .A(n571), .Y(n570) );
  OAI21X1 U766 ( .A(n468), .B(n450), .C(n519), .Y(n571) );
  NAND2X1 U767 ( .A(n481), .B(n490), .Y(n519) );
  NAND3X1 U768 ( .A(n476), .B(n572), .C(n511), .Y(N502) );
  NAND2X1 U769 ( .A(n420), .B(n405), .Y(n511) );
  NAND2X1 U770 ( .A(n481), .B(n408), .Y(n476) );
  NAND3X1 U771 ( .A(n416), .B(n398), .C(n573), .Y(N501) );
  AND2X1 U772 ( .A(n524), .B(n382), .Y(n573) );
  NAND2X1 U773 ( .A(n414), .B(n405), .Y(n524) );
  NAND2X1 U774 ( .A(n572), .B(n437), .Y(n414) );
  NAND2X1 U775 ( .A(data_in[5]), .B(n468), .Y(n437) );
  NAND2X1 U776 ( .A(n420), .B(data_in[7]), .Y(n416) );
  NAND3X1 U777 ( .A(n399), .B(n383), .C(n574), .Y(N500) );
  NOR2X1 U778 ( .A(n452), .B(n420), .Y(n574) );
  INVX1 U779 ( .A(n572), .Y(n452) );
  NAND2X1 U780 ( .A(data_in[6]), .B(n428), .Y(n572) );
  OAI21X1 U781 ( .A(data_in[4]), .B(n427), .C(n398), .Y(N499) );
  NAND2X1 U782 ( .A(n490), .B(n468), .Y(n398) );
  INVX1 U783 ( .A(n517), .Y(n427) );
  NAND2X1 U784 ( .A(n405), .B(n468), .Y(n517) );
  OAI22X1 U785 ( .A(n438), .B(n396), .C(n450), .D(n372), .Y(N498) );
  OAI21X1 U786 ( .A(n477), .B(n396), .C(n575), .Y(N497) );
  NOR2X1 U787 ( .A(n442), .B(n422), .Y(n575) );
  INVX1 U788 ( .A(n460), .Y(n442) );
  NAND2X1 U789 ( .A(n559), .B(data_in[7]), .Y(n460) );
  NAND3X1 U790 ( .A(n385), .B(n557), .C(n576), .Y(N496) );
  AOI21X1 U791 ( .A(n450), .B(n468), .C(n538), .Y(n576) );
  INVX1 U792 ( .A(n447), .Y(n450) );
  NAND2X1 U793 ( .A(n422), .B(n374), .Y(n557) );
  NAND2X1 U794 ( .A(n464), .B(n399), .Y(N495) );
  AOI22X1 U795 ( .A(data_in[7]), .B(n422), .C(n468), .D(n477), .Y(n464) );
  NAND3X1 U796 ( .A(n391), .B(n385), .C(n521), .Y(N494) );
  AOI21X1 U797 ( .A(n405), .B(n387), .C(n422), .Y(n521) );
  INVX1 U798 ( .A(n384), .Y(n422) );
  NAND2X1 U799 ( .A(n477), .B(data_in[7]), .Y(n385) );
  NOR2X1 U800 ( .A(n559), .B(n488), .Y(n391) );
  INVX1 U801 ( .A(n440), .Y(n488) );
  NAND2X1 U802 ( .A(n468), .B(n428), .Y(n440) );
  INVX1 U803 ( .A(n382), .Y(n559) );
  NAND2X1 U804 ( .A(n477), .B(data_in[6]), .Y(n382) );
  INVX1 U805 ( .A(n395), .Y(n477) );
  NAND3X1 U806 ( .A(n436), .B(n536), .C(n531), .Y(N493) );
  AOI21X1 U807 ( .A(n447), .B(n481), .C(n485), .Y(n531) );
  INVX1 U808 ( .A(n435), .Y(n485) );
  NAND2X1 U809 ( .A(n386), .B(data_in[6]), .Y(n435) );
  NAND2X1 U810 ( .A(n384), .B(n395), .Y(n447) );
  NAND2X1 U811 ( .A(data_in[5]), .B(data_in[4]), .Y(n395) );
  NAND2X1 U812 ( .A(n428), .B(n387), .Y(n384) );
  NAND2X1 U813 ( .A(n420), .B(n374), .Y(n536) );
  INVX1 U814 ( .A(n372), .Y(n374) );
  NAND2X1 U815 ( .A(data_in[7]), .B(data_in[6]), .Y(n372) );
  NOR2X1 U816 ( .A(n482), .B(n538), .Y(n436) );
  INVX1 U817 ( .A(n399), .Y(n538) );
  NAND2X1 U818 ( .A(data_in[4]), .B(n386), .Y(n399) );
  NAND3X1 U819 ( .A(n383), .B(n454), .C(n577), .Y(N492) );
  AND2X1 U820 ( .A(n526), .B(n397), .Y(n577) );
  NOR2X1 U821 ( .A(n482), .B(n386), .Y(n397) );
  INVX1 U822 ( .A(n516), .Y(n386) );
  NAND2X1 U823 ( .A(n405), .B(n428), .Y(n516) );
  INVX1 U824 ( .A(n455), .Y(n482) );
  NAND2X1 U825 ( .A(n490), .B(data_in[6]), .Y(n455) );
  INVX1 U826 ( .A(n408), .Y(n490) );
  NAND2X1 U827 ( .A(data_in[4]), .B(n428), .Y(n408) );
  INVX1 U828 ( .A(data_in[5]), .Y(n428) );
  NAND2X1 U829 ( .A(n466), .B(data_in[4]), .Y(n526) );
  NAND2X1 U830 ( .A(n420), .B(n468), .Y(n454) );
  NAND2X1 U831 ( .A(n481), .B(data_in[5]), .Y(n383) );
  NAND3X1 U832 ( .A(n475), .B(n439), .C(n412), .Y(N491) );
  NAND2X1 U833 ( .A(n481), .B(data_in[4]), .Y(n412) );
  INVX1 U834 ( .A(n396), .Y(n481) );
  NAND2X1 U835 ( .A(data_in[7]), .B(n468), .Y(n396) );
  NAND2X1 U836 ( .A(n466), .B(data_in[5]), .Y(n439) );
  INVX1 U837 ( .A(n429), .Y(n466) );
  NAND2X1 U838 ( .A(data_in[6]), .B(n405), .Y(n429) );
  NAND2X1 U839 ( .A(n420), .B(data_in[6]), .Y(n475) );
  INVX1 U840 ( .A(n438), .Y(n420) );
  NAND2X1 U841 ( .A(data_in[5]), .B(n387), .Y(n438) );
endmodule
