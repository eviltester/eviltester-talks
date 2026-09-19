<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="context.&#xa;closed&#xa;plan" FOLDED="false" ID="ID_403499718" CREATED="1574946626537" MODIFIED="1574949694880" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="10" RULE="ON_BRANCH_CREATION"/>
<node TEXT="repeat context.closed&#xa;for context.open" POSITION="left" ID="ID_846175736" CREATED="1574946914670" MODIFIED="1574949701655">
<edge COLOR="#7c007c"/>
</node>
<node TEXT="repeat context.closed&#xa;for context.hidden" POSITION="left" ID="ID_877100684" CREATED="1574946924892" MODIFIED="1574949705080">
<edge COLOR="#007c7c"/>
</node>
<node TEXT="context.closed&#xa;switch to open" POSITION="left" ID="ID_226548802" CREATED="1574946888494" MODIFIED="1574949714843">
<edge COLOR="#007c00"/>
<node TEXT="with open actions" ID="ID_1007754904" CREATED="1574946896567" MODIFIED="1574946900631"/>
<node TEXT="with repeated actions" ID="ID_616688097" CREATED="1574946900857" MODIFIED="1574946903605"/>
<node TEXT="with dependent actions" ID="ID_485140907" CREATED="1574946904394" MODIFIED="1574949740951">
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node TEXT="context.open&#xa;switch to closed" POSITION="left" ID="ID_1350011255" CREATED="1574946825991" MODIFIED="1574949720731">
<edge COLOR="#00007c"/>
<node TEXT="with open actions" ID="ID_48462008" CREATED="1574946834191" MODIFIED="1574946839754"/>
<node TEXT="with repeated actions" ID="ID_1743017334" CREATED="1574946863794" MODIFIED="1574946867443"/>
<node TEXT="with dependent actions" ID="ID_1903567497" CREATED="1574946870817" MODIFIED="1574949743155">
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node TEXT="context.&#xa;closed" POSITION="right" ID="ID_993377816" CREATED="1574946795866" MODIFIED="1574949773344">
<edge COLOR="#7c0000"/>
<node TEXT="Action.created" ID="ID_1432052453" CREATED="1574946634676" MODIFIED="1574946810075">
<node TEXT="via GUI home page" ID="ID_1292438211" CREATED="1574946651904" MODIFIED="1574946659764"/>
<node TEXT="via repeated action" ID="ID_1549298547" CREATED="1574946660191" MODIFIED="1574946666264"/>
</node>
<node TEXT="Action moved to&#xa;closed context via edit" ID="ID_300976042" CREATED="1574946643703" MODIFIED="1574946810083">
<node TEXT="from open context" ID="ID_420790482" CREATED="1574946688502" MODIFIED="1574946692139"/>
<node TEXT="from hidden context" ID="ID_1397225441" CREATED="1574946692504" MODIFIED="1574946696064"/>
<node TEXT="from closed context" ID="ID_1329291437" CREATED="1574946696380" MODIFIED="1574946699365"/>
</node>
<node TEXT="Action.close" ID="ID_568178153" CREATED="1574946705979" MODIFIED="1574946810089">
<node TEXT="close open action on a closed context" ID="ID_1381964776" CREATED="1574946757914" MODIFIED="1574946768041"/>
</node>
<node TEXT="Action.open" ID="ID_375240806" CREATED="1574946769140" MODIFIED="1574946810097">
<node TEXT="edit an action on&#xa; a closed context and set to open" ID="ID_1168194180" CREATED="1574946774203" MODIFIED="1574949686722"/>
</node>
<node TEXT="Ignore dependencies for moment" ID="ID_923795755" CREATED="1574946783753" MODIFIED="1574949747393">
<icon BUILTIN="bookmark"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
</map>
