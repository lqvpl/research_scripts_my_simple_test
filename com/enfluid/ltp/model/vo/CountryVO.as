package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   import flash.events.Event;
   import mx.utils.StringUtil;
   import mx.effects.Sequence;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import mx.events.FlexEvent;
   
   public final class CountryVO implements IEventDispatcher
   {
       
      
      private var _3059181code:String;
      
      private var _3373707name:String;
      
      private var _582712357domainExtension:String;
      
      private var _111196011amazonSite:String;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function CountryVO(param1:String, param2:String, param3:String = null, param4:String = null)
      {
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
         this.name = param1;
         this.code = param2;
         this.domainExtension = param3;
         this.amazonSite = param4;
      }
      
      [Bindable(event="propertyChange")]
      public function get code() : String
      {
         return this._3059181code;
      }
      
      public function set code(param1:String) : void
      {
         var _loc2_:Object = this._3059181code;
         if(_loc2_ !== param1)
         {
            this._3059181code = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"code",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Object = this._3373707name;
         if(_loc2_ !== param1)
         {
            this._3373707name = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainExtension() : String
      {
         return this._582712357domainExtension;
      }
      
      public function set domainExtension(param1:String) : void
      {
         var _loc2_:Object = this._582712357domainExtension;
         if(_loc2_ !== param1)
         {
            this._582712357domainExtension = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainExtension",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amazonSite() : String
      {
         return this._111196011amazonSite;
      }
      
      public function set amazonSite(param1:String) : void
      {
         var _loc2_:Object = this._111196011amazonSite;
         if(_loc2_ !== param1)
         {
            this._111196011amazonSite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amazonSite",_loc2_,param1));
            }
         }
      }
      
      public final function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public final function dispatchEvent(param1:Event) : Boolean
      {
         return this._bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public final function hasEventListener(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.hasEventListener(param1);
      }
      
      public final function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this._bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public final function willTrigger(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.willTrigger(param1);
      }
   }
}
