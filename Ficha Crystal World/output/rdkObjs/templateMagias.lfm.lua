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
    obj:setName("templateMagias");
    obj:setHeight(270);
    obj:setWidth(455.5);
    obj:setMargins({top=3, bottom=3, right=3, left=3});

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
    obj.image1.animate = true;
    obj.image1:setName("image1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle1);
    obj.dataLink1:setField("imagemestilo");
    obj.dataLink1:setDefaultValue("http://blob.firecast.com.br/blobs/EVNGWURA_3118040/em-formacao_318-617309__1_.png");
    obj.dataLink1:setName("dataLink1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setWidth(50);
    obj.edit1:setHeight(50);
    obj.edit1:setLeft(5);
    obj.edit1:setTop(5);
    obj.edit1:setField("Nvmagia");
    obj.edit1:setType("number");
    obj.edit1:setMin(0);
    obj.edit1:setMax(99);
    obj.edit1:setFontColor("#FFFF00");
    obj.edit1:setFontSize(30);
    obj.edit1:setName("edit1");
    obj.edit1:setFontFamily("Cambria");
    obj.edit1:setTransparent(false);

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
    lfm_setPropAsString(obj.button1, "fontStyle", "bold");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setField("nomeMagia");
    lfm_setPropAsString(obj.edit2, "fontStyle", "bold");
    obj.edit2:setWidth(250);
    obj.edit2:setLeft(5);
    obj.edit2:setName("edit2");
    obj.edit2:setFontFamily("Cambria");
    obj.edit2:setTransparent(false);
    obj.edit2:setFontColor("white");

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
    lfm_setPropAsString(obj.labDesc, "fontStyle", "bold");

    obj.popMagia = GUI.fromHandle(_obj_newObject("popup"));
    obj.popMagia:setParent(obj.rectangle1);
    obj.popMagia:setName("popMagia");
    obj.popMagia:setWidth(930);
    obj.popMagia:setHeight(530);
    obj.popMagia:setBackOpacity(0);
    obj.popMagia:setDrawContainer(false);

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.popMagia);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#4B0082");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setName("rectangle2");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle2);
    obj.image2:setField("imagemMagia");
    obj.image2:setAlign("client");
    obj.image2:setStyle("autoFit");
    obj.image2:setMargins({right=20, left=20});
    obj.image2:setOpacity(0.1);
    obj.image2:setName("image2");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle2);
    obj.dataLink2:setDefaultValue("Descrição.");
    obj.dataLink2:setField("descriMagia");
    obj.dataLink2:setName("dataLink2");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.rectangle2);
    obj.richEdit1:setLeft(11);
    obj.richEdit1:setTop(11);
    obj.richEdit1:setWidth(900);
    obj.richEdit1:setHeight(500);
    obj.richEdit1:setField("SkilsNOTAS");
    obj.richEdit1.backgroundColor = "#696969";
    obj.richEdit1.defaultFontColor = "white";
    obj.richEdit1:setName("richEdit1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (event)
            NDB.deleteNode(sheet);
        end);

    obj._e_event1 = obj.labDesc:addEventListener("onClick",
        function (event)
            local pop = self:findControlByName("popMagia");
            			if pop ~= nil then
            			pop:setNodeObject(self.sheet);
            			pop:showPopupEx("center");
            			else
            			showMessage("Ops, bug... Nao encontrei o popup para exibir");
            			end;
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.labDesc ~= nil then self.labDesc:destroy(); self.labDesc = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.popMagia ~= nil then self.popMagia:destroy(); self.popMagia = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
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
    cacheMode = "none", 
    title = "", 
    description=""};

templateMagias = _templateMagias;
Firecast.registrarForm(_templateMagias);

return _templateMagias;
