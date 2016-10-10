package com.enfluid.ltp.view.renderers
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.FlexEvent;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class DomainRenderer extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1129430082domainCa:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _1129430096domainCo:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _652594717domainCom:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _78300945domainComau:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _1244399898domainCouk:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _1129430117domainDe:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _1129430123domainDk:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _1244222574domainInfo:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _652604985domainNet:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _1129430434domainNl:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _652606336domainOrg:com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
      
      private var _102727412label:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _652640040domainsVO:DomainsVO;
      
      private var _1249474914options:DomainExtensionOptions;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DomainRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DomainRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_DomainRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DomainRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(2);
         if(_loc4_)
         {
            §§push((§§pop() - 3 - 1 - 25 + 70) * 4 * 80);
         }
         §§pop().paddingTop = §§pop();
         this.clipAndEnableScrolling = true;
         §§push(this);
         §§push(2);
         if(_loc4_)
         {
            §§push(§§pop() - 107 + 1 - 93);
         }
         §§pop().gap = §§pop();
         this.mxmlContent = [this._DomainRenderer_Label1_i(),this._DomainRenderer_DomainExtensionRenderer1_i(),this._DomainRenderer_DomainExtensionRenderer2_i(),this._DomainRenderer_DomainExtensionRenderer3_i(),this._DomainRenderer_DomainExtensionRenderer4_i(),this._DomainRenderer_DomainExtensionRenderer5_i(),this._DomainRenderer_DomainExtensionRenderer6_i(),this._DomainRenderer_DomainExtensionRenderer7_i(),this._DomainRenderer_DomainExtensionRenderer8_i(),this._DomainRenderer_DomainExtensionRenderer9_i(),this._DomainRenderer_DomainExtensionRenderer10_i(),this._DomainRenderer_DomainExtensionRenderer11_i()];
         this.addEventListener("creationComplete",this.___DomainRenderer_HGroup1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 26 - 79 - 39 - 112) + 1);
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         DomainRenderer._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.fontSize = 12;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function get domainRendererWidth() : int
      {
         if(this.options.dk)
         {
            return this.domainDk.x + this.domainDk.width;
         }
         if(this.options.nl)
         {
            return this.domainNl.x + this.domainNl.width;
         }
         if(this.options.de)
         {
            return this.domainDe.x + this.domainDe.width;
         }
         if(this.options.comau)
         {
            return this.domainComau.x + this.domainComau.width;
         }
         if(this.options.ca)
         {
            return this.domainCa.x + this.domainCa.width;
         }
         if(this.options.info)
         {
            return this.domainInfo.x + this.domainInfo.width;
         }
         if(this.options.co)
         {
            return this.domainCo.x + this.domainCo.width;
         }
         if(this.options.couk)
         {
            return this.domainCouk.x + this.domainCouk.width;
         }
         if(this.options.org)
         {
            return this.domainOrg.x + this.domainOrg.width;
         }
         if(this.options.net)
         {
            return this.domainNet.x + this.domainNet.width;
         }
         if(this.options.com)
         {
            return this.domainCom.x + this.domainCom.width;
         }
         return 0;
      }
      
      protected final function creationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      private final function _DomainRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 55) - 1 + 118 + 1 - 109);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.id = "label";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.label = _loc1_;
         BindingManager.executeBindings(this,"label",this.label);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer1_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".com";
         _loc1_.id = "domainCom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainCom = _loc1_;
         BindingManager.executeBindings(this,"domainCom",this.domainCom);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer2_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".net";
         _loc1_.id = "domainNet";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainNet = _loc1_;
         BindingManager.executeBindings(this,"domainNet",this.domainNet);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer3_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".org";
         _loc1_.id = "domainOrg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainOrg = _loc1_;
         BindingManager.executeBindings(this,"domainOrg",this.domainOrg);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer4_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".co.uk";
         _loc1_.id = "domainCouk";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainCouk = _loc1_;
         BindingManager.executeBindings(this,"domainCouk",this.domainCouk);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer5_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".co";
         _loc1_.id = "domainCo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainCo = _loc1_;
         BindingManager.executeBindings(this,"domainCo",this.domainCo);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer6_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".info";
         _loc1_.id = "domainInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainInfo = _loc1_;
         BindingManager.executeBindings(this,"domainInfo",this.domainInfo);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer7_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".ca";
         _loc1_.id = "domainCa";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainCa = _loc1_;
         BindingManager.executeBindings(this,"domainCa",this.domainCa);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer8_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".com.au";
         _loc1_.id = "domainComau";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainComau = _loc1_;
         BindingManager.executeBindings(this,"domainComau",this.domainComau);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer9_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".de";
         _loc1_.id = "domainDe";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainDe = _loc1_;
         BindingManager.executeBindings(this,"domainDe",this.domainDe);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer10_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".nl";
         _loc1_.id = "domainNl";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainNl = _loc1_;
         BindingManager.executeBindings(this,"domainNl",this.domainNl);
         return _loc1_;
      }
      
      private final function _DomainRenderer_DomainExtensionRenderer11_i() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainExtensionRenderer = new com.enfluid.ltp.view.renderers.DomainExtensionRenderer();
         _loc1_.text = ".dk";
         _loc1_.id = "domainDk";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainDk = _loc1_;
         BindingManager.executeBindings(this,"domainDk",this.domainDk);
         return _loc1_;
      }
      
      public final function ___DomainRenderer_HGroup1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private final function _DomainRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 48 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options && §§pop() > §§pop() && domainsVO.domainWithoutExtension;
         },null,"this.includeInLayout");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 52 * 18);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options && §§pop() > §§pop() && domainsVO.domainWithoutExtension;
         },null,"this.visible");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 88) * 109 + 43);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = domainsVO.domainWithoutExtension;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"label.text");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) - 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.com;
         },null,"domainCom.includeInLayout");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 92 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.com;
         },null,"domainCom.visible");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push((-(-§§pop() - 98) + 53) * 74 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.com;
         },null,"domainCom.availability");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(--(-§§pop() - 1 + 1 - 11 + 62));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.net;
         },null,"domainNet.includeInLayout");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 107 + 43 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.net;
         },null,"domainNet.visible");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() - 2 - 48) * 111 - 1 - 6 + 98);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.net;
         },null,"domainNet.availability");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 + 61 + 1) + 93);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.org;
         },null,"domainOrg.includeInLayout");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 56 + 1 + 60);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.org;
         },null,"domainOrg.visible");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(§§pop() + 57 + 1 - 3);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.org;
         },null,"domainOrg.availability");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() + 68 + 68 - 36 + 36) * 43 * 8);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.couk;
         },null,"domainCouk.includeInLayout");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() - 63 + 1 - 118 + 110 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.couk;
         },null,"domainCouk.visible");
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() - 36 - 58 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.couk;
         },null,"domainCouk.availability");
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 1 + 81 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.co;
         },null,"domainCo.includeInLayout");
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push((-(§§pop() * 104 + 31) - 1) * 88);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.co;
         },null,"domainCo.visible");
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push(§§pop() * 24 - 81 - 56);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.co;
         },null,"domainCo.availability");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 83 + 50 - 5);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.info;
         },null,"domainInfo.includeInLayout");
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push(§§pop() * 68 * 102 - 1 + 16);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.info;
         },null,"domainInfo.visible");
         §§push(result);
         §§push(20);
         if(_loc2_)
         {
            §§push(-§§pop() * 52 - 1 - 60);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.info;
         },null,"domainInfo.availability");
         §§push(result);
         §§push(21);
         if(_loc3_)
         {
            §§push((§§pop() - 10) * 41 * 119);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.ca;
         },null,"domainCa.includeInLayout");
         §§push(result);
         §§push(22);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 - 79 - 1 - 1 + 69) * 81);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.ca;
         },null,"domainCa.visible");
         §§push(result);
         §§push(23);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 96 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.ca;
         },null,"domainCa.availability");
         §§push(result);
         §§push(24);
         if(_loc3_)
         {
            §§push(§§pop() - 54 - 1 + 1 - 1 - 100 - 105);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.comau;
         },null,"domainComau.includeInLayout");
         §§push(result);
         §§push(25);
         if(_loc3_)
         {
            §§push(§§pop() + 81 + 1 - 23 - 110 + 87);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.comau;
         },null,"domainComau.visible");
         §§push(result);
         §§push(26);
         if(_loc3_)
         {
            §§push(-(§§pop() - 92) + 38 - 90 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.comau;
         },null,"domainComau.availability");
         §§push(result);
         §§push(27);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 52 - 1) * 104);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.de;
         },null,"domainDe.includeInLayout");
         §§push(result);
         §§push(28);
         if(_loc3_)
         {
            §§push(-(-(-§§pop() * 57 + 18 + 1) - 26));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.de;
         },null,"domainDe.visible");
         §§push(result);
         §§push(29);
         if(_loc3_)
         {
            §§push((-(§§pop() * 41 + 1) + 1 + 1) * 51);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.de;
         },null,"domainDe.availability");
         §§push(result);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() - 58) - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.nl;
         },null,"domainNl.includeInLayout");
         §§push(result);
         §§push(31);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 50 + 59) * 99 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.nl;
         },null,"domainNl.visible");
         §§push(result);
         §§push(32);
         if(_loc3_)
         {
            §§push(§§pop() - 62 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.nl;
         },null,"domainNl.availability");
         §§push(result);
         §§push(33);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1 - 1) - 1) * 49);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.dk;
         },null,"domainDk.includeInLayout");
         §§push(result);
         §§push(34);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 41 + 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return options.dk;
         },null,"domainDk.visible");
         §§push(result);
         §§push(35);
         if(_loc3_)
         {
            §§push(-§§pop() - 75 + 1 + 74);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return domainsVO.dk;
         },null,"domainDk.availability");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get domainCa() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._1129430082domainCa;
      }
      
      public function set domainCa(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._1129430082domainCa;
         if(_loc2_ !== param1)
         {
            this._1129430082domainCa = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainCa",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainCo() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._1129430096domainCo;
      }
      
      public function set domainCo(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._1129430096domainCo;
         if(_loc2_ !== param1)
         {
            this._1129430096domainCo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainCo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainCom() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._652594717domainCom;
      }
      
      public function set domainCom(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._652594717domainCom;
         if(_loc2_ !== param1)
         {
            this._652594717domainCom = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainCom",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainComau() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._78300945domainComau;
      }
      
      public function set domainComau(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._78300945domainComau;
         if(_loc2_ !== param1)
         {
            this._78300945domainComau = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainComau",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainCouk() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._1244399898domainCouk;
      }
      
      public function set domainCouk(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._1244399898domainCouk;
         if(_loc2_ !== param1)
         {
            this._1244399898domainCouk = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainCouk",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainDe() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._1129430117domainDe;
      }
      
      public function set domainDe(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._1129430117domainDe;
         if(_loc2_ !== param1)
         {
            this._1129430117domainDe = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainDe",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainDk() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._1129430123domainDk;
      }
      
      public function set domainDk(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._1129430123domainDk;
         if(_loc2_ !== param1)
         {
            this._1129430123domainDk = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainDk",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainInfo() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._1244222574domainInfo;
      }
      
      public function set domainInfo(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._1244222574domainInfo;
         if(_loc2_ !== param1)
         {
            this._1244222574domainInfo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainInfo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainNet() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._652604985domainNet;
      }
      
      public function set domainNet(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._652604985domainNet;
         if(_loc2_ !== param1)
         {
            this._652604985domainNet = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainNet",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainNl() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._1129430434domainNl;
      }
      
      public function set domainNl(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._1129430434domainNl;
         if(_loc2_ !== param1)
         {
            this._1129430434domainNl = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainNl",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainOrg() : com.enfluid.ltp.view.renderers.DomainExtensionRenderer
      {
         return this._652606336domainOrg;
      }
      
      public function set domainOrg(param1:com.enfluid.ltp.view.renderers.DomainExtensionRenderer) : void
      {
         var _loc2_:Object = this._652606336domainOrg;
         if(_loc2_ !== param1)
         {
            this._652606336domainOrg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainOrg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label() : Label
      {
         return this._102727412label;
      }
      
      public function set label(param1:Label) : void
      {
         var _loc2_:Object = this._102727412label;
         if(_loc2_ !== param1)
         {
            this._102727412label = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainsVO() : DomainsVO
      {
         return this._652640040domainsVO;
      }
      
      public function set domainsVO(param1:DomainsVO) : void
      {
         var _loc2_:Object = this._652640040domainsVO;
         if(_loc2_ !== param1)
         {
            this._652640040domainsVO = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsVO",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get options() : DomainExtensionOptions
      {
         return this._1249474914options;
      }
      
      public function set options(param1:DomainExtensionOptions) : void
      {
         var _loc2_:Object = this._1249474914options;
         if(_loc2_ !== param1)
         {
            this._1249474914options = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"options",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
