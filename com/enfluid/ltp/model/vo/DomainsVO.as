package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   import mx.controls.Alert;
   import mx.graphics.SolidColorStroke;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.EmptyTrashCommand;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import spark.effects.Fade;
   import flash.events.Event;
   import spark.components.Label;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import com.enfluid.ltp.view.components.CompetitorAnalysisHeaderComponent;
   import mx.binding.Binding;
   import flash.utils.ByteArray;
   
   use namespace mx_internal;
   
   public final class DomainsVO implements IEventDispatcher
   {
       
      
      private var _15183163domainWithoutExtension:String;
      
      private var _1983546638isHyphenated:Boolean;
      
      private var _1246368566hasMissingData:Boolean;
      
      private var _98689com:int = 0;
      
      private var _108957net:int = 0;
      
      private var _110308org:int = 0;
      
      private var _3180co:int = 0;
      
      private var _3237038info:int = 0;
      
      private var _3166ca:int = 0;
      
      private var _3059714couk:int = 0;
      
      private var _94843253comau:int = 0;
      
      private var _3201de:int = 0;
      
      private var _3518nl:int = 0;
      
      private var _3207dk:int = 0;
      
      private var _keyword:com.enfluid.ltp.model.vo.KeywordVO;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function DomainsVO()
      {
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
      }
      
      public final function hasAvailableDomain(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() - 1 - 1) * 92) - 116 + 1);
         }
         for each(_loc2_ in param1)
         {
            _loc2_ = _loc2_.replace(".","");
            if(this[_loc2_] == DomainStatuses.AVAILABLE)
            {
               return true;
            }
         }
         return false;
      }
      
      public final function checkHasMissingData(param1:Array) : void
      {
         var _loc2_:String = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(--(§§pop() - 81) + 1);
         }
         for each(_loc2_ in param1)
         {
            _loc2_ = _loc2_.replace(".","");
            if(this[_loc2_] == DomainStatuses.NOT_FETCHED || this[_loc2_] == DomainStatuses.ERROR)
            {
               this.hasMissingData = true;
               return;
            }
         }
         this.hasMissingData = false;
      }
      
      public final function getMissingDataExtentions(param1:Array) : Array
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         §§push(0);
         if(_loc7_)
         {
            §§push((-§§pop() + 1) * 117);
         }
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.replace(".","");
            if(this[_loc4_] == DomainStatuses.NOT_FETCHED || this[_loc4_] == DomainStatuses.ERROR)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public final function resetAll() : void
      {
         this.com = DomainStatuses.NOT_FETCHED;
         this.net = DomainStatuses.NOT_FETCHED;
         this.org = DomainStatuses.NOT_FETCHED;
         this.co = DomainStatuses.NOT_FETCHED;
         this.info = DomainStatuses.NOT_FETCHED;
         this.ca = DomainStatuses.NOT_FETCHED;
         this.couk = DomainStatuses.NOT_FETCHED;
         this.comau = DomainStatuses.NOT_FETCHED;
         this.de = DomainStatuses.NOT_FETCHED;
         this.nl = DomainStatuses.NOT_FETCHED;
         this.dk = DomainStatuses.NOT_FETCHED;
      }
      
      public final function save() : void
      {
         this.checkHasMissingData(!!this.isHyphenated?ProjectVO(this._keyword.project).domainsHyphenatedExtensions.selectedExtensions:ProjectVO(this._keyword.project).domainsExactMatchExtensions.selectedExtensions);
         this._keyword.save();
      }
      
      public final function setKeyword(param1:com.enfluid.ltp.model.vo.KeywordVO) : void
      {
         this._keyword = param1;
      }
      
      public final function fillFromJson(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.domainWithoutExtension = _loc2_.domainWithoutExtension;
         this.isHyphenated = _loc2_.isHyphenated;
         this.hasMissingData = _loc2_.hasMissingData;
         this.com = _loc2_.com;
         this.net = _loc2_.net;
         this.org = _loc2_.org;
         this.co = _loc2_.co;
         this.info = _loc2_.info;
         this.ca = _loc2_.ca;
         this.couk = _loc2_.couk;
         this.comau = _loc2_.comau;
         this.de = _loc2_.de;
         this.nl = _loc2_.nl;
         this.dk = _loc2_.dk;
      }
      
      [Bindable(event="propertyChange")]
      public function get domainWithoutExtension() : String
      {
         return this._15183163domainWithoutExtension;
      }
      
      public function set domainWithoutExtension(param1:String) : void
      {
         var _loc2_:Object = this._15183163domainWithoutExtension;
         if(_loc2_ !== param1)
         {
            this._15183163domainWithoutExtension = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainWithoutExtension",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isHyphenated() : Boolean
      {
         return this._1983546638isHyphenated;
      }
      
      public function set isHyphenated(param1:Boolean) : void
      {
         var _loc2_:Object = this._1983546638isHyphenated;
         if(_loc2_ !== param1)
         {
            this._1983546638isHyphenated = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHyphenated",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hasMissingData() : Boolean
      {
         return this._1246368566hasMissingData;
      }
      
      public function set hasMissingData(param1:Boolean) : void
      {
         var _loc2_:Object = this._1246368566hasMissingData;
         if(_loc2_ !== param1)
         {
            this._1246368566hasMissingData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hasMissingData",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get com() : int
      {
         return this._98689com;
      }
      
      public function set com(param1:int) : void
      {
         var _loc2_:Object = this._98689com;
         if(_loc2_ !== param1)
         {
            this._98689com = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"com",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get net() : int
      {
         return this._108957net;
      }
      
      public function set net(param1:int) : void
      {
         var _loc2_:Object = this._108957net;
         if(_loc2_ !== param1)
         {
            this._108957net = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"net",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get org() : int
      {
         return this._110308org;
      }
      
      public function set org(param1:int) : void
      {
         var _loc2_:Object = this._110308org;
         if(_loc2_ !== param1)
         {
            this._110308org = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"org",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get co() : int
      {
         return this._3180co;
      }
      
      public function set co(param1:int) : void
      {
         var _loc2_:Object = this._3180co;
         if(_loc2_ !== param1)
         {
            this._3180co = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"co",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : int
      {
         return this._3237038info;
      }
      
      public function set info(param1:int) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ca() : int
      {
         return this._3166ca;
      }
      
      public function set ca(param1:int) : void
      {
         var _loc2_:Object = this._3166ca;
         if(_loc2_ !== param1)
         {
            this._3166ca = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ca",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get couk() : int
      {
         return this._3059714couk;
      }
      
      public function set couk(param1:int) : void
      {
         var _loc2_:Object = this._3059714couk;
         if(_loc2_ !== param1)
         {
            this._3059714couk = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"couk",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get comau() : int
      {
         return this._94843253comau;
      }
      
      public function set comau(param1:int) : void
      {
         var _loc2_:Object = this._94843253comau;
         if(_loc2_ !== param1)
         {
            this._94843253comau = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comau",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get de() : int
      {
         return this._3201de;
      }
      
      public function set de(param1:int) : void
      {
         var _loc2_:Object = this._3201de;
         if(_loc2_ !== param1)
         {
            this._3201de = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"de",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nl() : int
      {
         return this._3518nl;
      }
      
      public function set nl(param1:int) : void
      {
         var _loc2_:Object = this._3518nl;
         if(_loc2_ !== param1)
         {
            this._3518nl = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nl",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dk() : int
      {
         return this._3207dk;
      }
      
      public function set dk(param1:int) : void
      {
         var _loc2_:Object = this._3207dk;
         if(_loc2_ !== param1)
         {
            this._3207dk = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dk",_loc2_,param1));
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
