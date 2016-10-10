package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.PKCS5;
   import com.hurlant.crypto.prng.Random;
   import flash.utils.ByteArray;
   import spark.components.gridClasses.GridColumn;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.filterviews.target;
   import mx.binding.Binding;
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public final class KeywordColumnsVO implements IEventDispatcher
   {
       
      
      private var _110621496trash:GridColumn;
      
      private var _1785238953favorites:GridColumn;
      
      private var _309310695project:GridColumn;
      
      private var _523149226keywords:GridColumn;
      
      private var _44342566suggestedBid:GridColumn;
      
      private var _549236511localSearches:GridColumn;
      
      private var _714784025globalSearches:GridColumn;
      
      private var _459372819advertizerCompetition:GridColumn;
      
      private var _2025799520googleTitleCompetition:GridColumn;
      
      private var _1896299837numWords:GridColumn;
      
      private var _206268249bingTitleCompetition:GridColumn;
      
      private var _2063743039domainAvailability:GridColumn;
      
      private var _93198250avgKC:GridColumn;
      
      private var _1899323812amazonKC:GridColumn;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function KeywordColumnsVO()
      {
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get trash() : GridColumn
      {
         return this._110621496trash;
      }
      
      public function set trash(param1:GridColumn) : void
      {
         var _loc2_:Object = this._110621496trash;
         if(_loc2_ !== param1)
         {
            this._110621496trash = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trash",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get favorites() : GridColumn
      {
         return this._1785238953favorites;
      }
      
      public function set favorites(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1785238953favorites;
         if(_loc2_ !== param1)
         {
            this._1785238953favorites = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"favorites",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get project() : GridColumn
      {
         return this._309310695project;
      }
      
      public function set project(param1:GridColumn) : void
      {
         var _loc2_:Object = this._309310695project;
         if(_loc2_ !== param1)
         {
            this._309310695project = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"project",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywords() : GridColumn
      {
         return this._523149226keywords;
      }
      
      public function set keywords(param1:GridColumn) : void
      {
         var _loc2_:Object = this._523149226keywords;
         if(_loc2_ !== param1)
         {
            this._523149226keywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get suggestedBid() : GridColumn
      {
         return this._44342566suggestedBid;
      }
      
      public function set suggestedBid(param1:GridColumn) : void
      {
         var _loc2_:Object = this._44342566suggestedBid;
         if(_loc2_ !== param1)
         {
            this._44342566suggestedBid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suggestedBid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get localSearches() : GridColumn
      {
         return this._549236511localSearches;
      }
      
      public function set localSearches(param1:GridColumn) : void
      {
         var _loc2_:Object = this._549236511localSearches;
         if(_loc2_ !== param1)
         {
            this._549236511localSearches = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"localSearches",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get globalSearches() : GridColumn
      {
         return this._714784025globalSearches;
      }
      
      public function set globalSearches(param1:GridColumn) : void
      {
         var _loc2_:Object = this._714784025globalSearches;
         if(_loc2_ !== param1)
         {
            this._714784025globalSearches = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"globalSearches",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advertizerCompetition() : GridColumn
      {
         return this._459372819advertizerCompetition;
      }
      
      public function set advertizerCompetition(param1:GridColumn) : void
      {
         var _loc2_:Object = this._459372819advertizerCompetition;
         if(_loc2_ !== param1)
         {
            this._459372819advertizerCompetition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advertizerCompetition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleTitleCompetition() : GridColumn
      {
         return this._2025799520googleTitleCompetition;
      }
      
      public function set googleTitleCompetition(param1:GridColumn) : void
      {
         var _loc2_:Object = this._2025799520googleTitleCompetition;
         if(_loc2_ !== param1)
         {
            this._2025799520googleTitleCompetition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleTitleCompetition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numWords() : GridColumn
      {
         return this._1896299837numWords;
      }
      
      public function set numWords(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1896299837numWords;
         if(_loc2_ !== param1)
         {
            this._1896299837numWords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numWords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bingTitleCompetition() : GridColumn
      {
         return this._206268249bingTitleCompetition;
      }
      
      public function set bingTitleCompetition(param1:GridColumn) : void
      {
         var _loc2_:Object = this._206268249bingTitleCompetition;
         if(_loc2_ !== param1)
         {
            this._206268249bingTitleCompetition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bingTitleCompetition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainAvailability() : GridColumn
      {
         return this._2063743039domainAvailability;
      }
      
      public function set domainAvailability(param1:GridColumn) : void
      {
         var _loc2_:Object = this._2063743039domainAvailability;
         if(_loc2_ !== param1)
         {
            this._2063743039domainAvailability = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainAvailability",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avgKC() : GridColumn
      {
         return this._93198250avgKC;
      }
      
      public function set avgKC(param1:GridColumn) : void
      {
         var _loc2_:Object = this._93198250avgKC;
         if(_loc2_ !== param1)
         {
            this._93198250avgKC = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avgKC",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amazonKC() : GridColumn
      {
         return this._1899323812amazonKC;
      }
      
      public function set amazonKC(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1899323812amazonKC;
         if(_loc2_ !== param1)
         {
            this._1899323812amazonKC = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amazonKC",_loc2_,param1));
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
