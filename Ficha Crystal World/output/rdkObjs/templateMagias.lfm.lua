require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_templateMagias()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

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
    obj:setName("templateMagias");
    obj:setHeight(270);
    obj:setWidth(455.5);
    obj:setMargins({top=3, bottom=3, right=3, left=3});

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'elemMagia'});
    obj.dataLink1:setName("dataLink1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setXradius(5);
    obj.rectangle1:setYradius(5);
    obj.rectangle1:setCornerType("round");
    obj.rectangle1:setColor("#202020");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(455);
    obj.image1:setHeight(270);
    obj.image1:setField("imagemestilo");
    obj.image1:setEditable(true);
    obj.image1:setStyle("autoFit");
    lfm_setPropAsString(obj.image1, "animate",  "true");
    obj.image1:setName("image1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle1);
    obj.dataLink2:setField("imagemestilo");
    obj.dataLink2:setDefaultValue("http://blob.firecast.com.br/blobs/EVNGWURA_3118040/em-formacao_318-617309__1_.png");
    obj.dataLink2:setName("dataLink2");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setHeight(30);
    obj.layout1:setTop(5);
    obj.layout1:setLeft(166);
    obj.layout1:setWidth(282.5);
    obj.layout1:setName("layout1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setText("🞭");
    obj.button1:setWidth(30);
    obj.button1:setAlign("right");
    obj.button1:setMargins({left=2});
    obj.button1:setName("button1");
    obj.button1:setFontFamily("Cambria");
    obj.button1:setFontColor("white");
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setField("nomeMagia");
    obj.edit1:setAlign("client");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setName("edit1");
    obj.edit1:setFontFamily("Cambria");
    obj.edit1:setTransparent(true);
    obj.edit1:setFontColor("#cdcdcd");

    obj.labDesc = GUI.fromHandle(_obj_newObject("button"));
    obj.labDesc:setParent(obj.rectangle1);
    obj.labDesc:setText("Descrição");
    obj.labDesc:setTop(235);
    obj.labDesc:setLeft(10);
    obj.labDesc:setWidth(430.5);
    obj.labDesc:setHeight(30);
    obj.labDesc:setName("labDesc");
    obj.labDesc:setFontFamily("Cambria");
    obj.labDesc:setFontColor("white");
    lfm_setPropAsString(obj.labDesc, "fontStyle",  "bold");

    obj.popMagia = GUI.fromHandle(_obj_newObject("popup"));
    obj.popMagia:setParent(obj.rectangle1);
    obj.popMagia:setName("popMagia");
    obj.popMagia:setWidth(900);
    obj.popMagia:setHeight(700);
    obj.popMagia:setBackOpacity(0);
    obj.popMagia:setDrawContainer(false);
    lfm_setPropAsString(obj.popMagia, "autoScopeNode",  "true");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.popMagia);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#0e0e0e");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setCornerType("bevel");
    obj.rectangle2:setName("rectangle2");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle2);
    obj.image2:setField("imagemMagia");
    obj.image2:setAlign("client");
    obj.image2:setStyle("autoFit");
    obj.image2:setMargins({right=20, left=20});
    obj.image2:setOpacity(0.1);
    obj.image2:setName("image2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle2);
    obj.label1:setFontColor("white");
    obj.label1:setTop(10);
    obj.label1:setLeft(10);
    obj.label1:setWidth(580);
    obj.label1:setField("nomeMagia");
    obj.label1:setMargins({bottom=5});
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontFamily("Constantia");
    obj.label1:setFontSize(26);
    obj.label1:setHeight(30);
    obj.label1:setName("label1");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.rectangle2);
    obj.horzLine1:setTop(45);
    obj.horzLine1:setLeft(10);
    obj.horzLine1:setWidth(580);
    obj.horzLine1:setStrokeColor("#424242");
    obj.horzLine1:setName("horzLine1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle2);
    obj.layout2:setTop(50);
    obj.layout2:setLeft(10);
    obj.layout2:setWidth(580);
    obj.layout2:setHeight(30);
    obj.layout2:setName("layout2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setText("");
    obj.label2:setWidth(45);
    obj.label2:setAlign("left");
    obj.label2:setName("label2");
    obj.label2:setFontFamily("Cambria");
    obj.label2:setFontColor("white");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setAlign("client");
    obj.edit2:setField("raiseMagia");
    obj.edit2:setName("edit2");
    obj.edit2:setFontFamily("Cambria");
    obj.edit2:setTransparent(true);
    obj.edit2:setFontColor("#cdcdcd");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout2);
    obj.dataLink3:setDefaultValue("");
    obj.dataLink3:setField("raiseMagia");
    obj.dataLink3:setName("dataLink3");

    obj.MinhaDescMag = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.MinhaDescMag:setParent(obj.rectangle2);
    obj.MinhaDescMag:setMargins({top=90, right=10, left=10, bottom=10});
    obj.MinhaDescMag:setName("MinhaDescMag");
    obj.MinhaDescMag:setField("descriMagia");
    obj.MinhaDescMag:setAlign("client");
    obj.MinhaDescMag:setTransparent(true);
    obj.MinhaDescMag:setFontFamily("Cambria");
    obj.MinhaDescMag:setFontColor("#cdcdcd");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.rectangle2);
    obj.dataLink4:setDefaultValue("Descrição.");
    obj.dataLink4:setField("descriMagia");
    obj.dataLink4:setName("dataLink4");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.rectangle2);
    obj.richEdit1:setWidth(900);
    obj.richEdit1:setHeight(900);
    obj.richEdit1:setField("SkilsNOTAS");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#696969");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setMargins({left=10, right=10, bottom=40});
    obj.richEdit1:setName("richEdit1");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            			local node = NDB.getRoot(sheet);
            			local objetos = NDB.getChildNodes(node.magias);
            
            			for i=1, #objetos, 1 do 
            				if objetos[i].elemMagia == 'Water' then
            					objetos[i].imagemMagia = '/Frames/bgWater.png';
            				elseif objetos[i].elemMagia == 'Earth' then
            					objetos[i].imagemMagia = '/Frames/bgEarth.png';
            				elseif objetos[i].elemMagia == 'Air' then
            					objetos[i].imagemMagia = '/Frames/bgAir.png';
            				elseif objetos[i].elemMagia == 'Fire' then
            					objetos[i].imagemMagia = '/Frames/bgFire.png';
            				elseif objetos[i].elemMagia == 'Void' then
            					objetos[i].imagemMagia = '/Frames/bgVoid.png';
            				elseif objetos[i].elemMagia == 'Universal' then
            					objetos[i].imagemMagia = '0';
            				end;
            			end;
            
            		end
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            NDB.deleteNode(sheet);
        end, obj);

    obj._e_event2 = obj.labDesc:addEventListener("onClick",
        function (_)
            local pop = self:findControlByName("popMagia");
            			if pop ~= nil then
            			pop:setNodeObject(self.sheet);
            			pop:showPopupEx("bottom", self.labDesc);
            			else
            			showMessage("Ops, bug... Nao encontrei o popup para exibir");
            			end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.popMagia ~= nil then self.popMagia:destroy(); self.popMagia = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.labDesc ~= nil then self.labDesc:destroy(); self.labDesc = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.MinhaDescMag ~= nil then self.MinhaDescMag:destroy(); self.MinhaDescMag = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newtemplateMagias()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_templateMagias();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _templateMagias = {
    newEditor = newtemplateMagias, 
    new = newtemplateMagias, 
    name = "templateMagias", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

templateMagias = _templateMagias;
Firecast.registrarForm(_templateMagias);

return _templateMagias;
