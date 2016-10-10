package com.enfluid.ltp.view.skins
{
   import spark.components.supportClasses.Skin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.BitmapImage;
   import mx.core.IFlexModuleFactory;
   import flash.events.MouseEvent;
   import spark.components.Group;
   import spark.primitives.Rect;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import assets.LibraryAssets;
   import mx.core.mx_internal;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class AddProjectsButtonSkin extends Skin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1762642727_AddProjectsButtonSkin_BitmapImage1:BitmapImage;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:Button;
      
      public function AddProjectsButtonSkin()
      {
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._AddProjectsButtonSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_AddProjectsButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AddProjectsButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._AddProjectsButtonSkin_Group1_c()];
         this.currentState = "disabled";
         §§push();
         §§push(new State({
            "name":"disabled",
            "overrides":[]
         }));
         §§push(new State({
            "name":"down",
            "overrides":[]
         }));
         §§push();
         §§push("name");
         §§push("over");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_AddProjectsButtonSkin_BitmapImage1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc4_)
         {
            §§push((-(-§§pop() * 85) - 1 + 58) * 102 - 98);
         }
         §§pop().states = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(--(§§pop() * 14 - 1 - 1) + 1);
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
         AddProjectsButtonSkin._watcherSetupUtil = param1;
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.hostComponent.buttonMode = true;
      }
      
      private final function _AddProjectsButtonSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--(§§pop() - 1) * 20);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._AddProjectsButtonSkin_Rect1_c(),this._AddProjectsButtonSkin_BitmapImage1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _AddProjectsButtonSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 - 103 + 1) * 12) - 51);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() - 86 + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 46 - 92 + 89 - 1);
         }
         §§pop().radiusX = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 4) - 42) * 42);
         }
         §§pop().radiusY = §§pop();
         _loc1_.fill = this._AddProjectsButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _AddProjectsButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(4028582);
         if(_loc2_)
         {
            §§push(-§§pop() + 57 - 1 + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _AddProjectsButtonSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-(((§§pop() - 109) * 80 + 1) * 61) + 1) * 27);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 105 - 1) - 18));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.initialized(this,"_AddProjectsButtonSkin_BitmapImage1");
         this._AddProjectsButtonSkin_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_AddProjectsButtonSkin_BitmapImage1",this._AddProjectsButtonSkin_BitmapImage1);
         return _loc1_;
      }
      
      private final function _AddProjectsButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 - 29) - 11 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return LibraryAssets.BTN_ADD_PROJECTS;
         },null,"_AddProjectsButtonSkin_BitmapImage1.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _AddProjectsButtonSkin_BitmapImage1() : BitmapImage
      {
         return this._1762642727_AddProjectsButtonSkin_BitmapImage1;
      }
      
      public function set _AddProjectsButtonSkin_BitmapImage1(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._1762642727_AddProjectsButtonSkin_BitmapImage1;
         if(_loc2_ !== param1)
         {
            this._1762642727_AddProjectsButtonSkin_BitmapImage1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AddProjectsButtonSkin_BitmapImage1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
