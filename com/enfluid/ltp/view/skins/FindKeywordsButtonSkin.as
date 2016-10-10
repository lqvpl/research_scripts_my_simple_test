package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkButtonSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.BitmapFill;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.SolidColor;
   import mx.graphics.RectangularDropShadow;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import mx.events.FlexMouseEvent;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class FindKeywordsButtonSkin extends SparkButtonSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _FindKeywordsButtonSkin_BitmapImage1:BitmapImage;
      
      private var _3143043fill:Rect;
      
      private var _681210700highlight:Rect;
      
      private var _737391236iconfill:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FindKeywordsButtonSkin()
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
         bindings = this._FindKeywordsButtonSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_FindKeywordsButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FindKeywordsButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(21);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 32 + 1) + 33 - 1);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc4_)
         {
            §§push(-(§§pop() * 15) - 1);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._FindKeywordsButtonSkin_Rect1_i(),this._FindKeywordsButtonSkin_Rect2_i(),this._FindKeywordsButtonSkin_Rect3_i(),this._FindKeywordsButtonSkin_BitmapImage1_i(),this._FindKeywordsButtonSkin_Label1_i()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___FindKeywordsButtonSkin_SparkButtonSkin1_creationComplete);
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
         if(_loc4_)
         {
            §§push((-(-§§pop() - 57 - 1) - 1) * 45 * 60);
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
         FindKeywordsButtonSkin._watcherSetupUtil = param1;
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
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
      }
      
      protected final function onCreationCompleteHandler(param1:FlexEvent) : void
      {
         hostComponent.buttonMode = true;
         hostComponent.useHandCursor = true;
      }
      
      private final function _FindKeywordsButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 114 - 1 - 37 + 58);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 0));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 1 + 1 - 1 - 26);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 110 - 21);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 21 + 52) + 1));
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._FindKeywordsButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _FindKeywordsButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(15776045);
         if(_loc2_)
         {
            §§push(-(§§pop() - 49 - 1));
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _FindKeywordsButtonSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 49 - 101 - 19);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 119 + 84 + 1));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 10 - 18 - 1 - 1 - 1) + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 + 33) * 72 + 16);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 105 - 94 - 0 + 116) - 117);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._FindKeywordsButtonSkin_SolidColor2_c();
         _loc1_.initialized(this,"highlight");
         this.highlight = _loc1_;
         BindingManager.executeBindings(this,"highlight",this.highlight);
         return _loc1_;
      }
      
      private final function _FindKeywordsButtonSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16760088);
         if(_loc2_)
         {
            §§push(--((§§pop() + 28 - 9) * 44) - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 81 - 1) * 103 * 15 + 1 - 1);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _FindKeywordsButtonSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 67) * 44);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() * 1 - 1) * 28 + 1 + 99);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() * 76 - 75) * 61 - 1 + 1);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._FindKeywordsButtonSkin_SolidColor3_c();
         _loc1_.initialized(this,"iconfill");
         this.iconfill = _loc1_;
         BindingManager.executeBindings(this,"iconfill",this.iconfill);
         return _loc1_;
      }
      
      private final function _FindKeywordsButtonSkin_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(15774489);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 1 + 1 + 83 + 111);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _FindKeywordsButtonSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 100 * 84 + 7 - 55) * 49);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 104) + 4);
         }
         §§pop().top = §§pop();
         _loc1_.smooth = true;
         _loc1_.initialized(this,"_FindKeywordsButtonSkin_BitmapImage1");
         this._FindKeywordsButtonSkin_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_FindKeywordsButtonSkin_BitmapImage1",this._FindKeywordsButtonSkin_BitmapImage1);
         return _loc1_;
      }
      
      private final function _FindKeywordsButtonSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 68 - 1 + 100 - 1 - 1 + 55));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1) + 99 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1) + 84);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 13 - 82) - 76 - 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 62) * 53 + 1 + 38);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(5523230);
         if(_loc3_)
         {
            §§push(-(§§pop() + 64) + 1 + 67);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push((§§pop() - 11) * 114 - 1 + 1 + 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",labelDisplay);
         return _loc1_;
      }
      
      public final function ___FindKeywordsButtonSkin_SparkButtonSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationCompleteHandler(param1);
      }
      
      private final function _FindKeywordsButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 48 + 30 + 110 - 112);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.height;
         },null,"iconfill.width");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 + 1 + 1 - 40) * 114);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.height;
         },null,"iconfill.height");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 65) - 65 + 57));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.height;
         },null,"_FindKeywordsButtonSkin_BitmapImage1.width");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) - 7 - 1 - 69) * 11);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.height;
         },null,"_FindKeywordsButtonSkin_BitmapImage1.height");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(--(-(§§pop() * 0 + 23) + 1) - 7);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.FIND_MORE_KEYWORDS;
         },null,"_FindKeywordsButtonSkin_BitmapImage1.source");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() * 44 - 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width;
         },null,"labelDisplay.width");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push((-(§§pop() - 5 + 1 + 1 - 1) - 1) * 54);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this.height;
         },null,"labelDisplay.left");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get fill() : Rect
      {
         return this._3143043fill;
      }
      
      public function set fill(param1:Rect) : void
      {
         var _loc2_:Object = this._3143043fill;
         if(_loc2_ !== param1)
         {
            this._3143043fill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get highlight() : Rect
      {
         return this._681210700highlight;
      }
      
      public function set highlight(param1:Rect) : void
      {
         var _loc2_:Object = this._681210700highlight;
         if(_loc2_ !== param1)
         {
            this._681210700highlight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highlight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconfill() : Rect
      {
         return this._737391236iconfill;
      }
      
      public function set iconfill(param1:Rect) : void
      {
         var _loc2_:Object = this._737391236iconfill;
         if(_loc2_ !== param1)
         {
            this._737391236iconfill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconfill",_loc2_,param1));
            }
         }
      }
   }
}
