require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_templateSkills()
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
    obj:setName("templateSkills");
    obj:setHeight(30);

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout1);
    obj.checkBox1:setField("MarcadorSkillEscola");
    obj.checkBox1:setAlign("left");
    obj.checkBox1:setWidth(20);
    obj.checkBox1:setMargins({left=23});
    obj.checkBox1:setHint("Perícia de Escola");
    obj.checkBox1:setName("checkBox1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setField("MarcadorSkillEscola");
    obj.dataLink1:setDefaultValue("false");
    obj.dataLink1:setName("dataLink1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setField("nomeSkill");
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(225);
    obj.edit1:setMargins({right=2});
    obj.edit1:setFontColor("white");
    obj.edit1:setFontSize(13);
    obj.edit1:setName("edit1");
    obj.edit1:setFontFamily("Cambria");
    obj.edit1:setTransparent(true);

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout1);
    obj.dataLink2:setDefaultValue("—");
    obj.dataLink2:setField("nomeSkill");
    obj.dataLink2:setName("dataLink2");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setColor("#212121");
    obj.rectangle1:setAlign("left");
    obj.rectangle1:setWidth(79);
    obj.rectangle1:setMargins({right=2});
    obj.rectangle1:setName("rectangle1");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle1);
    obj.comboBox1:setAlign("client");
    obj.comboBox1:setField("tipoSkill");
    obj.comboBox1:setItems({'Alta', 'Baixa', 'Bugei', 'Mercante'});
    obj.comboBox1:setValues({'Alta', 'Baixa', 'Bugei', 'Mercante'});
    obj.comboBox1:setMargins({right=2, left=2});
    obj.comboBox1:setName("comboBox1");
    obj.comboBox1:setFontFamily("Cambria");
    obj.comboBox1:setTransparent(true);
    obj.comboBox1:setFontColor("#cdcdcd");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setField("rankSkill");
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(42);
    obj.edit2:setMargins({right=2});
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setType("number");
    obj.edit2:setMin(0);
    obj.edit2:setMax(10);
    lfm_setPropAsString(obj.edit2, "fontStyle", "bold");
    obj.edit2:setFontColor("white");
    obj.edit2:setName("edit2");
    obj.edit2:setFontFamily("Cambria");
    obj.edit2:setTransparent(true);

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout1);
    obj.dataLink3:setDefaultValue("1");
    obj.dataLink3:setField("rankSkill");
    obj.dataLink3:setName("dataLink3");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setColor("#212121");
    obj.rectangle2:setAlign("left");
    obj.rectangle2:setWidth(94);
    obj.rectangle2:setMargins({right=2});
    obj.rectangle2:setName("rectangle2");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle2);
    obj.comboBox2:setAlign("client");
    obj.comboBox2:setMargins({right=2, left=2});
    obj.comboBox2:setItems({'Vigor', 'Vontade', 'Força', 'Percepção', 'Reflexos', 'Astúcia', 'Agilidade', 'Inteligência', 'Vazio'});
    obj.comboBox2:setField("atributoSkill");
    obj.comboBox2:setValues({'StaminON', 'WillpoweON', 'StrengtON', 'PerceptioON', 'ReflexeON', 'AwarenesON', 'AgilitON', 'IntelligencON', 'VoiON'});
    obj.comboBox2:setName("comboBox2");
    obj.comboBox2:setFontFamily("Cambria");
    obj.comboBox2:setTransparent(true);
    obj.comboBox2:setFontColor("#cdcdcd");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setTop(0);
    obj.button1:setLeft(603);
    obj.button1:setText("🞭");
    obj.button1:setHint("Apagar Perícia");
    obj.button1:setHeight(30);
    obj.button1:setWidth(30);
    obj.button1:setName("button1");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout1);
    obj.dataLink4:setField("rankSkill");
    obj.dataLink4:setName("dataLink4");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (event)
            NDB.deleteNode(sheet);
        end);

    obj._e_event1 = obj.dataLink4:addEventListener("onChange",
        function (field, oldValue, newValue)
            if sheet ~= nil then
            					local node = NDB.getRoot(sheet);
            					local objetos = NDB.getChildNodes(node.pericias);
            					local soma = 0;
            
            					for i=1, #objetos, 1 do 
            						soma = soma + (tonumber(objetos[i].rankSkill) or 0);
            					end;
            
            					node.countSum = soma;
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
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newtemplateSkills()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_templateSkills();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _templateSkills = {
    newEditor = newtemplateSkills, 
    new = newtemplateSkills, 
    name = "templateSkills", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "", 
    description=""};

templateSkills = _templateSkills;
Firecast.registrarForm(_templateSkills);

return _templateSkills;
