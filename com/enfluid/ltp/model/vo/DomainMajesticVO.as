package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import spark.effects.Resize;
   import mx.binding.BindingManager;
   import flash.events.Event;
   
   public final class DomainMajesticVO implements IEventDispatcher
   {
       
      
      private var _116079url:String;
      
      private var _1137975165ref_domains:int;
      
      private var _606098068ext_backlinks:int;
      
      private var _1313490802indexed_urls:int;
      
      private var _1766937478trustflow:int;
      
      private var _1926512789citationflow:int;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function DomainMajesticVO()
      {
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set url(param1:String) : void
      {
         var _loc2_:Object = this._116079url;
         if(_loc2_ !== param1)
         {
            this._116079url = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ref_domains() : int
      {
         return this._1137975165ref_domains;
      }
      
      public function set ref_domains(param1:int) : void
      {
         var _loc2_:Object = this._1137975165ref_domains;
         if(_loc2_ !== param1)
         {
            this._1137975165ref_domains = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ref_domains",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ext_backlinks() : int
      {
         return this._606098068ext_backlinks;
      }
      
      public function set ext_backlinks(param1:int) : void
      {
         var _loc2_:Object = this._606098068ext_backlinks;
         if(_loc2_ !== param1)
         {
            this._606098068ext_backlinks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ext_backlinks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get indexed_urls() : int
      {
         return this._1313490802indexed_urls;
      }
      
      public function set indexed_urls(param1:int) : void
      {
         var _loc2_:Object = this._1313490802indexed_urls;
         if(_loc2_ !== param1)
         {
            this._1313490802indexed_urls = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indexed_urls",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trustflow() : int
      {
         return this._1766937478trustflow;
      }
      
      public function set trustflow(param1:int) : void
      {
         var _loc2_:Object = this._1766937478trustflow;
         if(_loc2_ !== param1)
         {
            this._1766937478trustflow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trustflow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get citationflow() : int
      {
         return this._1926512789citationflow;
      }
      
      public function set citationflow(param1:int) : void
      {
         var _loc2_:Object = this._1926512789citationflow;
         if(_loc2_ !== param1)
         {
            this._1926512789citationflow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"citationflow",_loc2_,param1));
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
