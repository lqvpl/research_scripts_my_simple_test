package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import spark.components.gridClasses.GridColumn;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import flash.events.Event;
   import com.enfluid.ltp.util.KeywordUtil;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import flash.utils.ByteArray;
   import spark.layouts.HorizontalLayout;
   
   public final class CompetitorColumnsVO implements IEventDispatcher
   {
       
      
      private var _4269936titleAndURL:GridColumn;
      
      private var _814408215keyword:GridColumn;
      
      private var _1543910772pageAuthority:GridColumn;
      
      private var _1429358023juiceLinks:GridColumn;
      
      private var _1505455839domainAuthority:GridColumn;
      
      private var _1246698340mozRank:GridColumn;
      
      private var _859390811pageRank:GridColumn;
      
      private var _2099972152siteAge:GridColumn;
      
      private var _112482126indexCol:GridColumn;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function CompetitorColumnsVO()
      {
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get titleAndURL() : GridColumn
      {
         return this._4269936titleAndURL;
      }
      
      public function set titleAndURL(param1:GridColumn) : void
      {
         var _loc2_:Object = this._4269936titleAndURL;
         if(_loc2_ !== param1)
         {
            this._4269936titleAndURL = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleAndURL",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keyword() : GridColumn
      {
         return this._814408215keyword;
      }
      
      public function set keyword(param1:GridColumn) : void
      {
         var _loc2_:Object = this._814408215keyword;
         if(_loc2_ !== param1)
         {
            this._814408215keyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageAuthority() : GridColumn
      {
         return this._1543910772pageAuthority;
      }
      
      public function set pageAuthority(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1543910772pageAuthority;
         if(_loc2_ !== param1)
         {
            this._1543910772pageAuthority = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageAuthority",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get juiceLinks() : GridColumn
      {
         return this._1429358023juiceLinks;
      }
      
      public function set juiceLinks(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1429358023juiceLinks;
         if(_loc2_ !== param1)
         {
            this._1429358023juiceLinks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"juiceLinks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainAuthority() : GridColumn
      {
         return this._1505455839domainAuthority;
      }
      
      public function set domainAuthority(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1505455839domainAuthority;
         if(_loc2_ !== param1)
         {
            this._1505455839domainAuthority = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainAuthority",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozRank() : GridColumn
      {
         return this._1246698340mozRank;
      }
      
      public function set mozRank(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1246698340mozRank;
         if(_loc2_ !== param1)
         {
            this._1246698340mozRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageRank() : GridColumn
      {
         return this._859390811pageRank;
      }
      
      public function set pageRank(param1:GridColumn) : void
      {
         var _loc2_:Object = this._859390811pageRank;
         if(_loc2_ !== param1)
         {
            this._859390811pageRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get siteAge() : GridColumn
      {
         return this._2099972152siteAge;
      }
      
      public function set siteAge(param1:GridColumn) : void
      {
         var _loc2_:Object = this._2099972152siteAge;
         if(_loc2_ !== param1)
         {
            this._2099972152siteAge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"siteAge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get indexCol() : GridColumn
      {
         return this._112482126indexCol;
      }
      
      public function set indexCol(param1:GridColumn) : void
      {
         var _loc2_:Object = this._112482126indexCol;
         if(_loc2_ !== param1)
         {
            this._112482126indexCol = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indexCol",_loc2_,param1));
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
