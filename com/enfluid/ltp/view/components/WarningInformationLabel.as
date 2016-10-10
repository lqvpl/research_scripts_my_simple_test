package com.enfluid.ltp.view.components
{
   import spark.components.Group;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.BitmapImage;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import flash.display.Bitmap;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.events.MouseEvent;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.FlexEvent;
   import spark.primitives.RectangularDropShadow;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class WarningInformationLabel extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _WarningInformationLabel_BitmapImage1:BitmapImage;
      
      private var _1520508104mylabel:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1472470539_label:String;
      
      private var _icon:Bitmap;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function WarningInformationLabel()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._WarningInformationLabel_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_WarningInformationLabelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return WarningInformationLabel[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._WarningInformationLabel_Rect1_c(),this._WarningInformationLabel_BitmapImage1_i(),this._WarningInformationLabel_Label1_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 65 - 1 - 1 - 1);
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
         WarningInformationLabel._watcherSetupUtil = param1;
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
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         this._label = param1;
      }
      
      public function get icon() : Bitmap
      {
         return this._icon;
      }
      
      public function set icon(param1:Bitmap) : void
      {
         this._icon = param1;
      }
      
      private final function _WarningInformationLabel_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() + 67) + 1 + 1 + 1) * 9 - 51);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() * 89 + 1 - 1) * 11);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 + 1 - 1);
         }
         §§pop().alpha = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((-((§§pop() - 0) * 96 + 78) + 1 - 1) * 69);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._WarningInformationLabel_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _WarningInformationLabel_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(3244479);
         if(_loc3_)
         {
            §§push((§§pop() * 108 - 1 + 96) * 23 * 20 - 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _WarningInformationLabel_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() + 17 - 26) * 49);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-(§§pop() + 66 - 32 - 31 - 1));
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 103 - 69);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 0) + 1);
         }
         §§pop().top = §§pop();
         _loc1_.smooth = true;
         _loc1_.initialized(this,"_WarningInformationLabel_BitmapImage1");
         this._WarningInformationLabel_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_WarningInformationLabel_BitmapImage1",this._WarningInformationLabel_BitmapImage1);
         return _loc1_;
      }
      
      private final function _WarningInformationLabel_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1 + 1) - 1 - 81);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1) * 14 * 109);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 1 + 96 - 0);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(25);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 33) - 40) - 1 + 67);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingRight");
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() * 66 - 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 65 - 56 - 70 - 103);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("lineBreak","toFit");
         _loc1_.id = "mylabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mylabel = _loc1_;
         BindingManager.executeBindings(this,"mylabel",this.mylabel);
         return _loc1_;
      }
      
      private final function _WarningInformationLabel_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 69 + 1 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.INFORMATION_ALERT_ICON;
         },null,"_WarningInformationLabel_BitmapImage1.source");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 1 + 55 - 68 + 64);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = _label;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"mylabel.text");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 53 - 50 + 23 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            §§push(-1);
            if(_loc1_)
            {
               §§push(-(§§pop() - 1) - 34 + 22 + 1);
            }
            return §§pop();
         },null,"mylabel.maxDisplayedLines");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get mylabel() : Label
      {
         return this._1520508104mylabel;
      }
      
      public function set mylabel(param1:Label) : void
      {
         var _loc2_:Object = this._1520508104mylabel;
         if(_loc2_ !== param1)
         {
            this._1520508104mylabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mylabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _label() : String
      {
         return this._1472470539_label;
      }
      
      private function set _label(param1:String) : void
      {
         var _loc2_:Object = this._1472470539_label;
         if(_loc2_ !== param1)
         {
            this._1472470539_label = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_label",_loc2_,param1));
            }
         }
      }
   }
}
