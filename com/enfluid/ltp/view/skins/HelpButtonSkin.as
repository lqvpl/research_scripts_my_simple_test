package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkButtonSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Ellipse;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class HelpButtonSkin extends SparkButtonSkin implements IBindingClient, IStateClient2
   {
      
      private static const exclusions:Array = ["iconDisplay","labelDisplay"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _HelpButtonSkin_SolidColor1:SolidColor;
      
      public var _HelpButtonSkin_SolidColorStroke1:SolidColorStroke;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var cornerRadius:Number = 2;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function HelpButtonSkin()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._HelpButtonSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_HelpButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return HelpButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(13);
         if(_loc3_)
         {
            §§push((§§pop() + 52 + 60) * 40);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(13);
         if(_loc3_)
         {
            §§push(§§pop() - 9 - 80 - 31 + 1);
         }
         §§pop().height = §§pop();
         §§push(this);
         §§push(13);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1 - 1) * 40 * 102 + 1 + 64);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(13);
         if(_loc3_)
         {
            §§push(§§pop() - 95 - 1 + 1 - 34);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._HelpButtonSkin_Ellipse1_c(),this._HelpButtonSkin_Label1_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 6 - 1);
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
         HelpButtonSkin._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function get colorizeExclusions() : Array
      {
         return exclusions;
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = getStyle("cornerRadius");
         if(this.cornerRadius != _loc3_)
         {
            this.cornerRadius = _loc3_;
         }
         super.updateDisplayList(param1,param2);
      }
      
      private final function _HelpButtonSkin_Ellipse1_c() : Ellipse
      {
         var _loc1_:Ellipse = new Ellipse();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() + 69 - 1) + 91);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 49 - 10) * 106 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 119 + 1) * 19));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() * 48 * 6) + 6 - 1) * 89 * 40);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._HelpButtonSkin_SolidColorStroke1_i();
         _loc1_.fill = this._HelpButtonSkin_SolidColor1_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _HelpButtonSkin_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 105) - 1 - 16 - 39 + 1);
         }
         §§pop().weight = §§pop();
         this._HelpButtonSkin_SolidColorStroke1 = _loc1_;
         BindingManager.executeBindings(this,"_HelpButtonSkin_SolidColorStroke1",this._HelpButtonSkin_SolidColorStroke1);
         return _loc1_;
      }
      
      private final function _HelpButtonSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 85) + 1 + 81);
         }
         §§pop().alpha = §§pop();
         this._HelpButtonSkin_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_HelpButtonSkin_SolidColor1",this._HelpButtonSkin_SolidColor1);
         return _loc1_;
      }
      
      private final function _HelpButtonSkin_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() + 1) * 92 * 12 + 34 - 1) * 68 * 10);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 55 - 36 - 48 + 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.text = "?";
         _loc1_.setStyle("fontFamily","Arial Rounded MT Bold");
         §§push(_loc1_);
         §§push("fontSize");
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 29 - 29) * 105 - 23);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _HelpButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 79 - 16) * 14 - 95) * 51);
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            return getStyle("color");
         },null,"_HelpButtonSkin_SolidColorStroke1.color");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 28 + 93 + 1) * 25 - 38);
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            return getStyle("color");
         },null,"_HelpButtonSkin_SolidColor1.color");
         return result;
      }
   }
}
