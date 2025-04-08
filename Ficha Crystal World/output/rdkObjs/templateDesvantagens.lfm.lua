require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_templateDesVantagens()
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
    obj:setName("templateDesVantagens");
    obj:setHeight(30);

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setFontColor("white");
    obj.edit1:setField("aqq");
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(230);
    obj.edit1:setHeight(25);
    obj.edit1:setMargins({right=2});
    lfm_setPropAsString(obj.edit1, "fontStyle", "bold");
    obj.edit1:setName("edit1");
    obj.edit1:setFontFamily("Cambria");
    obj.edit1:setTransparent(true);

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setField("aqq");
    obj.dataLink1:setDefaultValue("—");
    obj.dataLink1:setName("dataLink1");

    obj.labNome = GUI.fromHandle(_obj_newObject("button"));
    obj.labNome:setParent(obj.layout1);
    obj.labNome:setText("");
    obj.labNome:setWidth(0);
    obj.labNome:setAlign("left");
    obj.labNome:setName("labNome");
    obj.labNome:setMargins({right=2});

    obj.popDesvantagem = GUI.fromHandle(_obj_newObject("popup"));
    obj.popDesvantagem:setParent(obj.layout1);
    obj.popDesvantagem:setName("popDesvantagem");
    obj.popDesvantagem:setWidth(440);
    obj.popDesvantagem:setHeight(200);
    obj.popDesvantagem:setBackOpacity(0);
    obj.popDesvantagem:setDrawContainer(false);
    obj.popDesvantagem.autoScopeNode = true;

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.popDesvantagem);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#0e0e0e");
    obj.rectangle1:setPadding({top=10, left=10, bottom=10, right=10});
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setCornerType("bevel");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setFontColor("white");
    obj.label1:setAlign("top");
    obj.label1:setField("aqq");
    obj.label1:setMargins({bottom=5, right=100});
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");
    obj.label1:setFontFamily("Constantia");
    obj.label1:setFontSize(26);
    obj.label1:setHeight(30);
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setField("atributoSkill");
    lfm_setPropAsString(obj.label2, "anchors", "top right");
    obj.label2:setRight(0);
    obj.label2:setTop(20);
    obj.label2:setHorzTextAlign("trailing");
    lfm_setPropAsString(obj.label2, "fontStyle", "bold");
    obj.label2:setName("label2");
    obj.label2:setFontFamily("Cambria");
    obj.label2:setFontColor("#cdcdcd");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.rectangle1);
    obj.horzLine1:setAlign("top");
    obj.horzLine1:setMargins({bottom=5});
    obj.horzLine1:setStrokeColor("#424242");
    obj.horzLine1:setName("horzLine1");

    obj.MinhaVant = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.MinhaVant:setParent(obj.rectangle1);
    obj.MinhaVant:setName("MinhaVant");
    obj.MinhaVant:setField("infoVnt");
    obj.MinhaVant:setAlign("client");
    obj.MinhaVant:setFontFamily("Cambria");
    obj.MinhaVant:setTransparent(true);

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle1);
    obj.dataLink2:setField("infoVnt");
    obj.dataLink2:setDefaultValue("—");
    obj.dataLink2:setName("dataLink2");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("right");
    obj.button1:setText("🞭");
    obj.button1:setWidth(30);
    obj.button1:setName("button1");

    obj._e_event0 = obj.labNome:addEventListener("onClick",
        function (event)
            local pop = self:findControlByName("popDesvantagem");
            					if pop ~= nil then
            					pop:setNodeObject(self.sheet);
            					pop:showPopupEx("left", self.labNome);
            					else
            					showMessage("Ops, bug... Nao encontrei o popup para exibir");
            					end;
        end);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (event)
            NDB.deleteNode(sheet);
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
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.popDesvantagem ~= nil then self.popDesvantagem:destroy(); self.popDesvantagem = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.labNome ~= nil then self.labNome:destroy(); self.labNome = nil; end;
        if self.MinhaVant ~= nil then self.MinhaVant:destroy(); self.MinhaVant = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newtemplateDesVantagens()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_templateDesVantagens();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _templateDesVantagens = {
    newEditor = newtemplateDesVantagens, 
    new = newtemplateDesVantagens, 
    name = "templateDesVantagens", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "", 
    description=""};

templateDesVantagens = _templateDesVantagens;
Firecast.registrarForm(_templateDesVantagens);

return _templateDesVantagens;
