package com.adobe.cairngorm.popup
{
   import flash.events.EventDispatcher;
   import mx.core.IMXMLObject;
   import mx.core.IFlexDisplayObject;
   import flash.display.DisplayObject;
   import mx.core.IFlexModuleFactory;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.CoustomComboBoxButtonSkin;
   import mx.binding.BindingManager;
   import spark.formatters.NumberFormatter;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import mx.events.CloseEvent;
   import mx.managers.PopUpManager;
   import mx.core.IFlexModule;
   import mx.core.FlexGlobals;
   import flash.events.Event;
   import mx.events.PropertyChangeEvent;
   
   public class PopUpBase extends EventDispatcher implements IMXMLObject
   {
       
      
      private var child:IFlexDisplayObject;
      
      private var firstTime:Boolean = true;
      
      private var suspendedBehaviors:int = 0;
      
      private var _995424086parent:DisplayObject;
      
      private var _104069805modal:Boolean;
      
      private var _95409190childList:String;
      
      private var _1364013995center:Boolean = true;
      
      private var _open:Boolean = false;
      
      [ArrayElementType("com.adobe.cairngorm.popup.IPopUpBehavior")]
      private var _behaviors:Array;
      
      public var _1569739006moduleFactory:IFlexModuleFactory;
      
      public function PopUpBase()
      {
         this._behaviors = [];
         super();
      }
      
      public function set open(param1:Boolean) : void
      {
         if(this._open == param1)
         {
            return;
         }
         this._open = param1;
         if(this.suspendedBehaviors > 0)
         {
            this.suspendedBehaviors = 0;
            this.removePopUp();
         }
         if(this._open)
         {
            this.openPopUp();
         }
         else
         {
            this.closePopUp();
         }
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function set behaviors(param1:Array) : void
      {
         var _loc2_:IPopUpBehavior = null;
         if(this._behaviors == param1)
         {
            return;
         }
         this._behaviors = param1;
         for each(_loc2_ in this._behaviors)
         {
            _loc2_.apply(this);
         }
      }
      
      public function initialized(param1:Object, param2:String) : void
      {
      }
      
      protected function getPopUp() : IFlexDisplayObject
      {
         throw new Error("Abstract method call");
      }
      
      protected function popUpClosed() : void
      {
      }
      
      private final function openPopUp() : void
      {
         if(!this.parent)
         {
            this.parent = this.getParent();
         }
         this.child = this.getPopUp();
         §§push(this.child);
         §§push(CloseEvent.CLOSE);
         §§push(this.onClose);
         §§push(false);
         §§push(0);
         if(_loc1_)
         {
            §§push((§§pop() + 1 + 1) * 68 + 1 + 1);
         }
         §§pop().addEventListener(§§pop(),§§pop(),§§pop(),§§pop(),true);
         this.dispatchPopUpEvent(PopUpEvent.OPENING);
         this.addPopUp();
         if(this.center)
         {
            PopUpManager.centerPopUp(this.child);
         }
         this.dispatchPopUpEvent(PopUpEvent.OPENED);
      }
      
      private final function addPopUp() : void
      {
         if(this.moduleFactory == null)
         {
            if(this.parent && this.parent is IFlexModule)
            {
               this.moduleFactory = IFlexModule(this.parent).moduleFactory;
            }
         }
         PopUpManager.addPopUp(this.child,this.parent,this.modal,this.childList,this.moduleFactory);
      }
      
      private final function getParent() : DisplayObject
      {
         return DisplayObject(FlexGlobals.topLevelApplication);
      }
      
      private final function onClose(param1:Event) : void
      {
         if(this.child)
         {
            this.child.removeEventListener(CloseEvent.CLOSE,this.onClose);
         }
         this.open = false;
      }
      
      private final function closePopUp() : void
      {
         if(!this.child)
         {
            return;
         }
         this.dispatchPopUpEvent(PopUpEvent.CLOSING);
         §§push(this.suspendedBehaviors);
         §§push(0);
         if(_loc1_)
         {
            §§push(-§§pop() + 1 + 1);
         }
         if(§§pop() == §§pop())
         {
            this.removePopUp();
         }
      }
      
      private final function removePopUp() : void
      {
         if(!this.child)
         {
            return;
         }
         PopUpManager.removePopUp(this.child);
         this.dispatchPopUpEvent(PopUpEvent.CLOSED);
         this.popUpClosed();
         this.child.removeEventListener(CloseEvent.CLOSE,this.onClose);
         this.child = null;
      }
      
      private final function suspendCallback() : void
      {
         this.suspendedBehaviors++;
      }
      
      private final function resumeCallback() : void
      {
         §§push(this.suspendedBehaviors);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() + 18) * 0 - 78));
         }
         if(§§pop() > §§pop())
         {
            this.suspendedBehaviors--;
         }
         §§push(this.suspendedBehaviors);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1) * 76 - 1);
         }
         if(§§pop() == §§pop())
         {
            this.removePopUp();
         }
      }
      
      private final function dispatchPopUpEvent(param1:String) : void
      {
         dispatchEvent(new PopUpEvent(param1,this.child,this.suspendCallback,this.resumeCallback));
      }
      
      [Bindable(event="propertyChange")]
      public function get parent() : DisplayObject
      {
         return this._995424086parent;
      }
      
      public function set parent(param1:DisplayObject) : void
      {
         var _loc2_:Object = this._995424086parent;
         if(_loc2_ !== param1)
         {
            this._995424086parent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"parent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get modal() : Boolean
      {
         return this._104069805modal;
      }
      
      public function set modal(param1:Boolean) : void
      {
         var _loc2_:Object = this._104069805modal;
         if(_loc2_ !== param1)
         {
            this._104069805modal = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modal",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get childList() : String
      {
         return this._95409190childList;
      }
      
      public function set childList(param1:String) : void
      {
         var _loc2_:Object = this._95409190childList;
         if(_loc2_ !== param1)
         {
            this._95409190childList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"childList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get center() : Boolean
      {
         return this._1364013995center;
      }
      
      public function set center(param1:Boolean) : void
      {
         var _loc2_:Object = this._1364013995center;
         if(_loc2_ !== param1)
         {
            this._1364013995center = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moduleFactory() : IFlexModuleFactory
      {
         return this._1569739006moduleFactory;
      }
      
      public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _loc2_:Object = this._1569739006moduleFactory;
         if(_loc2_ !== param1)
         {
            this._1569739006moduleFactory = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moduleFactory",_loc2_,param1));
            }
         }
      }
   }
}
