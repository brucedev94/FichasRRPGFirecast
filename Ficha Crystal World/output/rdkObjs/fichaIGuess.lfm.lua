require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmOurFichaAlemDoVeuHiperion()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("Alem_do_veu_Hiperion");
    obj:setTitle("Alem_do_veu(Hiperion))");
    obj:setName("frmOurFichaAlemDoVeuHiperion");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'ForV', 'DesV', 'ConV', 'IntV', 'SabV', 'CarV','ForA', 'DesA', 'ConA', 'IntA',
			'SabA', 'CarA', 'ForB', 'DesB', 'ConB', 'IntB', 'SabB', 'CarB', 'ForM', 'DesM', 'ConM', 'IntM', 'SabM', 'CarM', 'NvDanoCurtoAlcance', 'NvDanoLongoAlcance', 'NvQuebrarObjetos', 
			'NvLevantarPeso',  'NvEmpurrarObstaculo', 'NvBracoDeFerro', 'NvEscalar', 'NvIniciativa', 'NvEsquivar', 'NvDesarmarArmadilha', 'NvAcrobacias', 'NvRoubo', 'NvArremessarObjetos', 'NvFurtividade', 'NvMontaria',
			'NvAcertoDistância', 'NvAcertoCurtoAlcance', 'NvCorrer', 'NvResistenciaVeneno', 'NvResistenciaCansaco', 'NvSegurarFolego', 'NvSuporteFrioCalor', 'NvDefender', 'NvProfissao', 'NvDecifrarCodigo',
			'NvIdentificarCriatura', 'NvLerManuscrito', 'NvPrepararEstrategia', 'NvResistenciaMental', 'NvHistoria', 'NvInvestigacao', 'NvPerceberMentira', 'NvPercepcao', 'NvSentirPerigo', 'NvDetectarMagia',
			'NvAcertoMagico', 'NvDanoMagico', 'NvSobrevivencia', 'NvMedicina', 'NvNatureza', 'NvReligiao', 'NvDiscurso', 'NvSeducao', 'NvIntimidar', 'NvAtuar', 'NvPersuadir', 'NvMentir', 'BDanoCurtoAlcance',
			'BDanoLongoAlcance', 'BQuebrarObjetos', 'BLevantarPeso', 'BEmpurrarObstaculo', 'BBracoDeFerro', 'BEscalar', 'BIniciativa', 'BEsquivar', 'BDesarmarArmadilha', 'BAcrobacias', 'BRoubo', 'BArremessarObjetos', 'BFurtividade', 'BMontaria',
			'BAcertoDistância', 'BAcertoCurtoAlcance', 'BCorrer', 'BResistenciaVeneno', 'BResistenciaCansaco', 'BSegurarFolego', 'BSuporteFrioCalor', 'BDefender', 'BProfissao', 'BDecifrarCodigo', 'BIdentificarCriatura', 'BLerManuscrito',
			'BPrepararEstrategia', 'BResistenciaMental', 'BHistoria', 'BInvestigacao', 'BPerceberMentira', 'BPercepcao', 'BSentirPerigo', 'BDetectarMagia', 'BAcertoMagico', 'BDanoMagico', 'BSobrevivencia', 'BMedicina', 'BNatureza', 'BReligiao',
			'BDiscurso', 'BSeducao', 'BIntimidar', 'BAtuar', 'BPersuadir', 'BMentir', 'ModDanoCurtoAlcance', 'ModDanoLongoAlcance', 'ModQuebrarObjetos', 'ModLevantarPeso', 'ModEmpurrarObstaculo', 'ModBracoDeFerro', 'ModEscalar', 'ModIniciativa',
			'ModEsquivar', 'ModDesarmarArmadilha', 'ModAcrobacias', 'ModRoubo', 'ModArremessarObjetos', 'ModFurtividade', 'ModMontaria', 'ModAcertoDistância', 'ModAcertoCurtoAlcance', 'ModCorrer', 'ModResistenciaVeneno', 'ModResistenciaCansaco',
			'ModSegurarFolego', 'ModSuporteFrioCalor', 'ModDefender', 'ModProfissao', 'ModDecifrarCodigo', 'ModIdentificarCriatura', 'ModLerManuscrito', 'ModPrepararEstrategia', 'ModResistenciaMental', 'ModHistoria', 'ModInvestigacao',
			'ModPerceberMentira', 'ModPercepcao', 'ModSentirPerigo', 'ModDetectarMagia', 'ModAcertoMagico', 'ModDanoMagico', 'ModSobrevivencia', 'ModMedicina', 'ModNatureza', 'ModReligiao', 'ModDiscurso', 'ModSeducao',
			'ModIntimidar', 'ModAtuar', 'ModPersuadir', 'ModMentir',});
    obj.dataLink1:setName("dataLink1");






	local function TrocarAba(a)
		if(a == 'F') then
			self.layFrente.visible = true;
			self.layMecanicas.visible = false;
			self.layMagias.visible = false;
			self.layBG.visible = false;
			self.layNote.visible = false;
		elseif(a == 'M') then
			self.layFrente.visible = false;
			self.layMecanicas.visible = true;
			self.layMagias.visible = false;
			self.layBG.visible = false;
			self.layNote.visible = false;
		elseif(a == 'S') then
			self.layFrente.visible = false;
			self.layMecanicas.visible = false;
			self.layMagias.visible = true;
			self.layBG.visible = false;
			self.layNote.visible = false;
		elseif(a == 'H') then
			self.layFrente.visible = false;
			self.layMecanicas.visible = false;
			self.layMagias.visible = false;
			self.layBG.visible = true;
			self.layNote.visible = false;
		elseif(a == 'A') then
			self.layFrente.visible = false;
			self.layMecanicas.visible = false;
			self.layMagias.visible = false;
			self.layBG.visible = false;
			self.layNote.visible = true;
		end;
	end;







    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj);
    obj.image1:setField("URLImagemFundo");
    obj.image1:setAlign("client");
    obj.image1:setStyle("autoFit");
    obj.image1:setSRC("");
    obj.image1:setName("image1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.scrollBox1);
    obj.flowLayout1:setAlign("top");
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setMaxControlsPerLine(3);
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setAlign("top");
    obj.flowPart1:setMinWidth(400);
    obj.flowPart1:setMaxWidth(1000);
    obj.flowPart1:setHeight(1600);
    obj.flowPart1:setName("flowPart1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.flowPart1);
    obj.rectangle1:setName("rectangle1");
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("transparent");
    obj.rectangle1:setStrokeColor("#272727");
    obj.rectangle1:setStrokeSize(2);
    obj.rectangle1:setXradius(25);
    obj.rectangle1:setYradius(25);
    obj.rectangle1:setCornerType("bevel");
    obj.rectangle1:setMargins({top=20, bottom=20});

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.rectangle1);
    obj.rectangle2:setName("rectangle2");
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("transparent");
    obj.rectangle2:setStrokeColor("#272727");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setXradius(23);
    obj.rectangle2:setYradius(23);
    obj.rectangle2:setCornerType("bevel");
    obj.rectangle2:setMargins({top=5, right=5, bottom=5, left=5});

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.rectangle2);
    obj.rectangle3:setName("rectangle3");
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("#272727");
    obj.rectangle3:setXradius(20);
    obj.rectangle3:setYradius(20);
    obj.rectangle3:setCornerType("bevel");
    obj.rectangle3:setMargins({top=10, right=10, bottom=10, left=10});

    obj.layFrente = GUI.fromHandle(_obj_newObject("layout"));
    obj.layFrente:setParent(obj.rectangle3);
    obj.layFrente:setName("layFrente");
    obj.layFrente:setAlign("client");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.layFrente);
    obj.flowLayout2:setAlign("top");
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setHorzAlign("center");
    obj.flowLayout2:setName("flowLayout2");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout2);
    obj.flowPart2:setMinWidth(300);
    obj.flowPart2:setMaxWidth(650);
    obj.flowPart2:setHeight(1600);
    obj.flowPart2:setName("flowPart2");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.flowPart2);
    obj.rectangle4:setMargins({left=20, right=10, top=20});
    obj.rectangle4:setAlign("top");
    obj.rectangle4:setHeight(30);
    obj.rectangle4:setXradius(5);
    obj.rectangle4:setYradius(5);
    obj.rectangle4:setCornerType("round");
    obj.rectangle4:setColor("#212121");
    obj.rectangle4:setName("rectangle4");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle4);
    obj.button1:setText("P E R S O N A G E M");
    obj.button1:setName("button1");
    obj.button1:setAlign("left");
    obj.button1:setMargins({right=2});
    obj.button1:setWidth(122);
    obj.button1:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button1, "fontStyle", "bold");
    obj.button1:setFontSize(10);

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle4);
    obj.button2:setText("I N V E N T a R I O");
    obj.button2:setName("button2");
    obj.button2:setAlign("left");
    obj.button2:setMargins({right=2});
    obj.button2:setWidth(122);
    obj.button2:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button2, "fontStyle", "bold");
    obj.button2:setFontSize(10);

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle4);
    obj.button3:setText("S K I L L S");
    obj.button3:setName("button3");
    obj.button3:setAlign("left");
    obj.button3:setMargins({right=2});
    obj.button3:setWidth(122);
    obj.button3:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button3, "fontStyle", "bold");
    obj.button3:setFontSize(10);

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle4);
    obj.button4:setText("D I a R I O");
    obj.button4:setName("button4");
    obj.button4:setAlign("left");
    obj.button4:setMargins({right=2});
    obj.button4:setWidth(122);
    obj.button4:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button4, "fontStyle", "bold");
    obj.button4:setFontSize(10);

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle4);
    obj.button5:setText("A N O T A c Õ E S");
    obj.button5:setName("button5");
    obj.button5:setAlign("left");
    obj.button5:setMargins({right=2});
    obj.button5:setWidth(122);
    obj.button5:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button5, "fontStyle", "bold");
    obj.button5:setFontSize(10);

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.flowPart2);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({top=10, left=20, bottom=15});
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("left");
    obj.label1:setText("P E R S O N A G E M");
    obj.label1:setWidth(190);
    obj.label1:setFontColor("#ffffff");
    obj.label1:setFontSize(20);
    obj.label1:setFontFamily("Constantia");
    obj.label1:setName("label1");
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.layout1);
    obj.horzLine1:setAlign("client");
    obj.horzLine1:setMargins({right=9, top=14});
    obj.horzLine1:setStrokeColor("#424242");
    obj.horzLine1:setName("horzLine1");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.flowPart2);
    obj.rectangle5:setWidth(35);
    obj.rectangle5:setLeft(532);
    obj.rectangle5:setTop(345);
    obj.rectangle5:setHeight(20);
    obj.rectangle5:setColor("#ffffff");
    obj.rectangle5:setXradius(5);
    obj.rectangle5:setYradius(5);
    obj.rectangle5:setCornerType("round");
    obj.rectangle5:setName("rectangle5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.flowPart2);
    obj.rectangle6:setWidth(35);
    obj.rectangle6:setLeft(532);
    obj.rectangle6:setTop(385);
    obj.rectangle6:setHeight(20);
    obj.rectangle6:setColor("#ffffff");
    obj.rectangle6:setXradius(5);
    obj.rectangle6:setYradius(5);
    obj.rectangle6:setCornerType("round");
    obj.rectangle6:setName("rectangle6");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.flowPart2);
    obj.rectangle7:setWidth(35);
    obj.rectangle7:setLeft(532);
    obj.rectangle7:setTop(425);
    obj.rectangle7:setHeight(20);
    obj.rectangle7:setColor("#ffffff");
    obj.rectangle7:setXradius(5);
    obj.rectangle7:setYradius(5);
    obj.rectangle7:setCornerType("round");
    obj.rectangle7:setName("rectangle7");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.flowPart2);
    obj.rectangle8:setWidth(35);
    obj.rectangle8:setLeft(532);
    obj.rectangle8:setTop(465);
    obj.rectangle8:setHeight(20);
    obj.rectangle8:setColor("#ffffff");
    obj.rectangle8:setXradius(5);
    obj.rectangle8:setYradius(5);
    obj.rectangle8:setCornerType("round");
    obj.rectangle8:setName("rectangle8");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.flowPart2);
    obj.rectangle9:setWidth(35);
    obj.rectangle9:setLeft(532);
    obj.rectangle9:setTop(505);
    obj.rectangle9:setHeight(20);
    obj.rectangle9:setColor("#ffffff");
    obj.rectangle9:setXradius(5);
    obj.rectangle9:setYradius(5);
    obj.rectangle9:setCornerType("round");
    obj.rectangle9:setName("rectangle9");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.flowPart2);
    obj.rectangle10:setWidth(35);
    obj.rectangle10:setLeft(532);
    obj.rectangle10:setTop(545);
    obj.rectangle10:setHeight(20);
    obj.rectangle10:setColor("#ffffff");
    obj.rectangle10:setXradius(5);
    obj.rectangle10:setYradius(5);
    obj.rectangle10:setCornerType("round");
    obj.rectangle10:setName("rectangle10");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.flowPart2);
    obj.rectangle11:setWidth(35);
    obj.rectangle11:setLeft(420);
    obj.rectangle11:setTop(345);
    obj.rectangle11:setHeight(20);
    obj.rectangle11:setColor("#363636");
    obj.rectangle11:setXradius(5);
    obj.rectangle11:setYradius(5);
    obj.rectangle11:setCornerType("round");
    obj.rectangle11:setName("rectangle11");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.flowPart2);
    obj.rectangle12:setWidth(35);
    obj.rectangle12:setLeft(420);
    obj.rectangle12:setTop(385);
    obj.rectangle12:setHeight(20);
    obj.rectangle12:setColor("#363636");
    obj.rectangle12:setXradius(5);
    obj.rectangle12:setYradius(5);
    obj.rectangle12:setCornerType("round");
    obj.rectangle12:setName("rectangle12");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.flowPart2);
    obj.rectangle13:setWidth(35);
    obj.rectangle13:setLeft(420);
    obj.rectangle13:setTop(425);
    obj.rectangle13:setHeight(20);
    obj.rectangle13:setColor("#363636");
    obj.rectangle13:setXradius(5);
    obj.rectangle13:setYradius(5);
    obj.rectangle13:setCornerType("round");
    obj.rectangle13:setName("rectangle13");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.flowPart2);
    obj.rectangle14:setWidth(35);
    obj.rectangle14:setLeft(420);
    obj.rectangle14:setTop(465);
    obj.rectangle14:setHeight(20);
    obj.rectangle14:setColor("#363636");
    obj.rectangle14:setXradius(5);
    obj.rectangle14:setYradius(5);
    obj.rectangle14:setCornerType("round");
    obj.rectangle14:setName("rectangle14");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.flowPart2);
    obj.rectangle15:setWidth(35);
    obj.rectangle15:setLeft(420);
    obj.rectangle15:setTop(505);
    obj.rectangle15:setHeight(20);
    obj.rectangle15:setColor("#363636");
    obj.rectangle15:setXradius(5);
    obj.rectangle15:setYradius(5);
    obj.rectangle15:setCornerType("round");
    obj.rectangle15:setName("rectangle15");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.flowPart2);
    obj.rectangle16:setWidth(35);
    obj.rectangle16:setLeft(420);
    obj.rectangle16:setTop(545);
    obj.rectangle16:setHeight(20);
    obj.rectangle16:setColor("#363636");
    obj.rectangle16:setXradius(5);
    obj.rectangle16:setYradius(5);
    obj.rectangle16:setCornerType("round");
    obj.rectangle16:setName("rectangle16");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.flowPart2);
    obj.rectangle17:setWidth(35);
    obj.rectangle17:setLeft(313);
    obj.rectangle17:setTop(345);
    obj.rectangle17:setHeight(20);
    obj.rectangle17:setColor("#363636");
    obj.rectangle17:setXradius(5);
    obj.rectangle17:setYradius(5);
    obj.rectangle17:setCornerType("round");
    obj.rectangle17:setName("rectangle17");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.flowPart2);
    obj.rectangle18:setWidth(35);
    obj.rectangle18:setLeft(313);
    obj.rectangle18:setTop(385);
    obj.rectangle18:setHeight(20);
    obj.rectangle18:setColor("#363636");
    obj.rectangle18:setXradius(5);
    obj.rectangle18:setYradius(5);
    obj.rectangle18:setCornerType("round");
    obj.rectangle18:setName("rectangle18");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.flowPart2);
    obj.rectangle19:setWidth(35);
    obj.rectangle19:setLeft(313);
    obj.rectangle19:setTop(425);
    obj.rectangle19:setHeight(20);
    obj.rectangle19:setColor("#363636");
    obj.rectangle19:setXradius(5);
    obj.rectangle19:setYradius(5);
    obj.rectangle19:setCornerType("round");
    obj.rectangle19:setName("rectangle19");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.flowPart2);
    obj.rectangle20:setWidth(35);
    obj.rectangle20:setLeft(313);
    obj.rectangle20:setTop(465);
    obj.rectangle20:setHeight(20);
    obj.rectangle20:setColor("#363636");
    obj.rectangle20:setXradius(5);
    obj.rectangle20:setYradius(5);
    obj.rectangle20:setCornerType("round");
    obj.rectangle20:setName("rectangle20");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.flowPart2);
    obj.rectangle21:setWidth(35);
    obj.rectangle21:setLeft(313);
    obj.rectangle21:setTop(505);
    obj.rectangle21:setHeight(20);
    obj.rectangle21:setColor("#363636");
    obj.rectangle21:setXradius(5);
    obj.rectangle21:setYradius(5);
    obj.rectangle21:setCornerType("round");
    obj.rectangle21:setName("rectangle21");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.flowPart2);
    obj.rectangle22:setWidth(35);
    obj.rectangle22:setLeft(313);
    obj.rectangle22:setTop(545);
    obj.rectangle22:setHeight(20);
    obj.rectangle22:setColor("#363636");
    obj.rectangle22:setXradius(5);
    obj.rectangle22:setYradius(5);
    obj.rectangle22:setCornerType("round");
    obj.rectangle22:setName("rectangle22");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.flowPart2);
    obj.rectangle23:setWidth(35);
    obj.rectangle23:setLeft(203);
    obj.rectangle23:setTop(345);
    obj.rectangle23:setHeight(20);
    obj.rectangle23:setColor("#363636");
    obj.rectangle23:setXradius(5);
    obj.rectangle23:setYradius(5);
    obj.rectangle23:setCornerType("round");
    obj.rectangle23:setName("rectangle23");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.flowPart2);
    obj.rectangle24:setWidth(35);
    obj.rectangle24:setLeft(203);
    obj.rectangle24:setTop(385);
    obj.rectangle24:setHeight(20);
    obj.rectangle24:setColor("#363636");
    obj.rectangle24:setXradius(5);
    obj.rectangle24:setYradius(5);
    obj.rectangle24:setCornerType("round");
    obj.rectangle24:setName("rectangle24");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.flowPart2);
    obj.rectangle25:setWidth(35);
    obj.rectangle25:setLeft(203);
    obj.rectangle25:setTop(425);
    obj.rectangle25:setHeight(20);
    obj.rectangle25:setColor("#363636");
    obj.rectangle25:setXradius(5);
    obj.rectangle25:setYradius(5);
    obj.rectangle25:setCornerType("round");
    obj.rectangle25:setName("rectangle25");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.flowPart2);
    obj.rectangle26:setWidth(35);
    obj.rectangle26:setLeft(203);
    obj.rectangle26:setTop(465);
    obj.rectangle26:setHeight(20);
    obj.rectangle26:setColor("#363636");
    obj.rectangle26:setXradius(5);
    obj.rectangle26:setYradius(5);
    obj.rectangle26:setCornerType("round");
    obj.rectangle26:setName("rectangle26");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.flowPart2);
    obj.rectangle27:setWidth(35);
    obj.rectangle27:setLeft(203);
    obj.rectangle27:setTop(505);
    obj.rectangle27:setHeight(20);
    obj.rectangle27:setColor("#363636");
    obj.rectangle27:setXradius(5);
    obj.rectangle27:setYradius(5);
    obj.rectangle27:setCornerType("round");
    obj.rectangle27:setName("rectangle27");

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.flowPart2);
    obj.rectangle28:setWidth(35);
    obj.rectangle28:setLeft(203);
    obj.rectangle28:setTop(545);
    obj.rectangle28:setHeight(20);
    obj.rectangle28:setColor("#363636");
    obj.rectangle28:setXradius(5);
    obj.rectangle28:setYradius(5);
    obj.rectangle28:setCornerType("round");
    obj.rectangle28:setName("rectangle28");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.flowPart2);
    obj.flowLayout3:setAlign("top");
    obj.flowLayout3:setAutoHeight(true);
    obj.flowLayout3:setName("flowLayout3");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout3);
    obj.flowPart3:setMaxWidth(1300);
    obj.flowPart3:setMinWidth(250);
    obj.flowPart3:setHeight(80);
    obj.flowPart3:setName("flowPart3");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.flowPart3);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(20);
    obj.layout2:setMargins({left=25});
    obj.layout2:setName("layout2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setAlign("left");
    obj.label2:setText("Nome:");
    obj.label2:setWidth(83);
    obj.label2:setName("label2");
    obj.label2:setFontColor("white");
    lfm_setPropAsString(obj.label2, "fontStyle", "bold");
    obj.label2:setFontFamily("Cambria");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setField("nomeChar");
    obj.edit1:setAlign("client");
    obj.edit1:setMargins({right=10});
    obj.edit1:setName("edit1");
    obj.edit1:setFontColor("#cdcdcd");
    obj.edit1:setFontFamily("Cambria");
    obj.edit1:setTransparent(true);

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout2);
    obj.dataLink2:setField("nomeChar");
    obj.dataLink2:setDefaultValue("—");
    obj.dataLink2:setName("dataLink2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.flowPart3);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(20);
    obj.layout3:setMargins({left=25});
    obj.layout3:setName("layout3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout3);
    obj.label3:setAlign("left");
    obj.label3:setText("Rank:");
    obj.label3:setWidth(83);
    obj.label3:setName("label3");
    obj.label3:setFontColor("white");
    lfm_setPropAsString(obj.label3, "fontStyle", "bold");
    obj.label3:setFontFamily("Cambria");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout3);
    obj.edit2:setField("DivindadeChar");
    obj.edit2:setAlign("client");
    obj.edit2:setMargins({right=10});
    obj.edit2:setName("edit2");
    obj.edit2:setFontColor("#cdcdcd");
    obj.edit2:setFontFamily("Cambria");
    obj.edit2:setTransparent(true);

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout3);
    obj.dataLink3:setField("DivindadeChar");
    obj.dataLink3:setDefaultValue("—");
    obj.dataLink3:setName("dataLink3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.flowPart3);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(20);
    obj.layout4:setMargins({left=25});
    obj.layout4:setName("layout4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout4);
    obj.label4:setAlign("left");
    obj.label4:setText("Idade:");
    obj.label4:setWidth(83);
    obj.label4:setName("label4");
    obj.label4:setFontColor("white");
    lfm_setPropAsString(obj.label4, "fontStyle", "bold");
    obj.label4:setFontFamily("Cambria");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout4);
    obj.edit3:setField("IdadeChar");
    obj.edit3:setAlign("client");
    obj.edit3:setMargins({right=10});
    obj.edit3:setName("edit3");
    obj.edit3:setFontColor("#cdcdcd");
    obj.edit3:setFontFamily("Cambria");
    obj.edit3:setTransparent(true);

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout4);
    obj.dataLink4:setField("IdadeChar");
    obj.dataLink4:setDefaultValue("—");
    obj.dataLink4:setName("dataLink4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowPart3);
    obj.label5:setFontSize(15.0);
    obj.label5:setLeft(365);
    obj.label5:setTop(0);
    obj.label5:setFontColor("white");
    obj.label5:setText("Nível:");
    obj.label5:setName("label5");
    lfm_setPropAsString(obj.label5, "fontStyle", "bold");
    obj.label5:setFontFamily("Cambria");

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.flowPart3);
    obj.rectangle29:setWidth(58);
    obj.rectangle29:setLeft(436);
    obj.rectangle29:setTop(3);
    obj.rectangle29:setHeight(15);
    obj.rectangle29:setColor("#363636");
    obj.rectangle29:setXradius(5);
    obj.rectangle29:setYradius(5);
    obj.rectangle29:setCornerType("round");
    obj.rectangle29:setName("rectangle29");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowPart3);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setWidth(60);
    obj.edit4:setFontSize(13.0);
    obj.edit4:setField("NivelPersonagem");
    obj.edit4:setFontColor("#FFFFFF");
    obj.edit4:setLeft(435);
    obj.edit4:setTop(-5);
    lfm_setPropAsString(obj.edit4, "fontStyle", "bold");
    obj.edit4:setType("number");
    obj.edit4:setMin(0);
    obj.edit4:setMax(99);
    obj.edit4:setName("edit4");
    obj.edit4:setFontFamily("Cambria");
    obj.edit4:setTransparent(true);

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.flowPart3);
    obj.dataLink5:setField("NivelPersonagem");
    obj.dataLink5:setDefaultValue("1");
    obj.dataLink5:setName("dataLink5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.flowPart3);
    obj.label6:setFontSize(15.0);
    obj.label6:setLeft(365);
    obj.label6:setTop(23);
    obj.label6:setFontColor("white");
    obj.label6:setText("HP:");
    obj.label6:setName("label6");
    lfm_setPropAsString(obj.label6, "fontStyle", "bold");
    obj.label6:setFontFamily("Cambria");

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.flowPart3);
    obj.rectangle30:setLeft(435);
    obj.rectangle30:setTop(24);
    obj.rectangle30:setWidth(60);
    obj.rectangle30:setHeight(15);
    obj.rectangle30:setXradius(5);
    obj.rectangle30:setYradius(5);
    obj.rectangle30:setCornerType("round");
    obj.rectangle30:setColor("#363636");
    obj.rectangle30:setName("rectangle30");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle30);
    obj.label7:setField("HpPersonagem");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setLeft(-30);
    obj.label7:setTop(0);
    obj.label7:setName("label7");
    obj.label7:setFontColor("white");
    lfm_setPropAsString(obj.label7, "fontStyle", "bold");
    obj.label7:setFontFamily("Cambria");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.rectangle30);
    obj.dataLink6:setField("HpPersonagem");
    obj.dataLink6:setDefaultValue("0");
    obj.dataLink6:setName("dataLink6");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.flowPart3);
    obj.rectangle31:setLeft(500);
    obj.rectangle31:setTop(24);
    obj.rectangle31:setWidth(60);
    obj.rectangle31:setHeight(15);
    obj.rectangle31:setXradius(5);
    obj.rectangle31:setYradius(5);
    obj.rectangle31:setCornerType("round");
    obj.rectangle31:setColor("#363636");
    obj.rectangle31:setName("rectangle31");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle31);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setLeft(-20);
    obj.edit5:setTop(-8);
    obj.edit5:setField("Vidabonus");
    obj.edit5:setType("number");
    obj.edit5:setMin(0);
    obj.edit5:setMax(9999);
    obj.edit5:setFontColor("white");
    obj.edit5:setName("edit5");
    obj.edit5:setFontFamily("Cambria");
    obj.edit5:setTransparent(true);

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.rectangle31);
    obj.dataLink7:setField("Vidabonus");
    obj.dataLink7:setDefaultValue("0");
    obj.dataLink7:setName("dataLink7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.flowPart3);
    obj.label8:setFontSize(15.0);
    obj.label8:setLeft(365);
    obj.label8:setTop(43);
    obj.label8:setFontColor("white");
    obj.label8:setText("Mana:");
    obj.label8:setName("label8");
    lfm_setPropAsString(obj.label8, "fontStyle", "bold");
    obj.label8:setFontFamily("Cambria");

    obj.rectangle32 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.flowPart3);
    obj.rectangle32:setLeft(435);
    obj.rectangle32:setTop(44);
    obj.rectangle32:setWidth(60);
    obj.rectangle32:setHeight(15);
    obj.rectangle32:setXradius(5);
    obj.rectangle32:setYradius(5);
    obj.rectangle32:setCornerType("round");
    obj.rectangle32:setColor("#363636");
    obj.rectangle32:setName("rectangle32");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle32);
    obj.label9:setField("ManaPersonagem");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setLeft(-30);
    obj.label9:setTop(-2);
    obj.label9:setName("label9");
    obj.label9:setFontColor("white");
    lfm_setPropAsString(obj.label9, "fontStyle", "bold");
    obj.label9:setFontFamily("Cambria");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.rectangle32);
    obj.dataLink8:setField("ManaPersonagem");
    obj.dataLink8:setDefaultValue("0");
    obj.dataLink8:setName("dataLink8");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowPart3);
    obj.label10:setFontSize(15.0);
    obj.label10:setLeft(365);
    obj.label10:setTop(63);
    obj.label10:setFontColor("white");
    obj.label10:setText("Estamina:");
    obj.label10:setName("label10");
    lfm_setPropAsString(obj.label10, "fontStyle", "bold");
    obj.label10:setFontFamily("Cambria");

    obj.rectangle33 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.flowPart3);
    obj.rectangle33:setLeft(435);
    obj.rectangle33:setTop(64);
    obj.rectangle33:setWidth(60);
    obj.rectangle33:setHeight(15);
    obj.rectangle33:setXradius(5);
    obj.rectangle33:setYradius(5);
    obj.rectangle33:setCornerType("round");
    obj.rectangle33:setColor("#363636");
    obj.rectangle33:setName("rectangle33");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle33);
    obj.label11:setField("EstaminaPersonagem");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setLeft(-30);
    obj.label11:setTop(-4);
    obj.label11:setName("label11");
    obj.label11:setFontColor("white");
    lfm_setPropAsString(obj.label11, "fontStyle", "bold");
    obj.label11:setFontFamily("Cambria");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.rectangle33);
    obj.dataLink9:setField("EstaminaPersonagem");
    obj.dataLink9:setDefaultValue("0");
    obj.dataLink9:setName("dataLink9");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.flowPart2);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(30);
    obj.layout5:setMargins({top=40, left=20, bottom=15});
    obj.layout5:setName("layout5");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout5);
    obj.label12:setAlign("left");
    obj.label12:setText("A T R I B U T O S");
    obj.label12:setWidth(160);
    obj.label12:setFontColor("#ffffff");
    obj.label12:setFontSize(20);
    obj.label12:setFontFamily("Constantia");
    obj.label12:setName("label12");
    lfm_setPropAsString(obj.label12, "fontStyle", "bold");

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.layout5);
    obj.horzLine2:setAlign("client");
    obj.horzLine2:setMargins({right=9, top=14});
    obj.horzLine2:setStrokeColor("#424242");
    obj.horzLine2:setName("horzLine2");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.flowPart2);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(253);
    obj.layout6:setMargins({left=20, right=20});
    obj.layout6:setName("layout6");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.layout6);
    obj.image2:setAlign("client");
    obj.image2:setSRC("imagens atributos");
    obj.image2:setStyle("proportional");
    obj.image2:setName("image2");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout6);
    obj.label13:setFontSize(16.0);
    obj.label13:setFontColor("#ffffff");
    obj.label13:setText("FORcA");
    obj.label13:setLeft(0);
    obj.label13:setTop(38);
    obj.label13:setName("label13");
    lfm_setPropAsString(obj.label13, "fontStyle", "bold");
    obj.label13:setFontFamily("Cambria");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout6);
    obj.label14:setFontSize(16.0);
    obj.label14:setFontColor("#ffffff");
    obj.label14:setText("DESTREZA");
    obj.label14:setLeft(0);
    obj.label14:setTop(78);
    obj.label14:setName("label14");
    lfm_setPropAsString(obj.label14, "fontStyle", "bold");
    obj.label14:setFontFamily("Cambria");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout6);
    obj.label15:setFontSize(16.0);
    obj.label15:setFontColor("#ffffff");
    obj.label15:setText("CONSTITUIcaO");
    obj.label15:setLeft(0);
    obj.label15:setTop(118);
    obj.label15:setName("label15");
    lfm_setPropAsString(obj.label15, "fontStyle", "bold");
    obj.label15:setFontFamily("Cambria");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout6);
    obj.label16:setFontSize(16.0);
    obj.label16:setFontColor("#ffffff");
    obj.label16:setText("INTELIGENCIA");
    obj.label16:setLeft(0);
    obj.label16:setTop(158);
    obj.label16:setName("label16");
    lfm_setPropAsString(obj.label16, "fontStyle", "bold");
    obj.label16:setFontFamily("Cambria");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout6);
    obj.label17:setFontSize(16.0);
    obj.label17:setFontColor("#ffffff");
    obj.label17:setText("SABEDORIA");
    obj.label17:setLeft(0);
    obj.label17:setTop(198);
    obj.label17:setName("label17");
    lfm_setPropAsString(obj.label17, "fontStyle", "bold");
    obj.label17:setFontFamily("Cambria");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout6);
    obj.label18:setFontSize(16.0);
    obj.label18:setFontColor("#ffffff");
    obj.label18:setText("CARISMA");
    obj.label18:setLeft(0);
    obj.label18:setTop(238);
    obj.label18:setName("label18");
    lfm_setPropAsString(obj.label18, "fontStyle", "bold");
    obj.label18:setFontFamily("Cambria");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout6);
    obj.label19:setFontSize(16.0);
    obj.label19:setText("VALOR");
    obj.label19:setLeft(180);
    obj.label19:setTop(10);
    obj.label19:setName("label19");
    obj.label19:setFontColor("white");
    lfm_setPropAsString(obj.label19, "fontStyle", "bold");
    obj.label19:setFontFamily("Cambria");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout6);
    obj.label20:setFontSize(16.0);
    obj.label20:setText("ADD");
    obj.label20:setLeft(295);
    obj.label20:setTop(10);
    obj.label20:setName("label20");
    obj.label20:setFontColor("white");
    lfm_setPropAsString(obj.label20, "fontStyle", "bold");
    obj.label20:setFontFamily("Cambria");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout6);
    obj.label21:setFontSize(16.0);
    obj.label21:setText("BoNUS");
    obj.label21:setLeft(392);
    obj.label21:setTop(10);
    obj.label21:setName("label21");
    obj.label21:setFontColor("white");
    lfm_setPropAsString(obj.label21, "fontStyle", "bold");
    obj.label21:setFontFamily("Cambria");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout6);
    obj.label22:setFontSize(16.0);
    obj.label22:setText("MOD");
    obj.label22:setLeft(511);
    obj.label22:setTop(10);
    obj.label22:setName("label22");
    obj.label22:setFontColor("white");
    lfm_setPropAsString(obj.label22, "fontStyle", "bold");
    obj.label22:setFontFamily("Cambria");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout6);
    obj.layout7:setAlign("top");
    obj.layout7:setHeight(300);
    obj.layout7:setMargins({left=20, right=20});
    obj.layout7:setName("layout7");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout7);
    obj.image3:setAlign("client");
    obj.image3:setSRC("");
    obj.image3:setStyle("proportional");
    obj.image3:setName("image3");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout7);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setWidth(50);
    obj.edit6:setFontSize(14.0);
    obj.edit6:setField("ForV");
    obj.edit6:setLeft(155);
    obj.edit6:setTop(29);
    lfm_setPropAsString(obj.edit6, "fontStyle", "bold");
    obj.edit6:setType("number");
    obj.edit6:setMin(0);
    obj.edit6:setMax(99);
    obj.edit6:setName("edit6");
    obj.edit6:setFontColor("#cdcdcd");
    obj.edit6:setFontFamily("Cambria");
    obj.edit6:setTransparent(true);

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.layout7);
    obj.dataLink10:setDefaultValue("0");
    obj.dataLink10:setField("ForV");
    obj.dataLink10:setName("dataLink10");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setWidth(50);
    obj.edit7:setFontSize(14.0);
    obj.edit7:setField("DesV");
    obj.edit7:setLeft(155);
    obj.edit7:setTop(69);
    lfm_setPropAsString(obj.edit7, "fontStyle", "bold");
    obj.edit7:setType("number");
    obj.edit7:setMin(0);
    obj.edit7:setMax(99);
    obj.edit7:setName("edit7");
    obj.edit7:setFontColor("#cdcdcd");
    obj.edit7:setFontFamily("Cambria");
    obj.edit7:setTransparent(true);

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.layout7);
    obj.dataLink11:setDefaultValue("0");
    obj.dataLink11:setField("DesV");
    obj.dataLink11:setName("dataLink11");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout7);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setWidth(50);
    obj.edit8:setFontSize(14.0);
    obj.edit8:setField("ConV");
    obj.edit8:setLeft(155);
    obj.edit8:setTop(109);
    lfm_setPropAsString(obj.edit8, "fontStyle", "bold");
    obj.edit8:setType("number");
    obj.edit8:setMin(0);
    obj.edit8:setMax(99);
    obj.edit8:setName("edit8");
    obj.edit8:setFontColor("#cdcdcd");
    obj.edit8:setFontFamily("Cambria");
    obj.edit8:setTransparent(true);

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.layout7);
    obj.dataLink12:setDefaultValue("0");
    obj.dataLink12:setField("ConV");
    obj.dataLink12:setName("dataLink12");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout7);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setWidth(50);
    obj.edit9:setFontSize(14.0);
    obj.edit9:setField("IntV");
    obj.edit9:setLeft(155);
    obj.edit9:setTop(149);
    lfm_setPropAsString(obj.edit9, "fontStyle", "bold");
    obj.edit9:setType("number");
    obj.edit9:setMin(0);
    obj.edit9:setMax(99);
    obj.edit9:setName("edit9");
    obj.edit9:setFontColor("#cdcdcd");
    obj.edit9:setFontFamily("Cambria");
    obj.edit9:setTransparent(true);

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.layout7);
    obj.dataLink13:setDefaultValue("0");
    obj.dataLink13:setField("IntV");
    obj.dataLink13:setName("dataLink13");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout7);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setWidth(50);
    obj.edit10:setFontSize(14.0);
    obj.edit10:setField("SabV");
    obj.edit10:setLeft(155);
    obj.edit10:setTop(189);
    lfm_setPropAsString(obj.edit10, "fontStyle", "bold");
    obj.edit10:setType("number");
    obj.edit10:setMin(0);
    obj.edit10:setMax(99);
    obj.edit10:setName("edit10");
    obj.edit10:setFontColor("#cdcdcd");
    obj.edit10:setFontFamily("Cambria");
    obj.edit10:setTransparent(true);

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.layout7);
    obj.dataLink14:setDefaultValue("0");
    obj.dataLink14:setField("SabV");
    obj.dataLink14:setName("dataLink14");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout7);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setWidth(50);
    obj.edit11:setFontSize(14.0);
    obj.edit11:setField("CarV");
    obj.edit11:setLeft(155);
    obj.edit11:setTop(229);
    lfm_setPropAsString(obj.edit11, "fontStyle", "bold");
    obj.edit11:setType("number");
    obj.edit11:setMin(0);
    obj.edit11:setMax(99);
    obj.edit11:setName("edit11");
    obj.edit11:setFontColor("#cdcdcd");
    obj.edit11:setFontFamily("Cambria");
    obj.edit11:setTransparent(true);

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.layout7);
    obj.dataLink15:setDefaultValue("0");
    obj.dataLink15:setField("CarV");
    obj.dataLink15:setName("dataLink15");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout7);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setWidth(50);
    obj.edit12:setFontSize(14.0);
    obj.edit12:setField("ForA");
    obj.edit12:setLeft(264);
    obj.edit12:setTop(29);
    lfm_setPropAsString(obj.edit12, "fontStyle", "bold");
    obj.edit12:setType("number");
    obj.edit12:setMin(0);
    obj.edit12:setMax(99);
    obj.edit12:setName("edit12");
    obj.edit12:setFontColor("#cdcdcd");
    obj.edit12:setFontFamily("Cambria");
    obj.edit12:setTransparent(true);

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.layout7);
    obj.dataLink16:setDefaultValue("0");
    obj.dataLink16:setField("ForA");
    obj.dataLink16:setName("dataLink16");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout7);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setWidth(50);
    obj.edit13:setFontSize(14.0);
    obj.edit13:setField("DesA");
    obj.edit13:setLeft(264);
    obj.edit13:setTop(69);
    lfm_setPropAsString(obj.edit13, "fontStyle", "bold");
    obj.edit13:setType("number");
    obj.edit13:setMin(0);
    obj.edit13:setMax(99);
    obj.edit13:setName("edit13");
    obj.edit13:setFontColor("#cdcdcd");
    obj.edit13:setFontFamily("Cambria");
    obj.edit13:setTransparent(true);

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.layout7);
    obj.dataLink17:setDefaultValue("0");
    obj.dataLink17:setField("DesA");
    obj.dataLink17:setName("dataLink17");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout7);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setWidth(50);
    obj.edit14:setFontSize(14.0);
    obj.edit14:setField("ConA");
    obj.edit14:setLeft(264);
    obj.edit14:setTop(109);
    lfm_setPropAsString(obj.edit14, "fontStyle", "bold");
    obj.edit14:setType("number");
    obj.edit14:setMin(0);
    obj.edit14:setMax(99);
    obj.edit14:setName("edit14");
    obj.edit14:setFontColor("#cdcdcd");
    obj.edit14:setFontFamily("Cambria");
    obj.edit14:setTransparent(true);

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.layout7);
    obj.dataLink18:setDefaultValue("0");
    obj.dataLink18:setField("ConA");
    obj.dataLink18:setName("dataLink18");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout7);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setWidth(50);
    obj.edit15:setFontSize(14.0);
    obj.edit15:setField("IntA");
    obj.edit15:setLeft(264);
    obj.edit15:setTop(149);
    lfm_setPropAsString(obj.edit15, "fontStyle", "bold");
    obj.edit15:setType("number");
    obj.edit15:setMin(0);
    obj.edit15:setMax(99);
    obj.edit15:setName("edit15");
    obj.edit15:setFontColor("#cdcdcd");
    obj.edit15:setFontFamily("Cambria");
    obj.edit15:setTransparent(true);

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.layout7);
    obj.dataLink19:setDefaultValue("0");
    obj.dataLink19:setField("IntA");
    obj.dataLink19:setName("dataLink19");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout7);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setWidth(50);
    obj.edit16:setFontSize(14.0);
    obj.edit16:setField("SabA");
    obj.edit16:setLeft(264);
    obj.edit16:setTop(189);
    lfm_setPropAsString(obj.edit16, "fontStyle", "bold");
    obj.edit16:setType("number");
    obj.edit16:setMin(0);
    obj.edit16:setMax(99);
    obj.edit16:setName("edit16");
    obj.edit16:setFontColor("#cdcdcd");
    obj.edit16:setFontFamily("Cambria");
    obj.edit16:setTransparent(true);

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.layout7);
    obj.dataLink20:setDefaultValue("0");
    obj.dataLink20:setField("SabA");
    obj.dataLink20:setName("dataLink20");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout7);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setWidth(50);
    obj.edit17:setFontSize(14.0);
    obj.edit17:setField("CarA");
    obj.edit17:setLeft(264);
    obj.edit17:setTop(229);
    lfm_setPropAsString(obj.edit17, "fontStyle", "bold");
    obj.edit17:setType("number");
    obj.edit17:setMin(0);
    obj.edit17:setMax(99);
    obj.edit17:setName("edit17");
    obj.edit17:setFontColor("#cdcdcd");
    obj.edit17:setFontFamily("Cambria");
    obj.edit17:setTransparent(true);

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.layout7);
    obj.dataLink21:setDefaultValue("0");
    obj.dataLink21:setField("CarA");
    obj.dataLink21:setName("dataLink21");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout7);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setWidth(50);
    obj.edit18:setFontSize(14.0);
    obj.edit18:setField("ForB");
    obj.edit18:setLeft(373);
    obj.edit18:setTop(29);
    lfm_setPropAsString(obj.edit18, "fontStyle", "bold");
    obj.edit18:setType("number");
    obj.edit18:setMin(0);
    obj.edit18:setMax(99);
    obj.edit18:setName("edit18");
    obj.edit18:setFontColor("#cdcdcd");
    obj.edit18:setFontFamily("Cambria");
    obj.edit18:setTransparent(true);

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.layout7);
    obj.dataLink22:setDefaultValue("0");
    obj.dataLink22:setField("ForB");
    obj.dataLink22:setName("dataLink22");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout7);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setWidth(50);
    obj.edit19:setFontSize(14.0);
    obj.edit19:setField("DesB");
    obj.edit19:setLeft(373);
    obj.edit19:setTop(69);
    lfm_setPropAsString(obj.edit19, "fontStyle", "bold");
    obj.edit19:setType("number");
    obj.edit19:setMin(0);
    obj.edit19:setMax(99);
    obj.edit19:setName("edit19");
    obj.edit19:setFontColor("#cdcdcd");
    obj.edit19:setFontFamily("Cambria");
    obj.edit19:setTransparent(true);

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.layout7);
    obj.dataLink23:setDefaultValue("0");
    obj.dataLink23:setField("DesB");
    obj.dataLink23:setName("dataLink23");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout7);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setWidth(50);
    obj.edit20:setFontSize(14.0);
    obj.edit20:setField("ConB");
    obj.edit20:setLeft(373);
    obj.edit20:setTop(109);
    lfm_setPropAsString(obj.edit20, "fontStyle", "bold");
    obj.edit20:setType("number");
    obj.edit20:setMin(0);
    obj.edit20:setMax(99);
    obj.edit20:setName("edit20");
    obj.edit20:setFontColor("#cdcdcd");
    obj.edit20:setFontFamily("Cambria");
    obj.edit20:setTransparent(true);

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.layout7);
    obj.dataLink24:setDefaultValue("0");
    obj.dataLink24:setField("ConB");
    obj.dataLink24:setName("dataLink24");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout7);
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setWidth(50);
    obj.edit21:setFontSize(14.0);
    obj.edit21:setField("IntB");
    obj.edit21:setLeft(373);
    obj.edit21:setTop(149);
    lfm_setPropAsString(obj.edit21, "fontStyle", "bold");
    obj.edit21:setType("number");
    obj.edit21:setMin(0);
    obj.edit21:setMax(99);
    obj.edit21:setName("edit21");
    obj.edit21:setFontColor("#cdcdcd");
    obj.edit21:setFontFamily("Cambria");
    obj.edit21:setTransparent(true);

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.layout7);
    obj.dataLink25:setDefaultValue("0");
    obj.dataLink25:setField("IntB");
    obj.dataLink25:setName("dataLink25");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout7);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setWidth(50);
    obj.edit22:setFontSize(14.0);
    obj.edit22:setField("SabB");
    obj.edit22:setLeft(373);
    obj.edit22:setTop(189);
    lfm_setPropAsString(obj.edit22, "fontStyle", "bold");
    obj.edit22:setType("number");
    obj.edit22:setMin(0);
    obj.edit22:setMax(99);
    obj.edit22:setName("edit22");
    obj.edit22:setFontColor("#cdcdcd");
    obj.edit22:setFontFamily("Cambria");
    obj.edit22:setTransparent(true);

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.layout7);
    obj.dataLink26:setDefaultValue("0");
    obj.dataLink26:setField("SabB");
    obj.dataLink26:setName("dataLink26");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout7);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setWidth(50);
    obj.edit23:setFontSize(14.0);
    obj.edit23:setField("CarB");
    obj.edit23:setLeft(373);
    obj.edit23:setTop(229);
    lfm_setPropAsString(obj.edit23, "fontStyle", "bold");
    obj.edit23:setType("number");
    obj.edit23:setMin(0);
    obj.edit23:setMax(99);
    obj.edit23:setName("edit23");
    obj.edit23:setFontColor("#cdcdcd");
    obj.edit23:setFontFamily("Cambria");
    obj.edit23:setTransparent(true);

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.layout7);
    obj.dataLink27:setDefaultValue("0");
    obj.dataLink27:setField("CarB");
    obj.dataLink27:setName("dataLink27");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout7);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setWidth(50);
    obj.edit24:setFontSize(14.0);
    obj.edit24:setFontColor("#000000");
    obj.edit24:setField("ForM");
    obj.edit24:setLeft(484);
    obj.edit24:setTop(29);
    lfm_setPropAsString(obj.edit24, "fontStyle", "bold");
    obj.edit24:setType("number");
    obj.edit24:setMin(0);
    obj.edit24:setMax(99);
    obj.edit24:setName("edit24");
    obj.edit24:setFontFamily("Cambria");
    obj.edit24:setTransparent(true);

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.layout7);
    obj.dataLink28:setDefaultValue("0");
    obj.dataLink28:setField("ForM");
    obj.dataLink28:setName("dataLink28");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout7);
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setWidth(50);
    obj.edit25:setFontSize(14.0);
    obj.edit25:setFontColor("#000000");
    obj.edit25:setField("DesM");
    obj.edit25:setLeft(484);
    obj.edit25:setTop(69);
    lfm_setPropAsString(obj.edit25, "fontStyle", "bold");
    obj.edit25:setType("number");
    obj.edit25:setMin(0);
    obj.edit25:setMax(99);
    obj.edit25:setName("edit25");
    obj.edit25:setFontFamily("Cambria");
    obj.edit25:setTransparent(true);

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.layout7);
    obj.dataLink29:setDefaultValue("0");
    obj.dataLink29:setField("DesM");
    obj.dataLink29:setName("dataLink29");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout7);
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setWidth(50);
    obj.edit26:setFontSize(14.0);
    obj.edit26:setFontColor("#000000");
    obj.edit26:setField("ConM");
    obj.edit26:setLeft(484);
    obj.edit26:setTop(109);
    lfm_setPropAsString(obj.edit26, "fontStyle", "bold");
    obj.edit26:setType("number");
    obj.edit26:setMin(0);
    obj.edit26:setMax(99);
    obj.edit26:setName("edit26");
    obj.edit26:setFontFamily("Cambria");
    obj.edit26:setTransparent(true);

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.layout7);
    obj.dataLink30:setDefaultValue("0");
    obj.dataLink30:setField("ConM");
    obj.dataLink30:setName("dataLink30");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout7);
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setWidth(50);
    obj.edit27:setFontSize(14.0);
    obj.edit27:setFontColor("#000000");
    obj.edit27:setField("IntM");
    obj.edit27:setLeft(484);
    obj.edit27:setTop(149);
    lfm_setPropAsString(obj.edit27, "fontStyle", "bold");
    obj.edit27:setType("number");
    obj.edit27:setMin(0);
    obj.edit27:setMax(99);
    obj.edit27:setName("edit27");
    obj.edit27:setFontFamily("Cambria");
    obj.edit27:setTransparent(true);

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.layout7);
    obj.dataLink31:setDefaultValue("0");
    obj.dataLink31:setField("IntM");
    obj.dataLink31:setName("dataLink31");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout7);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setWidth(50);
    obj.edit28:setFontSize(14.0);
    obj.edit28:setFontColor("#000000");
    obj.edit28:setField("SabM");
    obj.edit28:setLeft(484);
    obj.edit28:setTop(189);
    lfm_setPropAsString(obj.edit28, "fontStyle", "bold");
    obj.edit28:setType("number");
    obj.edit28:setMin(0);
    obj.edit28:setMax(99);
    obj.edit28:setName("edit28");
    obj.edit28:setFontFamily("Cambria");
    obj.edit28:setTransparent(true);

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.layout7);
    obj.dataLink32:setDefaultValue("0");
    obj.dataLink32:setField("SabM");
    obj.dataLink32:setName("dataLink32");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout7);
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setWidth(50);
    obj.edit29:setFontSize(14.0);
    obj.edit29:setFontColor("#000000");
    obj.edit29:setField("CarM");
    obj.edit29:setLeft(484);
    obj.edit29:setTop(229);
    lfm_setPropAsString(obj.edit29, "fontStyle", "bold");
    obj.edit29:setType("number");
    obj.edit29:setMin(0);
    obj.edit29:setMax(99);
    obj.edit29:setName("edit29");
    obj.edit29:setFontFamily("Cambria");
    obj.edit29:setTransparent(true);

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.layout7);
    obj.dataLink33:setDefaultValue("0");
    obj.dataLink33:setField("CarM");
    obj.dataLink33:setName("dataLink33");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.flowPart2);
    obj.layout8:setAlign("top");
    obj.layout8:setHeight(40);
    obj.layout8:setMargins({top=10});
    obj.layout8:setName("layout8");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.layout8);
    obj.flowLayout4:setAlign("top");
    obj.flowLayout4:setHorzAlign("center");
    obj.flowLayout4:setHeight(40);
    obj.flowLayout4:setName("flowLayout4");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout4);
    obj.flowPart4:setWidth(160);
    obj.flowPart4:setName("flowPart4");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.flowPart2);
    obj.layout9:setAlign("top");
    obj.layout9:setHeight(30);
    obj.layout9:setMargins({top=40, left=20, bottom=15});
    obj.layout9:setName("layout9");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout9);
    obj.label23:setAlign("left");
    obj.label23:setText("P E R Í C I A");
    obj.label23:setWidth(130);
    obj.label23:setFontColor("#ffffff");
    obj.label23:setFontSize(20);
    obj.label23:setFontFamily("Constantia");
    obj.label23:setName("label23");
    lfm_setPropAsString(obj.label23, "fontStyle", "bold");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.layout9);
    obj.horzLine3:setAlign("client");
    obj.horzLine3:setMargins({right=9, top=14});
    obj.horzLine3:setStrokeColor("#424242");
    obj.horzLine3:setName("horzLine3");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.flowPart2);
    obj.layout10:setAlign("top");
    obj.layout10:setHeight(1500);
    obj.layout10:setName("layout10");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.layout10);
    obj.scrollBox2:setWidth(640);
    obj.scrollBox2:setHeight(820);
    obj.scrollBox2:setLeft(10);
    obj.scrollBox2:setTop(0);
    obj.scrollBox2:setName("scrollBox2");

    obj.rectangle34 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.scrollBox2);
    obj.rectangle34:setWidth(600);
    obj.rectangle34:setHeight(20);
    obj.rectangle34:setColor("#4F4F4F");
    obj.rectangle34:setXradius(5);
    obj.rectangle34:setYradius(5);
    obj.rectangle34:setCornerType("round");
    obj.rectangle34:setName("rectangle34");

    obj.rectangle35 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.scrollBox2);
    obj.rectangle35:setWidth(600);
    obj.rectangle35:setTop(40);
    obj.rectangle35:setHeight(20);
    obj.rectangle35:setColor("#4F4F4F");
    obj.rectangle35:setXradius(5);
    obj.rectangle35:setYradius(5);
    obj.rectangle35:setCornerType("round");
    obj.rectangle35:setName("rectangle35");

    obj.rectangle36 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.scrollBox2);
    obj.rectangle36:setWidth(600);
    obj.rectangle36:setTop(80);
    obj.rectangle36:setHeight(20);
    obj.rectangle36:setColor("#4F4F4F");
    obj.rectangle36:setXradius(5);
    obj.rectangle36:setYradius(5);
    obj.rectangle36:setCornerType("round");
    obj.rectangle36:setName("rectangle36");

    obj.rectangle37 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.scrollBox2);
    obj.rectangle37:setWidth(600);
    obj.rectangle37:setTop(120);
    obj.rectangle37:setHeight(20);
    obj.rectangle37:setColor("#4F4F4F");
    obj.rectangle37:setXradius(5);
    obj.rectangle37:setYradius(5);
    obj.rectangle37:setCornerType("round");
    obj.rectangle37:setName("rectangle37");

    obj.rectangle38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.scrollBox2);
    obj.rectangle38:setWidth(600);
    obj.rectangle38:setTop(160);
    obj.rectangle38:setHeight(20);
    obj.rectangle38:setColor("#4F4F4F");
    obj.rectangle38:setXradius(5);
    obj.rectangle38:setYradius(5);
    obj.rectangle38:setCornerType("round");
    obj.rectangle38:setName("rectangle38");

    obj.rectangle39 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.scrollBox2);
    obj.rectangle39:setWidth(600);
    obj.rectangle39:setTop(200);
    obj.rectangle39:setHeight(20);
    obj.rectangle39:setColor("#4F4F4F");
    obj.rectangle39:setXradius(5);
    obj.rectangle39:setYradius(5);
    obj.rectangle39:setCornerType("round");
    obj.rectangle39:setName("rectangle39");

    obj.rectangle40 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.scrollBox2);
    obj.rectangle40:setWidth(600);
    obj.rectangle40:setTop(240);
    obj.rectangle40:setHeight(20);
    obj.rectangle40:setColor("#4F4F4F");
    obj.rectangle40:setXradius(5);
    obj.rectangle40:setYradius(5);
    obj.rectangle40:setCornerType("round");
    obj.rectangle40:setName("rectangle40");

    obj.rectangle41 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.scrollBox2);
    obj.rectangle41:setWidth(600);
    obj.rectangle41:setTop(280);
    obj.rectangle41:setHeight(20);
    obj.rectangle41:setColor("#4F4F4F");
    obj.rectangle41:setXradius(5);
    obj.rectangle41:setYradius(5);
    obj.rectangle41:setCornerType("round");
    obj.rectangle41:setName("rectangle41");

    obj.rectangle42 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.scrollBox2);
    obj.rectangle42:setWidth(600);
    obj.rectangle42:setTop(320);
    obj.rectangle42:setHeight(20);
    obj.rectangle42:setColor("#4F4F4F");
    obj.rectangle42:setXradius(5);
    obj.rectangle42:setYradius(5);
    obj.rectangle42:setCornerType("round");
    obj.rectangle42:setName("rectangle42");

    obj.rectangle43 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.scrollBox2);
    obj.rectangle43:setWidth(600);
    obj.rectangle43:setTop(360);
    obj.rectangle43:setHeight(20);
    obj.rectangle43:setColor("#4F4F4F");
    obj.rectangle43:setXradius(5);
    obj.rectangle43:setYradius(5);
    obj.rectangle43:setCornerType("round");
    obj.rectangle43:setName("rectangle43");

    obj.rectangle44 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.scrollBox2);
    obj.rectangle44:setWidth(600);
    obj.rectangle44:setTop(400);
    obj.rectangle44:setHeight(20);
    obj.rectangle44:setColor("#4F4F4F");
    obj.rectangle44:setXradius(5);
    obj.rectangle44:setYradius(5);
    obj.rectangle44:setCornerType("round");
    obj.rectangle44:setName("rectangle44");

    obj.rectangle45 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.scrollBox2);
    obj.rectangle45:setWidth(600);
    obj.rectangle45:setTop(440);
    obj.rectangle45:setHeight(20);
    obj.rectangle45:setColor("#4F4F4F");
    obj.rectangle45:setXradius(5);
    obj.rectangle45:setYradius(5);
    obj.rectangle45:setCornerType("round");
    obj.rectangle45:setName("rectangle45");

    obj.rectangle46 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.scrollBox2);
    obj.rectangle46:setWidth(600);
    obj.rectangle46:setTop(480);
    obj.rectangle46:setHeight(20);
    obj.rectangle46:setColor("#4F4F4F");
    obj.rectangle46:setXradius(5);
    obj.rectangle46:setYradius(5);
    obj.rectangle46:setCornerType("round");
    obj.rectangle46:setName("rectangle46");

    obj.rectangle47 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.scrollBox2);
    obj.rectangle47:setWidth(600);
    obj.rectangle47:setTop(520);
    obj.rectangle47:setHeight(20);
    obj.rectangle47:setColor("#4F4F4F");
    obj.rectangle47:setXradius(5);
    obj.rectangle47:setYradius(5);
    obj.rectangle47:setCornerType("round");
    obj.rectangle47:setName("rectangle47");

    obj.rectangle48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.scrollBox2);
    obj.rectangle48:setWidth(600);
    obj.rectangle48:setTop(560);
    obj.rectangle48:setHeight(20);
    obj.rectangle48:setColor("#4F4F4F");
    obj.rectangle48:setXradius(5);
    obj.rectangle48:setYradius(5);
    obj.rectangle48:setCornerType("round");
    obj.rectangle48:setName("rectangle48");

    obj.rectangle49 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.scrollBox2);
    obj.rectangle49:setWidth(600);
    obj.rectangle49:setTop(600);
    obj.rectangle49:setHeight(20);
    obj.rectangle49:setColor("#4F4F4F");
    obj.rectangle49:setXradius(5);
    obj.rectangle49:setYradius(5);
    obj.rectangle49:setCornerType("round");
    obj.rectangle49:setName("rectangle49");

    obj.rectangle50 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.scrollBox2);
    obj.rectangle50:setWidth(600);
    obj.rectangle50:setTop(640);
    obj.rectangle50:setHeight(20);
    obj.rectangle50:setColor("#4F4F4F");
    obj.rectangle50:setXradius(5);
    obj.rectangle50:setYradius(5);
    obj.rectangle50:setCornerType("round");
    obj.rectangle50:setName("rectangle50");

    obj.rectangle51 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.scrollBox2);
    obj.rectangle51:setWidth(600);
    obj.rectangle51:setTop(680);
    obj.rectangle51:setHeight(20);
    obj.rectangle51:setColor("#4F4F4F");
    obj.rectangle51:setXradius(5);
    obj.rectangle51:setYradius(5);
    obj.rectangle51:setCornerType("round");
    obj.rectangle51:setName("rectangle51");

    obj.rectangle52 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.scrollBox2);
    obj.rectangle52:setWidth(600);
    obj.rectangle52:setTop(720);
    obj.rectangle52:setHeight(20);
    obj.rectangle52:setColor("#4F4F4F");
    obj.rectangle52:setXradius(5);
    obj.rectangle52:setYradius(5);
    obj.rectangle52:setCornerType("round");
    obj.rectangle52:setName("rectangle52");

    obj.rectangle53 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.scrollBox2);
    obj.rectangle53:setWidth(600);
    obj.rectangle53:setTop(760);
    obj.rectangle53:setHeight(20);
    obj.rectangle53:setColor("#4F4F4F");
    obj.rectangle53:setXradius(5);
    obj.rectangle53:setYradius(5);
    obj.rectangle53:setCornerType("round");
    obj.rectangle53:setName("rectangle53");

    obj.rectangle54 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.scrollBox2);
    obj.rectangle54:setWidth(600);
    obj.rectangle54:setTop(800);
    obj.rectangle54:setHeight(20);
    obj.rectangle54:setColor("#4F4F4F");
    obj.rectangle54:setXradius(5);
    obj.rectangle54:setYradius(5);
    obj.rectangle54:setCornerType("round");
    obj.rectangle54:setName("rectangle54");

    obj.rectangle55 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.scrollBox2);
    obj.rectangle55:setWidth(600);
    obj.rectangle55:setTop(840);
    obj.rectangle55:setHeight(20);
    obj.rectangle55:setColor("#4F4F4F");
    obj.rectangle55:setXradius(5);
    obj.rectangle55:setYradius(5);
    obj.rectangle55:setCornerType("round");
    obj.rectangle55:setName("rectangle55");

    obj.rectangle56 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.scrollBox2);
    obj.rectangle56:setWidth(600);
    obj.rectangle56:setTop(880);
    obj.rectangle56:setHeight(20);
    obj.rectangle56:setColor("#4F4F4F");
    obj.rectangle56:setXradius(5);
    obj.rectangle56:setYradius(5);
    obj.rectangle56:setCornerType("round");
    obj.rectangle56:setName("rectangle56");

    obj.rectangle57 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.scrollBox2);
    obj.rectangle57:setWidth(600);
    obj.rectangle57:setTop(920);
    obj.rectangle57:setHeight(20);
    obj.rectangle57:setColor("#4F4F4F");
    obj.rectangle57:setXradius(5);
    obj.rectangle57:setYradius(5);
    obj.rectangle57:setCornerType("round");
    obj.rectangle57:setName("rectangle57");

    obj.rectangle58 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.scrollBox2);
    obj.rectangle58:setWidth(600);
    obj.rectangle58:setTop(960);
    obj.rectangle58:setHeight(20);
    obj.rectangle58:setColor("#4F4F4F");
    obj.rectangle58:setXradius(5);
    obj.rectangle58:setYradius(5);
    obj.rectangle58:setCornerType("round");
    obj.rectangle58:setName("rectangle58");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.scrollBox2);
    obj.label24:setFontSize(20.0);
    obj.label24:setWidth(400);
    obj.label24:setFontColor("#ffffff");
    obj.label24:setText("Dano Curto alcance");
    obj.label24:setLeft(0);
    obj.label24:setTop(0);
    obj.label24:setName("label24");
    lfm_setPropAsString(obj.label24, "fontStyle", "bold");
    obj.label24:setFontFamily("Cambria");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.scrollBox2);
    obj.label25:setFontSize(20.0);
    obj.label25:setWidth(400);
    obj.label25:setFontColor("#ffffff");
    obj.label25:setText("Dano Longo alcance");
    obj.label25:setLeft(0);
    obj.label25:setTop(20);
    obj.label25:setName("label25");
    lfm_setPropAsString(obj.label25, "fontStyle", "bold");
    obj.label25:setFontFamily("Cambria");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.scrollBox2);
    obj.label26:setFontSize(20.0);
    obj.label26:setWidth(400);
    obj.label26:setFontColor("#ffffff");
    obj.label26:setText("Quebrar Objetos");
    obj.label26:setLeft(0);
    obj.label26:setTop(40);
    obj.label26:setName("label26");
    lfm_setPropAsString(obj.label26, "fontStyle", "bold");
    obj.label26:setFontFamily("Cambria");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.scrollBox2);
    obj.label27:setFontSize(20.0);
    obj.label27:setWidth(400);
    obj.label27:setFontColor("#ffffff");
    obj.label27:setText("Levantar Peso");
    obj.label27:setLeft(0);
    obj.label27:setTop(60);
    obj.label27:setName("label27");
    lfm_setPropAsString(obj.label27, "fontStyle", "bold");
    obj.label27:setFontFamily("Cambria");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.scrollBox2);
    obj.label28:setFontSize(20.0);
    obj.label28:setWidth(400);
    obj.label28:setFontColor("#ffffff");
    obj.label28:setText("Empurrar obstaculo");
    obj.label28:setLeft(0);
    obj.label28:setTop(80);
    obj.label28:setName("label28");
    lfm_setPropAsString(obj.label28, "fontStyle", "bold");
    obj.label28:setFontFamily("Cambria");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.scrollBox2);
    obj.label29:setFontSize(20.0);
    obj.label29:setWidth(400);
    obj.label29:setFontColor("#ffffff");
    obj.label29:setText("Braco de Ferro");
    obj.label29:setLeft(0);
    obj.label29:setTop(100);
    obj.label29:setName("label29");
    lfm_setPropAsString(obj.label29, "fontStyle", "bold");
    obj.label29:setFontFamily("Cambria");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.scrollBox2);
    obj.label30:setFontSize(20.0);
    obj.label30:setWidth(400);
    obj.label30:setFontColor("#ffffff");
    obj.label30:setText("Escalar ");
    obj.label30:setLeft(0);
    obj.label30:setTop(120);
    obj.label30:setName("label30");
    lfm_setPropAsString(obj.label30, "fontStyle", "bold");
    obj.label30:setFontFamily("Cambria");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.scrollBox2);
    obj.label31:setFontSize(20.0);
    obj.label31:setWidth(400);
    obj.label31:setFontColor("#ffffff");
    obj.label31:setText("Iniciativa");
    obj.label31:setLeft(0);
    obj.label31:setTop(140);
    obj.label31:setName("label31");
    lfm_setPropAsString(obj.label31, "fontStyle", "bold");
    obj.label31:setFontFamily("Cambria");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.scrollBox2);
    obj.label32:setFontSize(20.0);
    obj.label32:setWidth(400);
    obj.label32:setFontColor("#ffffff");
    obj.label32:setText("Esquivar");
    obj.label32:setLeft(0);
    obj.label32:setTop(160);
    obj.label32:setName("label32");
    lfm_setPropAsString(obj.label32, "fontStyle", "bold");
    obj.label32:setFontFamily("Cambria");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.scrollBox2);
    obj.label33:setFontSize(20.0);
    obj.label33:setWidth(400);
    obj.label33:setFontColor("#ffffff");
    obj.label33:setText("Desarmar Armadilha");
    obj.label33:setLeft(0);
    obj.label33:setTop(180);
    obj.label33:setName("label33");
    lfm_setPropAsString(obj.label33, "fontStyle", "bold");
    obj.label33:setFontFamily("Cambria");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.scrollBox2);
    obj.label34:setFontSize(20.0);
    obj.label34:setWidth(400);
    obj.label34:setFontColor("#ffffff");
    obj.label34:setText("Acrobacias");
    obj.label34:setLeft(0);
    obj.label34:setTop(200);
    obj.label34:setName("label34");
    lfm_setPropAsString(obj.label34, "fontStyle", "bold");
    obj.label34:setFontFamily("Cambria");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.scrollBox2);
    obj.label35:setFontSize(20.0);
    obj.label35:setWidth(400);
    obj.label35:setFontColor("#ffffff");
    obj.label35:setText("Roubo");
    obj.label35:setLeft(0);
    obj.label35:setTop(220);
    obj.label35:setName("label35");
    lfm_setPropAsString(obj.label35, "fontStyle", "bold");
    obj.label35:setFontFamily("Cambria");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.scrollBox2);
    obj.label36:setFontSize(20.0);
    obj.label36:setWidth(400);
    obj.label36:setFontColor("#ffffff");
    obj.label36:setText("Arremessar Objetos");
    obj.label36:setLeft(0);
    obj.label36:setTop(240);
    obj.label36:setName("label36");
    lfm_setPropAsString(obj.label36, "fontStyle", "bold");
    obj.label36:setFontFamily("Cambria");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.scrollBox2);
    obj.label37:setFontSize(18.0);
    obj.label37:setWidth(400);
    obj.label37:setFontColor("#ffffff");
    obj.label37:setText("Furtividade");
    obj.label37:setLeft(0);
    obj.label37:setTop(260);
    obj.label37:setName("label37");
    lfm_setPropAsString(obj.label37, "fontStyle", "bold");
    obj.label37:setFontFamily("Cambria");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.scrollBox2);
    obj.label38:setFontSize(20.0);
    obj.label38:setWidth(400);
    obj.label38:setFontColor("#ffffff");
    obj.label38:setText("Montaria/Direcao");
    obj.label38:setLeft(0);
    obj.label38:setTop(280);
    obj.label38:setName("label38");
    lfm_setPropAsString(obj.label38, "fontStyle", "bold");
    obj.label38:setFontFamily("Cambria");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.scrollBox2);
    obj.label39:setFontSize(20.0);
    obj.label39:setWidth(400);
    obj.label39:setFontColor("#ffffff");
    obj.label39:setText("Acerto a Distância");
    obj.label39:setLeft(0);
    obj.label39:setTop(300);
    obj.label39:setName("label39");
    lfm_setPropAsString(obj.label39, "fontStyle", "bold");
    obj.label39:setFontFamily("Cambria");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.scrollBox2);
    obj.label40:setFontSize(20.0);
    obj.label40:setWidth(400);
    obj.label40:setFontColor("#ffffff");
    obj.label40:setText("Acerto Curto alcance");
    obj.label40:setLeft(0);
    obj.label40:setTop(320);
    obj.label40:setName("label40");
    lfm_setPropAsString(obj.label40, "fontStyle", "bold");
    obj.label40:setFontFamily("Cambria");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.scrollBox2);
    obj.label41:setFontSize(20.0);
    obj.label41:setWidth(400);
    obj.label41:setFontColor("#ffffff");
    obj.label41:setText("Correr");
    obj.label41:setLeft(0);
    obj.label41:setTop(340);
    obj.label41:setName("label41");
    lfm_setPropAsString(obj.label41, "fontStyle", "bold");
    obj.label41:setFontFamily("Cambria");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.scrollBox2);
    obj.label42:setFontSize(20.0);
    obj.label42:setWidth(400);
    obj.label42:setFontColor("#ffffff");
    obj.label42:setText("Resistir a veneno");
    obj.label42:setLeft(0);
    obj.label42:setTop(360);
    obj.label42:setName("label42");
    lfm_setPropAsString(obj.label42, "fontStyle", "bold");
    obj.label42:setFontFamily("Cambria");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.scrollBox2);
    obj.label43:setFontSize(18.0);
    obj.label43:setWidth(400);
    obj.label43:setFontColor("#ffffff");
    obj.label43:setText("Resistencia a cansaco");
    obj.label43:setLeft(0);
    obj.label43:setTop(380);
    obj.label43:setName("label43");
    lfm_setPropAsString(obj.label43, "fontStyle", "bold");
    obj.label43:setFontFamily("Cambria");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.scrollBox2);
    obj.label44:setFontSize(20.0);
    obj.label44:setWidth(400);
    obj.label44:setFontColor("#ffffff");
    obj.label44:setText("Segurar Folego");
    obj.label44:setLeft(0);
    obj.label44:setTop(400);
    obj.label44:setName("label44");
    lfm_setPropAsString(obj.label44, "fontStyle", "bold");
    obj.label44:setFontFamily("Cambria");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.scrollBox2);
    obj.label45:setFontSize(20.0);
    obj.label45:setWidth(400);
    obj.label45:setFontColor("#ffffff");
    obj.label45:setText("Suporte Frio/Calor");
    obj.label45:setLeft(0);
    obj.label45:setTop(420);
    obj.label45:setName("label45");
    lfm_setPropAsString(obj.label45, "fontStyle", "bold");
    obj.label45:setFontFamily("Cambria");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.scrollBox2);
    obj.label46:setFontSize(20.0);
    obj.label46:setWidth(400);
    obj.label46:setFontColor("#ffffff");
    obj.label46:setText("Defender");
    obj.label46:setLeft(0);
    obj.label46:setTop(440);
    obj.label46:setName("label46");
    lfm_setPropAsString(obj.label46, "fontStyle", "bold");
    obj.label46:setFontFamily("Cambria");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.scrollBox2);
    obj.label47:setFontSize(20.0);
    obj.label47:setWidth(400);
    obj.label47:setFontColor("#ffffff");
    obj.label47:setText("Profissao");
    obj.label47:setLeft(0);
    obj.label47:setTop(460);
    obj.label47:setName("label47");
    lfm_setPropAsString(obj.label47, "fontStyle", "bold");
    obj.label47:setFontFamily("Cambria");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.scrollBox2);
    obj.label48:setFontSize(20.0);
    obj.label48:setWidth(400);
    obj.label48:setFontColor("#ffffff");
    obj.label48:setText("Decifrar Codigo");
    obj.label48:setLeft(0);
    obj.label48:setTop(480);
    obj.label48:setName("label48");
    lfm_setPropAsString(obj.label48, "fontStyle", "bold");
    obj.label48:setFontFamily("Cambria");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.scrollBox2);
    obj.label49:setFontSize(20.0);
    obj.label49:setWidth(400);
    obj.label49:setFontColor("#ffffff");
    obj.label49:setText("Identificar Criatura");
    obj.label49:setLeft(0);
    obj.label49:setTop(500);
    obj.label49:setName("label49");
    lfm_setPropAsString(obj.label49, "fontStyle", "bold");
    obj.label49:setFontFamily("Cambria");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.scrollBox2);
    obj.label50:setFontSize(20.0);
    obj.label50:setWidth(400);
    obj.label50:setFontColor("#ffffff");
    obj.label50:setText("Ler Manuscrito");
    obj.label50:setLeft(0);
    obj.label50:setTop(520);
    obj.label50:setName("label50");
    lfm_setPropAsString(obj.label50, "fontStyle", "bold");
    obj.label50:setFontFamily("Cambria");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.scrollBox2);
    obj.label51:setFontSize(20.0);
    obj.label51:setWidth(400);
    obj.label51:setFontColor("#ffffff");
    obj.label51:setText("Preparar Estrategia");
    obj.label51:setLeft(0);
    obj.label51:setTop(540);
    obj.label51:setName("label51");
    lfm_setPropAsString(obj.label51, "fontStyle", "bold");
    obj.label51:setFontFamily("Cambria");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.scrollBox2);
    obj.label52:setFontSize(20.0);
    obj.label52:setWidth(400);
    obj.label52:setFontColor("#ffffff");
    obj.label52:setText("Resistencia Mental");
    obj.label52:setLeft(0);
    obj.label52:setTop(560);
    obj.label52:setName("label52");
    lfm_setPropAsString(obj.label52, "fontStyle", "bold");
    obj.label52:setFontFamily("Cambria");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.scrollBox2);
    obj.label53:setFontSize(20.0);
    obj.label53:setWidth(400);
    obj.label53:setFontColor("#ffffff");
    obj.label53:setText("Historia");
    obj.label53:setLeft(0);
    obj.label53:setTop(580);
    obj.label53:setName("label53");
    lfm_setPropAsString(obj.label53, "fontStyle", "bold");
    obj.label53:setFontFamily("Cambria");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.scrollBox2);
    obj.label54:setFontSize(20.0);
    obj.label54:setWidth(400);
    obj.label54:setFontColor("#ffffff");
    obj.label54:setText("Investigacao");
    obj.label54:setLeft(0);
    obj.label54:setTop(600);
    obj.label54:setName("label54");
    lfm_setPropAsString(obj.label54, "fontStyle", "bold");
    obj.label54:setFontFamily("Cambria");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.scrollBox2);
    obj.label55:setFontSize(20.0);
    obj.label55:setWidth(400);
    obj.label55:setFontColor("#ffffff");
    obj.label55:setText("Perceber Mentira");
    obj.label55:setLeft(0);
    obj.label55:setTop(620);
    obj.label55:setName("label55");
    lfm_setPropAsString(obj.label55, "fontStyle", "bold");
    obj.label55:setFontFamily("Cambria");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.scrollBox2);
    obj.label56:setFontSize(20.0);
    obj.label56:setWidth(400);
    obj.label56:setFontColor("#ffffff");
    obj.label56:setText("Percepcao");
    obj.label56:setLeft(0);
    obj.label56:setTop(640);
    obj.label56:setName("label56");
    lfm_setPropAsString(obj.label56, "fontStyle", "bold");
    obj.label56:setFontFamily("Cambria");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.scrollBox2);
    obj.label57:setFontSize(20.0);
    obj.label57:setWidth(400);
    obj.label57:setFontColor("#ffffff");
    obj.label57:setText("Sentir Perigo");
    obj.label57:setLeft(0);
    obj.label57:setTop(660);
    obj.label57:setName("label57");
    lfm_setPropAsString(obj.label57, "fontStyle", "bold");
    obj.label57:setFontFamily("Cambria");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.scrollBox2);
    obj.label58:setFontSize(20.0);
    obj.label58:setWidth(400);
    obj.label58:setFontColor("#ffffff");
    obj.label58:setText("Detectar Magia");
    obj.label58:setLeft(0);
    obj.label58:setTop(680);
    obj.label58:setName("label58");
    lfm_setPropAsString(obj.label58, "fontStyle", "bold");
    obj.label58:setFontFamily("Cambria");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.scrollBox2);
    obj.label59:setFontSize(20.0);
    obj.label59:setWidth(400);
    obj.label59:setFontColor("#ffffff");
    obj.label59:setText("Acerto Magico");
    obj.label59:setLeft(0);
    obj.label59:setTop(700);
    obj.label59:setName("label59");
    lfm_setPropAsString(obj.label59, "fontStyle", "bold");
    obj.label59:setFontFamily("Cambria");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.scrollBox2);
    obj.label60:setFontSize(20.0);
    obj.label60:setWidth(400);
    obj.label60:setFontColor("#ffffff");
    obj.label60:setText("Dano Magico");
    obj.label60:setLeft(0);
    obj.label60:setTop(720);
    obj.label60:setName("label60");
    lfm_setPropAsString(obj.label60, "fontStyle", "bold");
    obj.label60:setFontFamily("Cambria");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.scrollBox2);
    obj.label61:setFontSize(20.0);
    obj.label61:setWidth(400);
    obj.label61:setFontColor("#ffffff");
    obj.label61:setText("Sobrevivencia");
    obj.label61:setLeft(0);
    obj.label61:setTop(740);
    obj.label61:setName("label61");
    lfm_setPropAsString(obj.label61, "fontStyle", "bold");
    obj.label61:setFontFamily("Cambria");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.scrollBox2);
    obj.label62:setFontSize(20.0);
    obj.label62:setWidth(400);
    obj.label62:setFontColor("#ffffff");
    obj.label62:setText("Medicina");
    obj.label62:setLeft(0);
    obj.label62:setTop(760);
    obj.label62:setName("label62");
    lfm_setPropAsString(obj.label62, "fontStyle", "bold");
    obj.label62:setFontFamily("Cambria");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.scrollBox2);
    obj.label63:setFontSize(20.0);
    obj.label63:setWidth(400);
    obj.label63:setFontColor("#ffffff");
    obj.label63:setText("Natureza");
    obj.label63:setLeft(0);
    obj.label63:setTop(780);
    obj.label63:setName("label63");
    lfm_setPropAsString(obj.label63, "fontStyle", "bold");
    obj.label63:setFontFamily("Cambria");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.scrollBox2);
    obj.label64:setFontSize(20.0);
    obj.label64:setWidth(400);
    obj.label64:setFontColor("#ffffff");
    obj.label64:setText("Religiao");
    obj.label64:setLeft(0);
    obj.label64:setTop(800);
    obj.label64:setName("label64");
    lfm_setPropAsString(obj.label64, "fontStyle", "bold");
    obj.label64:setFontFamily("Cambria");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.scrollBox2);
    obj.label65:setFontSize(20.0);
    obj.label65:setWidth(400);
    obj.label65:setFontColor("#ffffff");
    obj.label65:setText("Discurso");
    obj.label65:setLeft(0);
    obj.label65:setTop(820);
    obj.label65:setName("label65");
    lfm_setPropAsString(obj.label65, "fontStyle", "bold");
    obj.label65:setFontFamily("Cambria");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.scrollBox2);
    obj.label66:setFontSize(20.0);
    obj.label66:setWidth(400);
    obj.label66:setFontColor("#ffffff");
    obj.label66:setText("Seducao");
    obj.label66:setLeft(0);
    obj.label66:setTop(840);
    obj.label66:setName("label66");
    lfm_setPropAsString(obj.label66, "fontStyle", "bold");
    obj.label66:setFontFamily("Cambria");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.scrollBox2);
    obj.label67:setFontSize(20.0);
    obj.label67:setWidth(400);
    obj.label67:setFontColor("#ffffff");
    obj.label67:setText("Intimidar");
    obj.label67:setLeft(0);
    obj.label67:setTop(860);
    obj.label67:setName("label67");
    lfm_setPropAsString(obj.label67, "fontStyle", "bold");
    obj.label67:setFontFamily("Cambria");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.scrollBox2);
    obj.label68:setFontSize(20.0);
    obj.label68:setWidth(400);
    obj.label68:setFontColor("#ffffff");
    obj.label68:setText("Atuar");
    obj.label68:setLeft(0);
    obj.label68:setTop(880);
    obj.label68:setName("label68");
    lfm_setPropAsString(obj.label68, "fontStyle", "bold");
    obj.label68:setFontFamily("Cambria");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.scrollBox2);
    obj.label69:setFontSize(20.0);
    obj.label69:setWidth(400);
    obj.label69:setFontColor("#ffffff");
    obj.label69:setText("Persuadir");
    obj.label69:setLeft(0);
    obj.label69:setTop(900);
    obj.label69:setName("label69");
    lfm_setPropAsString(obj.label69, "fontStyle", "bold");
    obj.label69:setFontFamily("Cambria");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.scrollBox2);
    obj.label70:setFontSize(20.0);
    obj.label70:setWidth(400);
    obj.label70:setFontColor("#ffffff");
    obj.label70:setText("Mentir");
    obj.label70:setLeft(0);
    obj.label70:setTop(920);
    obj.label70:setName("label70");
    lfm_setPropAsString(obj.label70, "fontStyle", "bold");
    obj.label70:setFontFamily("Cambria");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.scrollBox2);
    obj.label71:setFontSize(20.0);
    obj.label71:setWidth(400);
    obj.label71:setFontColor("#ffffff");
    obj.label71:setText("");
    obj.label71:setLeft(0);
    obj.label71:setTop(940);
    obj.label71:setName("label71");
    lfm_setPropAsString(obj.label71, "fontStyle", "bold");
    obj.label71:setFontFamily("Cambria");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.scrollBox2);
    obj.label72:setFontSize(20.0);
    obj.label72:setWidth(400);
    obj.label72:setFontColor("#ffffff");
    obj.label72:setText("");
    obj.label72:setLeft(0);
    obj.label72:setTop(960);
    obj.label72:setName("label72");
    lfm_setPropAsString(obj.label72, "fontStyle", "bold");
    obj.label72:setFontFamily("Cambria");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.scrollBox2);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setWidth(30);
    obj.edit30:setFontSize(14.0);
    obj.edit30:setField("NvDanoCurtoAlcance");
    obj.edit30:setLeft(304);
    obj.edit30:setTop(-6);
    obj.edit30:setFontColor("white");
    lfm_setPropAsString(obj.edit30, "fontStyle", "bold");
    obj.edit30:setType("number");
    obj.edit30:setMin(0);
    obj.edit30:setMax(99);
    obj.edit30:setName("edit30");
    obj.edit30:setFontFamily("Cambria");
    obj.edit30:setTransparent(true);

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.scrollBox2);
    obj.dataLink34:setDefaultValue("0");
    obj.dataLink34:setField("NvDanoCurtoAlcance");
    obj.dataLink34:setName("dataLink34");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.scrollBox2);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setWidth(30);
    obj.edit31:setFontSize(14.0);
    obj.edit31:setField("NvDanoLongoAlcance");
    obj.edit31:setLeft(304);
    obj.edit31:setTop(14);
    obj.edit31:setFontColor("white");
    lfm_setPropAsString(obj.edit31, "fontStyle", "bold");
    obj.edit31:setType("number");
    obj.edit31:setMin(0);
    obj.edit31:setMax(99);
    obj.edit31:setName("edit31");
    obj.edit31:setFontFamily("Cambria");
    obj.edit31:setTransparent(true);

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.scrollBox2);
    obj.dataLink35:setDefaultValue("0");
    obj.dataLink35:setField("NvDanoLongoAlcance");
    obj.dataLink35:setName("dataLink35");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.scrollBox2);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setWidth(30);
    obj.edit32:setFontSize(14.0);
    obj.edit32:setField("NvQuebrarObjetos");
    obj.edit32:setLeft(304);
    obj.edit32:setTop(34);
    obj.edit32:setFontColor("white");
    lfm_setPropAsString(obj.edit32, "fontStyle", "bold");
    obj.edit32:setType("number");
    obj.edit32:setMin(0);
    obj.edit32:setMax(99);
    obj.edit32:setName("edit32");
    obj.edit32:setFontFamily("Cambria");
    obj.edit32:setTransparent(true);

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.scrollBox2);
    obj.dataLink36:setDefaultValue("0");
    obj.dataLink36:setField("NvQuebrarObjetos");
    obj.dataLink36:setName("dataLink36");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.scrollBox2);
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setWidth(30);
    obj.edit33:setFontSize(14.0);
    obj.edit33:setField("NvLevantarPeso");
    obj.edit33:setLeft(304);
    obj.edit33:setTop(54);
    obj.edit33:setFontColor("white");
    lfm_setPropAsString(obj.edit33, "fontStyle", "bold");
    obj.edit33:setType("number");
    obj.edit33:setMin(0);
    obj.edit33:setMax(99);
    obj.edit33:setName("edit33");
    obj.edit33:setFontFamily("Cambria");
    obj.edit33:setTransparent(true);

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.scrollBox2);
    obj.dataLink37:setDefaultValue("0");
    obj.dataLink37:setField("NvLevantarPeso");
    obj.dataLink37:setName("dataLink37");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.scrollBox2);
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setWidth(30);
    obj.edit34:setFontSize(14.0);
    obj.edit34:setField("NvEmpurrarObstaculo");
    obj.edit34:setLeft(304);
    obj.edit34:setTop(74);
    obj.edit34:setFontColor("white");
    lfm_setPropAsString(obj.edit34, "fontStyle", "bold");
    obj.edit34:setType("number");
    obj.edit34:setMin(0);
    obj.edit34:setMax(99);
    obj.edit34:setName("edit34");
    obj.edit34:setFontFamily("Cambria");
    obj.edit34:setTransparent(true);

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.scrollBox2);
    obj.dataLink38:setDefaultValue("0");
    obj.dataLink38:setField("NvEmpurrarObstaculo");
    obj.dataLink38:setName("dataLink38");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.scrollBox2);
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setWidth(30);
    obj.edit35:setFontSize(14.0);
    obj.edit35:setField("NvBracoDeFerro");
    obj.edit35:setLeft(304);
    obj.edit35:setTop(94);
    obj.edit35:setFontColor("white");
    lfm_setPropAsString(obj.edit35, "fontStyle", "bold");
    obj.edit35:setType("number");
    obj.edit35:setMin(0);
    obj.edit35:setMax(99);
    obj.edit35:setName("edit35");
    obj.edit35:setFontFamily("Cambria");
    obj.edit35:setTransparent(true);

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.scrollBox2);
    obj.dataLink39:setDefaultValue("0");
    obj.dataLink39:setField("NvBracoDeFerro");
    obj.dataLink39:setName("dataLink39");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.scrollBox2);
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setWidth(30);
    obj.edit36:setFontSize(14.0);
    obj.edit36:setField("NvEscalar");
    obj.edit36:setLeft(304);
    obj.edit36:setTop(114);
    obj.edit36:setFontColor("white");
    lfm_setPropAsString(obj.edit36, "fontStyle", "bold");
    obj.edit36:setType("number");
    obj.edit36:setMin(0);
    obj.edit36:setMax(99);
    obj.edit36:setName("edit36");
    obj.edit36:setFontFamily("Cambria");
    obj.edit36:setTransparent(true);

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.scrollBox2);
    obj.dataLink40:setDefaultValue("0");
    obj.dataLink40:setField("NvEscalar");
    obj.dataLink40:setName("dataLink40");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.scrollBox2);
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setWidth(30);
    obj.edit37:setFontSize(14.0);
    obj.edit37:setField("NvIniciativa");
    obj.edit37:setLeft(304);
    obj.edit37:setTop(134);
    obj.edit37:setFontColor("white");
    lfm_setPropAsString(obj.edit37, "fontStyle", "bold");
    obj.edit37:setType("number");
    obj.edit37:setMin(0);
    obj.edit37:setMax(99);
    obj.edit37:setName("edit37");
    obj.edit37:setFontFamily("Cambria");
    obj.edit37:setTransparent(true);

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.scrollBox2);
    obj.dataLink41:setDefaultValue("0");
    obj.dataLink41:setField("NvIniciativa");
    obj.dataLink41:setName("dataLink41");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.scrollBox2);
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setWidth(30);
    obj.edit38:setFontSize(14.0);
    obj.edit38:setField("NvEsquivar");
    obj.edit38:setLeft(304);
    obj.edit38:setTop(154);
    obj.edit38:setFontColor("white");
    lfm_setPropAsString(obj.edit38, "fontStyle", "bold");
    obj.edit38:setType("number");
    obj.edit38:setMin(0);
    obj.edit38:setMax(99);
    obj.edit38:setName("edit38");
    obj.edit38:setFontFamily("Cambria");
    obj.edit38:setTransparent(true);

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.scrollBox2);
    obj.dataLink42:setDefaultValue("0");
    obj.dataLink42:setField("NvEsquivar");
    obj.dataLink42:setName("dataLink42");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.scrollBox2);
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setWidth(30);
    obj.edit39:setFontSize(14.0);
    obj.edit39:setField("NvDesarmarArmadilha");
    obj.edit39:setLeft(304);
    obj.edit39:setTop(174);
    obj.edit39:setFontColor("white");
    lfm_setPropAsString(obj.edit39, "fontStyle", "bold");
    obj.edit39:setType("number");
    obj.edit39:setMin(0);
    obj.edit39:setMax(99);
    obj.edit39:setName("edit39");
    obj.edit39:setFontFamily("Cambria");
    obj.edit39:setTransparent(true);

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.scrollBox2);
    obj.dataLink43:setDefaultValue("0");
    obj.dataLink43:setField("NvDesarmarArmadilha");
    obj.dataLink43:setName("dataLink43");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.scrollBox2);
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setWidth(30);
    obj.edit40:setFontSize(14.0);
    obj.edit40:setField("NvAcrobacias");
    obj.edit40:setLeft(304);
    obj.edit40:setTop(194);
    obj.edit40:setFontColor("white");
    lfm_setPropAsString(obj.edit40, "fontStyle", "bold");
    obj.edit40:setType("number");
    obj.edit40:setMin(0);
    obj.edit40:setMax(99);
    obj.edit40:setName("edit40");
    obj.edit40:setFontFamily("Cambria");
    obj.edit40:setTransparent(true);

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.scrollBox2);
    obj.dataLink44:setDefaultValue("0");
    obj.dataLink44:setField("NvAcrobacias");
    obj.dataLink44:setName("dataLink44");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.scrollBox2);
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setWidth(30);
    obj.edit41:setFontSize(14.0);
    obj.edit41:setField("NvRoubo");
    obj.edit41:setLeft(304);
    obj.edit41:setTop(214);
    obj.edit41:setFontColor("white");
    lfm_setPropAsString(obj.edit41, "fontStyle", "bold");
    obj.edit41:setType("number");
    obj.edit41:setMin(0);
    obj.edit41:setMax(99);
    obj.edit41:setName("edit41");
    obj.edit41:setFontFamily("Cambria");
    obj.edit41:setTransparent(true);

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.scrollBox2);
    obj.dataLink45:setDefaultValue("0");
    obj.dataLink45:setField("NvRoubo");
    obj.dataLink45:setName("dataLink45");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.scrollBox2);
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setWidth(30);
    obj.edit42:setFontSize(14.0);
    obj.edit42:setField("NvArremessarObjetos");
    obj.edit42:setLeft(304);
    obj.edit42:setTop(234);
    obj.edit42:setFontColor("white");
    lfm_setPropAsString(obj.edit42, "fontStyle", "bold");
    obj.edit42:setType("number");
    obj.edit42:setMin(0);
    obj.edit42:setMax(99);
    obj.edit42:setName("edit42");
    obj.edit42:setFontFamily("Cambria");
    obj.edit42:setTransparent(true);

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.scrollBox2);
    obj.dataLink46:setDefaultValue("0");
    obj.dataLink46:setField("NvArremessarObjetos");
    obj.dataLink46:setName("dataLink46");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.scrollBox2);
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setWidth(30);
    obj.edit43:setFontSize(14.0);
    obj.edit43:setField("NvFurtividade");
    obj.edit43:setLeft(304);
    obj.edit43:setTop(254);
    obj.edit43:setFontColor("white");
    lfm_setPropAsString(obj.edit43, "fontStyle", "bold");
    obj.edit43:setType("number");
    obj.edit43:setMin(0);
    obj.edit43:setMax(99);
    obj.edit43:setName("edit43");
    obj.edit43:setFontFamily("Cambria");
    obj.edit43:setTransparent(true);

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.scrollBox2);
    obj.dataLink47:setDefaultValue("0");
    obj.dataLink47:setField("NvFurtividade");
    obj.dataLink47:setName("dataLink47");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.scrollBox2);
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setWidth(30);
    obj.edit44:setFontSize(14.0);
    obj.edit44:setField("NvMontaria");
    obj.edit44:setLeft(304);
    obj.edit44:setTop(274);
    obj.edit44:setFontColor("white");
    lfm_setPropAsString(obj.edit44, "fontStyle", "bold");
    obj.edit44:setType("number");
    obj.edit44:setMin(0);
    obj.edit44:setMax(99);
    obj.edit44:setName("edit44");
    obj.edit44:setFontFamily("Cambria");
    obj.edit44:setTransparent(true);

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.scrollBox2);
    obj.dataLink48:setDefaultValue("0");
    obj.dataLink48:setField("NvMontaria");
    obj.dataLink48:setName("dataLink48");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.scrollBox2);
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setWidth(30);
    obj.edit45:setFontSize(14.0);
    obj.edit45:setField("NvAcertoDistância");
    obj.edit45:setLeft(304);
    obj.edit45:setTop(294);
    obj.edit45:setFontColor("white");
    lfm_setPropAsString(obj.edit45, "fontStyle", "bold");
    obj.edit45:setType("number");
    obj.edit45:setMin(0);
    obj.edit45:setMax(99);
    obj.edit45:setName("edit45");
    obj.edit45:setFontFamily("Cambria");
    obj.edit45:setTransparent(true);

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.scrollBox2);
    obj.dataLink49:setDefaultValue("0");
    obj.dataLink49:setField("NvAcertoDistância");
    obj.dataLink49:setName("dataLink49");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.scrollBox2);
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setWidth(30);
    obj.edit46:setFontSize(14.0);
    obj.edit46:setField("NvAcertoCurtoAlcance");
    obj.edit46:setLeft(304);
    obj.edit46:setTop(314);
    obj.edit46:setFontColor("white");
    lfm_setPropAsString(obj.edit46, "fontStyle", "bold");
    obj.edit46:setType("number");
    obj.edit46:setMin(0);
    obj.edit46:setMax(99);
    obj.edit46:setName("edit46");
    obj.edit46:setFontFamily("Cambria");
    obj.edit46:setTransparent(true);

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.scrollBox2);
    obj.dataLink50:setDefaultValue("0");
    obj.dataLink50:setField("NvAcertoCurtoAlcance");
    obj.dataLink50:setName("dataLink50");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.scrollBox2);
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setWidth(30);
    obj.edit47:setFontSize(14.0);
    obj.edit47:setField("NvCorrer");
    obj.edit47:setLeft(304);
    obj.edit47:setTop(334);
    obj.edit47:setFontColor("white");
    lfm_setPropAsString(obj.edit47, "fontStyle", "bold");
    obj.edit47:setType("number");
    obj.edit47:setMin(0);
    obj.edit47:setMax(99);
    obj.edit47:setName("edit47");
    obj.edit47:setFontFamily("Cambria");
    obj.edit47:setTransparent(true);

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.scrollBox2);
    obj.dataLink51:setDefaultValue("0");
    obj.dataLink51:setField("NvCorrer");
    obj.dataLink51:setName("dataLink51");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.scrollBox2);
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setWidth(30);
    obj.edit48:setFontSize(14.0);
    obj.edit48:setField("NvResistenciaVeneno");
    obj.edit48:setLeft(304);
    obj.edit48:setTop(354);
    obj.edit48:setFontColor("white");
    lfm_setPropAsString(obj.edit48, "fontStyle", "bold");
    obj.edit48:setType("number");
    obj.edit48:setMin(0);
    obj.edit48:setMax(99);
    obj.edit48:setName("edit48");
    obj.edit48:setFontFamily("Cambria");
    obj.edit48:setTransparent(true);

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj.scrollBox2);
    obj.dataLink52:setDefaultValue("0");
    obj.dataLink52:setField("NvResistenciaVeneno");
    obj.dataLink52:setName("dataLink52");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.scrollBox2);
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setWidth(30);
    obj.edit49:setFontSize(14.0);
    obj.edit49:setField("NvResistenciaCansaco");
    obj.edit49:setLeft(304);
    obj.edit49:setTop(374);
    obj.edit49:setFontColor("white");
    lfm_setPropAsString(obj.edit49, "fontStyle", "bold");
    obj.edit49:setType("number");
    obj.edit49:setMin(0);
    obj.edit49:setMax(99);
    obj.edit49:setName("edit49");
    obj.edit49:setFontFamily("Cambria");
    obj.edit49:setTransparent(true);

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj.scrollBox2);
    obj.dataLink53:setDefaultValue("0");
    obj.dataLink53:setField("NvResistenciaCansaco");
    obj.dataLink53:setName("dataLink53");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.scrollBox2);
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setWidth(30);
    obj.edit50:setFontSize(14.0);
    obj.edit50:setField("NvSegurarFolego");
    obj.edit50:setLeft(304);
    obj.edit50:setTop(394);
    obj.edit50:setFontColor("white");
    lfm_setPropAsString(obj.edit50, "fontStyle", "bold");
    obj.edit50:setType("number");
    obj.edit50:setMin(0);
    obj.edit50:setMax(99);
    obj.edit50:setName("edit50");
    obj.edit50:setFontFamily("Cambria");
    obj.edit50:setTransparent(true);

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj.scrollBox2);
    obj.dataLink54:setDefaultValue("0");
    obj.dataLink54:setField("NvSegurarFolego");
    obj.dataLink54:setName("dataLink54");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.scrollBox2);
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setWidth(30);
    obj.edit51:setFontSize(14.0);
    obj.edit51:setField("NvSuporteFrioCalor");
    obj.edit51:setLeft(304);
    obj.edit51:setTop(414);
    obj.edit51:setFontColor("white");
    lfm_setPropAsString(obj.edit51, "fontStyle", "bold");
    obj.edit51:setType("number");
    obj.edit51:setMin(0);
    obj.edit51:setMax(99);
    obj.edit51:setName("edit51");
    obj.edit51:setFontFamily("Cambria");
    obj.edit51:setTransparent(true);

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj.scrollBox2);
    obj.dataLink55:setDefaultValue("0");
    obj.dataLink55:setField("NvSuporteFrioCalor");
    obj.dataLink55:setName("dataLink55");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.scrollBox2);
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setWidth(30);
    obj.edit52:setFontSize(14.0);
    obj.edit52:setField("NvDefender");
    obj.edit52:setLeft(304);
    obj.edit52:setTop(434);
    obj.edit52:setFontColor("white");
    lfm_setPropAsString(obj.edit52, "fontStyle", "bold");
    obj.edit52:setType("number");
    obj.edit52:setMin(0);
    obj.edit52:setMax(99);
    obj.edit52:setName("edit52");
    obj.edit52:setFontFamily("Cambria");
    obj.edit52:setTransparent(true);

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj.scrollBox2);
    obj.dataLink56:setDefaultValue("0");
    obj.dataLink56:setField("NvDefender");
    obj.dataLink56:setName("dataLink56");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.scrollBox2);
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setWidth(30);
    obj.edit53:setFontSize(14.0);
    obj.edit53:setField("NvProfissao");
    obj.edit53:setLeft(304);
    obj.edit53:setTop(454);
    obj.edit53:setFontColor("white");
    lfm_setPropAsString(obj.edit53, "fontStyle", "bold");
    obj.edit53:setType("number");
    obj.edit53:setMin(0);
    obj.edit53:setMax(99);
    obj.edit53:setName("edit53");
    obj.edit53:setFontFamily("Cambria");
    obj.edit53:setTransparent(true);

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj.scrollBox2);
    obj.dataLink57:setDefaultValue("0");
    obj.dataLink57:setField("NvProfissao");
    obj.dataLink57:setName("dataLink57");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.scrollBox2);
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setWidth(30);
    obj.edit54:setFontSize(14.0);
    obj.edit54:setField("NvDecifrarCodigo");
    obj.edit54:setLeft(304);
    obj.edit54:setTop(474);
    obj.edit54:setFontColor("white");
    lfm_setPropAsString(obj.edit54, "fontStyle", "bold");
    obj.edit54:setType("number");
    obj.edit54:setMin(0);
    obj.edit54:setMax(99);
    obj.edit54:setName("edit54");
    obj.edit54:setFontFamily("Cambria");
    obj.edit54:setTransparent(true);

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj.scrollBox2);
    obj.dataLink58:setDefaultValue("0");
    obj.dataLink58:setField("NvDecifrarCodigo");
    obj.dataLink58:setName("dataLink58");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.scrollBox2);
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setWidth(30);
    obj.edit55:setFontSize(14.0);
    obj.edit55:setField("NvIdentificarCriatura");
    obj.edit55:setLeft(304);
    obj.edit55:setTop(494);
    obj.edit55:setFontColor("white");
    lfm_setPropAsString(obj.edit55, "fontStyle", "bold");
    obj.edit55:setType("number");
    obj.edit55:setMin(0);
    obj.edit55:setMax(99);
    obj.edit55:setName("edit55");
    obj.edit55:setFontFamily("Cambria");
    obj.edit55:setTransparent(true);

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj.scrollBox2);
    obj.dataLink59:setDefaultValue("0");
    obj.dataLink59:setField("NvIdentificarCriatura");
    obj.dataLink59:setName("dataLink59");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.scrollBox2);
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setWidth(30);
    obj.edit56:setFontSize(14.0);
    obj.edit56:setField("NvLerManuscrito");
    obj.edit56:setLeft(304);
    obj.edit56:setTop(514);
    obj.edit56:setFontColor("white");
    lfm_setPropAsString(obj.edit56, "fontStyle", "bold");
    obj.edit56:setType("number");
    obj.edit56:setMin(0);
    obj.edit56:setMax(99);
    obj.edit56:setName("edit56");
    obj.edit56:setFontFamily("Cambria");
    obj.edit56:setTransparent(true);

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj.scrollBox2);
    obj.dataLink60:setDefaultValue("0");
    obj.dataLink60:setField("NvLerManuscrito");
    obj.dataLink60:setName("dataLink60");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.scrollBox2);
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setWidth(30);
    obj.edit57:setFontSize(14.0);
    obj.edit57:setField("NvPrepararEstrategia");
    obj.edit57:setLeft(304);
    obj.edit57:setTop(534);
    obj.edit57:setFontColor("white");
    lfm_setPropAsString(obj.edit57, "fontStyle", "bold");
    obj.edit57:setType("number");
    obj.edit57:setMin(0);
    obj.edit57:setMax(99);
    obj.edit57:setName("edit57");
    obj.edit57:setFontFamily("Cambria");
    obj.edit57:setTransparent(true);

    obj.dataLink61 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj.scrollBox2);
    obj.dataLink61:setDefaultValue("0");
    obj.dataLink61:setField("NvPrepararEstrategia");
    obj.dataLink61:setName("dataLink61");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.scrollBox2);
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setWidth(30);
    obj.edit58:setFontSize(14.0);
    obj.edit58:setField("NvResistenciaMental");
    obj.edit58:setLeft(304);
    obj.edit58:setTop(554);
    obj.edit58:setFontColor("white");
    lfm_setPropAsString(obj.edit58, "fontStyle", "bold");
    obj.edit58:setType("number");
    obj.edit58:setMin(0);
    obj.edit58:setMax(99);
    obj.edit58:setName("edit58");
    obj.edit58:setFontFamily("Cambria");
    obj.edit58:setTransparent(true);

    obj.dataLink62 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj.scrollBox2);
    obj.dataLink62:setDefaultValue("0");
    obj.dataLink62:setField("NvResistenciaMental");
    obj.dataLink62:setName("dataLink62");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.scrollBox2);
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setWidth(30);
    obj.edit59:setFontSize(14.0);
    obj.edit59:setField("NvHistoria");
    obj.edit59:setLeft(304);
    obj.edit59:setTop(574);
    obj.edit59:setFontColor("white");
    lfm_setPropAsString(obj.edit59, "fontStyle", "bold");
    obj.edit59:setType("number");
    obj.edit59:setMin(0);
    obj.edit59:setMax(99);
    obj.edit59:setName("edit59");
    obj.edit59:setFontFamily("Cambria");
    obj.edit59:setTransparent(true);

    obj.dataLink63 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink63:setParent(obj.scrollBox2);
    obj.dataLink63:setDefaultValue("0");
    obj.dataLink63:setField("NvHistoria");
    obj.dataLink63:setName("dataLink63");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.scrollBox2);
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setWidth(30);
    obj.edit60:setFontSize(14.0);
    obj.edit60:setField("NvInvestigacao");
    obj.edit60:setLeft(304);
    obj.edit60:setTop(594);
    obj.edit60:setFontColor("white");
    lfm_setPropAsString(obj.edit60, "fontStyle", "bold");
    obj.edit60:setType("number");
    obj.edit60:setMin(0);
    obj.edit60:setMax(99);
    obj.edit60:setName("edit60");
    obj.edit60:setFontFamily("Cambria");
    obj.edit60:setTransparent(true);

    obj.dataLink64 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink64:setParent(obj.scrollBox2);
    obj.dataLink64:setDefaultValue("0");
    obj.dataLink64:setField("NvInvestigacao");
    obj.dataLink64:setName("dataLink64");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.scrollBox2);
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setWidth(30);
    obj.edit61:setFontSize(14.0);
    obj.edit61:setField("NvPerceberMentira");
    obj.edit61:setLeft(304);
    obj.edit61:setTop(614);
    obj.edit61:setFontColor("white");
    lfm_setPropAsString(obj.edit61, "fontStyle", "bold");
    obj.edit61:setType("number");
    obj.edit61:setMin(0);
    obj.edit61:setMax(99);
    obj.edit61:setName("edit61");
    obj.edit61:setFontFamily("Cambria");
    obj.edit61:setTransparent(true);

    obj.dataLink65 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink65:setParent(obj.scrollBox2);
    obj.dataLink65:setDefaultValue("0");
    obj.dataLink65:setField("NvPerceberMentira");
    obj.dataLink65:setName("dataLink65");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.scrollBox2);
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setWidth(30);
    obj.edit62:setFontSize(14.0);
    obj.edit62:setField("NvPercepcao");
    obj.edit62:setLeft(304);
    obj.edit62:setTop(634);
    obj.edit62:setFontColor("white");
    lfm_setPropAsString(obj.edit62, "fontStyle", "bold");
    obj.edit62:setType("number");
    obj.edit62:setMin(0);
    obj.edit62:setMax(99);
    obj.edit62:setName("edit62");
    obj.edit62:setFontFamily("Cambria");
    obj.edit62:setTransparent(true);

    obj.dataLink66 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink66:setParent(obj.scrollBox2);
    obj.dataLink66:setDefaultValue("0");
    obj.dataLink66:setField("NvPercepcao");
    obj.dataLink66:setName("dataLink66");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.scrollBox2);
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setWidth(30);
    obj.edit63:setFontSize(14.0);
    obj.edit63:setField("NvSentirPerigo");
    obj.edit63:setLeft(304);
    obj.edit63:setTop(654);
    obj.edit63:setFontColor("white");
    lfm_setPropAsString(obj.edit63, "fontStyle", "bold");
    obj.edit63:setType("number");
    obj.edit63:setMin(0);
    obj.edit63:setMax(99);
    obj.edit63:setName("edit63");
    obj.edit63:setFontFamily("Cambria");
    obj.edit63:setTransparent(true);

    obj.dataLink67 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink67:setParent(obj.scrollBox2);
    obj.dataLink67:setDefaultValue("0");
    obj.dataLink67:setField("NvSentirPerigo");
    obj.dataLink67:setName("dataLink67");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.scrollBox2);
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setWidth(30);
    obj.edit64:setFontSize(14.0);
    obj.edit64:setField("NvDetectarMagia");
    obj.edit64:setLeft(304);
    obj.edit64:setTop(674);
    obj.edit64:setFontColor("white");
    lfm_setPropAsString(obj.edit64, "fontStyle", "bold");
    obj.edit64:setType("number");
    obj.edit64:setMin(0);
    obj.edit64:setMax(99);
    obj.edit64:setName("edit64");
    obj.edit64:setFontFamily("Cambria");
    obj.edit64:setTransparent(true);

    obj.dataLink68 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink68:setParent(obj.scrollBox2);
    obj.dataLink68:setDefaultValue("0");
    obj.dataLink68:setField("NvDetectarMagia");
    obj.dataLink68:setName("dataLink68");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.scrollBox2);
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setWidth(30);
    obj.edit65:setFontSize(14.0);
    obj.edit65:setField("NvAcertoMagico");
    obj.edit65:setLeft(304);
    obj.edit65:setTop(694);
    obj.edit65:setFontColor("white");
    lfm_setPropAsString(obj.edit65, "fontStyle", "bold");
    obj.edit65:setType("number");
    obj.edit65:setMin(0);
    obj.edit65:setMax(99);
    obj.edit65:setName("edit65");
    obj.edit65:setFontFamily("Cambria");
    obj.edit65:setTransparent(true);

    obj.dataLink69 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink69:setParent(obj.scrollBox2);
    obj.dataLink69:setDefaultValue("0");
    obj.dataLink69:setField("NvAcertoMagico");
    obj.dataLink69:setName("dataLink69");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.scrollBox2);
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setWidth(30);
    obj.edit66:setFontSize(14.0);
    obj.edit66:setField("NvDanoMagico");
    obj.edit66:setLeft(304);
    obj.edit66:setTop(714);
    obj.edit66:setFontColor("white");
    lfm_setPropAsString(obj.edit66, "fontStyle", "bold");
    obj.edit66:setType("number");
    obj.edit66:setMin(0);
    obj.edit66:setMax(99);
    obj.edit66:setName("edit66");
    obj.edit66:setFontFamily("Cambria");
    obj.edit66:setTransparent(true);

    obj.dataLink70 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink70:setParent(obj.scrollBox2);
    obj.dataLink70:setDefaultValue("0");
    obj.dataLink70:setField("NvDanoMagico");
    obj.dataLink70:setName("dataLink70");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.scrollBox2);
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setWidth(30);
    obj.edit67:setFontSize(14.0);
    obj.edit67:setField("NvSobrevivencia");
    obj.edit67:setLeft(304);
    obj.edit67:setTop(734);
    obj.edit67:setFontColor("white");
    lfm_setPropAsString(obj.edit67, "fontStyle", "bold");
    obj.edit67:setType("number");
    obj.edit67:setMin(0);
    obj.edit67:setMax(99);
    obj.edit67:setName("edit67");
    obj.edit67:setFontFamily("Cambria");
    obj.edit67:setTransparent(true);

    obj.dataLink71 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink71:setParent(obj.scrollBox2);
    obj.dataLink71:setDefaultValue("0");
    obj.dataLink71:setField("NvSobrevivencia");
    obj.dataLink71:setName("dataLink71");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.scrollBox2);
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setWidth(30);
    obj.edit68:setFontSize(14.0);
    obj.edit68:setField("NvMedicina");
    obj.edit68:setLeft(304);
    obj.edit68:setTop(754);
    obj.edit68:setFontColor("white");
    lfm_setPropAsString(obj.edit68, "fontStyle", "bold");
    obj.edit68:setType("number");
    obj.edit68:setMin(0);
    obj.edit68:setMax(99);
    obj.edit68:setName("edit68");
    obj.edit68:setFontFamily("Cambria");
    obj.edit68:setTransparent(true);

    obj.dataLink72 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink72:setParent(obj.scrollBox2);
    obj.dataLink72:setDefaultValue("0");
    obj.dataLink72:setField("NvMedicina");
    obj.dataLink72:setName("dataLink72");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.scrollBox2);
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setWidth(30);
    obj.edit69:setFontSize(14.0);
    obj.edit69:setField("NvNatureza");
    obj.edit69:setLeft(304);
    obj.edit69:setTop(774);
    obj.edit69:setFontColor("white");
    lfm_setPropAsString(obj.edit69, "fontStyle", "bold");
    obj.edit69:setType("number");
    obj.edit69:setMin(0);
    obj.edit69:setMax(99);
    obj.edit69:setName("edit69");
    obj.edit69:setFontFamily("Cambria");
    obj.edit69:setTransparent(true);

    obj.dataLink73 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink73:setParent(obj.scrollBox2);
    obj.dataLink73:setDefaultValue("0");
    obj.dataLink73:setField("NvNatureza");
    obj.dataLink73:setName("dataLink73");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.scrollBox2);
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setWidth(30);
    obj.edit70:setFontSize(14.0);
    obj.edit70:setField("NvReligiao");
    obj.edit70:setLeft(304);
    obj.edit70:setTop(794);
    obj.edit70:setFontColor("white");
    lfm_setPropAsString(obj.edit70, "fontStyle", "bold");
    obj.edit70:setType("number");
    obj.edit70:setMin(0);
    obj.edit70:setMax(99);
    obj.edit70:setName("edit70");
    obj.edit70:setFontFamily("Cambria");
    obj.edit70:setTransparent(true);

    obj.dataLink74 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink74:setParent(obj.scrollBox2);
    obj.dataLink74:setDefaultValue("0");
    obj.dataLink74:setField("NvReligiao");
    obj.dataLink74:setName("dataLink74");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.scrollBox2);
    obj.edit71:setHorzTextAlign("center");
    obj.edit71:setWidth(30);
    obj.edit71:setFontSize(14.0);
    obj.edit71:setField("NvDiscurso");
    obj.edit71:setLeft(304);
    obj.edit71:setTop(814);
    obj.edit71:setFontColor("white");
    lfm_setPropAsString(obj.edit71, "fontStyle", "bold");
    obj.edit71:setType("number");
    obj.edit71:setMin(0);
    obj.edit71:setMax(99);
    obj.edit71:setName("edit71");
    obj.edit71:setFontFamily("Cambria");
    obj.edit71:setTransparent(true);

    obj.dataLink75 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink75:setParent(obj.scrollBox2);
    obj.dataLink75:setDefaultValue("0");
    obj.dataLink75:setField("NvDiscurso");
    obj.dataLink75:setName("dataLink75");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.scrollBox2);
    obj.edit72:setHorzTextAlign("center");
    obj.edit72:setWidth(30);
    obj.edit72:setFontSize(14.0);
    obj.edit72:setField("NvSeducao");
    obj.edit72:setLeft(304);
    obj.edit72:setTop(834);
    obj.edit72:setFontColor("white");
    lfm_setPropAsString(obj.edit72, "fontStyle", "bold");
    obj.edit72:setType("number");
    obj.edit72:setMin(0);
    obj.edit72:setMax(99);
    obj.edit72:setName("edit72");
    obj.edit72:setFontFamily("Cambria");
    obj.edit72:setTransparent(true);

    obj.dataLink76 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink76:setParent(obj.scrollBox2);
    obj.dataLink76:setDefaultValue("0");
    obj.dataLink76:setField("NvSeducao");
    obj.dataLink76:setName("dataLink76");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.scrollBox2);
    obj.edit73:setHorzTextAlign("center");
    obj.edit73:setWidth(30);
    obj.edit73:setFontSize(14.0);
    obj.edit73:setField("NvIntimidar");
    obj.edit73:setLeft(304);
    obj.edit73:setTop(854);
    obj.edit73:setFontColor("white");
    lfm_setPropAsString(obj.edit73, "fontStyle", "bold");
    obj.edit73:setType("number");
    obj.edit73:setMin(0);
    obj.edit73:setMax(99);
    obj.edit73:setName("edit73");
    obj.edit73:setFontFamily("Cambria");
    obj.edit73:setTransparent(true);

    obj.dataLink77 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink77:setParent(obj.scrollBox2);
    obj.dataLink77:setDefaultValue("0");
    obj.dataLink77:setField("NvIntimidar");
    obj.dataLink77:setName("dataLink77");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.scrollBox2);
    obj.edit74:setHorzTextAlign("center");
    obj.edit74:setWidth(30);
    obj.edit74:setFontSize(14.0);
    obj.edit74:setField("NvAtuar");
    obj.edit74:setLeft(304);
    obj.edit74:setTop(874);
    obj.edit74:setFontColor("white");
    lfm_setPropAsString(obj.edit74, "fontStyle", "bold");
    obj.edit74:setType("number");
    obj.edit74:setMin(0);
    obj.edit74:setMax(99);
    obj.edit74:setName("edit74");
    obj.edit74:setFontFamily("Cambria");
    obj.edit74:setTransparent(true);

    obj.dataLink78 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink78:setParent(obj.scrollBox2);
    obj.dataLink78:setDefaultValue("0");
    obj.dataLink78:setField("NvAtuar");
    obj.dataLink78:setName("dataLink78");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.scrollBox2);
    obj.edit75:setHorzTextAlign("center");
    obj.edit75:setWidth(30);
    obj.edit75:setFontSize(14.0);
    obj.edit75:setField("NvPersuadir");
    obj.edit75:setLeft(304);
    obj.edit75:setTop(894);
    obj.edit75:setFontColor("white");
    lfm_setPropAsString(obj.edit75, "fontStyle", "bold");
    obj.edit75:setType("number");
    obj.edit75:setMin(0);
    obj.edit75:setMax(99);
    obj.edit75:setName("edit75");
    obj.edit75:setFontFamily("Cambria");
    obj.edit75:setTransparent(true);

    obj.dataLink79 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink79:setParent(obj.scrollBox2);
    obj.dataLink79:setDefaultValue("0");
    obj.dataLink79:setField("NvPersuadir");
    obj.dataLink79:setName("dataLink79");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.scrollBox2);
    obj.edit76:setHorzTextAlign("center");
    obj.edit76:setWidth(30);
    obj.edit76:setFontSize(14.0);
    obj.edit76:setField("NvMentir");
    obj.edit76:setLeft(304);
    obj.edit76:setTop(914);
    obj.edit76:setFontColor("white");
    lfm_setPropAsString(obj.edit76, "fontStyle", "bold");
    obj.edit76:setType("number");
    obj.edit76:setMin(0);
    obj.edit76:setMax(99);
    obj.edit76:setName("edit76");
    obj.edit76:setFontFamily("Cambria");
    obj.edit76:setTransparent(true);

    obj.dataLink80 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink80:setParent(obj.scrollBox2);
    obj.dataLink80:setDefaultValue("0");
    obj.dataLink80:setField("NvMentir");
    obj.dataLink80:setName("dataLink80");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.scrollBox2);
    obj.edit77:setHorzTextAlign("center");
    obj.edit77:setWidth(30);
    obj.edit77:setFontSize(14.0);
    obj.edit77:setField("BDanoCurtoAlcance");
    obj.edit77:setLeft(413);
    obj.edit77:setTop(-6);
    obj.edit77:setFontColor("white");
    lfm_setPropAsString(obj.edit77, "fontStyle", "bold");
    obj.edit77:setType("number");
    obj.edit77:setMin(0);
    obj.edit77:setMax(99);
    obj.edit77:setName("edit77");
    obj.edit77:setFontFamily("Cambria");
    obj.edit77:setTransparent(true);

    obj.dataLink81 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink81:setParent(obj.scrollBox2);
    obj.dataLink81:setDefaultValue("0");
    obj.dataLink81:setField("BDanoCurtoAlcance");
    obj.dataLink81:setName("dataLink81");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.scrollBox2);
    obj.edit78:setHorzTextAlign("center");
    obj.edit78:setWidth(30);
    obj.edit78:setFontSize(14.0);
    obj.edit78:setField("BDanoLongoAlcance");
    obj.edit78:setLeft(413);
    obj.edit78:setTop(14);
    obj.edit78:setFontColor("white");
    lfm_setPropAsString(obj.edit78, "fontStyle", "bold");
    obj.edit78:setType("number");
    obj.edit78:setMin(0);
    obj.edit78:setMax(99);
    obj.edit78:setName("edit78");
    obj.edit78:setFontFamily("Cambria");
    obj.edit78:setTransparent(true);

    obj.dataLink82 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink82:setParent(obj.scrollBox2);
    obj.dataLink82:setDefaultValue("0");
    obj.dataLink82:setField("BDanoLongoAlcance");
    obj.dataLink82:setName("dataLink82");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.scrollBox2);
    obj.edit79:setHorzTextAlign("center");
    obj.edit79:setWidth(30);
    obj.edit79:setFontSize(14.0);
    obj.edit79:setField("BQuebrarObjetos");
    obj.edit79:setLeft(413);
    obj.edit79:setTop(34);
    obj.edit79:setFontColor("white");
    lfm_setPropAsString(obj.edit79, "fontStyle", "bold");
    obj.edit79:setType("number");
    obj.edit79:setMin(0);
    obj.edit79:setMax(99);
    obj.edit79:setName("edit79");
    obj.edit79:setFontFamily("Cambria");
    obj.edit79:setTransparent(true);

    obj.dataLink83 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink83:setParent(obj.scrollBox2);
    obj.dataLink83:setDefaultValue("0");
    obj.dataLink83:setField("BQuebrarObjetos");
    obj.dataLink83:setName("dataLink83");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.scrollBox2);
    obj.edit80:setHorzTextAlign("center");
    obj.edit80:setWidth(30);
    obj.edit80:setFontSize(14.0);
    obj.edit80:setField("BLevantarPeso");
    obj.edit80:setLeft(413);
    obj.edit80:setTop(54);
    obj.edit80:setFontColor("white");
    lfm_setPropAsString(obj.edit80, "fontStyle", "bold");
    obj.edit80:setType("number");
    obj.edit80:setMin(0);
    obj.edit80:setMax(99);
    obj.edit80:setName("edit80");
    obj.edit80:setFontFamily("Cambria");
    obj.edit80:setTransparent(true);

    obj.dataLink84 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink84:setParent(obj.scrollBox2);
    obj.dataLink84:setDefaultValue("0");
    obj.dataLink84:setField("BLevantarPeso");
    obj.dataLink84:setName("dataLink84");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.scrollBox2);
    obj.edit81:setHorzTextAlign("center");
    obj.edit81:setWidth(30);
    obj.edit81:setFontSize(14.0);
    obj.edit81:setField("BEmpurrarObstaculo");
    obj.edit81:setLeft(413);
    obj.edit81:setTop(74);
    obj.edit81:setFontColor("white");
    lfm_setPropAsString(obj.edit81, "fontStyle", "bold");
    obj.edit81:setType("number");
    obj.edit81:setMin(0);
    obj.edit81:setMax(99);
    obj.edit81:setName("edit81");
    obj.edit81:setFontFamily("Cambria");
    obj.edit81:setTransparent(true);

    obj.dataLink85 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink85:setParent(obj.scrollBox2);
    obj.dataLink85:setDefaultValue("0");
    obj.dataLink85:setField("BEmpurrarObstaculo");
    obj.dataLink85:setName("dataLink85");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.scrollBox2);
    obj.edit82:setHorzTextAlign("center");
    obj.edit82:setWidth(30);
    obj.edit82:setFontSize(14.0);
    obj.edit82:setField("BBracoDeFerro");
    obj.edit82:setLeft(413);
    obj.edit82:setTop(94);
    obj.edit82:setFontColor("white");
    lfm_setPropAsString(obj.edit82, "fontStyle", "bold");
    obj.edit82:setType("number");
    obj.edit82:setMin(0);
    obj.edit82:setMax(99);
    obj.edit82:setName("edit82");
    obj.edit82:setFontFamily("Cambria");
    obj.edit82:setTransparent(true);

    obj.dataLink86 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink86:setParent(obj.scrollBox2);
    obj.dataLink86:setDefaultValue("0");
    obj.dataLink86:setField("BBracoDeFerro");
    obj.dataLink86:setName("dataLink86");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.scrollBox2);
    obj.edit83:setHorzTextAlign("center");
    obj.edit83:setWidth(30);
    obj.edit83:setFontSize(14.0);
    obj.edit83:setField("BEscalar");
    obj.edit83:setLeft(413);
    obj.edit83:setTop(114);
    obj.edit83:setFontColor("white");
    lfm_setPropAsString(obj.edit83, "fontStyle", "bold");
    obj.edit83:setType("number");
    obj.edit83:setMin(0);
    obj.edit83:setMax(99);
    obj.edit83:setName("edit83");
    obj.edit83:setFontFamily("Cambria");
    obj.edit83:setTransparent(true);

    obj.dataLink87 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink87:setParent(obj.scrollBox2);
    obj.dataLink87:setDefaultValue("0");
    obj.dataLink87:setField("BEscalar");
    obj.dataLink87:setName("dataLink87");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.scrollBox2);
    obj.edit84:setHorzTextAlign("center");
    obj.edit84:setWidth(30);
    obj.edit84:setFontSize(14.0);
    obj.edit84:setField("BIniciativa");
    obj.edit84:setLeft(413);
    obj.edit84:setTop(134);
    obj.edit84:setFontColor("white");
    lfm_setPropAsString(obj.edit84, "fontStyle", "bold");
    obj.edit84:setType("number");
    obj.edit84:setMin(0);
    obj.edit84:setMax(99);
    obj.edit84:setName("edit84");
    obj.edit84:setFontFamily("Cambria");
    obj.edit84:setTransparent(true);

    obj.dataLink88 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink88:setParent(obj.scrollBox2);
    obj.dataLink88:setDefaultValue("0");
    obj.dataLink88:setField("BIniciativa");
    obj.dataLink88:setName("dataLink88");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.scrollBox2);
    obj.edit85:setHorzTextAlign("center");
    obj.edit85:setWidth(30);
    obj.edit85:setFontSize(14.0);
    obj.edit85:setField("BEsquivar");
    obj.edit85:setLeft(413);
    obj.edit85:setTop(154);
    obj.edit85:setFontColor("white");
    lfm_setPropAsString(obj.edit85, "fontStyle", "bold");
    obj.edit85:setType("number");
    obj.edit85:setMin(0);
    obj.edit85:setMax(99);
    obj.edit85:setName("edit85");
    obj.edit85:setFontFamily("Cambria");
    obj.edit85:setTransparent(true);

    obj.dataLink89 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink89:setParent(obj.scrollBox2);
    obj.dataLink89:setDefaultValue("0");
    obj.dataLink89:setField("BEsquivar");
    obj.dataLink89:setName("dataLink89");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.scrollBox2);
    obj.edit86:setHorzTextAlign("center");
    obj.edit86:setWidth(30);
    obj.edit86:setFontSize(14.0);
    obj.edit86:setField("BDesarmarArmadilha");
    obj.edit86:setLeft(413);
    obj.edit86:setTop(174);
    obj.edit86:setFontColor("white");
    lfm_setPropAsString(obj.edit86, "fontStyle", "bold");
    obj.edit86:setType("number");
    obj.edit86:setMin(0);
    obj.edit86:setMax(99);
    obj.edit86:setName("edit86");
    obj.edit86:setFontFamily("Cambria");
    obj.edit86:setTransparent(true);

    obj.dataLink90 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink90:setParent(obj.scrollBox2);
    obj.dataLink90:setDefaultValue("0");
    obj.dataLink90:setField("BDesarmarArmadilha");
    obj.dataLink90:setName("dataLink90");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.scrollBox2);
    obj.edit87:setHorzTextAlign("center");
    obj.edit87:setWidth(30);
    obj.edit87:setFontSize(14.0);
    obj.edit87:setField("BAcrobacias");
    obj.edit87:setLeft(413);
    obj.edit87:setTop(194);
    obj.edit87:setFontColor("white");
    lfm_setPropAsString(obj.edit87, "fontStyle", "bold");
    obj.edit87:setType("number");
    obj.edit87:setMin(0);
    obj.edit87:setMax(99);
    obj.edit87:setName("edit87");
    obj.edit87:setFontFamily("Cambria");
    obj.edit87:setTransparent(true);

    obj.dataLink91 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink91:setParent(obj.scrollBox2);
    obj.dataLink91:setDefaultValue("0");
    obj.dataLink91:setField("BAcrobacias");
    obj.dataLink91:setName("dataLink91");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.scrollBox2);
    obj.edit88:setHorzTextAlign("center");
    obj.edit88:setWidth(30);
    obj.edit88:setFontSize(14.0);
    obj.edit88:setField("BRoubo");
    obj.edit88:setLeft(413);
    obj.edit88:setTop(214);
    obj.edit88:setFontColor("white");
    lfm_setPropAsString(obj.edit88, "fontStyle", "bold");
    obj.edit88:setType("number");
    obj.edit88:setMin(0);
    obj.edit88:setMax(99);
    obj.edit88:setName("edit88");
    obj.edit88:setFontFamily("Cambria");
    obj.edit88:setTransparent(true);

    obj.dataLink92 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink92:setParent(obj.scrollBox2);
    obj.dataLink92:setDefaultValue("0");
    obj.dataLink92:setField("BRoubo");
    obj.dataLink92:setName("dataLink92");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.scrollBox2);
    obj.edit89:setHorzTextAlign("center");
    obj.edit89:setWidth(30);
    obj.edit89:setFontSize(14.0);
    obj.edit89:setField("BArremessarObjetos");
    obj.edit89:setLeft(413);
    obj.edit89:setTop(234);
    obj.edit89:setFontColor("white");
    lfm_setPropAsString(obj.edit89, "fontStyle", "bold");
    obj.edit89:setType("number");
    obj.edit89:setMin(0);
    obj.edit89:setMax(99);
    obj.edit89:setName("edit89");
    obj.edit89:setFontFamily("Cambria");
    obj.edit89:setTransparent(true);

    obj.dataLink93 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink93:setParent(obj.scrollBox2);
    obj.dataLink93:setDefaultValue("0");
    obj.dataLink93:setField("BArremessarObjetos");
    obj.dataLink93:setName("dataLink93");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.scrollBox2);
    obj.edit90:setHorzTextAlign("center");
    obj.edit90:setWidth(30);
    obj.edit90:setFontSize(14.0);
    obj.edit90:setField("BFurtividade");
    obj.edit90:setLeft(413);
    obj.edit90:setTop(254);
    obj.edit90:setFontColor("white");
    lfm_setPropAsString(obj.edit90, "fontStyle", "bold");
    obj.edit90:setType("number");
    obj.edit90:setMin(0);
    obj.edit90:setMax(99);
    obj.edit90:setName("edit90");
    obj.edit90:setFontFamily("Cambria");
    obj.edit90:setTransparent(true);

    obj.dataLink94 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink94:setParent(obj.scrollBox2);
    obj.dataLink94:setDefaultValue("0");
    obj.dataLink94:setField("BFurtividade");
    obj.dataLink94:setName("dataLink94");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.scrollBox2);
    obj.edit91:setHorzTextAlign("center");
    obj.edit91:setWidth(30);
    obj.edit91:setFontSize(14.0);
    obj.edit91:setField("BMontaria");
    obj.edit91:setLeft(413);
    obj.edit91:setTop(274);
    obj.edit91:setFontColor("white");
    lfm_setPropAsString(obj.edit91, "fontStyle", "bold");
    obj.edit91:setType("number");
    obj.edit91:setMin(0);
    obj.edit91:setMax(99);
    obj.edit91:setName("edit91");
    obj.edit91:setFontFamily("Cambria");
    obj.edit91:setTransparent(true);

    obj.dataLink95 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink95:setParent(obj.scrollBox2);
    obj.dataLink95:setDefaultValue("0");
    obj.dataLink95:setField("BMontaria");
    obj.dataLink95:setName("dataLink95");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.scrollBox2);
    obj.edit92:setHorzTextAlign("center");
    obj.edit92:setWidth(30);
    obj.edit92:setFontSize(14.0);
    obj.edit92:setField("BAcertoDistância");
    obj.edit92:setLeft(413);
    obj.edit92:setTop(294);
    obj.edit92:setFontColor("white");
    lfm_setPropAsString(obj.edit92, "fontStyle", "bold");
    obj.edit92:setType("number");
    obj.edit92:setMin(0);
    obj.edit92:setMax(99);
    obj.edit92:setName("edit92");
    obj.edit92:setFontFamily("Cambria");
    obj.edit92:setTransparent(true);

    obj.dataLink96 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink96:setParent(obj.scrollBox2);
    obj.dataLink96:setDefaultValue("0");
    obj.dataLink96:setField("BAcertoDistância");
    obj.dataLink96:setName("dataLink96");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.scrollBox2);
    obj.edit93:setHorzTextAlign("center");
    obj.edit93:setWidth(30);
    obj.edit93:setFontSize(14.0);
    obj.edit93:setField("BAcertoCurtoAlcance");
    obj.edit93:setLeft(413);
    obj.edit93:setTop(314);
    obj.edit93:setFontColor("white");
    lfm_setPropAsString(obj.edit93, "fontStyle", "bold");
    obj.edit93:setType("number");
    obj.edit93:setMin(0);
    obj.edit93:setMax(99);
    obj.edit93:setName("edit93");
    obj.edit93:setFontFamily("Cambria");
    obj.edit93:setTransparent(true);

    obj.dataLink97 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink97:setParent(obj.scrollBox2);
    obj.dataLink97:setDefaultValue("0");
    obj.dataLink97:setField("BAcertoCurtoAlcance");
    obj.dataLink97:setName("dataLink97");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.scrollBox2);
    obj.edit94:setHorzTextAlign("center");
    obj.edit94:setWidth(30);
    obj.edit94:setFontSize(14.0);
    obj.edit94:setField("BCorrer");
    obj.edit94:setLeft(413);
    obj.edit94:setTop(334);
    obj.edit94:setFontColor("white");
    lfm_setPropAsString(obj.edit94, "fontStyle", "bold");
    obj.edit94:setType("number");
    obj.edit94:setMin(0);
    obj.edit94:setMax(99);
    obj.edit94:setName("edit94");
    obj.edit94:setFontFamily("Cambria");
    obj.edit94:setTransparent(true);

    obj.dataLink98 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink98:setParent(obj.scrollBox2);
    obj.dataLink98:setDefaultValue("0");
    obj.dataLink98:setField("BCorrer");
    obj.dataLink98:setName("dataLink98");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.scrollBox2);
    obj.edit95:setHorzTextAlign("center");
    obj.edit95:setWidth(30);
    obj.edit95:setFontSize(14.0);
    obj.edit95:setField("BResistenciaVeneno");
    obj.edit95:setLeft(413);
    obj.edit95:setTop(354);
    obj.edit95:setFontColor("white");
    lfm_setPropAsString(obj.edit95, "fontStyle", "bold");
    obj.edit95:setType("number");
    obj.edit95:setMin(0);
    obj.edit95:setMax(99);
    obj.edit95:setName("edit95");
    obj.edit95:setFontFamily("Cambria");
    obj.edit95:setTransparent(true);

    obj.dataLink99 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink99:setParent(obj.scrollBox2);
    obj.dataLink99:setDefaultValue("0");
    obj.dataLink99:setField("BResistenciaVeneno");
    obj.dataLink99:setName("dataLink99");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.scrollBox2);
    obj.edit96:setHorzTextAlign("center");
    obj.edit96:setWidth(30);
    obj.edit96:setFontSize(14.0);
    obj.edit96:setField("BResistenciaCansaco");
    obj.edit96:setLeft(413);
    obj.edit96:setTop(374);
    obj.edit96:setFontColor("white");
    lfm_setPropAsString(obj.edit96, "fontStyle", "bold");
    obj.edit96:setType("number");
    obj.edit96:setMin(0);
    obj.edit96:setMax(99);
    obj.edit96:setName("edit96");
    obj.edit96:setFontFamily("Cambria");
    obj.edit96:setTransparent(true);

    obj.dataLink100 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink100:setParent(obj.scrollBox2);
    obj.dataLink100:setDefaultValue("0");
    obj.dataLink100:setField("BResistenciaCansaco");
    obj.dataLink100:setName("dataLink100");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.scrollBox2);
    obj.edit97:setHorzTextAlign("center");
    obj.edit97:setWidth(30);
    obj.edit97:setFontSize(14.0);
    obj.edit97:setField("BSegurarFolego");
    obj.edit97:setLeft(413);
    obj.edit97:setTop(394);
    obj.edit97:setFontColor("white");
    lfm_setPropAsString(obj.edit97, "fontStyle", "bold");
    obj.edit97:setType("number");
    obj.edit97:setMin(0);
    obj.edit97:setMax(99);
    obj.edit97:setName("edit97");
    obj.edit97:setFontFamily("Cambria");
    obj.edit97:setTransparent(true);

    obj.dataLink101 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink101:setParent(obj.scrollBox2);
    obj.dataLink101:setDefaultValue("0");
    obj.dataLink101:setField("BSegurarFolego");
    obj.dataLink101:setName("dataLink101");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.scrollBox2);
    obj.edit98:setHorzTextAlign("center");
    obj.edit98:setWidth(30);
    obj.edit98:setFontSize(14.0);
    obj.edit98:setField("BSuporteFrioCalor");
    obj.edit98:setLeft(413);
    obj.edit98:setTop(414);
    obj.edit98:setFontColor("white");
    lfm_setPropAsString(obj.edit98, "fontStyle", "bold");
    obj.edit98:setType("number");
    obj.edit98:setMin(0);
    obj.edit98:setMax(99);
    obj.edit98:setName("edit98");
    obj.edit98:setFontFamily("Cambria");
    obj.edit98:setTransparent(true);

    obj.dataLink102 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink102:setParent(obj.scrollBox2);
    obj.dataLink102:setDefaultValue("0");
    obj.dataLink102:setField("BSuporteFrioCalor");
    obj.dataLink102:setName("dataLink102");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.scrollBox2);
    obj.edit99:setHorzTextAlign("center");
    obj.edit99:setWidth(30);
    obj.edit99:setFontSize(14.0);
    obj.edit99:setField("BDefender");
    obj.edit99:setLeft(413);
    obj.edit99:setTop(434);
    obj.edit99:setFontColor("white");
    lfm_setPropAsString(obj.edit99, "fontStyle", "bold");
    obj.edit99:setType("number");
    obj.edit99:setMin(0);
    obj.edit99:setMax(99);
    obj.edit99:setName("edit99");
    obj.edit99:setFontFamily("Cambria");
    obj.edit99:setTransparent(true);

    obj.dataLink103 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink103:setParent(obj.scrollBox2);
    obj.dataLink103:setDefaultValue("0");
    obj.dataLink103:setField("BDefender");
    obj.dataLink103:setName("dataLink103");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.scrollBox2);
    obj.edit100:setHorzTextAlign("center");
    obj.edit100:setWidth(30);
    obj.edit100:setFontSize(14.0);
    obj.edit100:setField("BProfissao");
    obj.edit100:setLeft(413);
    obj.edit100:setTop(454);
    obj.edit100:setFontColor("white");
    lfm_setPropAsString(obj.edit100, "fontStyle", "bold");
    obj.edit100:setType("number");
    obj.edit100:setMin(0);
    obj.edit100:setMax(99);
    obj.edit100:setName("edit100");
    obj.edit100:setFontFamily("Cambria");
    obj.edit100:setTransparent(true);

    obj.dataLink104 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink104:setParent(obj.scrollBox2);
    obj.dataLink104:setDefaultValue("0");
    obj.dataLink104:setField("BProfissao");
    obj.dataLink104:setName("dataLink104");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.scrollBox2);
    obj.edit101:setHorzTextAlign("center");
    obj.edit101:setWidth(30);
    obj.edit101:setFontSize(14.0);
    obj.edit101:setField("BDecifrarCodigo");
    obj.edit101:setLeft(413);
    obj.edit101:setTop(474);
    obj.edit101:setFontColor("white");
    lfm_setPropAsString(obj.edit101, "fontStyle", "bold");
    obj.edit101:setType("number");
    obj.edit101:setMin(0);
    obj.edit101:setMax(99);
    obj.edit101:setName("edit101");
    obj.edit101:setFontFamily("Cambria");
    obj.edit101:setTransparent(true);

    obj.dataLink105 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink105:setParent(obj.scrollBox2);
    obj.dataLink105:setDefaultValue("0");
    obj.dataLink105:setField("BDecifrarCodigo");
    obj.dataLink105:setName("dataLink105");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.scrollBox2);
    obj.edit102:setHorzTextAlign("center");
    obj.edit102:setWidth(30);
    obj.edit102:setFontSize(14.0);
    obj.edit102:setField("BIdentificarCriatura");
    obj.edit102:setLeft(413);
    obj.edit102:setTop(494);
    obj.edit102:setFontColor("white");
    lfm_setPropAsString(obj.edit102, "fontStyle", "bold");
    obj.edit102:setType("number");
    obj.edit102:setMin(0);
    obj.edit102:setMax(99);
    obj.edit102:setName("edit102");
    obj.edit102:setFontFamily("Cambria");
    obj.edit102:setTransparent(true);

    obj.dataLink106 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink106:setParent(obj.scrollBox2);
    obj.dataLink106:setDefaultValue("0");
    obj.dataLink106:setField("BIdentificarCriatura");
    obj.dataLink106:setName("dataLink106");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.scrollBox2);
    obj.edit103:setHorzTextAlign("center");
    obj.edit103:setWidth(30);
    obj.edit103:setFontSize(14.0);
    obj.edit103:setField("BLerManuscrito");
    obj.edit103:setLeft(413);
    obj.edit103:setTop(514);
    obj.edit103:setFontColor("white");
    lfm_setPropAsString(obj.edit103, "fontStyle", "bold");
    obj.edit103:setType("number");
    obj.edit103:setMin(0);
    obj.edit103:setMax(99);
    obj.edit103:setName("edit103");
    obj.edit103:setFontFamily("Cambria");
    obj.edit103:setTransparent(true);

    obj.dataLink107 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink107:setParent(obj.scrollBox2);
    obj.dataLink107:setDefaultValue("0");
    obj.dataLink107:setField("BLerManuscrito");
    obj.dataLink107:setName("dataLink107");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.scrollBox2);
    obj.edit104:setHorzTextAlign("center");
    obj.edit104:setWidth(30);
    obj.edit104:setFontSize(14.0);
    obj.edit104:setField("BPrepararEstrategia");
    obj.edit104:setLeft(413);
    obj.edit104:setTop(534);
    obj.edit104:setFontColor("white");
    lfm_setPropAsString(obj.edit104, "fontStyle", "bold");
    obj.edit104:setType("number");
    obj.edit104:setMin(0);
    obj.edit104:setMax(99);
    obj.edit104:setName("edit104");
    obj.edit104:setFontFamily("Cambria");
    obj.edit104:setTransparent(true);

    obj.dataLink108 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink108:setParent(obj.scrollBox2);
    obj.dataLink108:setDefaultValue("0");
    obj.dataLink108:setField("BPrepararEstrategia");
    obj.dataLink108:setName("dataLink108");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.scrollBox2);
    obj.edit105:setHorzTextAlign("center");
    obj.edit105:setWidth(30);
    obj.edit105:setFontSize(14.0);
    obj.edit105:setField("BResistenciaMental");
    obj.edit105:setLeft(413);
    obj.edit105:setTop(554);
    obj.edit105:setFontColor("white");
    lfm_setPropAsString(obj.edit105, "fontStyle", "bold");
    obj.edit105:setType("number");
    obj.edit105:setMin(0);
    obj.edit105:setMax(99);
    obj.edit105:setName("edit105");
    obj.edit105:setFontFamily("Cambria");
    obj.edit105:setTransparent(true);

    obj.dataLink109 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink109:setParent(obj.scrollBox2);
    obj.dataLink109:setDefaultValue("0");
    obj.dataLink109:setField("BResistenciaMental");
    obj.dataLink109:setName("dataLink109");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.scrollBox2);
    obj.edit106:setHorzTextAlign("center");
    obj.edit106:setWidth(30);
    obj.edit106:setFontSize(14.0);
    obj.edit106:setField("BHistoria");
    obj.edit106:setLeft(413);
    obj.edit106:setTop(574);
    obj.edit106:setFontColor("white");
    lfm_setPropAsString(obj.edit106, "fontStyle", "bold");
    obj.edit106:setType("number");
    obj.edit106:setMin(0);
    obj.edit106:setMax(99);
    obj.edit106:setName("edit106");
    obj.edit106:setFontFamily("Cambria");
    obj.edit106:setTransparent(true);

    obj.dataLink110 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink110:setParent(obj.scrollBox2);
    obj.dataLink110:setDefaultValue("0");
    obj.dataLink110:setField("BHistoria");
    obj.dataLink110:setName("dataLink110");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.scrollBox2);
    obj.edit107:setHorzTextAlign("center");
    obj.edit107:setWidth(30);
    obj.edit107:setFontSize(14.0);
    obj.edit107:setField("BInvestigacao");
    obj.edit107:setLeft(413);
    obj.edit107:setTop(594);
    obj.edit107:setFontColor("white");
    lfm_setPropAsString(obj.edit107, "fontStyle", "bold");
    obj.edit107:setType("number");
    obj.edit107:setMin(0);
    obj.edit107:setMax(99);
    obj.edit107:setName("edit107");
    obj.edit107:setFontFamily("Cambria");
    obj.edit107:setTransparent(true);

    obj.dataLink111 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink111:setParent(obj.scrollBox2);
    obj.dataLink111:setDefaultValue("0");
    obj.dataLink111:setField("BInvestigacao");
    obj.dataLink111:setName("dataLink111");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.scrollBox2);
    obj.edit108:setHorzTextAlign("center");
    obj.edit108:setWidth(30);
    obj.edit108:setFontSize(14.0);
    obj.edit108:setField("BPerceberMentira");
    obj.edit108:setLeft(413);
    obj.edit108:setTop(614);
    obj.edit108:setFontColor("white");
    lfm_setPropAsString(obj.edit108, "fontStyle", "bold");
    obj.edit108:setType("number");
    obj.edit108:setMin(0);
    obj.edit108:setMax(99);
    obj.edit108:setName("edit108");
    obj.edit108:setFontFamily("Cambria");
    obj.edit108:setTransparent(true);

    obj.dataLink112 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink112:setParent(obj.scrollBox2);
    obj.dataLink112:setDefaultValue("0");
    obj.dataLink112:setField("BPerceberMentira");
    obj.dataLink112:setName("dataLink112");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.scrollBox2);
    obj.edit109:setHorzTextAlign("center");
    obj.edit109:setWidth(30);
    obj.edit109:setFontSize(14.0);
    obj.edit109:setField("BPercepcao");
    obj.edit109:setLeft(413);
    obj.edit109:setTop(634);
    obj.edit109:setFontColor("white");
    lfm_setPropAsString(obj.edit109, "fontStyle", "bold");
    obj.edit109:setType("number");
    obj.edit109:setMin(0);
    obj.edit109:setMax(99);
    obj.edit109:setName("edit109");
    obj.edit109:setFontFamily("Cambria");
    obj.edit109:setTransparent(true);

    obj.dataLink113 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink113:setParent(obj.scrollBox2);
    obj.dataLink113:setDefaultValue("0");
    obj.dataLink113:setField("BPercepcao");
    obj.dataLink113:setName("dataLink113");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.scrollBox2);
    obj.edit110:setHorzTextAlign("center");
    obj.edit110:setWidth(30);
    obj.edit110:setFontSize(14.0);
    obj.edit110:setField("BSentirPerigo");
    obj.edit110:setLeft(413);
    obj.edit110:setTop(654);
    obj.edit110:setFontColor("white");
    lfm_setPropAsString(obj.edit110, "fontStyle", "bold");
    obj.edit110:setType("number");
    obj.edit110:setMin(0);
    obj.edit110:setMax(99);
    obj.edit110:setName("edit110");
    obj.edit110:setFontFamily("Cambria");
    obj.edit110:setTransparent(true);

    obj.dataLink114 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink114:setParent(obj.scrollBox2);
    obj.dataLink114:setDefaultValue("0");
    obj.dataLink114:setField("BSentirPerigo");
    obj.dataLink114:setName("dataLink114");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.scrollBox2);
    obj.edit111:setHorzTextAlign("center");
    obj.edit111:setWidth(30);
    obj.edit111:setFontSize(14.0);
    obj.edit111:setField("BDetectarMagia");
    obj.edit111:setLeft(413);
    obj.edit111:setTop(674);
    obj.edit111:setFontColor("white");
    lfm_setPropAsString(obj.edit111, "fontStyle", "bold");
    obj.edit111:setType("number");
    obj.edit111:setMin(0);
    obj.edit111:setMax(99);
    obj.edit111:setName("edit111");
    obj.edit111:setFontFamily("Cambria");
    obj.edit111:setTransparent(true);

    obj.dataLink115 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink115:setParent(obj.scrollBox2);
    obj.dataLink115:setDefaultValue("0");
    obj.dataLink115:setField("BDetectarMagia");
    obj.dataLink115:setName("dataLink115");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.scrollBox2);
    obj.edit112:setHorzTextAlign("center");
    obj.edit112:setWidth(30);
    obj.edit112:setFontSize(14.0);
    obj.edit112:setField("BAcertoMagico");
    obj.edit112:setLeft(413);
    obj.edit112:setTop(694);
    obj.edit112:setFontColor("white");
    lfm_setPropAsString(obj.edit112, "fontStyle", "bold");
    obj.edit112:setType("number");
    obj.edit112:setMin(0);
    obj.edit112:setMax(99);
    obj.edit112:setName("edit112");
    obj.edit112:setFontFamily("Cambria");
    obj.edit112:setTransparent(true);

    obj.dataLink116 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink116:setParent(obj.scrollBox2);
    obj.dataLink116:setDefaultValue("0");
    obj.dataLink116:setField("BAcertoMagico");
    obj.dataLink116:setName("dataLink116");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.scrollBox2);
    obj.edit113:setHorzTextAlign("center");
    obj.edit113:setWidth(30);
    obj.edit113:setFontSize(14.0);
    obj.edit113:setField("BDanoMagico");
    obj.edit113:setLeft(413);
    obj.edit113:setTop(714);
    obj.edit113:setFontColor("white");
    lfm_setPropAsString(obj.edit113, "fontStyle", "bold");
    obj.edit113:setType("number");
    obj.edit113:setMin(0);
    obj.edit113:setMax(99);
    obj.edit113:setName("edit113");
    obj.edit113:setFontFamily("Cambria");
    obj.edit113:setTransparent(true);

    obj.dataLink117 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink117:setParent(obj.scrollBox2);
    obj.dataLink117:setDefaultValue("0");
    obj.dataLink117:setField("BDanoMagico");
    obj.dataLink117:setName("dataLink117");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.scrollBox2);
    obj.edit114:setHorzTextAlign("center");
    obj.edit114:setWidth(30);
    obj.edit114:setFontSize(14.0);
    obj.edit114:setField("BSobrevivencia");
    obj.edit114:setLeft(413);
    obj.edit114:setTop(734);
    obj.edit114:setFontColor("white");
    lfm_setPropAsString(obj.edit114, "fontStyle", "bold");
    obj.edit114:setType("number");
    obj.edit114:setMin(0);
    obj.edit114:setMax(99);
    obj.edit114:setName("edit114");
    obj.edit114:setFontFamily("Cambria");
    obj.edit114:setTransparent(true);

    obj.dataLink118 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink118:setParent(obj.scrollBox2);
    obj.dataLink118:setDefaultValue("0");
    obj.dataLink118:setField("BSobrevivencia");
    obj.dataLink118:setName("dataLink118");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.scrollBox2);
    obj.edit115:setHorzTextAlign("center");
    obj.edit115:setWidth(30);
    obj.edit115:setFontSize(14.0);
    obj.edit115:setField("BMedicina");
    obj.edit115:setLeft(413);
    obj.edit115:setTop(754);
    obj.edit115:setFontColor("white");
    lfm_setPropAsString(obj.edit115, "fontStyle", "bold");
    obj.edit115:setType("number");
    obj.edit115:setMin(0);
    obj.edit115:setMax(99);
    obj.edit115:setName("edit115");
    obj.edit115:setFontFamily("Cambria");
    obj.edit115:setTransparent(true);

    obj.dataLink119 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink119:setParent(obj.scrollBox2);
    obj.dataLink119:setDefaultValue("0");
    obj.dataLink119:setField("BMedicina");
    obj.dataLink119:setName("dataLink119");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.scrollBox2);
    obj.edit116:setHorzTextAlign("center");
    obj.edit116:setWidth(30);
    obj.edit116:setFontSize(14.0);
    obj.edit116:setField("BNatureza");
    obj.edit116:setLeft(413);
    obj.edit116:setTop(774);
    obj.edit116:setFontColor("white");
    lfm_setPropAsString(obj.edit116, "fontStyle", "bold");
    obj.edit116:setType("number");
    obj.edit116:setMin(0);
    obj.edit116:setMax(99);
    obj.edit116:setName("edit116");
    obj.edit116:setFontFamily("Cambria");
    obj.edit116:setTransparent(true);

    obj.dataLink120 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink120:setParent(obj.scrollBox2);
    obj.dataLink120:setDefaultValue("0");
    obj.dataLink120:setField("BNatureza");
    obj.dataLink120:setName("dataLink120");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.scrollBox2);
    obj.edit117:setHorzTextAlign("center");
    obj.edit117:setWidth(30);
    obj.edit117:setFontSize(14.0);
    obj.edit117:setField("BReligiao");
    obj.edit117:setLeft(413);
    obj.edit117:setTop(794);
    obj.edit117:setFontColor("white");
    lfm_setPropAsString(obj.edit117, "fontStyle", "bold");
    obj.edit117:setType("number");
    obj.edit117:setMin(0);
    obj.edit117:setMax(99);
    obj.edit117:setName("edit117");
    obj.edit117:setFontFamily("Cambria");
    obj.edit117:setTransparent(true);

    obj.dataLink121 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink121:setParent(obj.scrollBox2);
    obj.dataLink121:setDefaultValue("0");
    obj.dataLink121:setField("BReligiao");
    obj.dataLink121:setName("dataLink121");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.scrollBox2);
    obj.edit118:setHorzTextAlign("center");
    obj.edit118:setWidth(30);
    obj.edit118:setFontSize(14.0);
    obj.edit118:setField("BDiscurso");
    obj.edit118:setLeft(413);
    obj.edit118:setTop(814);
    obj.edit118:setFontColor("white");
    lfm_setPropAsString(obj.edit118, "fontStyle", "bold");
    obj.edit118:setType("number");
    obj.edit118:setMin(0);
    obj.edit118:setMax(99);
    obj.edit118:setName("edit118");
    obj.edit118:setFontFamily("Cambria");
    obj.edit118:setTransparent(true);

    obj.dataLink122 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink122:setParent(obj.scrollBox2);
    obj.dataLink122:setDefaultValue("0");
    obj.dataLink122:setField("BDiscurso");
    obj.dataLink122:setName("dataLink122");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.scrollBox2);
    obj.edit119:setHorzTextAlign("center");
    obj.edit119:setWidth(30);
    obj.edit119:setFontSize(14.0);
    obj.edit119:setField("BSeducao");
    obj.edit119:setLeft(413);
    obj.edit119:setTop(834);
    obj.edit119:setFontColor("white");
    lfm_setPropAsString(obj.edit119, "fontStyle", "bold");
    obj.edit119:setType("number");
    obj.edit119:setMin(0);
    obj.edit119:setMax(99);
    obj.edit119:setName("edit119");
    obj.edit119:setFontFamily("Cambria");
    obj.edit119:setTransparent(true);

    obj.dataLink123 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink123:setParent(obj.scrollBox2);
    obj.dataLink123:setDefaultValue("0");
    obj.dataLink123:setField("BSeducao");
    obj.dataLink123:setName("dataLink123");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.scrollBox2);
    obj.edit120:setHorzTextAlign("center");
    obj.edit120:setWidth(30);
    obj.edit120:setFontSize(14.0);
    obj.edit120:setField("BIntimidar");
    obj.edit120:setLeft(413);
    obj.edit120:setTop(854);
    obj.edit120:setFontColor("white");
    lfm_setPropAsString(obj.edit120, "fontStyle", "bold");
    obj.edit120:setType("number");
    obj.edit120:setMin(0);
    obj.edit120:setMax(99);
    obj.edit120:setName("edit120");
    obj.edit120:setFontFamily("Cambria");
    obj.edit120:setTransparent(true);

    obj.dataLink124 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink124:setParent(obj.scrollBox2);
    obj.dataLink124:setDefaultValue("0");
    obj.dataLink124:setField("BIntimidar");
    obj.dataLink124:setName("dataLink124");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.scrollBox2);
    obj.edit121:setHorzTextAlign("center");
    obj.edit121:setWidth(30);
    obj.edit121:setFontSize(14.0);
    obj.edit121:setField("BAtuar");
    obj.edit121:setLeft(413);
    obj.edit121:setTop(874);
    obj.edit121:setFontColor("white");
    lfm_setPropAsString(obj.edit121, "fontStyle", "bold");
    obj.edit121:setType("number");
    obj.edit121:setMin(0);
    obj.edit121:setMax(99);
    obj.edit121:setName("edit121");
    obj.edit121:setFontFamily("Cambria");
    obj.edit121:setTransparent(true);

    obj.dataLink125 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink125:setParent(obj.scrollBox2);
    obj.dataLink125:setDefaultValue("0");
    obj.dataLink125:setField("BAtuar");
    obj.dataLink125:setName("dataLink125");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.scrollBox2);
    obj.edit122:setHorzTextAlign("center");
    obj.edit122:setWidth(30);
    obj.edit122:setFontSize(14.0);
    obj.edit122:setField("BPersuadir");
    obj.edit122:setLeft(413);
    obj.edit122:setTop(894);
    obj.edit122:setFontColor("white");
    lfm_setPropAsString(obj.edit122, "fontStyle", "bold");
    obj.edit122:setType("number");
    obj.edit122:setMin(0);
    obj.edit122:setMax(99);
    obj.edit122:setName("edit122");
    obj.edit122:setFontFamily("Cambria");
    obj.edit122:setTransparent(true);

    obj.dataLink126 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink126:setParent(obj.scrollBox2);
    obj.dataLink126:setDefaultValue("0");
    obj.dataLink126:setField("BPersuadir");
    obj.dataLink126:setName("dataLink126");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.scrollBox2);
    obj.edit123:setHorzTextAlign("center");
    obj.edit123:setWidth(30);
    obj.edit123:setFontSize(14.0);
    obj.edit123:setField("BMentir");
    obj.edit123:setLeft(413);
    obj.edit123:setTop(914);
    obj.edit123:setFontColor("white");
    lfm_setPropAsString(obj.edit123, "fontStyle", "bold");
    obj.edit123:setType("number");
    obj.edit123:setMin(0);
    obj.edit123:setMax(99);
    obj.edit123:setName("edit123");
    obj.edit123:setFontFamily("Cambria");
    obj.edit123:setTransparent(true);

    obj.dataLink127 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink127:setParent(obj.scrollBox2);
    obj.dataLink127:setDefaultValue("0");
    obj.dataLink127:setField("BMentir");
    obj.dataLink127:setName("dataLink127");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.scrollBox2);
    obj.edit124:setHorzTextAlign("center");
    obj.edit124:setWidth(30);
    obj.edit124:setFontSize(14.0);
    obj.edit124:setField("ModDanoCurtoAlcance");
    obj.edit124:setLeft(522);
    obj.edit124:setTop(-6);
    obj.edit124:setFontColor("white");
    lfm_setPropAsString(obj.edit124, "fontStyle", "bold");
    obj.edit124:setType("number");
    obj.edit124:setMin(0);
    obj.edit124:setMax(99);
    obj.edit124:setName("edit124");
    obj.edit124:setFontFamily("Cambria");
    obj.edit124:setTransparent(true);

    obj.dataLink128 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink128:setParent(obj.scrollBox2);
    obj.dataLink128:setDefaultValue("0");
    obj.dataLink128:setField("ModDanoCurtoAlcance");
    obj.dataLink128:setName("dataLink128");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.scrollBox2);
    obj.edit125:setHorzTextAlign("center");
    obj.edit125:setWidth(30);
    obj.edit125:setFontSize(14.0);
    obj.edit125:setField("ModDanoLongoAlcance");
    obj.edit125:setLeft(522);
    obj.edit125:setTop(14);
    obj.edit125:setFontColor("white");
    lfm_setPropAsString(obj.edit125, "fontStyle", "bold");
    obj.edit125:setType("number");
    obj.edit125:setMin(0);
    obj.edit125:setMax(99);
    obj.edit125:setName("edit125");
    obj.edit125:setFontFamily("Cambria");
    obj.edit125:setTransparent(true);

    obj.dataLink129 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink129:setParent(obj.scrollBox2);
    obj.dataLink129:setDefaultValue("0");
    obj.dataLink129:setField("ModDanoLongoAlcance");
    obj.dataLink129:setName("dataLink129");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.scrollBox2);
    obj.edit126:setHorzTextAlign("center");
    obj.edit126:setWidth(30);
    obj.edit126:setFontSize(14.0);
    obj.edit126:setField("ModQuebrarObjetos");
    obj.edit126:setLeft(522);
    obj.edit126:setTop(34);
    obj.edit126:setFontColor("white");
    lfm_setPropAsString(obj.edit126, "fontStyle", "bold");
    obj.edit126:setType("number");
    obj.edit126:setMin(0);
    obj.edit126:setMax(99);
    obj.edit126:setName("edit126");
    obj.edit126:setFontFamily("Cambria");
    obj.edit126:setTransparent(true);

    obj.dataLink130 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink130:setParent(obj.scrollBox2);
    obj.dataLink130:setDefaultValue("0");
    obj.dataLink130:setField("ModQuebrarObjetos");
    obj.dataLink130:setName("dataLink130");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.scrollBox2);
    obj.edit127:setHorzTextAlign("center");
    obj.edit127:setWidth(30);
    obj.edit127:setFontSize(14.0);
    obj.edit127:setField("ModLevantarPeso");
    obj.edit127:setLeft(522);
    obj.edit127:setTop(54);
    obj.edit127:setFontColor("white");
    lfm_setPropAsString(obj.edit127, "fontStyle", "bold");
    obj.edit127:setType("number");
    obj.edit127:setMin(0);
    obj.edit127:setMax(99);
    obj.edit127:setName("edit127");
    obj.edit127:setFontFamily("Cambria");
    obj.edit127:setTransparent(true);

    obj.dataLink131 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink131:setParent(obj.scrollBox2);
    obj.dataLink131:setDefaultValue("0");
    obj.dataLink131:setField("ModLevantarPeso");
    obj.dataLink131:setName("dataLink131");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.scrollBox2);
    obj.edit128:setHorzTextAlign("center");
    obj.edit128:setWidth(30);
    obj.edit128:setFontSize(14.0);
    obj.edit128:setField("ModEmpurrarObstaculo");
    obj.edit128:setLeft(522);
    obj.edit128:setTop(74);
    obj.edit128:setFontColor("white");
    lfm_setPropAsString(obj.edit128, "fontStyle", "bold");
    obj.edit128:setType("number");
    obj.edit128:setMin(0);
    obj.edit128:setMax(99);
    obj.edit128:setName("edit128");
    obj.edit128:setFontFamily("Cambria");
    obj.edit128:setTransparent(true);

    obj.dataLink132 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink132:setParent(obj.scrollBox2);
    obj.dataLink132:setDefaultValue("0");
    obj.dataLink132:setField("ModEmpurrarObstaculo");
    obj.dataLink132:setName("dataLink132");

    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.scrollBox2);
    obj.edit129:setHorzTextAlign("center");
    obj.edit129:setWidth(30);
    obj.edit129:setFontSize(14.0);
    obj.edit129:setField("ModBracoDeFerro");
    obj.edit129:setLeft(522);
    obj.edit129:setTop(94);
    obj.edit129:setFontColor("white");
    lfm_setPropAsString(obj.edit129, "fontStyle", "bold");
    obj.edit129:setType("number");
    obj.edit129:setMin(0);
    obj.edit129:setMax(99);
    obj.edit129:setName("edit129");
    obj.edit129:setFontFamily("Cambria");
    obj.edit129:setTransparent(true);

    obj.dataLink133 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink133:setParent(obj.scrollBox2);
    obj.dataLink133:setDefaultValue("0");
    obj.dataLink133:setField("ModBracoDeFerro");
    obj.dataLink133:setName("dataLink133");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.scrollBox2);
    obj.edit130:setHorzTextAlign("center");
    obj.edit130:setWidth(30);
    obj.edit130:setFontSize(14.0);
    obj.edit130:setField("ModEscalar");
    obj.edit130:setLeft(522);
    obj.edit130:setTop(114);
    obj.edit130:setFontColor("white");
    lfm_setPropAsString(obj.edit130, "fontStyle", "bold");
    obj.edit130:setType("number");
    obj.edit130:setMin(0);
    obj.edit130:setMax(99);
    obj.edit130:setName("edit130");
    obj.edit130:setFontFamily("Cambria");
    obj.edit130:setTransparent(true);

    obj.dataLink134 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink134:setParent(obj.scrollBox2);
    obj.dataLink134:setDefaultValue("0");
    obj.dataLink134:setField("ModEscalar");
    obj.dataLink134:setName("dataLink134");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.scrollBox2);
    obj.edit131:setHorzTextAlign("center");
    obj.edit131:setWidth(30);
    obj.edit131:setFontSize(14.0);
    obj.edit131:setField("ModIniciativa");
    obj.edit131:setLeft(522);
    obj.edit131:setTop(134);
    obj.edit131:setFontColor("white");
    lfm_setPropAsString(obj.edit131, "fontStyle", "bold");
    obj.edit131:setType("number");
    obj.edit131:setMin(0);
    obj.edit131:setMax(99);
    obj.edit131:setName("edit131");
    obj.edit131:setFontFamily("Cambria");
    obj.edit131:setTransparent(true);

    obj.dataLink135 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink135:setParent(obj.scrollBox2);
    obj.dataLink135:setDefaultValue("0");
    obj.dataLink135:setField("ModIniciativa");
    obj.dataLink135:setName("dataLink135");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.scrollBox2);
    obj.edit132:setHorzTextAlign("center");
    obj.edit132:setWidth(30);
    obj.edit132:setFontSize(14.0);
    obj.edit132:setField("ModEsquivar");
    obj.edit132:setLeft(522);
    obj.edit132:setTop(154);
    obj.edit132:setFontColor("white");
    lfm_setPropAsString(obj.edit132, "fontStyle", "bold");
    obj.edit132:setType("number");
    obj.edit132:setMin(0);
    obj.edit132:setMax(99);
    obj.edit132:setName("edit132");
    obj.edit132:setFontFamily("Cambria");
    obj.edit132:setTransparent(true);

    obj.dataLink136 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink136:setParent(obj.scrollBox2);
    obj.dataLink136:setDefaultValue("0");
    obj.dataLink136:setField("ModEsquivar");
    obj.dataLink136:setName("dataLink136");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.scrollBox2);
    obj.edit133:setHorzTextAlign("center");
    obj.edit133:setWidth(30);
    obj.edit133:setFontSize(14.0);
    obj.edit133:setField("ModDesarmarArmadilha");
    obj.edit133:setLeft(522);
    obj.edit133:setTop(174);
    obj.edit133:setFontColor("white");
    lfm_setPropAsString(obj.edit133, "fontStyle", "bold");
    obj.edit133:setType("number");
    obj.edit133:setMin(0);
    obj.edit133:setMax(99);
    obj.edit133:setName("edit133");
    obj.edit133:setFontFamily("Cambria");
    obj.edit133:setTransparent(true);

    obj.dataLink137 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink137:setParent(obj.scrollBox2);
    obj.dataLink137:setDefaultValue("0");
    obj.dataLink137:setField("ModDesarmarArmadilha");
    obj.dataLink137:setName("dataLink137");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.scrollBox2);
    obj.edit134:setHorzTextAlign("center");
    obj.edit134:setWidth(30);
    obj.edit134:setFontSize(14.0);
    obj.edit134:setField("ModAcrobacias");
    obj.edit134:setLeft(522);
    obj.edit134:setTop(194);
    obj.edit134:setFontColor("white");
    lfm_setPropAsString(obj.edit134, "fontStyle", "bold");
    obj.edit134:setType("number");
    obj.edit134:setMin(0);
    obj.edit134:setMax(99);
    obj.edit134:setName("edit134");
    obj.edit134:setFontFamily("Cambria");
    obj.edit134:setTransparent(true);

    obj.dataLink138 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink138:setParent(obj.scrollBox2);
    obj.dataLink138:setDefaultValue("0");
    obj.dataLink138:setField("ModAcrobacias");
    obj.dataLink138:setName("dataLink138");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.scrollBox2);
    obj.edit135:setHorzTextAlign("center");
    obj.edit135:setWidth(30);
    obj.edit135:setFontSize(14.0);
    obj.edit135:setField("ModRoubo");
    obj.edit135:setLeft(522);
    obj.edit135:setTop(214);
    obj.edit135:setFontColor("white");
    lfm_setPropAsString(obj.edit135, "fontStyle", "bold");
    obj.edit135:setType("number");
    obj.edit135:setMin(0);
    obj.edit135:setMax(99);
    obj.edit135:setName("edit135");
    obj.edit135:setFontFamily("Cambria");
    obj.edit135:setTransparent(true);

    obj.dataLink139 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink139:setParent(obj.scrollBox2);
    obj.dataLink139:setDefaultValue("0");
    obj.dataLink139:setField("ModRoubo");
    obj.dataLink139:setName("dataLink139");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.scrollBox2);
    obj.edit136:setHorzTextAlign("center");
    obj.edit136:setWidth(30);
    obj.edit136:setFontSize(14.0);
    obj.edit136:setField("ModArremessarObjetos");
    obj.edit136:setLeft(522);
    obj.edit136:setTop(234);
    obj.edit136:setFontColor("white");
    lfm_setPropAsString(obj.edit136, "fontStyle", "bold");
    obj.edit136:setType("number");
    obj.edit136:setMin(0);
    obj.edit136:setMax(99);
    obj.edit136:setName("edit136");
    obj.edit136:setFontFamily("Cambria");
    obj.edit136:setTransparent(true);

    obj.dataLink140 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink140:setParent(obj.scrollBox2);
    obj.dataLink140:setDefaultValue("0");
    obj.dataLink140:setField("ModArremessarObjetos");
    obj.dataLink140:setName("dataLink140");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.scrollBox2);
    obj.edit137:setHorzTextAlign("center");
    obj.edit137:setWidth(30);
    obj.edit137:setFontSize(14.0);
    obj.edit137:setField("ModFurtividade");
    obj.edit137:setLeft(522);
    obj.edit137:setTop(254);
    obj.edit137:setFontColor("white");
    lfm_setPropAsString(obj.edit137, "fontStyle", "bold");
    obj.edit137:setType("number");
    obj.edit137:setMin(0);
    obj.edit137:setMax(99);
    obj.edit137:setName("edit137");
    obj.edit137:setFontFamily("Cambria");
    obj.edit137:setTransparent(true);

    obj.dataLink141 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink141:setParent(obj.scrollBox2);
    obj.dataLink141:setDefaultValue("0");
    obj.dataLink141:setField("ModFurtividade");
    obj.dataLink141:setName("dataLink141");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.scrollBox2);
    obj.edit138:setHorzTextAlign("center");
    obj.edit138:setWidth(30);
    obj.edit138:setFontSize(14.0);
    obj.edit138:setField("ModMontaria");
    obj.edit138:setLeft(522);
    obj.edit138:setTop(274);
    obj.edit138:setFontColor("white");
    lfm_setPropAsString(obj.edit138, "fontStyle", "bold");
    obj.edit138:setType("number");
    obj.edit138:setMin(0);
    obj.edit138:setMax(99);
    obj.edit138:setName("edit138");
    obj.edit138:setFontFamily("Cambria");
    obj.edit138:setTransparent(true);

    obj.dataLink142 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink142:setParent(obj.scrollBox2);
    obj.dataLink142:setDefaultValue("0");
    obj.dataLink142:setField("ModMontaria");
    obj.dataLink142:setName("dataLink142");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.scrollBox2);
    obj.edit139:setHorzTextAlign("center");
    obj.edit139:setWidth(30);
    obj.edit139:setFontSize(14.0);
    obj.edit139:setField("ModAcertoDistância");
    obj.edit139:setLeft(522);
    obj.edit139:setTop(294);
    obj.edit139:setFontColor("white");
    lfm_setPropAsString(obj.edit139, "fontStyle", "bold");
    obj.edit139:setType("number");
    obj.edit139:setMin(0);
    obj.edit139:setMax(99);
    obj.edit139:setName("edit139");
    obj.edit139:setFontFamily("Cambria");
    obj.edit139:setTransparent(true);

    obj.dataLink143 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink143:setParent(obj.scrollBox2);
    obj.dataLink143:setDefaultValue("0");
    obj.dataLink143:setField("ModAcertoDistância");
    obj.dataLink143:setName("dataLink143");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.scrollBox2);
    obj.edit140:setHorzTextAlign("center");
    obj.edit140:setWidth(30);
    obj.edit140:setFontSize(14.0);
    obj.edit140:setField("ModAcertoCurtoAlcance");
    obj.edit140:setLeft(522);
    obj.edit140:setTop(314);
    obj.edit140:setFontColor("white");
    lfm_setPropAsString(obj.edit140, "fontStyle", "bold");
    obj.edit140:setType("number");
    obj.edit140:setMin(0);
    obj.edit140:setMax(99);
    obj.edit140:setName("edit140");
    obj.edit140:setFontFamily("Cambria");
    obj.edit140:setTransparent(true);

    obj.dataLink144 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink144:setParent(obj.scrollBox2);
    obj.dataLink144:setDefaultValue("0");
    obj.dataLink144:setField("ModAcertoCurtoAlcance");
    obj.dataLink144:setName("dataLink144");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.scrollBox2);
    obj.edit141:setHorzTextAlign("center");
    obj.edit141:setWidth(30);
    obj.edit141:setFontSize(14.0);
    obj.edit141:setField("ModCorrer");
    obj.edit141:setLeft(522);
    obj.edit141:setTop(334);
    obj.edit141:setFontColor("white");
    lfm_setPropAsString(obj.edit141, "fontStyle", "bold");
    obj.edit141:setType("number");
    obj.edit141:setMin(0);
    obj.edit141:setMax(99);
    obj.edit141:setName("edit141");
    obj.edit141:setFontFamily("Cambria");
    obj.edit141:setTransparent(true);

    obj.dataLink145 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink145:setParent(obj.scrollBox2);
    obj.dataLink145:setDefaultValue("0");
    obj.dataLink145:setField("ModCorrer");
    obj.dataLink145:setName("dataLink145");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.scrollBox2);
    obj.edit142:setHorzTextAlign("center");
    obj.edit142:setWidth(30);
    obj.edit142:setFontSize(14.0);
    obj.edit142:setField("ModResistenciaVeneno");
    obj.edit142:setLeft(522);
    obj.edit142:setTop(354);
    obj.edit142:setFontColor("white");
    lfm_setPropAsString(obj.edit142, "fontStyle", "bold");
    obj.edit142:setType("number");
    obj.edit142:setMin(0);
    obj.edit142:setMax(99);
    obj.edit142:setName("edit142");
    obj.edit142:setFontFamily("Cambria");
    obj.edit142:setTransparent(true);

    obj.dataLink146 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink146:setParent(obj.scrollBox2);
    obj.dataLink146:setDefaultValue("0");
    obj.dataLink146:setField("ModResistenciaVeneno");
    obj.dataLink146:setName("dataLink146");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.scrollBox2);
    obj.edit143:setHorzTextAlign("center");
    obj.edit143:setWidth(30);
    obj.edit143:setFontSize(14.0);
    obj.edit143:setField("ModResistenciaCansaco");
    obj.edit143:setLeft(522);
    obj.edit143:setTop(374);
    obj.edit143:setFontColor("white");
    lfm_setPropAsString(obj.edit143, "fontStyle", "bold");
    obj.edit143:setType("number");
    obj.edit143:setMin(0);
    obj.edit143:setMax(99);
    obj.edit143:setName("edit143");
    obj.edit143:setFontFamily("Cambria");
    obj.edit143:setTransparent(true);

    obj.dataLink147 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink147:setParent(obj.scrollBox2);
    obj.dataLink147:setDefaultValue("0");
    obj.dataLink147:setField("ModResistenciaCansaco");
    obj.dataLink147:setName("dataLink147");

    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.scrollBox2);
    obj.edit144:setHorzTextAlign("center");
    obj.edit144:setWidth(30);
    obj.edit144:setFontSize(14.0);
    obj.edit144:setField("ModSegurarFolego");
    obj.edit144:setLeft(522);
    obj.edit144:setTop(394);
    obj.edit144:setFontColor("white");
    lfm_setPropAsString(obj.edit144, "fontStyle", "bold");
    obj.edit144:setType("number");
    obj.edit144:setMin(0);
    obj.edit144:setMax(99);
    obj.edit144:setName("edit144");
    obj.edit144:setFontFamily("Cambria");
    obj.edit144:setTransparent(true);

    obj.dataLink148 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink148:setParent(obj.scrollBox2);
    obj.dataLink148:setDefaultValue("0");
    obj.dataLink148:setField("ModSegurarFolego");
    obj.dataLink148:setName("dataLink148");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.scrollBox2);
    obj.edit145:setHorzTextAlign("center");
    obj.edit145:setWidth(30);
    obj.edit145:setFontSize(14.0);
    obj.edit145:setField("ModSuporteFrioCalor");
    obj.edit145:setLeft(522);
    obj.edit145:setTop(414);
    obj.edit145:setFontColor("white");
    lfm_setPropAsString(obj.edit145, "fontStyle", "bold");
    obj.edit145:setType("number");
    obj.edit145:setMin(0);
    obj.edit145:setMax(99);
    obj.edit145:setName("edit145");
    obj.edit145:setFontFamily("Cambria");
    obj.edit145:setTransparent(true);

    obj.dataLink149 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink149:setParent(obj.scrollBox2);
    obj.dataLink149:setDefaultValue("0");
    obj.dataLink149:setField("ModSuporteFrioCalor");
    obj.dataLink149:setName("dataLink149");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.scrollBox2);
    obj.edit146:setHorzTextAlign("center");
    obj.edit146:setWidth(30);
    obj.edit146:setFontSize(14.0);
    obj.edit146:setField("ModDefender");
    obj.edit146:setLeft(522);
    obj.edit146:setTop(434);
    obj.edit146:setFontColor("white");
    lfm_setPropAsString(obj.edit146, "fontStyle", "bold");
    obj.edit146:setType("number");
    obj.edit146:setMin(0);
    obj.edit146:setMax(99);
    obj.edit146:setName("edit146");
    obj.edit146:setFontFamily("Cambria");
    obj.edit146:setTransparent(true);

    obj.dataLink150 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink150:setParent(obj.scrollBox2);
    obj.dataLink150:setDefaultValue("0");
    obj.dataLink150:setField("ModDefender");
    obj.dataLink150:setName("dataLink150");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.scrollBox2);
    obj.edit147:setHorzTextAlign("center");
    obj.edit147:setWidth(30);
    obj.edit147:setFontSize(14.0);
    obj.edit147:setField("ModProfissao");
    obj.edit147:setLeft(522);
    obj.edit147:setTop(454);
    obj.edit147:setFontColor("white");
    lfm_setPropAsString(obj.edit147, "fontStyle", "bold");
    obj.edit147:setType("number");
    obj.edit147:setMin(0);
    obj.edit147:setMax(99);
    obj.edit147:setName("edit147");
    obj.edit147:setFontFamily("Cambria");
    obj.edit147:setTransparent(true);

    obj.dataLink151 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink151:setParent(obj.scrollBox2);
    obj.dataLink151:setDefaultValue("0");
    obj.dataLink151:setField("ModProfissao");
    obj.dataLink151:setName("dataLink151");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.scrollBox2);
    obj.edit148:setHorzTextAlign("center");
    obj.edit148:setWidth(30);
    obj.edit148:setFontSize(14.0);
    obj.edit148:setField("ModDecifrarCodigo");
    obj.edit148:setLeft(522);
    obj.edit148:setTop(474);
    obj.edit148:setFontColor("white");
    lfm_setPropAsString(obj.edit148, "fontStyle", "bold");
    obj.edit148:setType("number");
    obj.edit148:setMin(0);
    obj.edit148:setMax(99);
    obj.edit148:setName("edit148");
    obj.edit148:setFontFamily("Cambria");
    obj.edit148:setTransparent(true);

    obj.dataLink152 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink152:setParent(obj.scrollBox2);
    obj.dataLink152:setDefaultValue("0");
    obj.dataLink152:setField("ModDecifrarCodigo");
    obj.dataLink152:setName("dataLink152");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.scrollBox2);
    obj.edit149:setHorzTextAlign("center");
    obj.edit149:setWidth(30);
    obj.edit149:setFontSize(14.0);
    obj.edit149:setField("ModIdentificarCriatura");
    obj.edit149:setLeft(522);
    obj.edit149:setTop(494);
    obj.edit149:setFontColor("white");
    lfm_setPropAsString(obj.edit149, "fontStyle", "bold");
    obj.edit149:setType("number");
    obj.edit149:setMin(0);
    obj.edit149:setMax(99);
    obj.edit149:setName("edit149");
    obj.edit149:setFontFamily("Cambria");
    obj.edit149:setTransparent(true);

    obj.dataLink153 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink153:setParent(obj.scrollBox2);
    obj.dataLink153:setDefaultValue("0");
    obj.dataLink153:setField("ModIdentificarCriatura");
    obj.dataLink153:setName("dataLink153");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.scrollBox2);
    obj.edit150:setHorzTextAlign("center");
    obj.edit150:setWidth(30);
    obj.edit150:setFontSize(14.0);
    obj.edit150:setField("ModLerManuscrito");
    obj.edit150:setLeft(522);
    obj.edit150:setTop(514);
    obj.edit150:setFontColor("white");
    lfm_setPropAsString(obj.edit150, "fontStyle", "bold");
    obj.edit150:setType("number");
    obj.edit150:setMin(0);
    obj.edit150:setMax(99);
    obj.edit150:setName("edit150");
    obj.edit150:setFontFamily("Cambria");
    obj.edit150:setTransparent(true);

    obj.dataLink154 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink154:setParent(obj.scrollBox2);
    obj.dataLink154:setDefaultValue("0");
    obj.dataLink154:setField("ModLerManuscrito");
    obj.dataLink154:setName("dataLink154");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.scrollBox2);
    obj.edit151:setHorzTextAlign("center");
    obj.edit151:setWidth(30);
    obj.edit151:setFontSize(14.0);
    obj.edit151:setField("ModPrepararEstrategia");
    obj.edit151:setLeft(522);
    obj.edit151:setTop(534);
    obj.edit151:setFontColor("white");
    lfm_setPropAsString(obj.edit151, "fontStyle", "bold");
    obj.edit151:setType("number");
    obj.edit151:setMin(0);
    obj.edit151:setMax(99);
    obj.edit151:setName("edit151");
    obj.edit151:setFontFamily("Cambria");
    obj.edit151:setTransparent(true);

    obj.dataLink155 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink155:setParent(obj.scrollBox2);
    obj.dataLink155:setDefaultValue("0");
    obj.dataLink155:setField("ModPrepararEstrategia");
    obj.dataLink155:setName("dataLink155");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.scrollBox2);
    obj.edit152:setHorzTextAlign("center");
    obj.edit152:setWidth(30);
    obj.edit152:setFontSize(14.0);
    obj.edit152:setField("ModResistenciaMental");
    obj.edit152:setLeft(522);
    obj.edit152:setTop(554);
    obj.edit152:setFontColor("white");
    lfm_setPropAsString(obj.edit152, "fontStyle", "bold");
    obj.edit152:setType("number");
    obj.edit152:setMin(0);
    obj.edit152:setMax(99);
    obj.edit152:setName("edit152");
    obj.edit152:setFontFamily("Cambria");
    obj.edit152:setTransparent(true);

    obj.dataLink156 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink156:setParent(obj.scrollBox2);
    obj.dataLink156:setDefaultValue("0");
    obj.dataLink156:setField("ModResistenciaMental");
    obj.dataLink156:setName("dataLink156");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.scrollBox2);
    obj.edit153:setHorzTextAlign("center");
    obj.edit153:setWidth(30);
    obj.edit153:setFontSize(14.0);
    obj.edit153:setField("ModHistoria");
    obj.edit153:setLeft(522);
    obj.edit153:setTop(574);
    obj.edit153:setFontColor("white");
    lfm_setPropAsString(obj.edit153, "fontStyle", "bold");
    obj.edit153:setType("number");
    obj.edit153:setMin(0);
    obj.edit153:setMax(99);
    obj.edit153:setName("edit153");
    obj.edit153:setFontFamily("Cambria");
    obj.edit153:setTransparent(true);

    obj.dataLink157 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink157:setParent(obj.scrollBox2);
    obj.dataLink157:setDefaultValue("0");
    obj.dataLink157:setField("ModHistoria");
    obj.dataLink157:setName("dataLink157");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.scrollBox2);
    obj.edit154:setHorzTextAlign("center");
    obj.edit154:setWidth(30);
    obj.edit154:setFontSize(14.0);
    obj.edit154:setField("ModInvestigacao");
    obj.edit154:setLeft(522);
    obj.edit154:setTop(594);
    obj.edit154:setFontColor("white");
    lfm_setPropAsString(obj.edit154, "fontStyle", "bold");
    obj.edit154:setType("number");
    obj.edit154:setMin(0);
    obj.edit154:setMax(99);
    obj.edit154:setName("edit154");
    obj.edit154:setFontFamily("Cambria");
    obj.edit154:setTransparent(true);

    obj.dataLink158 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink158:setParent(obj.scrollBox2);
    obj.dataLink158:setDefaultValue("0");
    obj.dataLink158:setField("ModInvestigacao");
    obj.dataLink158:setName("dataLink158");

    obj.edit155 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit155:setParent(obj.scrollBox2);
    obj.edit155:setHorzTextAlign("center");
    obj.edit155:setWidth(30);
    obj.edit155:setFontSize(14.0);
    obj.edit155:setField("ModPerceberMentira");
    obj.edit155:setLeft(522);
    obj.edit155:setTop(614);
    obj.edit155:setFontColor("white");
    lfm_setPropAsString(obj.edit155, "fontStyle", "bold");
    obj.edit155:setType("number");
    obj.edit155:setMin(0);
    obj.edit155:setMax(99);
    obj.edit155:setName("edit155");
    obj.edit155:setFontFamily("Cambria");
    obj.edit155:setTransparent(true);

    obj.dataLink159 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink159:setParent(obj.scrollBox2);
    obj.dataLink159:setDefaultValue("0");
    obj.dataLink159:setField("ModPerceberMentira");
    obj.dataLink159:setName("dataLink159");

    obj.edit156 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit156:setParent(obj.scrollBox2);
    obj.edit156:setHorzTextAlign("center");
    obj.edit156:setWidth(30);
    obj.edit156:setFontSize(14.0);
    obj.edit156:setField("ModPercepcao");
    obj.edit156:setLeft(522);
    obj.edit156:setTop(634);
    obj.edit156:setFontColor("white");
    lfm_setPropAsString(obj.edit156, "fontStyle", "bold");
    obj.edit156:setType("number");
    obj.edit156:setMin(0);
    obj.edit156:setMax(99);
    obj.edit156:setName("edit156");
    obj.edit156:setFontFamily("Cambria");
    obj.edit156:setTransparent(true);

    obj.dataLink160 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink160:setParent(obj.scrollBox2);
    obj.dataLink160:setDefaultValue("0");
    obj.dataLink160:setField("ModPercepcao");
    obj.dataLink160:setName("dataLink160");

    obj.edit157 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit157:setParent(obj.scrollBox2);
    obj.edit157:setHorzTextAlign("center");
    obj.edit157:setWidth(30);
    obj.edit157:setFontSize(14.0);
    obj.edit157:setField("ModSentirPerigo");
    obj.edit157:setLeft(522);
    obj.edit157:setTop(654);
    obj.edit157:setFontColor("white");
    lfm_setPropAsString(obj.edit157, "fontStyle", "bold");
    obj.edit157:setType("number");
    obj.edit157:setMin(0);
    obj.edit157:setMax(99);
    obj.edit157:setName("edit157");
    obj.edit157:setFontFamily("Cambria");
    obj.edit157:setTransparent(true);

    obj.dataLink161 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink161:setParent(obj.scrollBox2);
    obj.dataLink161:setDefaultValue("0");
    obj.dataLink161:setField("ModSentirPerigo");
    obj.dataLink161:setName("dataLink161");

    obj.edit158 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit158:setParent(obj.scrollBox2);
    obj.edit158:setHorzTextAlign("center");
    obj.edit158:setWidth(30);
    obj.edit158:setFontSize(14.0);
    obj.edit158:setField("ModDetectarMagia");
    obj.edit158:setLeft(522);
    obj.edit158:setTop(674);
    obj.edit158:setFontColor("white");
    lfm_setPropAsString(obj.edit158, "fontStyle", "bold");
    obj.edit158:setType("number");
    obj.edit158:setMin(0);
    obj.edit158:setMax(99);
    obj.edit158:setName("edit158");
    obj.edit158:setFontFamily("Cambria");
    obj.edit158:setTransparent(true);

    obj.dataLink162 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink162:setParent(obj.scrollBox2);
    obj.dataLink162:setDefaultValue("0");
    obj.dataLink162:setField("ModDetectarMagia");
    obj.dataLink162:setName("dataLink162");

    obj.edit159 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit159:setParent(obj.scrollBox2);
    obj.edit159:setHorzTextAlign("center");
    obj.edit159:setWidth(30);
    obj.edit159:setFontSize(14.0);
    obj.edit159:setField("ModAcertoMagico");
    obj.edit159:setLeft(522);
    obj.edit159:setTop(694);
    obj.edit159:setFontColor("white");
    lfm_setPropAsString(obj.edit159, "fontStyle", "bold");
    obj.edit159:setType("number");
    obj.edit159:setMin(0);
    obj.edit159:setMax(99);
    obj.edit159:setName("edit159");
    obj.edit159:setFontFamily("Cambria");
    obj.edit159:setTransparent(true);

    obj.dataLink163 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink163:setParent(obj.scrollBox2);
    obj.dataLink163:setDefaultValue("0");
    obj.dataLink163:setField("ModAcertoMagico");
    obj.dataLink163:setName("dataLink163");

    obj.edit160 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit160:setParent(obj.scrollBox2);
    obj.edit160:setHorzTextAlign("center");
    obj.edit160:setWidth(30);
    obj.edit160:setFontSize(14.0);
    obj.edit160:setField("ModDanoMagico");
    obj.edit160:setLeft(522);
    obj.edit160:setTop(714);
    obj.edit160:setFontColor("white");
    lfm_setPropAsString(obj.edit160, "fontStyle", "bold");
    obj.edit160:setType("number");
    obj.edit160:setMin(0);
    obj.edit160:setMax(99);
    obj.edit160:setName("edit160");
    obj.edit160:setFontFamily("Cambria");
    obj.edit160:setTransparent(true);

    obj.dataLink164 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink164:setParent(obj.scrollBox2);
    obj.dataLink164:setDefaultValue("0");
    obj.dataLink164:setField("ModDanoMagico");
    obj.dataLink164:setName("dataLink164");

    obj.edit161 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit161:setParent(obj.scrollBox2);
    obj.edit161:setHorzTextAlign("center");
    obj.edit161:setWidth(30);
    obj.edit161:setFontSize(14.0);
    obj.edit161:setField("ModSobrevivencia");
    obj.edit161:setLeft(522);
    obj.edit161:setTop(734);
    obj.edit161:setFontColor("white");
    lfm_setPropAsString(obj.edit161, "fontStyle", "bold");
    obj.edit161:setType("number");
    obj.edit161:setMin(0);
    obj.edit161:setMax(99);
    obj.edit161:setName("edit161");
    obj.edit161:setFontFamily("Cambria");
    obj.edit161:setTransparent(true);

    obj.dataLink165 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink165:setParent(obj.scrollBox2);
    obj.dataLink165:setDefaultValue("0");
    obj.dataLink165:setField("ModSobrevivencia");
    obj.dataLink165:setName("dataLink165");

    obj.edit162 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit162:setParent(obj.scrollBox2);
    obj.edit162:setHorzTextAlign("center");
    obj.edit162:setWidth(30);
    obj.edit162:setFontSize(14.0);
    obj.edit162:setField("ModMedicina");
    obj.edit162:setLeft(522);
    obj.edit162:setTop(754);
    obj.edit162:setFontColor("white");
    lfm_setPropAsString(obj.edit162, "fontStyle", "bold");
    obj.edit162:setType("number");
    obj.edit162:setMin(0);
    obj.edit162:setMax(99);
    obj.edit162:setName("edit162");
    obj.edit162:setFontFamily("Cambria");
    obj.edit162:setTransparent(true);

    obj.dataLink166 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink166:setParent(obj.scrollBox2);
    obj.dataLink166:setDefaultValue("0");
    obj.dataLink166:setField("ModMedicina");
    obj.dataLink166:setName("dataLink166");

    obj.edit163 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit163:setParent(obj.scrollBox2);
    obj.edit163:setHorzTextAlign("center");
    obj.edit163:setWidth(30);
    obj.edit163:setFontSize(14.0);
    obj.edit163:setField("ModNatureza");
    obj.edit163:setLeft(522);
    obj.edit163:setTop(774);
    obj.edit163:setFontColor("white");
    lfm_setPropAsString(obj.edit163, "fontStyle", "bold");
    obj.edit163:setType("number");
    obj.edit163:setMin(0);
    obj.edit163:setMax(99);
    obj.edit163:setName("edit163");
    obj.edit163:setFontFamily("Cambria");
    obj.edit163:setTransparent(true);

    obj.dataLink167 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink167:setParent(obj.scrollBox2);
    obj.dataLink167:setDefaultValue("0");
    obj.dataLink167:setField("ModNatureza");
    obj.dataLink167:setName("dataLink167");

    obj.edit164 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit164:setParent(obj.scrollBox2);
    obj.edit164:setHorzTextAlign("center");
    obj.edit164:setWidth(30);
    obj.edit164:setFontSize(14.0);
    obj.edit164:setField("ModReligiao");
    obj.edit164:setLeft(522);
    obj.edit164:setTop(794);
    obj.edit164:setFontColor("white");
    lfm_setPropAsString(obj.edit164, "fontStyle", "bold");
    obj.edit164:setType("number");
    obj.edit164:setMin(0);
    obj.edit164:setMax(99);
    obj.edit164:setName("edit164");
    obj.edit164:setFontFamily("Cambria");
    obj.edit164:setTransparent(true);

    obj.dataLink168 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink168:setParent(obj.scrollBox2);
    obj.dataLink168:setDefaultValue("0");
    obj.dataLink168:setField("ModReligiao");
    obj.dataLink168:setName("dataLink168");

    obj.edit165 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit165:setParent(obj.scrollBox2);
    obj.edit165:setHorzTextAlign("center");
    obj.edit165:setWidth(30);
    obj.edit165:setFontSize(14.0);
    obj.edit165:setField("ModDiscurso");
    obj.edit165:setLeft(522);
    obj.edit165:setTop(814);
    obj.edit165:setFontColor("white");
    lfm_setPropAsString(obj.edit165, "fontStyle", "bold");
    obj.edit165:setType("number");
    obj.edit165:setMin(0);
    obj.edit165:setMax(99);
    obj.edit165:setName("edit165");
    obj.edit165:setFontFamily("Cambria");
    obj.edit165:setTransparent(true);

    obj.dataLink169 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink169:setParent(obj.scrollBox2);
    obj.dataLink169:setDefaultValue("0");
    obj.dataLink169:setField("ModDiscurso");
    obj.dataLink169:setName("dataLink169");

    obj.edit166 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit166:setParent(obj.scrollBox2);
    obj.edit166:setHorzTextAlign("center");
    obj.edit166:setWidth(30);
    obj.edit166:setFontSize(14.0);
    obj.edit166:setField("ModSeducao");
    obj.edit166:setLeft(522);
    obj.edit166:setTop(834);
    obj.edit166:setFontColor("white");
    lfm_setPropAsString(obj.edit166, "fontStyle", "bold");
    obj.edit166:setType("number");
    obj.edit166:setMin(0);
    obj.edit166:setMax(99);
    obj.edit166:setName("edit166");
    obj.edit166:setFontFamily("Cambria");
    obj.edit166:setTransparent(true);

    obj.dataLink170 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink170:setParent(obj.scrollBox2);
    obj.dataLink170:setDefaultValue("0");
    obj.dataLink170:setField("ModSeducao");
    obj.dataLink170:setName("dataLink170");

    obj.edit167 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit167:setParent(obj.scrollBox2);
    obj.edit167:setHorzTextAlign("center");
    obj.edit167:setWidth(30);
    obj.edit167:setFontSize(14.0);
    obj.edit167:setField("ModIntimidar");
    obj.edit167:setLeft(522);
    obj.edit167:setTop(854);
    obj.edit167:setFontColor("white");
    lfm_setPropAsString(obj.edit167, "fontStyle", "bold");
    obj.edit167:setType("number");
    obj.edit167:setMin(0);
    obj.edit167:setMax(99);
    obj.edit167:setName("edit167");
    obj.edit167:setFontFamily("Cambria");
    obj.edit167:setTransparent(true);

    obj.dataLink171 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink171:setParent(obj.scrollBox2);
    obj.dataLink171:setDefaultValue("0");
    obj.dataLink171:setField("ModIntimidar");
    obj.dataLink171:setName("dataLink171");

    obj.edit168 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit168:setParent(obj.scrollBox2);
    obj.edit168:setHorzTextAlign("center");
    obj.edit168:setWidth(30);
    obj.edit168:setFontSize(14.0);
    obj.edit168:setField("ModAtuar");
    obj.edit168:setLeft(522);
    obj.edit168:setTop(874);
    obj.edit168:setFontColor("white");
    lfm_setPropAsString(obj.edit168, "fontStyle", "bold");
    obj.edit168:setType("number");
    obj.edit168:setMin(0);
    obj.edit168:setMax(99);
    obj.edit168:setName("edit168");
    obj.edit168:setFontFamily("Cambria");
    obj.edit168:setTransparent(true);

    obj.dataLink172 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink172:setParent(obj.scrollBox2);
    obj.dataLink172:setDefaultValue("0");
    obj.dataLink172:setField("ModAtuar");
    obj.dataLink172:setName("dataLink172");

    obj.edit169 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit169:setParent(obj.scrollBox2);
    obj.edit169:setHorzTextAlign("center");
    obj.edit169:setWidth(30);
    obj.edit169:setFontSize(14.0);
    obj.edit169:setField("ModPersuadir");
    obj.edit169:setLeft(522);
    obj.edit169:setTop(894);
    obj.edit169:setFontColor("white");
    lfm_setPropAsString(obj.edit169, "fontStyle", "bold");
    obj.edit169:setType("number");
    obj.edit169:setMin(0);
    obj.edit169:setMax(99);
    obj.edit169:setName("edit169");
    obj.edit169:setFontFamily("Cambria");
    obj.edit169:setTransparent(true);

    obj.dataLink173 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink173:setParent(obj.scrollBox2);
    obj.dataLink173:setDefaultValue("0");
    obj.dataLink173:setField("ModPersuadir");
    obj.dataLink173:setName("dataLink173");

    obj.edit170 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit170:setParent(obj.scrollBox2);
    obj.edit170:setHorzTextAlign("center");
    obj.edit170:setWidth(30);
    obj.edit170:setFontSize(14.0);
    obj.edit170:setField("ModMentir");
    obj.edit170:setLeft(522);
    obj.edit170:setTop(914);
    obj.edit170:setFontColor("white");
    lfm_setPropAsString(obj.edit170, "fontStyle", "bold");
    obj.edit170:setType("number");
    obj.edit170:setMin(0);
    obj.edit170:setMax(99);
    obj.edit170:setName("edit170");
    obj.edit170:setFontFamily("Cambria");
    obj.edit170:setTransparent(true);

    obj.dataLink174 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink174:setParent(obj.scrollBox2);
    obj.dataLink174:setDefaultValue("0");
    obj.dataLink174:setField("ModMentir");
    obj.dataLink174:setName("dataLink174");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout2);
    obj.flowPart5:setMinWidth(100);
    obj.flowPart5:setMaxWidth(350);
    obj.flowPart5:setHeight(1600);
    obj.flowPart5:setName("flowPart5");

    obj.rectangle59 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.flowPart5);
    obj.rectangle59:setWidth(300);
    obj.rectangle59:setHeight(1530);
    obj.rectangle59:setColor("#202020");
    obj.rectangle59:setName("rectangle59");

    obj.rectangle60 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.flowPart5);
    obj.rectangle60:setWidth(320);
    obj.rectangle60:setHeight(1530);
    obj.rectangle60:setColor("#202020");
    obj.rectangle60:setXradius(20);
    obj.rectangle60:setYradius(20);
    obj.rectangle60:setCornerType("bevel");
    obj.rectangle60:setName("rectangle60");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.flowPart5);
    obj.label73:setFontSize(18.0);
    obj.label73:setFontColor("#ffffff");
    obj.label73:setText("APARENCIA");
    obj.label73:setLeft(110);
    obj.label73:setTop(80);
    obj.label73:setName("label73");
    lfm_setPropAsString(obj.label73, "fontStyle", "bold");
    obj.label73:setFontFamily("Cambria");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.flowPart5);
    obj.layout11:setAlign("top");
    obj.layout11:setHeight(30);
    obj.layout11:setMargins({top=60, left=20, bottom=15});
    obj.layout11:setName("layout11");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout11);
    obj.label74:setAlign("left");
    obj.label74:setText("");
    obj.label74:setWidth(1000);
    obj.label74:setFontSize(20);
    obj.label74:setFontFamily("Constantia");
    obj.label74:setName("label74");
    obj.label74:setFontColor("white");
    lfm_setPropAsString(obj.label74, "fontStyle", "bold");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.layout11);
    obj.horzLine4:setAlign("client");
    obj.horzLine4:setMargins({right=20, top=14});
    obj.horzLine4:setStrokeColor("#424242");
    obj.horzLine4:setName("horzLine4");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.flowPart5);
    obj.image4:setField("imagemPJ");
    obj.image4:setStyle("autoFit");
    obj.image4:setEditable(true);
    obj.image4:setWidth(289);
    obj.image4:setHeight(500);
    obj.image4:setTop(105);
    obj.image4:setLeft(10.5);
    obj.image4:setName("image4");

    obj.dataLink175 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink175:setParent(obj.flowPart5);
    obj.dataLink175:setField("imagemPJ");
    obj.dataLink175:setDefaultValue("/Frames/avatar.jpg");
    obj.dataLink175:setName("dataLink175");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.flowPart5);
    obj.layout12:setAlign("top");
    obj.layout12:setHeight(30);
    obj.layout12:setMargins({top=593, left=20, bottom=15});
    obj.layout12:setName("layout12");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout12);
    obj.label75:setAlign("left");
    obj.label75:setText("A F I N I D A D E S");
    obj.label75:setWidth(215);
    obj.label75:setFontColor("#ffffff");
    obj.label75:setFontSize(20);
    obj.label75:setFontFamily("Constantia");
    obj.label75:setName("label75");
    lfm_setPropAsString(obj.label75, "fontStyle", "bold");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.layout12);
    obj.horzLine5:setAlign("client");
    obj.horzLine5:setMargins({right=9, top=14});
    obj.horzLine5:setStrokeColor("#424242");
    obj.horzLine5:setName("horzLine5");

    obj.rectangle61 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.flowPart5);
    obj.rectangle61:setAlign("top");
    obj.rectangle61:setHeight(30);
    obj.rectangle61:setXradius(5);
    obj.rectangle61:setYradius(5);
    obj.rectangle61:setCornerType("round");
    obj.rectangle61:setColor("#363636");
    obj.rectangle61:setMargins({left=20, right=10});
    obj.rectangle61:setName("rectangle61");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.rectangle61);
    obj.label76:setAlign("left");
    obj.label76:setWidth(466);
    obj.label76:setText("NOME                                                            LV");
    obj.label76:setMargins({left=5});
    obj.label76:setName("label76");
    obj.label76:setFontColor("white");
    lfm_setPropAsString(obj.label76, "fontStyle", "bold");
    obj.label76:setFontFamily("Cambria");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.rectangle61);
    obj.label77:setAlign("left");
    obj.label77:setWidth(72);
    obj.label77:setText("TIPO");
    obj.label77:setName("label77");
    obj.label77:setFontColor("white");
    lfm_setPropAsString(obj.label77, "fontStyle", "bold");
    obj.label77:setFontFamily("Cambria");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle61);
    obj.button6:setAlign("right");
    obj.button6:setText("🞦");
    obj.button6:setWidth(30);
    obj.button6:setName("button6");

    obj.rclDesVantagens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclDesVantagens:setParent(obj.flowPart5);
    obj.rclDesVantagens:setName("rclDesVantagens");
    obj.rclDesVantagens:setField("desvantagens");
    obj.rclDesVantagens:setTemplateForm("templateDesVantagens");
    obj.rclDesVantagens:setAlign("top");
    obj.rclDesVantagens:setAutoHeight(true);
    obj.rclDesVantagens:setMargins({left=20, right=10});

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.flowPart5);
    obj.layout13:setAlign("top");
    obj.layout13:setHeight(30);
    obj.layout13:setMargins({top=60, left=20, bottom=15});
    obj.layout13:setName("layout13");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout13);
    obj.label78:setAlign("left");
    obj.label78:setText("");
    obj.label78:setWidth(360);
    obj.label78:setFontSize(20);
    obj.label78:setFontFamily("Constantia");
    obj.label78:setName("label78");
    obj.label78:setFontColor("white");
    lfm_setPropAsString(obj.label78, "fontStyle", "bold");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.layout13);
    obj.horzLine6:setAlign("client");
    obj.horzLine6:setMargins({right=20, top=14});
    obj.horzLine6:setStrokeColor("#424242");
    obj.horzLine6:setName("horzLine6");

    obj.btnImagemFundo = GUI.fromHandle(_obj_newObject("button"));
    obj.btnImagemFundo:setParent(obj.flowPart5);
    obj.btnImagemFundo:setName("btnImagemFundo");
    obj.btnImagemFundo:setLeft(270);
    obj.btnImagemFundo:setTop(20);
    obj.btnImagemFundo:setText("⚙");
    obj.btnImagemFundo:setHeight(30);
    obj.btnImagemFundo:setWidth(30);

    obj.popImagemFundo = GUI.fromHandle(_obj_newObject("popup"));
    obj.popImagemFundo:setParent(obj.flowPart5);
    obj.popImagemFundo:setName("popImagemFundo");
    obj.popImagemFundo:setWidth(260);
    obj.popImagemFundo:setHeight(100);
    obj.popImagemFundo:setBackOpacity(0);
    obj.popImagemFundo:setDrawContainer(false);

    obj.rectangle62 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.popImagemFundo);
    obj.rectangle62:setAlign("client");
    obj.rectangle62:setColor("#353535");
    obj.rectangle62:setPadding({top=10, left=10, bottom=10, right=10});
    obj.rectangle62:setXradius(10);
    obj.rectangle62:setYradius(10);
    obj.rectangle62:setCornerType("bevel");
    obj.rectangle62:setName("rectangle62");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.rectangle62);
    obj.label79:setAlign("top");
    obj.label79:setText("I M A G E M  D E  F U N D O");
    obj.label79:setMargins({bottom=5, top=10});
    lfm_setPropAsString(obj.label79, "fontStyle", "bold");
    obj.label79:setFontFamily("Constantia");
    obj.label79:setName("label79");
    obj.label79:setFontColor("white");

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.rectangle62);
    obj.horzLine7:setAlign("top");
    obj.horzLine7:setMargins({bottom=5});
    obj.horzLine7:setStrokeColor("#424242");
    obj.horzLine7:setName("horzLine7");

    obj.edit171 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit171:setParent(obj.rectangle62);
    obj.edit171:setAlign("client");
    obj.edit171:setPadding({top=10, left=10, bottom=10, right=10});
    obj.edit171:setTransparent(false);
    obj.edit171:setField("URLImagemFundo");
    obj.edit171:setWidth(240);
    obj.edit171:setName("edit171");
    obj.edit171:setFontColor("#cdcdcd");
    obj.edit171:setFontFamily("Cambria");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.flowPart5);
    obj.image5:setURL("");
    obj.image5:setHeight(135);
    obj.image5:setStyle("proportional");
    obj.image5:setAlign("bottom");
    obj.image5:setMargins({bottom=80});
    obj.image5:setName("image5");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.flowPart5);
    obj.layout14:setAlign("top");
    obj.layout14:setHeight(430);
    obj.layout14:setMargins({left=20, right=20});
    obj.layout14:setName("layout14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout14);
    obj.layout15:setAlign("top");
    obj.layout15:setHeight(400);
    obj.layout15:setName("layout15");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.flowPart5);
    obj.image6:setURL("seu logo aqui");
    obj.image6:setHeight(135);
    obj.image6:setStyle("proportional");
    obj.image6:setAlign("bottom");
    obj.image6:setMargins({bottom=80});
    obj.image6:setName("image6");

    obj.layMecanicas = GUI.fromHandle(_obj_newObject("layout"));
    obj.layMecanicas:setParent(obj.rectangle3);
    obj.layMecanicas:setName("layMecanicas");
    obj.layMecanicas:setAlign("client");
    obj.layMecanicas:setVisible(false);

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.layMecanicas);
    obj.flowLayout5:setAlign("top");
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setHorzAlign("center");
    obj.flowLayout5:setName("flowLayout5");

    obj.fpEsquerdaMec = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpEsquerdaMec:setParent(obj.flowLayout5);
    obj.fpEsquerdaMec:setName("fpEsquerdaMec");
    obj.fpEsquerdaMec:setMinWidth(300);
    obj.fpEsquerdaMec:setMaxWidth(650);
    obj.fpEsquerdaMec:setHeight(1500);
    obj.fpEsquerdaMec:setVertAlign("leading");

    obj.rectangle63 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.fpEsquerdaMec);
    obj.rectangle63:setMargins({left=20, right=10, top=20});
    obj.rectangle63:setAlign("top");
    obj.rectangle63:setHeight(30);
    obj.rectangle63:setXradius(5);
    obj.rectangle63:setYradius(5);
    obj.rectangle63:setCornerType("round");
    obj.rectangle63:setColor("#212121");
    obj.rectangle63:setName("rectangle63");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle63);
    obj.button7:setText("P E R S O N A G E M");
    obj.button7:setName("button7");
    obj.button7:setAlign("left");
    obj.button7:setMargins({right=2});
    obj.button7:setWidth(122);
    obj.button7:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button7, "fontStyle", "bold");
    obj.button7:setFontSize(10);

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle63);
    obj.button8:setText("I N V E N T a R I O");
    obj.button8:setName("button8");
    obj.button8:setAlign("left");
    obj.button8:setMargins({right=2});
    obj.button8:setWidth(122);
    obj.button8:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button8, "fontStyle", "bold");
    obj.button8:setFontSize(10);

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle63);
    obj.button9:setText("S K I L L S");
    obj.button9:setName("button9");
    obj.button9:setAlign("left");
    obj.button9:setMargins({right=2});
    obj.button9:setWidth(122);
    obj.button9:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button9, "fontStyle", "bold");
    obj.button9:setFontSize(10);

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle63);
    obj.button10:setText("D I a R I O");
    obj.button10:setName("button10");
    obj.button10:setAlign("left");
    obj.button10:setMargins({right=2});
    obj.button10:setWidth(122);
    obj.button10:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button10, "fontStyle", "bold");
    obj.button10:setFontSize(10);

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle63);
    obj.button11:setText("A N O T A c Õ E S");
    obj.button11:setName("button11");
    obj.button11:setAlign("left");
    obj.button11:setMargins({right=2});
    obj.button11:setWidth(122);
    obj.button11:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button11, "fontStyle", "bold");
    obj.button11:setFontSize(10);

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.fpEsquerdaMec);
    obj.layout16:setAlign("top");
    obj.layout16:setHeight(30);
    obj.layout16:setMargins({top=10, left=20, bottom=15});
    obj.layout16:setName("layout16");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout16);
    obj.label80:setAlign("left");
    obj.label80:setText("I N V E N T a R I O");
    obj.label80:setWidth(190);
    obj.label80:setFontSize(20);
    obj.label80:setFontFamily("Constantia");
    obj.label80:setName("label80");
    obj.label80:setFontColor("white");
    lfm_setPropAsString(obj.label80, "fontStyle", "bold");

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.layout16);
    obj.horzLine8:setAlign("client");
    obj.horzLine8:setMargins({right=20, top=14});
    obj.horzLine8:setStrokeColor("#424242");
    obj.horzLine8:setName("horzLine8");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.fpEsquerdaMec);
    obj.richEdit1:setAlign("client");
    obj.richEdit1:setField("background");
    obj.richEdit1.backgroundColor = "#272727";
    obj.richEdit1.defaultFontColor = "white";
    obj.richEdit1:setMargins({left=20, right=10, bottom=100});
    obj.richEdit1:setName("richEdit1");

    obj.fpDireitaMec = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpDireitaMec:setParent(obj.flowLayout5);
    obj.fpDireitaMec:setName("fpDireitaMec");
    obj.fpDireitaMec:setMinWidth(100);
    obj.fpDireitaMec:setMaxWidth(350);
    obj.fpDireitaMec:setHeight(1600);

    obj.rectangle64 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.fpDireitaMec);
    obj.rectangle64:setWidth(300);
    obj.rectangle64:setHeight(1530);
    obj.rectangle64:setColor("#202020");
    obj.rectangle64:setName("rectangle64");

    obj.rectangle65 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.fpDireitaMec);
    obj.rectangle65:setWidth(320);
    obj.rectangle65:setHeight(1530);
    obj.rectangle65:setColor("#202020");
    obj.rectangle65:setXradius(20);
    obj.rectangle65:setYradius(20);
    obj.rectangle65:setCornerType("bevel");
    obj.rectangle65:setName("rectangle65");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.fpDireitaMec);
    obj.layout17:setAlign("top");
    obj.layout17:setHeight(30);
    obj.layout17:setMargins({top=60, left=20, bottom=15});
    obj.layout17:setName("layout17");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout17);
    obj.label81:setAlign("left");
    obj.label81:setText("");
    obj.label81:setWidth(0);
    obj.label81:setFontSize(20);
    obj.label81:setFontFamily("Constantia");
    obj.label81:setName("label81");
    obj.label81:setFontColor("white");
    lfm_setPropAsString(obj.label81, "fontStyle", "bold");

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.layout17);
    obj.horzLine9:setAlign("client");
    obj.horzLine9:setMargins({right=20, top=14});
    obj.horzLine9:setStrokeColor("#424242");
    obj.horzLine9:setName("horzLine9");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.fpDireitaMec);
    obj.image7:setField("imagemPJ");
    obj.image7:setStyle("autoFit");
    obj.image7:setEditable(true);
    obj.image7:setWidth(289);
    obj.image7:setHeight(500);
    obj.image7:setTop(105);
    obj.image7:setLeft(10.5);
    obj.image7:setName("image7");

    obj.dataLink176 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink176:setParent(obj.fpDireitaMec);
    obj.dataLink176:setField("imagemPJ");
    obj.dataLink176:setDefaultValue("/Frames/avatar.jpg");
    obj.dataLink176:setName("dataLink176");

    obj.rclArmas = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclArmas:setParent(obj.fpDireitaMec);
    obj.rclArmas:setName("rclArmas");
    obj.rclArmas:setField("armas");
    obj.rclArmas:setTemplateForm("templateArmas");
    obj.rclArmas:setAlign("top");
    obj.rclArmas:setAutoHeight(true);
    obj.rclArmas:setMargins({left=10, right=20});

    obj.layMagias = GUI.fromHandle(_obj_newObject("layout"));
    obj.layMagias:setParent(obj.rectangle3);
    obj.layMagias:setName("layMagias");
    obj.layMagias:setAlign("client");
    obj.layMagias:setVisible(false);

    obj.rectangle66 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.layMagias);
    obj.rectangle66:setMargins({left=20, right=10, top=20});
    obj.rectangle66:setAlign("top");
    obj.rectangle66:setHeight(30);
    obj.rectangle66:setXradius(5);
    obj.rectangle66:setYradius(5);
    obj.rectangle66:setCornerType("round");
    obj.rectangle66:setColor("#212121");
    obj.rectangle66:setName("rectangle66");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle66);
    obj.button12:setText("P E R S O N A G E M");
    obj.button12:setName("button12");
    obj.button12:setAlign("left");
    obj.button12:setMargins({right=2});
    obj.button12:setWidth(122);
    obj.button12:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button12, "fontStyle", "bold");
    obj.button12:setFontSize(10);

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle66);
    obj.button13:setText("I N V E N T a R I O");
    obj.button13:setName("button13");
    obj.button13:setAlign("left");
    obj.button13:setMargins({right=2});
    obj.button13:setWidth(122);
    obj.button13:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button13, "fontStyle", "bold");
    obj.button13:setFontSize(10);

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.rectangle66);
    obj.button14:setText("S K I L L S");
    obj.button14:setName("button14");
    obj.button14:setAlign("left");
    obj.button14:setMargins({right=2});
    obj.button14:setWidth(122);
    obj.button14:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button14, "fontStyle", "bold");
    obj.button14:setFontSize(10);

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.rectangle66);
    obj.button15:setText("D I a R I O");
    obj.button15:setName("button15");
    obj.button15:setAlign("left");
    obj.button15:setMargins({right=2});
    obj.button15:setWidth(122);
    obj.button15:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button15, "fontStyle", "bold");
    obj.button15:setFontSize(10);

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.rectangle66);
    obj.button16:setText("A N O T A c Õ E S");
    obj.button16:setName("button16");
    obj.button16:setAlign("left");
    obj.button16:setMargins({right=2});
    obj.button16:setWidth(122);
    obj.button16:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button16, "fontStyle", "bold");
    obj.button16:setFontSize(10);

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layMagias);
    obj.layout18:setAlign("top");
    obj.layout18:setHeight(30);
    obj.layout18:setMargins({top=10, left=20, bottom=15});
    obj.layout18:setName("layout18");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout18);
    obj.label82:setAlign("left");
    obj.label82:setText("L I S T A   D E   M A G I A S");
    obj.label82:setWidth(245);
    obj.label82:setFontSize(20);
    obj.label82:setFontFamily("Constantia");
    obj.label82:setName("label82");
    obj.label82:setFontColor("white");
    lfm_setPropAsString(obj.label82, "fontStyle", "bold");

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.layout18);
    obj.horzLine10:setAlign("client");
    obj.horzLine10:setMargins({right=20, top=14});
    obj.horzLine10:setStrokeColor("#424242");
    obj.horzLine10:setName("horzLine10");

    obj.rectangle67 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.layMagias);
    obj.rectangle67:setAlign("top");
    obj.rectangle67:setHeight(30);
    obj.rectangle67:setXradius(5);
    obj.rectangle67:setYradius(5);
    obj.rectangle67:setCornerType("round");
    obj.rectangle67:setColor("#212121");
    obj.rectangle67:setMargins({left=20, right=20});
    obj.rectangle67:setName("rectangle67");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.rectangle67);
    obj.button17:setAlign("right");
    obj.button17:setText("🞦");
    obj.button17:setWidth(30);
    obj.button17:setName("button17");

    obj.layBG = GUI.fromHandle(_obj_newObject("layout"));
    obj.layBG:setParent(obj.rectangle3);
    obj.layBG:setName("layBG");
    obj.layBG:setAlign("client");
    obj.layBG:setVisible(false);

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.layBG);
    obj.flowLayout6:setAlign("top");
    obj.flowLayout6:setAutoHeight(true);
    obj.flowLayout6:setHorzAlign("center");
    obj.flowLayout6:setName("flowLayout6");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout6);
    obj.flowPart6:setMinWidth(300);
    obj.flowPart6:setMaxWidth(650);
    obj.flowPart6:setHeight(1600);
    obj.flowPart6:setName("flowPart6");

    obj.rectangle68 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.flowPart6);
    obj.rectangle68:setMargins({left=20, right=10, top=20});
    obj.rectangle68:setAlign("top");
    obj.rectangle68:setHeight(30);
    obj.rectangle68:setXradius(5);
    obj.rectangle68:setYradius(5);
    obj.rectangle68:setCornerType("round");
    obj.rectangle68:setColor("#212121");
    obj.rectangle68:setName("rectangle68");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.rectangle68);
    obj.button18:setText("P E R S O N A G E M");
    obj.button18:setName("button18");
    obj.button18:setAlign("left");
    obj.button18:setMargins({right=2});
    obj.button18:setWidth(122);
    obj.button18:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button18, "fontStyle", "bold");
    obj.button18:setFontSize(10);

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.rectangle68);
    obj.button19:setText("I N V E N T a R I O");
    obj.button19:setName("button19");
    obj.button19:setAlign("left");
    obj.button19:setMargins({right=2});
    obj.button19:setWidth(122);
    obj.button19:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button19, "fontStyle", "bold");
    obj.button19:setFontSize(10);

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.rectangle68);
    obj.button20:setText("S K I L L S");
    obj.button20:setName("button20");
    obj.button20:setAlign("left");
    obj.button20:setMargins({right=2});
    obj.button20:setWidth(122);
    obj.button20:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button20, "fontStyle", "bold");
    obj.button20:setFontSize(10);

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.rectangle68);
    obj.button21:setText("D I a R I O");
    obj.button21:setName("button21");
    obj.button21:setAlign("left");
    obj.button21:setMargins({right=2});
    obj.button21:setWidth(122);
    obj.button21:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button21, "fontStyle", "bold");
    obj.button21:setFontSize(10);

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.rectangle68);
    obj.button22:setText("A N O T A c Õ E S");
    obj.button22:setName("button22");
    obj.button22:setAlign("left");
    obj.button22:setMargins({right=2});
    obj.button22:setWidth(122);
    obj.button22:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button22, "fontStyle", "bold");
    obj.button22:setFontSize(10);

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.flowPart6);
    obj.layout19:setAlign("top");
    obj.layout19:setHeight(30);
    obj.layout19:setMargins({top=10, left=20, bottom=15});
    obj.layout19:setName("layout19");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout19);
    obj.label83:setAlign("left");
    obj.label83:setText("H I S T o R I A");
    obj.label83:setWidth(150);
    obj.label83:setFontSize(20);
    obj.label83:setFontFamily("Constantia");
    obj.label83:setName("label83");
    obj.label83:setFontColor("white");
    lfm_setPropAsString(obj.label83, "fontStyle", "bold");

    obj.horzLine11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine11:setParent(obj.layout19);
    obj.horzLine11:setAlign("client");
    obj.horzLine11:setMargins({right=20, top=14});
    obj.horzLine11:setStrokeColor("#424242");
    obj.horzLine11:setName("horzLine11");

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.flowPart6);
    obj.richEdit2:setAlign("client");
    obj.richEdit2:setField("background2");
    obj.richEdit2.backgroundColor = "#272727";
    obj.richEdit2.defaultFontColor = "white";
    obj.richEdit2:setMargins({left=20, right=10, bottom=100});
    obj.richEdit2:setName("richEdit2");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout6);
    obj.flowPart7:setMinWidth(100);
    obj.flowPart7:setMaxWidth(350);
    obj.flowPart7:setHeight(1600);
    obj.flowPart7:setName("flowPart7");

    obj.rectangle69 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle69:setParent(obj.flowPart7);
    obj.rectangle69:setWidth(300);
    obj.rectangle69:setHeight(1530);
    obj.rectangle69:setColor("#202020");
    obj.rectangle69:setName("rectangle69");

    obj.rectangle70 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle70:setParent(obj.flowPart7);
    obj.rectangle70:setWidth(320);
    obj.rectangle70:setHeight(1530);
    obj.rectangle70:setColor("#202020");
    obj.rectangle70:setXradius(20);
    obj.rectangle70:setYradius(20);
    obj.rectangle70:setCornerType("bevel");
    obj.rectangle70:setName("rectangle70");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.flowPart7);
    obj.layout20:setAlign("top");
    obj.layout20:setHeight(30);
    obj.layout20:setMargins({top=60, left=20, bottom=15});
    obj.layout20:setName("layout20");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout20);
    obj.label84:setAlign("left");
    obj.label84:setText("");
    obj.label84:setWidth(0);
    obj.label84:setFontSize(20);
    obj.label84:setFontFamily("Constantia");
    obj.label84:setName("label84");
    obj.label84:setFontColor("white");
    lfm_setPropAsString(obj.label84, "fontStyle", "bold");

    obj.horzLine12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine12:setParent(obj.layout20);
    obj.horzLine12:setAlign("client");
    obj.horzLine12:setMargins({right=20, top=14});
    obj.horzLine12:setStrokeColor("#424242");
    obj.horzLine12:setName("horzLine12");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.flowPart7);
    obj.image8:setField("imagemPJ");
    obj.image8:setStyle("autoFit");
    obj.image8:setEditable(true);
    obj.image8:setWidth(289);
    obj.image8:setHeight(500);
    obj.image8:setTop(105);
    obj.image8:setLeft(10.5);
    obj.image8:setName("image8");

    obj.dataLink177 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink177:setParent(obj.flowPart7);
    obj.dataLink177:setField("imagemPJ");
    obj.dataLink177:setDefaultValue("/Frames/avatar.jpg");
    obj.dataLink177:setName("dataLink177");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.flowPart7);
    obj.layout21:setAlign("top");
    obj.layout21:setFrameStyle("/Frames/frameFundo.xml");
    obj.layout21:setMargins({left=10, right=20});
    obj.layout21:setHeight(500);
    obj.layout21:setName("layout21");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.flowPart7);
    obj.image9:setURL("");
    obj.image9:setHeight(135);
    obj.image9:setStyle("proportional");
    obj.image9:setAlign("bottom");
    obj.image9:setMargins({bottom=80});
    obj.image9:setName("image9");

    obj.layNote = GUI.fromHandle(_obj_newObject("layout"));
    obj.layNote:setParent(obj.rectangle3);
    obj.layNote:setName("layNote");
    obj.layNote:setAlign("client");
    obj.layNote:setVisible(false);

    obj.rectangle71 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle71:setParent(obj.layNote);
    obj.rectangle71:setMargins({left=20, right=10, top=20});
    obj.rectangle71:setAlign("top");
    obj.rectangle71:setHeight(30);
    obj.rectangle71:setXradius(5);
    obj.rectangle71:setYradius(5);
    obj.rectangle71:setCornerType("round");
    obj.rectangle71:setColor("#212121");
    obj.rectangle71:setName("rectangle71");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.rectangle71);
    obj.button23:setText("P E R S O N A G E M");
    obj.button23:setName("button23");
    obj.button23:setAlign("left");
    obj.button23:setMargins({right=2});
    obj.button23:setWidth(122);
    obj.button23:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button23, "fontStyle", "bold");
    obj.button23:setFontSize(10);

    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.rectangle71);
    obj.button24:setText("I N V E N T a R I O");
    obj.button24:setName("button24");
    obj.button24:setAlign("left");
    obj.button24:setMargins({right=2});
    obj.button24:setWidth(122);
    obj.button24:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button24, "fontStyle", "bold");
    obj.button24:setFontSize(10);

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.rectangle71);
    obj.button25:setText("S K I L L S");
    obj.button25:setName("button25");
    obj.button25:setAlign("left");
    obj.button25:setMargins({right=2});
    obj.button25:setWidth(122);
    obj.button25:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button25, "fontStyle", "bold");
    obj.button25:setFontSize(10);

    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.rectangle71);
    obj.button26:setText("D I a R I O");
    obj.button26:setName("button26");
    obj.button26:setAlign("left");
    obj.button26:setMargins({right=2});
    obj.button26:setWidth(122);
    obj.button26:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button26, "fontStyle", "bold");
    obj.button26:setFontSize(10);

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.rectangle71);
    obj.button27:setText("A N O T A c Õ E S");
    obj.button27:setName("button27");
    obj.button27:setAlign("left");
    obj.button27:setMargins({right=2});
    obj.button27:setWidth(122);
    obj.button27:setFontFamily("Constantia");
    lfm_setPropAsString(obj.button27, "fontStyle", "bold");
    obj.button27:setFontSize(10);

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layNote);
    obj.layout22:setAlign("top");
    obj.layout22:setHeight(30);
    obj.layout22:setMargins({top=10, left=20, bottom=15});
    obj.layout22:setName("layout22");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout22);
    obj.label85:setAlign("left");
    obj.label85:setText("A N O T A c Õ E S");
    obj.label85:setWidth(190);
    obj.label85:setFontSize(20);
    obj.label85:setFontFamily("Constantia");
    obj.label85:setName("label85");
    obj.label85:setFontColor("white");
    lfm_setPropAsString(obj.label85, "fontStyle", "bold");

    obj.horzLine13 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine13:setParent(obj.layout22);
    obj.horzLine13:setAlign("client");
    obj.horzLine13:setMargins({right=20, top=14});
    obj.horzLine13:setStrokeColor("#424242");
    obj.horzLine13:setName("horzLine13");

    obj.richEdit3 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit3:setParent(obj.layNote);
    obj.richEdit3:setAlign("client");
    obj.richEdit3:setField("anotacao1");
    obj.richEdit3.backgroundColor = "#272727";
    obj.richEdit3.defaultFontColor = "white";
    obj.richEdit3:setMargins({left=20, right=20, bottom=40});
    obj.richEdit3:setName("richEdit3");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj);
    obj.layout23:setAlign("client");
    obj.layout23:setFrameStyle("/Frames/frameFundo.xml");
    obj.layout23:setName("layout23");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (field, oldValue, newValue)
            NivelPersonagem = 0;
            			if (NivelPersonagem ~= nil) then
            				local NivelPersonagem = tonumber(sheet.NivelPersonagem);
            
            				-- calcular MOD FORcA
            				sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ModDanoCurtoAlcance = math.floor (sheet.NvDanoCurtoAlcance + sheet.BDanoCurtoAlcance + sheet.ForM);
            						sheet.ModDanoLongoAlcance = math.floor (sheet.NvDanoLongoAlcance + sheet.BDanoLongoAlcance + sheet.ForM);
            						sheet.ModQuebrarObjetos = math.floor (sheet.NvQuebrarObjetos + sheet.BQuebrarObjetos + sheet.ForM);
            						sheet.ModNvLevantarPeso = math.floor (sheet.NvNvLevantarPeso + sheet.BNvLevantarPeso + sheet.ForM);
            						sheet.ModEmpurrarObstaculo = math.floor (sheet.NvEmpurrarObstaculoe + sheet.BEmpurrarObstaculo + sheet.ForM);
            						sheet.ModBracoDeFerro = math.floor (sheet.NvBracoDeFerro + sheet.BBracoDeFerro + sheet.ForM);
            						sheet.ModEscalar = math.floor (sheet.NvEscalar + sheet.BEscalar + sheet.ForM);
            						
            				-- calcular MOD DESTREZA
            				sheet.DesM = math.floor (sheet.DesV + sheet.DesA + sheet.DesB);
            
            					
            				-- calcular MOD CONSTITUIcAO			
            				sheet.ConM = math.floor (sheet.ConV + sheet.ConA + sheet.ConB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            
            				-- calcular MOD INTELIGENCIA			
            				sheet.IntM = math.floor (sheet.IntV + sheet.IntA + sheet.IntB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            
            				-- calcular SABEDORIA
            				sheet.SabM = math.floor (sheet.SabV + sheet.SabA + sheet.SabB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            						sheet.ForM = math.floor (sheet.ForV + sheet.ForA + sheet.ForB);
            
            				-- calcular MOD CARISMA	
            				sheet.CarM = math.floor (sheet.CarV + sheet.CarA + sheet.CarB);
            						sheet.ModMentir = math.floor (sheet.NvMentir + sheet.BMentir + sheet.CarM);
            						sheet.ModPersuadir = math.floor (sheet.NvPersuadir + sheet.BPersuadir + sheet.CarM);
            						sheet.ModAtuar = math.floor (sheet.NvAtuar + sheet.BAtuar + sheet.CarM);
            						sheet.ModIntimidar = math.floor (sheet.NvIntimidar + sheet.BIntimidar + sheet.CarM);
            						sheet.ModSeducao = math.floor (sheet.NvSeducao + sheet.BSeducao + sheet.CarM);
            						sheet.ModDiscurso = math.floor (sheet.NvDiscurso + sheet.BDiscurso + sheet.CarM);
            
            			end;
        end);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (event)
            TrocarAba('F');
        end);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (event)
            TrocarAba('M');
        end);

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (event)
            TrocarAba('S');
        end);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (event)
            TrocarAba('H');
        end);

    obj._e_event5 = obj.button5:addEventListener("onClick",
        function (event)
            TrocarAba('A');
        end);

    obj._e_event6 = obj.button6:addEventListener("onClick",
        function (event)
            self.rclDesVantagens:append(); self.fpEsquerdaMec:needRepaint();
        end);

    obj._e_event7 = obj.rclDesVantagens:addEventListener("onSelect",
        function ()
            self.rclDesVantagens:sort();
        end);

    obj._e_event8 = obj.rclDesVantagens:addEventListener("onItemRemoved",
        function (node, form)
            self.fpEsquerdaMec:needRepaint();
        end);

    obj._e_event9 = obj.rclDesVantagens:addEventListener("onCompare",
        function (nodeA, nodeB)
            return Utils.compareStringPtBr(nodeA.aqq, nodeB.aqq);
        end);

    obj._e_event10 = obj.btnImagemFundo:addEventListener("onClick",
        function (event)
            self.popImagemFundo:show('left', self.btnImagemFundo);
        end);

    obj._e_event11 = obj.button7:addEventListener("onClick",
        function (event)
            TrocarAba('F');
        end);

    obj._e_event12 = obj.button8:addEventListener("onClick",
        function (event)
            TrocarAba('M');
        end);

    obj._e_event13 = obj.button9:addEventListener("onClick",
        function (event)
            TrocarAba('S');
        end);

    obj._e_event14 = obj.button10:addEventListener("onClick",
        function (event)
            TrocarAba('H');
        end);

    obj._e_event15 = obj.button11:addEventListener("onClick",
        function (event)
            TrocarAba('A');
        end);

    obj._e_event16 = obj.rclArmas:addEventListener("onItemRemoved",
        function (node, form)
            self.fpDireitaMec:needRepaint();
        end);

    obj._e_event17 = obj.button12:addEventListener("onClick",
        function (event)
            TrocarAba('F');
        end);

    obj._e_event18 = obj.button13:addEventListener("onClick",
        function (event)
            TrocarAba('M');
        end);

    obj._e_event19 = obj.button14:addEventListener("onClick",
        function (event)
            TrocarAba('S');
        end);

    obj._e_event20 = obj.button15:addEventListener("onClick",
        function (event)
            TrocarAba('H');
        end);

    obj._e_event21 = obj.button16:addEventListener("onClick",
        function (event)
            TrocarAba('A');
        end);

    obj._e_event22 = obj.button17:addEventListener("onClick",
        function (event)
            self.rclMagias:append();
        end);

    obj._e_event23 = obj.button18:addEventListener("onClick",
        function (event)
            TrocarAba('F');
        end);

    obj._e_event24 = obj.button19:addEventListener("onClick",
        function (event)
            TrocarAba('M');
        end);

    obj._e_event25 = obj.button20:addEventListener("onClick",
        function (event)
            TrocarAba('S');
        end);

    obj._e_event26 = obj.button21:addEventListener("onClick",
        function (event)
            TrocarAba('H');
        end);

    obj._e_event27 = obj.button22:addEventListener("onClick",
        function (event)
            TrocarAba('A');
        end);

    obj._e_event28 = obj.button23:addEventListener("onClick",
        function (event)
            TrocarAba('F');
        end);

    obj._e_event29 = obj.button24:addEventListener("onClick",
        function (event)
            TrocarAba('M');
        end);

    obj._e_event30 = obj.button25:addEventListener("onClick",
        function (event)
            TrocarAba('S');
        end);

    obj._e_event31 = obj.button26:addEventListener("onClick",
        function (event)
            TrocarAba('H');
        end);

    obj._e_event32 = obj.button27:addEventListener("onClick",
        function (event)
            TrocarAba('A');
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.layMecanicas ~= nil then self.layMecanicas:destroy(); self.layMecanicas = nil; end;
        if self.dataLink139 ~= nil then self.dataLink139:destroy(); self.dataLink139 = nil; end;
        if self.dataLink164 ~= nil then self.dataLink164:destroy(); self.dataLink164 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.edit166 ~= nil then self.edit166:destroy(); self.edit166 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.dataLink134 ~= nil then self.dataLink134:destroy(); self.dataLink134 = nil; end;
        if self.dataLink122 ~= nil then self.dataLink122:destroy(); self.dataLink122 = nil; end;
        if self.edit163 ~= nil then self.edit163:destroy(); self.edit163 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.dataLink169 ~= nil then self.dataLink169:destroy(); self.dataLink169 = nil; end;
        if self.rclArmas ~= nil then self.rclArmas:destroy(); self.rclArmas = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.dataLink105 ~= nil then self.dataLink105:destroy(); self.dataLink105 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.dataLink128 ~= nil then self.dataLink128:destroy(); self.dataLink128 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.popImagemFundo ~= nil then self.popImagemFundo:destroy(); self.popImagemFundo = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.dataLink102 ~= nil then self.dataLink102:destroy(); self.dataLink102 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.edit171 ~= nil then self.edit171:destroy(); self.edit171 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.rclDesVantagens ~= nil then self.rclDesVantagens:destroy(); self.rclDesVantagens = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.fpEsquerdaMec ~= nil then self.fpEsquerdaMec:destroy(); self.fpEsquerdaMec = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.dataLink56 ~= nil then self.dataLink56:destroy(); self.dataLink56 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.dataLink173 ~= nil then self.dataLink173:destroy(); self.dataLink173 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.dataLink68 ~= nil then self.dataLink68:destroy(); self.dataLink68 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.dataLink90 ~= nil then self.dataLink90:destroy(); self.dataLink90 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.dataLink159 ~= nil then self.dataLink159:destroy(); self.dataLink159 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.dataLink176 ~= nil then self.dataLink176:destroy(); self.dataLink176 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.dataLink63 ~= nil then self.dataLink63:destroy(); self.dataLink63 = nil; end;
        if self.dataLink73 ~= nil then self.dataLink73:destroy(); self.dataLink73 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.dataLink66 ~= nil then self.dataLink66:destroy(); self.dataLink66 = nil; end;
        if self.dataLink74 ~= nil then self.dataLink74:destroy(); self.dataLink74 = nil; end;
        if self.dataLink153 ~= nil then self.dataLink153:destroy(); self.dataLink153 = nil; end;
        if self.dataLink143 ~= nil then self.dataLink143:destroy(); self.dataLink143 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.dataLink85 ~= nil then self.dataLink85:destroy(); self.dataLink85 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.dataLink79 ~= nil then self.dataLink79:destroy(); self.dataLink79 = nil; end;
        if self.dataLink156 ~= nil then self.dataLink156:destroy(); self.dataLink156 = nil; end;
        if self.dataLink115 ~= nil then self.dataLink115:destroy(); self.dataLink115 = nil; end;
        if self.dataLink148 ~= nil then self.dataLink148:destroy(); self.dataLink148 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.dataLink80 ~= nil then self.dataLink80:destroy(); self.dataLink80 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.btnImagemFundo ~= nil then self.btnImagemFundo:destroy(); self.btnImagemFundo = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.dataLink110 ~= nil then self.dataLink110:destroy(); self.dataLink110 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.fpDireitaMec ~= nil then self.fpDireitaMec:destroy(); self.fpDireitaMec = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.dataLink161 ~= nil then self.dataLink161:destroy(); self.dataLink161 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.dataLink137 ~= nil then self.dataLink137:destroy(); self.dataLink137 = nil; end;
        if self.dataLink127 ~= nil then self.dataLink127:destroy(); self.dataLink127 = nil; end;
        if self.edit164 ~= nil then self.edit164:destroy(); self.edit164 = nil; end;
        if self.edit156 ~= nil then self.edit156:destroy(); self.edit156 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.dataLink132 ~= nil then self.dataLink132:destroy(); self.dataLink132 = nil; end;
        if self.dataLink120 ~= nil then self.dataLink120:destroy(); self.dataLink120 = nil; end;
        if self.edit161 ~= nil then self.edit161:destroy(); self.edit161 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.edit158 ~= nil then self.edit158:destroy(); self.edit158 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.dataLink107 ~= nil then self.dataLink107:destroy(); self.dataLink107 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.dataLink109 ~= nil then self.dataLink109:destroy(); self.dataLink109 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.dataLink98 ~= nil then self.dataLink98:destroy(); self.dataLink98 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.dataLink95 ~= nil then self.dataLink95:destroy(); self.dataLink95 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.dataLink171 ~= nil then self.dataLink171:destroy(); self.dataLink171 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.dataLink92 ~= nil then self.dataLink92:destroy(); self.dataLink92 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.richEdit3 ~= nil then self.richEdit3:destroy(); self.richEdit3 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.dataLink174 ~= nil then self.dataLink174:destroy(); self.dataLink174 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.dataLink61 ~= nil then self.dataLink61:destroy(); self.dataLink61 = nil; end;
        if self.dataLink71 ~= nil then self.dataLink71:destroy(); self.dataLink71 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.dataLink140 ~= nil then self.dataLink140:destroy(); self.dataLink140 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink64 ~= nil then self.dataLink64:destroy(); self.dataLink64 = nil; end;
        if self.dataLink155 ~= nil then self.dataLink155:destroy(); self.dataLink155 = nil; end;
        if self.dataLink118 ~= nil then self.dataLink118:destroy(); self.dataLink118 = nil; end;
        if self.dataLink145 ~= nil then self.dataLink145:destroy(); self.dataLink145 = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.dataLink87 ~= nil then self.dataLink87:destroy(); self.dataLink87 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.dataLink117 ~= nil then self.dataLink117:destroy(); self.dataLink117 = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.dataLink82 ~= nil then self.dataLink82:destroy(); self.dataLink82 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.dataLink112 ~= nil then self.dataLink112:destroy(); self.dataLink112 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.dataLink89 ~= nil then self.dataLink89:destroy(); self.dataLink89 = nil; end;
        if self.dataLink162 ~= nil then self.dataLink162:destroy(); self.dataLink162 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.dataLink167 ~= nil then self.dataLink167:destroy(); self.dataLink167 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.edit155 ~= nil then self.edit155:destroy(); self.edit155 = nil; end;
        if self.edit169 ~= nil then self.edit169:destroy(); self.edit169 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.dataLink135 ~= nil then self.dataLink135:destroy(); self.dataLink135 = nil; end;
        if self.dataLink125 ~= nil then self.dataLink125:destroy(); self.dataLink125 = nil; end;
        if self.edit162 ~= nil then self.edit162:destroy(); self.edit162 = nil; end;
        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.dataLink168 ~= nil then self.dataLink168:destroy(); self.dataLink168 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.dataLink130 ~= nil then self.dataLink130:destroy(); self.dataLink130 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.dataLink104 ~= nil then self.dataLink104:destroy(); self.dataLink104 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.dataLink101 ~= nil then self.dataLink101:destroy(); self.dataLink101 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.dataLink69 ~= nil then self.dataLink69:destroy(); self.dataLink69 = nil; end;
        if self.dataLink97 ~= nil then self.dataLink97:destroy(); self.dataLink97 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.dataLink177 ~= nil then self.dataLink177:destroy(); self.dataLink177 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.horzLine12 ~= nil then self.horzLine12:destroy(); self.horzLine12 = nil; end;
        if self.dataLink72 ~= nil then self.dataLink72:destroy(); self.dataLink72 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.dataLink67 ~= nil then self.dataLink67:destroy(); self.dataLink67 = nil; end;
        if self.dataLink77 ~= nil then self.dataLink77:destroy(); self.dataLink77 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.dataLink150 ~= nil then self.dataLink150:destroy(); self.dataLink150 = nil; end;
        if self.dataLink142 ~= nil then self.dataLink142:destroy(); self.dataLink142 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.dataLink78 ~= nil then self.dataLink78:destroy(); self.dataLink78 = nil; end;
        if self.dataLink157 ~= nil then self.dataLink157:destroy(); self.dataLink157 = nil; end;
        if self.dataLink147 ~= nil then self.dataLink147:destroy(); self.dataLink147 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.dataLink81 ~= nil then self.dataLink81:destroy(); self.dataLink81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.dataLink111 ~= nil then self.dataLink111:destroy(); self.dataLink111 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink160 ~= nil then self.dataLink160:destroy(); self.dataLink160 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.dataLink138 ~= nil then self.dataLink138:destroy(); self.dataLink138 = nil; end;
        if self.dataLink126 ~= nil then self.dataLink126:destroy(); self.dataLink126 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.edit157 ~= nil then self.edit157:destroy(); self.edit157 = nil; end;
        if self.dataLink165 ~= nil then self.dataLink165:destroy(); self.dataLink165 = nil; end;
        if self.edit167 ~= nil then self.edit167:destroy(); self.edit167 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.dataLink133 ~= nil then self.dataLink133:destroy(); self.dataLink133 = nil; end;
        if self.dataLink123 ~= nil then self.dataLink123:destroy(); self.dataLink123 = nil; end;
        if self.edit160 ~= nil then self.edit160:destroy(); self.edit160 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit159 ~= nil then self.edit159:destroy(); self.edit159 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.dataLink106 ~= nil then self.dataLink106:destroy(); self.dataLink106 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.dataLink129 ~= nil then self.dataLink129:destroy(); self.dataLink129 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.dataLink103 ~= nil then self.dataLink103:destroy(); self.dataLink103 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.dataLink108 ~= nil then self.dataLink108:destroy(); self.dataLink108 = nil; end;
        if self.edit170 ~= nil then self.edit170:destroy(); self.edit170 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.dataLink94 ~= nil then self.dataLink94:destroy(); self.dataLink94 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.dataLink172 ~= nil then self.dataLink172:destroy(); self.dataLink172 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.horzLine11 ~= nil then self.horzLine11:destroy(); self.horzLine11 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.dataLink91 ~= nil then self.dataLink91:destroy(); self.dataLink91 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.dataLink158 ~= nil then self.dataLink158:destroy(); self.dataLink158 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.dataLink175 ~= nil then self.dataLink175:destroy(); self.dataLink175 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.dataLink62 ~= nil then self.dataLink62:destroy(); self.dataLink62 = nil; end;
        if self.dataLink70 ~= nil then self.dataLink70:destroy(); self.dataLink70 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.dataLink65 ~= nil then self.dataLink65:destroy(); self.dataLink65 = nil; end;
        if self.dataLink75 ~= nil then self.dataLink75:destroy(); self.dataLink75 = nil; end;
        if self.dataLink152 ~= nil then self.dataLink152:destroy(); self.dataLink152 = nil; end;
        if self.dataLink119 ~= nil then self.dataLink119:destroy(); self.dataLink119 = nil; end;
        if self.dataLink144 ~= nil then self.dataLink144:destroy(); self.dataLink144 = nil; end;
        if self.dataLink84 ~= nil then self.dataLink84:destroy(); self.dataLink84 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.dataLink114 ~= nil then self.dataLink114:destroy(); self.dataLink114 = nil; end;
        if self.dataLink149 ~= nil then self.dataLink149:destroy(); self.dataLink149 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.dataLink83 ~= nil then self.dataLink83:destroy(); self.dataLink83 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.layFrente ~= nil then self.layFrente:destroy(); self.layFrente = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.dataLink113 ~= nil then self.dataLink113:destroy(); self.dataLink113 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.layNote ~= nil then self.layNote:destroy(); self.layNote = nil; end;
        if self.dataLink166 ~= nil then self.dataLink166:destroy(); self.dataLink166 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.edit168 ~= nil then self.edit168:destroy(); self.edit168 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.dataLink136 ~= nil then self.dataLink136:destroy(); self.dataLink136 = nil; end;
        if self.dataLink124 ~= nil then self.dataLink124:destroy(); self.dataLink124 = nil; end;
        if self.edit165 ~= nil then self.edit165:destroy(); self.edit165 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.dataLink131 ~= nil then self.dataLink131:destroy(); self.dataLink131 = nil; end;
        if self.dataLink121 ~= nil then self.dataLink121:destroy(); self.dataLink121 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.dataLink100 ~= nil then self.dataLink100:destroy(); self.dataLink100 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.layBG ~= nil then self.layBG:destroy(); self.layBG = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.layMagias ~= nil then self.layMagias:destroy(); self.layMagias = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.dataLink99 ~= nil then self.dataLink99:destroy(); self.dataLink99 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.dataLink59 ~= nil then self.dataLink59:destroy(); self.dataLink59 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.dataLink96 ~= nil then self.dataLink96:destroy(); self.dataLink96 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.dataLink170 ~= nil then self.dataLink170:destroy(); self.dataLink170 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.horzLine13 ~= nil then self.horzLine13:destroy(); self.horzLine13 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.dataLink93 ~= nil then self.dataLink93:destroy(); self.dataLink93 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.dataLink76 ~= nil then self.dataLink76:destroy(); self.dataLink76 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.dataLink151 ~= nil then self.dataLink151:destroy(); self.dataLink151 = nil; end;
        if self.dataLink141 ~= nil then self.dataLink141:destroy(); self.dataLink141 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.dataLink154 ~= nil then self.dataLink154:destroy(); self.dataLink154 = nil; end;
        if self.dataLink146 ~= nil then self.dataLink146:destroy(); self.dataLink146 = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.dataLink86 ~= nil then self.dataLink86:destroy(); self.dataLink86 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.dataLink116 ~= nil then self.dataLink116:destroy(); self.dataLink116 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink88 ~= nil then self.dataLink88:destroy(); self.dataLink88 = nil; end;
        if self.dataLink163 ~= nil then self.dataLink163:destroy(); self.dataLink163 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmOurFichaAlemDoVeuHiperion()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmOurFichaAlemDoVeuHiperion();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmOurFichaAlemDoVeuHiperion = {
    newEditor = newfrmOurFichaAlemDoVeuHiperion, 
    new = newfrmOurFichaAlemDoVeuHiperion, 
    name = "frmOurFichaAlemDoVeuHiperion", 
    dataType = "Alem_do_veu_Hiperion", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "Alem_do_veu(Hiperion))", 
    description=""};

frmOurFichaAlemDoVeuHiperion = _frmOurFichaAlemDoVeuHiperion;
Firecast.registrarForm(_frmOurFichaAlemDoVeuHiperion);
Firecast.registrarDataType(_frmOurFichaAlemDoVeuHiperion);

return _frmOurFichaAlemDoVeuHiperion;
