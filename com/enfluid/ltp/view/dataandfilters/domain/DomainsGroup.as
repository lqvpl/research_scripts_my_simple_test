package com.enfluid.ltp.view.dataandfilters.domain
{
   import spark.components.TileGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.model.DataModel;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import spark.components.Label;
   import spark.primitives.Path;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.Scraper;
   import mx.rpc.http.HTTPService;
   import spark.components.DataGroup;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteOwnKeywordsCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteSeedKeywordCommand;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.util.Logger;
   import com.photon.controller.PhotonCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.core.ClassFactory;
   import spark.skins.spark.DefaultItemRenderer;
   import mx.states.Transition;
   import mx.core.mx_internal;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import com.enfluid.ltp.view.skins.ToggleSwitchSkin;
   import mx.events.PropertyChangeEvent;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class DomainsGroup extends TileGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _844121785_DomainsGroup_ToggleSwitch1:ToggleSwitch;
      
      private var _397971607_DomainsGroup_ToggleSwitch10:ToggleSwitch;
      
      private var _397971608_DomainsGroup_ToggleSwitch11:ToggleSwitch;
      
      private var _844121786_DomainsGroup_ToggleSwitch2:ToggleSwitch;
      
      private var _844121787_DomainsGroup_ToggleSwitch3:ToggleSwitch;
      
      private var _844121788_DomainsGroup_ToggleSwitch4:ToggleSwitch;
      
      private var _844121789_DomainsGroup_ToggleSwitch5:ToggleSwitch;
      
      private var _844121790_DomainsGroup_ToggleSwitch6:ToggleSwitch;
      
      private var _844121791_DomainsGroup_ToggleSwitch7:ToggleSwitch;
      
      private var _844121792_DomainsGroup_ToggleSwitch8:ToggleSwitch;
      
      private var _844121793_DomainsGroup_ToggleSwitch9:ToggleSwitch;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _2064930375domainsHyphenatedExtensions:DomainExtensionOptions;
      
      private var _102246321liveRefresh:Boolean = true;
      
      private var model:DataModel;
      
      mx_internal var _DomainsGroup_StylesInit_done:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DomainsGroup()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DomainsGroup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_dataandfilters_domain_DomainsGroupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DomainsGroup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 1 + 8 - 9 + 76);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 85 - 1 + 64 - 81);
         }
         §§pop().paddingBottom = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1));
         }
         §§pop().paddingLeft = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 13);
         }
         §§pop().paddingRight = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 41) + 52);
         }
         §§pop().paddingTop = §§pop();
         §§push(this);
         §§push(10);
         if(_loc4_)
         {
            §§push(§§pop() * 98 * 55 + 39 + 1 - 1 - 1);
         }
         §§pop().verticalGap = §§pop();
         §§push(this);
         §§push(4);
         if(_loc4_)
         {
            §§push(-(§§pop() * 109 + 58));
         }
         §§pop().requestedColumnCount = §§pop();
         this.mxmlContent = [this._DomainsGroup_ToggleSwitch1_i(),this._DomainsGroup_ToggleSwitch2_i(),this._DomainsGroup_ToggleSwitch3_i(),this._DomainsGroup_ToggleSwitch4_i(),this._DomainsGroup_ToggleSwitch5_i(),this._DomainsGroup_ToggleSwitch6_i(),this._DomainsGroup_ToggleSwitch7_i(),this._DomainsGroup_ToggleSwitch8_i(),this._DomainsGroup_ToggleSwitch9_i(),this._DomainsGroup_ToggleSwitch10_i(),this._DomainsGroup_ToggleSwitch11_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 15 + 1 + 1) * 24);
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
         DomainsGroup._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         mx_internal::_DomainsGroup_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected final function refreshData() : void
      {
         if(this.liveRefresh && this.model.selectedKeywordCollection)
         {
            this.model.selectedKeywordCollection.refresh();
            this.model.selectedKeywordCollection.project.save();
         }
      }
      
      private final function _DomainsGroup_ToggleSwitch1_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc2_)
         {
            §§push(-(§§pop() * 69 + 1 + 2) * 61 * 42 + 27);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "com";
         _loc1_.deselectedLabel = "com";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch1_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch1",this._DomainsGroup_ToggleSwitch1);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch1_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch2_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc3_)
         {
            §§push(§§pop() + 28 - 1 - 1 + 1 - 1 - 1 + 1);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "net";
         _loc1_.deselectedLabel = "net";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch2_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch2 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch2",this._DomainsGroup_ToggleSwitch2);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch2_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch3_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc3_)
         {
            §§push(-§§pop() * 76 + 1 + 1);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "org";
         _loc1_.deselectedLabel = "org";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch3_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch3 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch3",this._DomainsGroup_ToggleSwitch3);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch3_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch4_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(55);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 23 - 1) * 94);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "co.uk";
         _loc1_.deselectedLabel = "co.uk";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch4_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch4 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch4",this._DomainsGroup_ToggleSwitch4);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch4_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch5_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc2_)
         {
            §§push(§§pop() + 102 + 103 - 1);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "co";
         _loc1_.deselectedLabel = "co";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch5_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch5 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch5",this._DomainsGroup_ToggleSwitch5);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch5_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch6_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc2_)
         {
            §§push((§§pop() - 104 - 91 - 1 + 12) * 5 - 85);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "info";
         _loc1_.deselectedLabel = "info";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch6_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch6 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch6",this._DomainsGroup_ToggleSwitch6);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch6_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch7_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc2_)
         {
            §§push(§§pop() * 8 - 13 + 44 - 20 - 1);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "ca";
         _loc1_.deselectedLabel = "ca";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch7_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch7 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch7",this._DomainsGroup_ToggleSwitch7);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch7_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch8_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(55);
         if(_loc3_)
         {
            §§push((§§pop() - 14 + 43 + 89 - 65) * 90 + 1 - 68);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "com.au";
         _loc1_.deselectedLabel = "com.au";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch8_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch8 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch8",this._DomainsGroup_ToggleSwitch8);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch8_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch9_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc2_)
         {
            §§push((§§pop() * 75 + 93 + 108) * 3 + 77 - 62);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "de";
         _loc1_.deselectedLabel = "de";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch9_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch9 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch9",this._DomainsGroup_ToggleSwitch9);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch9_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch10_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1));
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "nl";
         _loc1_.deselectedLabel = "nl";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch10_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch10 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch10",this._DomainsGroup_ToggleSwitch10);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch10_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_ToggleSwitch11_i() : ToggleSwitch
      {
         var _loc1_:ToggleSwitch = new ToggleSwitch();
         §§push(_loc1_);
         §§push(42);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1) * 100 + 1 + 1);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.styleName = "toggleSwitch";
         _loc1_.selectedLabel = "dk";
         _loc1_.deselectedLabel = "dk";
         _loc1_.addEventListener("change",this.___DomainsGroup_ToggleSwitch11_change);
         _loc1_.id = "_DomainsGroup_ToggleSwitch11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsGroup_ToggleSwitch11 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsGroup_ToggleSwitch11",this._DomainsGroup_ToggleSwitch11);
         return _loc1_;
      }
      
      public final function ___DomainsGroup_ToggleSwitch11_change(param1:Event) : void
      {
         this.refreshData();
      }
      
      private final function _DomainsGroup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(--§§pop() - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.com;
         },null,"_DomainsGroup_ToggleSwitch1.selected");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 103 - 38) - 94) - 77);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.net;
         },null,"_DomainsGroup_ToggleSwitch2.selected");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 27 + 1 + 1 + 100);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.org;
         },null,"_DomainsGroup_ToggleSwitch3.selected");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 35 - 115) * 39 + 12);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.couk;
         },null,"_DomainsGroup_ToggleSwitch4.selected");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(--(-§§pop() + 7) * 79);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.co;
         },null,"_DomainsGroup_ToggleSwitch5.selected");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 28 - 114);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.info;
         },null,"_DomainsGroup_ToggleSwitch6.selected");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 51 + 35));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.ca;
         },null,"_DomainsGroup_ToggleSwitch7.selected");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 40 - 105 - 118 + 78) * 70));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.comau;
         },null,"_DomainsGroup_ToggleSwitch8.selected");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(-((§§pop() - 40) * 115 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.de;
         },null,"_DomainsGroup_ToggleSwitch9.selected");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(((§§pop() + 58 + 49) * 86 - 1) * 24 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.nl;
         },null,"_DomainsGroup_ToggleSwitch10.selected");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 1) * 8 + 118 + 1 + 1) * 86));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return domainsHyphenatedExtensions.dk;
         },null,"_DomainsGroup_ToggleSwitch11.selected");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push((-§§pop() + 53 - 46 - 72 - 1) * 58);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch1.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.com = param1;
         },"domainsHyphenatedExtensions.com");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push((§§pop() * 33 + 1 - 65 + 1) * 85 + 36);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 61 + 87 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 110 + 59) * 28);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 99 - 1) * 42 + 1 + 1 - 109);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 92 + 102) * 115);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 42 + 106 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch2.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.net = param1;
         },"domainsHyphenatedExtensions.net");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 110) * 96 + 1 + 97);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 92 + 25 - 116 - 102) + 9);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 13 - 1 + 48 + 53);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 90 - 1) * 23);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 + 50) * 33);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push((--§§pop() - 100) * 45 - 39 + 16 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch3.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.org = param1;
         },"domainsHyphenatedExtensions.org");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() * 62 - 21) - 1 + 1 + 11 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() * 37 + 1 - 110));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 40 + 1) - 44);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 44 - 69);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() - 12 + 12) * 44);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(-((§§pop() + 64) * 87 + 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch4.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.couk = param1;
         },"domainsHyphenatedExtensions.couk");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() * 104 + 1 + 1 + 85 - 83 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 117 + 1) * 41 * 93 + 92 + 37);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 94 - 35 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1 - 1) + 1 - 67);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 35) + 102 - 87 + 67 - 100);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch5.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.co = param1;
         },"domainsHyphenatedExtensions.co");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 44 - 65);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 26));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() + 38) + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-§§pop() + 78 - 44);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1 + 1 + 1) - 1 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 25));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch6.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.info = param1;
         },"domainsHyphenatedExtensions.info");
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 30 + 1) + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(-(-§§pop() * 17) + 38));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() - 19 + 1 - 1 + 16) * 88 + 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() + 103) * 115 * 4 + 66);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 107 + 1 + 105 - 42 - 1 + 24);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1) - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch7.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.ca = param1;
         },"domainsHyphenatedExtensions.ca");
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1) - 3);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 16);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 94 - 63);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1 - 1 - 12);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push(-(§§pop() - 17 - 11) + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(18);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 - 1 + 1 - 19) * 100));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch8.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.comau = param1;
         },"domainsHyphenatedExtensions.comau");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push(-§§pop() * 108 * 111 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 94 - 15);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push((-§§pop() - 1) * 16 - 1 - 52 + 84);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 90) - 18);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push(-(§§pop() + 30) - 1 + 55);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(§§pop() - 86 + 1 - 97);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch9.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.de = param1;
         },"domainsHyphenatedExtensions.de");
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 21 + 1 - 115 - 119 - 72);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 25 + 89 - 36);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() + 31 + 56 + 65 + 1 + 1 + 1 - 44);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 49 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(---(§§pop() - 1 - 49 + 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch10.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.nl = param1;
         },"domainsHyphenatedExtensions.nl");
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 107 + 1 - 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() - 30 + 13));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1) - 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(§§pop() - 73 + 1 + 8);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(20);
         if(_loc2_)
         {
            §§push(-((§§pop() - 112 - 101 - 10) * 112 + 1));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(21);
         if(_loc3_)
         {
            §§push(((§§pop() - 8 - 1 + 1) * 21 - 16) * 111 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainsGroup_ToggleSwitch11.selected;
         },function(param1:*):void
         {
            domainsHyphenatedExtensions.dk = param1;
         },"domainsHyphenatedExtensions.dk");
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push(§§pop() - 90 - 40 - 76);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 14 + 67 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 58) * 35 - 1 - 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 39 - 6 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push(--((§§pop() + 1 - 96 - 38) * 14 - 94));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _DomainsGroup_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.domainsHyphenatedExtensions.com = this._DomainsGroup_ToggleSwitch1.selected;
         this.domainsHyphenatedExtensions.net = this._DomainsGroup_ToggleSwitch2.selected;
         this.domainsHyphenatedExtensions.org = this._DomainsGroup_ToggleSwitch3.selected;
         this.domainsHyphenatedExtensions.couk = this._DomainsGroup_ToggleSwitch4.selected;
         this.domainsHyphenatedExtensions.co = this._DomainsGroup_ToggleSwitch5.selected;
         this.domainsHyphenatedExtensions.info = this._DomainsGroup_ToggleSwitch6.selected;
         this.domainsHyphenatedExtensions.ca = this._DomainsGroup_ToggleSwitch7.selected;
         this.domainsHyphenatedExtensions.comau = this._DomainsGroup_ToggleSwitch8.selected;
         this.domainsHyphenatedExtensions.de = this._DomainsGroup_ToggleSwitch9.selected;
         this.domainsHyphenatedExtensions.nl = this._DomainsGroup_ToggleSwitch10.selected;
         this.domainsHyphenatedExtensions.dk = this._DomainsGroup_ToggleSwitch11.selected;
      }
      
      mx_internal final function _DomainsGroup_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_DomainsGroup_StylesInit_done)
         {
            return;
         }
         mx_internal::_DomainsGroup_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","toggleSwitch");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".toggleSwitch");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = ToggleSwitchSkin;
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch1() : ToggleSwitch
      {
         return this._844121785_DomainsGroup_ToggleSwitch1;
      }
      
      public function set _DomainsGroup_ToggleSwitch1(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121785_DomainsGroup_ToggleSwitch1;
         if(_loc2_ !== param1)
         {
            this._844121785_DomainsGroup_ToggleSwitch1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch10() : ToggleSwitch
      {
         return this._397971607_DomainsGroup_ToggleSwitch10;
      }
      
      public function set _DomainsGroup_ToggleSwitch10(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._397971607_DomainsGroup_ToggleSwitch10;
         if(_loc2_ !== param1)
         {
            this._397971607_DomainsGroup_ToggleSwitch10 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch10",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch11() : ToggleSwitch
      {
         return this._397971608_DomainsGroup_ToggleSwitch11;
      }
      
      public function set _DomainsGroup_ToggleSwitch11(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._397971608_DomainsGroup_ToggleSwitch11;
         if(_loc2_ !== param1)
         {
            this._397971608_DomainsGroup_ToggleSwitch11 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch11",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch2() : ToggleSwitch
      {
         return this._844121786_DomainsGroup_ToggleSwitch2;
      }
      
      public function set _DomainsGroup_ToggleSwitch2(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121786_DomainsGroup_ToggleSwitch2;
         if(_loc2_ !== param1)
         {
            this._844121786_DomainsGroup_ToggleSwitch2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch3() : ToggleSwitch
      {
         return this._844121787_DomainsGroup_ToggleSwitch3;
      }
      
      public function set _DomainsGroup_ToggleSwitch3(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121787_DomainsGroup_ToggleSwitch3;
         if(_loc2_ !== param1)
         {
            this._844121787_DomainsGroup_ToggleSwitch3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch4() : ToggleSwitch
      {
         return this._844121788_DomainsGroup_ToggleSwitch4;
      }
      
      public function set _DomainsGroup_ToggleSwitch4(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121788_DomainsGroup_ToggleSwitch4;
         if(_loc2_ !== param1)
         {
            this._844121788_DomainsGroup_ToggleSwitch4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch5() : ToggleSwitch
      {
         return this._844121789_DomainsGroup_ToggleSwitch5;
      }
      
      public function set _DomainsGroup_ToggleSwitch5(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121789_DomainsGroup_ToggleSwitch5;
         if(_loc2_ !== param1)
         {
            this._844121789_DomainsGroup_ToggleSwitch5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch6() : ToggleSwitch
      {
         return this._844121790_DomainsGroup_ToggleSwitch6;
      }
      
      public function set _DomainsGroup_ToggleSwitch6(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121790_DomainsGroup_ToggleSwitch6;
         if(_loc2_ !== param1)
         {
            this._844121790_DomainsGroup_ToggleSwitch6 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch6",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch7() : ToggleSwitch
      {
         return this._844121791_DomainsGroup_ToggleSwitch7;
      }
      
      public function set _DomainsGroup_ToggleSwitch7(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121791_DomainsGroup_ToggleSwitch7;
         if(_loc2_ !== param1)
         {
            this._844121791_DomainsGroup_ToggleSwitch7 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch7",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch8() : ToggleSwitch
      {
         return this._844121792_DomainsGroup_ToggleSwitch8;
      }
      
      public function set _DomainsGroup_ToggleSwitch8(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121792_DomainsGroup_ToggleSwitch8;
         if(_loc2_ !== param1)
         {
            this._844121792_DomainsGroup_ToggleSwitch8 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch8",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainsGroup_ToggleSwitch9() : ToggleSwitch
      {
         return this._844121793_DomainsGroup_ToggleSwitch9;
      }
      
      public function set _DomainsGroup_ToggleSwitch9(param1:ToggleSwitch) : void
      {
         var _loc2_:Object = this._844121793_DomainsGroup_ToggleSwitch9;
         if(_loc2_ !== param1)
         {
            this._844121793_DomainsGroup_ToggleSwitch9 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainsGroup_ToggleSwitch9",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainsHyphenatedExtensions() : DomainExtensionOptions
      {
         return this._2064930375domainsHyphenatedExtensions;
      }
      
      public function set domainsHyphenatedExtensions(param1:DomainExtensionOptions) : void
      {
         var _loc2_:Object = this._2064930375domainsHyphenatedExtensions;
         if(_loc2_ !== param1)
         {
            this._2064930375domainsHyphenatedExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsHyphenatedExtensions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get liveRefresh() : Boolean
      {
         return this._102246321liveRefresh;
      }
      
      public function set liveRefresh(param1:Boolean) : void
      {
         var _loc2_:Object = this._102246321liveRefresh;
         if(_loc2_ !== param1)
         {
            this._102246321liveRefresh = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"liveRefresh",_loc2_,param1));
            }
         }
      }
   }
}
