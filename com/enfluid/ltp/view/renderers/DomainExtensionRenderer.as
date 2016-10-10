package com.enfluid.ltp.view.renderers
{
   import spark.components.Group;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Label;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class DomainExtensionRenderer extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _DomainExtensionRenderer_Label1:Label;
      
      public var _DomainExtensionRenderer_Rect1:Rect;
      
      public var _DomainExtensionRenderer_SolidColor1:SolidColor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1997542747availability:int;
      
      private var _3556653text:String;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DomainExtensionRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DomainExtensionRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_DomainExtensionRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DomainExtensionRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._DomainExtensionRenderer_Rect1_i(),this._DomainExtensionRenderer_Label1_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 36 - 89 - 35) * 53);
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
         DomainExtensionRenderer._watcherSetupUtil = param1;
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
      
      private final function _DomainExtensionRenderer_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1) * 10 * 51 * 47 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 65 - 37) * 39));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() * 103) + 1) * 8 * 72 + 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 96 - 1 - 1 - 1) * 91 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(((§§pop() - 96 + 28) * 3 - 32 + 1 - 1) * 73);
         }
         §§pop().radiusX = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() * 115 + 1 - 118 + 1 - 5) * 73);
         }
         §§pop().radiusY = §§pop();
         _loc1_.fill = this._DomainExtensionRenderer_SolidColor1_i();
         _loc1_.initialized(this,"_DomainExtensionRenderer_Rect1");
         this._DomainExtensionRenderer_Rect1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainExtensionRenderer_Rect1",this._DomainExtensionRenderer_Rect1);
         return _loc1_;
      }
      
      private final function _DomainExtensionRenderer_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         this._DomainExtensionRenderer_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainExtensionRenderer_SolidColor1",this._DomainExtensionRenderer_SolidColor1);
         return _loc1_;
      }
      
      private final function _DomainExtensionRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 32 + 24) * 51 + 1 - 73);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(((§§pop() - 1) * 97 + 1) * 56);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 115 + 5) * 35);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 11) * 51) * 67);
         }
         §§pop().bottom = §§pop();
         _loc1_.id = "_DomainExtensionRenderer_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainExtensionRenderer_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainExtensionRenderer_Label1",this._DomainExtensionRenderer_Label1);
         return _loc1_;
      }
      
      private final function _DomainExtensionRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 39) * 85 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return availability == DomainStatuses.AVAILABLE?true:availability == DomainStatuses.UNAVAILABLE?false:true;
         },null,"_DomainExtensionRenderer_Rect1.includeInLayout");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 110) * 63 - 85);
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            if(availability == DomainStatuses.AVAILABLE)
            {
               §§push(3703986);
               if(_loc1_)
               {
                  §§push(§§pop() + 1 + 66 - 99 - 3 - 1 - 1);
               }
               §§push(uint(§§pop()));
            }
            else if(availability == DomainStatuses.UNAVAILABLE)
            {
               §§push(15658734);
               if(_loc2_)
               {
                  §§push(-(§§pop() + 8 + 1 - 1 - 1));
               }
               §§push(uint(§§pop()));
            }
            else
            {
               §§push(14474460);
               if(_loc2_)
               {
                  §§push(§§pop() * 106 * 54 - 1);
               }
               §§push(uint(§§pop()));
            }
            return §§pop();
         },null,"_DomainExtensionRenderer_SolidColor1.color");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-§§pop() - 71 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            if(availability == DomainStatuses.AVAILABLE)
            {
               §§push(16777215);
               if(_loc2_)
               {
                  §§push((-§§pop() + 1 + 1) * 87);
               }
               §§push(uint(§§pop()));
            }
            else if(availability == DomainStatuses.UNAVAILABLE)
            {
               §§push(15094355);
               if(_loc1_)
               {
                  §§push(§§pop() * 53 + 114 - 1 - 33);
               }
               §§push(uint(§§pop()));
            }
            else
            {
               §§push(4207420);
               if(_loc1_)
               {
                  §§push(-§§pop() + 43 - 1 + 84 - 39 - 28 - 1);
               }
               §§push(uint(§§pop()));
            }
            return §§pop();
         },function(param1:uint):void
         {
            _DomainExtensionRenderer_Label1.setStyle("color",param1);
         },"_DomainExtensionRenderer_Label1.color");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 - 86 + 1 + 42) * 91);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_DomainExtensionRenderer_Label1.text","text");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 + 118 - 1 + 1) * 17);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return availability == DomainStatuses.UNAVAILABLE?true:false;
         },function(param1:Boolean):void
         {
            _DomainExtensionRenderer_Label1.setStyle("lineThrough",param1);
         },"_DomainExtensionRenderer_Label1.lineThrough");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get availability() : int
      {
         return this._1997542747availability;
      }
      
      public function set availability(param1:int) : void
      {
         var _loc2_:Object = this._1997542747availability;
         if(_loc2_ !== param1)
         {
            this._1997542747availability = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"availability",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get text() : String
      {
         return this._3556653text;
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:Object = this._3556653text;
         if(_loc2_ !== param1)
         {
            this._3556653text = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text",_loc2_,param1));
            }
         }
      }
   }
}
