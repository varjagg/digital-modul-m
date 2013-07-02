<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-hirose">
<description>&lt;b&gt;Hirose Connectors&lt;/b&gt;&lt;p&gt;
www.hirose.co.jp&lt;p&gt;
Include : &lt;br&gt;
con-hirose-df12d(3.0)60dp0.5v80.lbr from Bob Starr &amp;lt;rtzaudio@mindspring.com&amp;gt;&lt;br&gt;
con-hirose.lbr from Bob Starr &amp;lt;rtzaudio@mindspring.com&amp;gt;&lt;br&gt;</description>
<packages>
<package name="FH12-18S-0.5SH">
<description>&lt;b&gt;0.5mm Pitch Connectors For FPC/FFC&lt;/b&gt;&lt;p&gt;
Source: &lt;a href= "http://www.hirose.co.jp/cataloge_hp/e58605370.pdf"&gt;Data sheet&lt;/a&gt;&lt;p&gt;</description>
<wire x1="-5.95" y1="0.5" x2="-6.45" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-6.45" y1="0.5" x2="-6.45" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="-6.45" y1="-0.5" x2="-5.95" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="-5.95" y1="-0.5" x2="-5.95" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-5.95" y1="-1.9" x2="-5.65" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-5.65" y1="-1.9" x2="-5.65" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-5.65" y1="-2.2" x2="-5.95" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-5.95" y1="-2.2" x2="-5.95" y2="-2.9" width="0.2032" layer="21"/>
<wire x1="5.95" y1="-2.9" x2="5.95" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="5.95" y1="-2.2" x2="5.65" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-2.2" x2="5.65" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-1.9" x2="5.95" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="5.95" y1="-1.9" x2="5.95" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="5.95" y1="-0.5" x2="6.45" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="6.45" y1="-0.5" x2="6.45" y2="0.5" width="0.2032" layer="51"/>
<wire x1="6.45" y1="0.5" x2="5.95" y2="0.5" width="0.2032" layer="51"/>
<wire x1="5.95" y1="0.5" x2="5.95" y2="2.5" width="0.2032" layer="51"/>
<wire x1="5.95" y1="2.5" x2="-5.95" y2="2.5" width="0.2032" layer="51"/>
<wire x1="-5.95" y1="2.5" x2="-5.95" y2="0.5" width="0.2032" layer="51"/>
<wire x1="5.65" y1="-1.9" x2="-5.65" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="5.95" y1="-2.9" x2="-5.95" y2="-2.9" width="0.2032" layer="21"/>
<wire x1="-5.95" y1="2.5" x2="-5.95" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-4.75" y1="2.5" x2="-5.95" y2="2.5" width="0.2032" layer="21"/>
<wire x1="5.95" y1="1.5" x2="5.95" y2="2.5" width="0.2032" layer="21"/>
<wire x1="5.95" y1="2.5" x2="4.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-5.95" y1="-1.5" x2="-5.95" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="5.95" y1="-1.9" x2="5.95" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-4.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="2" x="-3.75" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="3" x="-3.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="4" x="-2.75" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="5" x="-2.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="6" x="-1.75" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="7" x="-1.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="8" x="-0.75" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="9" x="-0.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="10" x="0.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="11" x="0.75" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="12" x="1.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="13" x="1.75" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="14" x="2.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="15" x="2.75" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="16" x="3.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="17" x="3.75" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="18" x="4.25" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<text x="-5.9476" y="4.095" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.7476" y="-0.3258" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.45" y1="2.55" x2="-4.05" y2="3.95" layer="29"/>
<rectangle x1="-4.375" y1="2.625" x2="-4.125" y2="3.875" layer="31"/>
<rectangle x1="-3.95" y1="2.55" x2="-3.55" y2="3.95" layer="29"/>
<rectangle x1="-3.875" y1="2.625" x2="-3.625" y2="3.875" layer="31"/>
<rectangle x1="-3.45" y1="2.55" x2="-3.05" y2="3.95" layer="29"/>
<rectangle x1="-3.375" y1="2.625" x2="-3.125" y2="3.875" layer="31"/>
<rectangle x1="-2.95" y1="2.55" x2="-2.55" y2="3.95" layer="29"/>
<rectangle x1="-2.875" y1="2.625" x2="-2.625" y2="3.875" layer="31"/>
<rectangle x1="-2.45" y1="2.55" x2="-2.05" y2="3.95" layer="29"/>
<rectangle x1="-2.375" y1="2.625" x2="-2.125" y2="3.875" layer="31"/>
<rectangle x1="-1.95" y1="2.55" x2="-1.55" y2="3.95" layer="29"/>
<rectangle x1="-1.875" y1="2.625" x2="-1.625" y2="3.875" layer="31"/>
<rectangle x1="-1.45" y1="2.55" x2="-1.05" y2="3.95" layer="29"/>
<rectangle x1="-1.375" y1="2.625" x2="-1.125" y2="3.875" layer="31"/>
<rectangle x1="-0.95" y1="2.55" x2="-0.55" y2="3.95" layer="29"/>
<rectangle x1="-0.875" y1="2.625" x2="-0.625" y2="3.875" layer="31"/>
<rectangle x1="-0.45" y1="2.55" x2="-0.05" y2="3.95" layer="29"/>
<rectangle x1="-0.375" y1="2.625" x2="-0.125" y2="3.875" layer="31"/>
<rectangle x1="0.05" y1="2.55" x2="0.45" y2="3.95" layer="29"/>
<rectangle x1="0.125" y1="2.625" x2="0.375" y2="3.875" layer="31"/>
<rectangle x1="0.55" y1="2.55" x2="0.95" y2="3.95" layer="29"/>
<rectangle x1="0.625" y1="2.625" x2="0.875" y2="3.875" layer="31"/>
<rectangle x1="1.05" y1="2.55" x2="1.45" y2="3.95" layer="29"/>
<rectangle x1="1.125" y1="2.625" x2="1.375" y2="3.875" layer="31"/>
<rectangle x1="1.55" y1="2.55" x2="1.95" y2="3.95" layer="29"/>
<rectangle x1="1.625" y1="2.625" x2="1.875" y2="3.875" layer="31"/>
<rectangle x1="2.05" y1="2.55" x2="2.45" y2="3.95" layer="29"/>
<rectangle x1="2.125" y1="2.625" x2="2.375" y2="3.875" layer="31"/>
<rectangle x1="2.55" y1="2.55" x2="2.95" y2="3.95" layer="29"/>
<rectangle x1="2.625" y1="2.625" x2="2.875" y2="3.875" layer="31"/>
<rectangle x1="3.05" y1="2.55" x2="3.45" y2="3.95" layer="29"/>
<rectangle x1="3.125" y1="2.625" x2="3.375" y2="3.875" layer="31"/>
<rectangle x1="3.55" y1="2.55" x2="3.95" y2="3.95" layer="29"/>
<rectangle x1="3.625" y1="2.625" x2="3.875" y2="3.875" layer="31"/>
<rectangle x1="4.05" y1="2.55" x2="4.45" y2="3.95" layer="29"/>
<rectangle x1="4.125" y1="2.625" x2="4.375" y2="3.875" layer="31"/>
<rectangle x1="5.25" y1="-1.1" x2="7.05" y2="1.1" layer="1" rot="R180"/>
<rectangle x1="5.2" y1="-1.175" x2="7.1" y2="1.175" layer="29" rot="R180"/>
<rectangle x1="5.325" y1="-1.025" x2="6.975" y2="1.025" layer="31" rot="R180"/>
<rectangle x1="-7.05" y1="-1.1" x2="-5.25" y2="1.1" layer="1" rot="R180"/>
<rectangle x1="-7.1" y1="-1.175" x2="-5.2" y2="1.175" layer="29" rot="R180"/>
<rectangle x1="-6.975" y1="-1.025" x2="-5.325" y2="1.025" layer="31" rot="R180"/>
<rectangle x1="-4.35" y1="2.55" x2="-4.15" y2="3.4" layer="51"/>
<rectangle x1="-3.85" y1="2.55" x2="-3.65" y2="3.4" layer="51"/>
<rectangle x1="-3.35" y1="2.55" x2="-3.15" y2="3.4" layer="51"/>
<rectangle x1="-2.85" y1="2.55" x2="-2.65" y2="3.4" layer="51"/>
<rectangle x1="-2.35" y1="2.55" x2="-2.15" y2="3.4" layer="51"/>
<rectangle x1="-1.85" y1="2.55" x2="-1.65" y2="3.4" layer="51"/>
<rectangle x1="-1.35" y1="2.55" x2="-1.15" y2="3.4" layer="51"/>
<rectangle x1="-0.85" y1="2.55" x2="-0.65" y2="3.4" layer="51"/>
<rectangle x1="-0.35" y1="2.55" x2="-0.15" y2="3.4" layer="51"/>
<rectangle x1="0.15" y1="2.55" x2="0.35" y2="3.4" layer="51"/>
<rectangle x1="0.65" y1="2.55" x2="0.85" y2="3.4" layer="51"/>
<rectangle x1="1.15" y1="2.55" x2="1.35" y2="3.4" layer="51"/>
<rectangle x1="1.65" y1="2.55" x2="1.85" y2="3.4" layer="51"/>
<rectangle x1="2.15" y1="2.55" x2="2.35" y2="3.4" layer="51"/>
<rectangle x1="2.65" y1="2.55" x2="2.85" y2="3.4" layer="51"/>
<rectangle x1="3.15" y1="2.55" x2="3.35" y2="3.4" layer="51"/>
<rectangle x1="3.65" y1="2.55" x2="3.85" y2="3.4" layer="51"/>
<rectangle x1="4.15" y1="2.55" x2="4.35" y2="3.4" layer="51"/>
<polygon width="0.2032" layer="21">
<vertex x="-4.45" y="-2.2"/>
<vertex x="-4.25" y="-2.6"/>
<vertex x="-4.05" y="-2.2"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="PINV">
<wire x1="0" y1="0.254" x2="0" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.254" x2="1.016" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-0.254" x2="1.27" y2="0.254" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.254" x2="0" y2="0.254" width="0.1524" layer="94"/>
<text x="2.032" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="PIN">
<wire x1="0" y1="0.254" x2="0" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.254" x2="1.016" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-0.254" x2="1.27" y2="0.254" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.254" x2="0" y2="0.254" width="0.1524" layer="94"/>
<text x="2.032" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FH12-18S-0.5S" prefix="X">
<description>&lt;b&gt;0.5mm Pitch Connectors For FPC/FFC&lt;/b&gt;&lt;p&gt;
Source: &lt;a href= "http://www.hirose.co.jp/cataloge_hp/e58605370.pdf"&gt;Data sheet&lt;/a&gt;&lt;p&gt;</description>
<gates>
<gate name="-1" symbol="PINV" x="0" y="20.32" addlevel="always"/>
<gate name="-2" symbol="PIN" x="0" y="17.78" addlevel="always"/>
<gate name="-3" symbol="PIN" x="0" y="15.24" addlevel="always"/>
<gate name="-4" symbol="PIN" x="0" y="12.7" addlevel="always"/>
<gate name="-5" symbol="PIN" x="0" y="10.16" addlevel="always"/>
<gate name="-6" symbol="PIN" x="0" y="7.62" addlevel="always"/>
<gate name="-7" symbol="PIN" x="0" y="5.08" addlevel="always"/>
<gate name="-8" symbol="PIN" x="0" y="2.54" addlevel="always"/>
<gate name="-9" symbol="PIN" x="0" y="0" addlevel="always"/>
<gate name="-10" symbol="PIN" x="0" y="-2.54" addlevel="always"/>
<gate name="-11" symbol="PIN" x="0" y="-5.08" addlevel="always"/>
<gate name="-12" symbol="PIN" x="0" y="-7.62" addlevel="always"/>
<gate name="-13" symbol="PIN" x="0" y="-10.16" addlevel="always"/>
<gate name="-14" symbol="PIN" x="0" y="-12.7" addlevel="always"/>
<gate name="-15" symbol="PIN" x="0" y="-15.24" addlevel="always"/>
<gate name="-16" symbol="PIN" x="0" y="-17.78" addlevel="always"/>
<gate name="-17" symbol="PIN" x="0" y="-20.32" addlevel="always"/>
<gate name="-18" symbol="PIN" x="0" y="-22.86" addlevel="always"/>
</gates>
<devices>
<device name="H" package="FH12-18S-0.5SH">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-16" pin="1" pad="16"/>
<connect gate="-17" pin="1" pad="17"/>
<connect gate="-18" pin="1" pad="18"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="FH12-18S-0.5SH(55)" constant="no"/>
<attribute name="OC_FARNELL" value="1324547" constant="no"/>
<attribute name="OC_NEWARK" value="34M6164" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-hirose" deviceset="FH12-18S-0.5S" device="H"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="109.22" y="160.02"/>
<instance part="X1" gate="-2" x="109.22" y="157.48"/>
<instance part="X1" gate="-3" x="109.22" y="154.94"/>
<instance part="X1" gate="-4" x="109.22" y="152.4"/>
<instance part="X1" gate="-5" x="109.22" y="149.86"/>
<instance part="X1" gate="-6" x="109.22" y="147.32"/>
<instance part="X1" gate="-7" x="109.22" y="144.78"/>
<instance part="X1" gate="-8" x="109.22" y="142.24"/>
<instance part="X1" gate="-9" x="109.22" y="139.7"/>
<instance part="X1" gate="-10" x="109.22" y="137.16"/>
<instance part="X1" gate="-11" x="109.22" y="134.62"/>
<instance part="X1" gate="-12" x="109.22" y="132.08"/>
<instance part="X1" gate="-13" x="109.22" y="129.54"/>
<instance part="X1" gate="-14" x="109.22" y="127"/>
<instance part="X1" gate="-15" x="109.22" y="124.46"/>
<instance part="X1" gate="-16" x="109.22" y="121.92"/>
<instance part="X1" gate="-17" x="109.22" y="119.38"/>
<instance part="X1" gate="-18" x="109.22" y="116.84"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
