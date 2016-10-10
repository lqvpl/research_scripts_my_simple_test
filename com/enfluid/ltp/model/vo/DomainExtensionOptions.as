package com.enfluid.ltp.model.vo
{
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import com.enfluid.ltp.model.constants.DomainExtensions;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import mx.events.PropertyChangeEvent;
   
   public final class DomainExtensionOptions extends EventDispatcher
   {
       
      
      private var _1731196175selectedExtensions:Array;
      
      private var _126489926selectedUniregistryExtensions:Array;
      
      private var _1537572673selectedDomizeExtensions:Array;
      
      private var _1893057594numExtensions:int;
      
      private var _464278213numUniregistryExtensions:int;
      
      private var _501218772numDomizeExtensions:int;
      
      private var _com:Boolean = true;
      
      private var _net:Boolean = false;
      
      private var _org:Boolean = false;
      
      private var _co:Boolean = false;
      
      private var _info:Boolean = false;
      
      private var _ca:Boolean = false;
      
      private var _couk:Boolean = false;
      
      private var _comau:Boolean = false;
      
      private var _de:Boolean = false;
      
      private var _nl:Boolean = false;
      
      private var _dk:Boolean = false;
      
      public function DomainExtensionOptions()
      {
         this._1731196175selectedExtensions = [];
         this._126489926selectedUniregistryExtensions = [];
         this._1537572673selectedDomizeExtensions = [];
         super();
         this.recalculate();
      }
      
      [Bindable(event="comChange")]
      public function get com() : Boolean
      {
         return this._com;
      }
      
      public function set com(param1:Boolean) : void
      {
         if(this._com !== param1)
         {
            this._com = param1;
            this.recalculate();
            dispatchEvent(new Event("comChange"));
         }
      }
      
      [Bindable(event="netChange")]
      public function get net() : Boolean
      {
         return this._net;
      }
      
      public function set net(param1:Boolean) : void
      {
         if(this._net !== param1)
         {
            this._net = param1;
            this.recalculate();
            dispatchEvent(new Event("netChange"));
         }
      }
      
      [Bindable(event="orgChange")]
      public function get org() : Boolean
      {
         return this._org;
      }
      
      public function set org(param1:Boolean) : void
      {
         if(this._org !== param1)
         {
            this._org = param1;
            this.recalculate();
            dispatchEvent(new Event("orgChange"));
         }
      }
      
      [Bindable(event="coChange")]
      public function get co() : Boolean
      {
         return this._co;
      }
      
      public function set co(param1:Boolean) : void
      {
         if(this._co !== param1)
         {
            this._co = param1;
            this.recalculate();
            dispatchEvent(new Event("coChange"));
         }
      }
      
      [Bindable(event="infoChange")]
      public function get info() : Boolean
      {
         return this._info;
      }
      
      public function set info(param1:Boolean) : void
      {
         if(this._info !== param1)
         {
            this._info = param1;
            this.recalculate();
            dispatchEvent(new Event("infoChange"));
         }
      }
      
      [Bindable(event="caChange")]
      public function get ca() : Boolean
      {
         return this._ca;
      }
      
      public function set ca(param1:Boolean) : void
      {
         if(this._ca !== param1)
         {
            this._ca = param1;
            this.recalculate();
            dispatchEvent(new Event("caChange"));
         }
      }
      
      [Bindable(event="coukChange")]
      public function get couk() : Boolean
      {
         return this._couk;
      }
      
      public function set couk(param1:Boolean) : void
      {
         if(this._couk !== param1)
         {
            this._couk = param1;
            this.recalculate();
            dispatchEvent(new Event("coukChange"));
         }
      }
      
      [Bindable(event="comauChange")]
      public function get comau() : Boolean
      {
         return this._comau;
      }
      
      public function set comau(param1:Boolean) : void
      {
         if(this._comau !== param1)
         {
            this._comau = param1;
            this.recalculate();
            dispatchEvent(new Event("comauChange"));
         }
      }
      
      [Bindable(event="deChange")]
      public function get de() : Boolean
      {
         return this._de;
      }
      
      public function set de(param1:Boolean) : void
      {
         if(this._de !== param1)
         {
            this._de = param1;
            this.recalculate();
            dispatchEvent(new Event("deChange"));
         }
      }
      
      [Bindable(event="nlChange")]
      public function get nl() : Boolean
      {
         return this._nl;
      }
      
      public function set nl(param1:Boolean) : void
      {
         if(this._nl !== param1)
         {
            this._nl = param1;
            this.recalculate();
            dispatchEvent(new Event("nlChange"));
         }
      }
      
      [Bindable(event="dkChange")]
      public function get dk() : Boolean
      {
         return this._dk;
      }
      
      public function set dk(param1:Boolean) : void
      {
         if(this._dk !== param1)
         {
            this._dk = param1;
            this.recalculate();
            dispatchEvent(new Event("dkChange"));
         }
      }
      
      public function get selectedExtensionsString() : String
      {
         return this.selectedExtensions.join(",");
      }
      
      private function set _207354368selectedExtensionsString(param1:String) : void
      {
         param1 = param1 || "";
         var _loc2_:Array = param1.split(",");
         this._com = _loc2_.indexOf(DomainExtensions.COM) >= 0?true:false;
         this._net = _loc2_.indexOf(DomainExtensions.NET) >= 0?true:false;
         this._org = _loc2_.indexOf(DomainExtensions.ORG) >= 0?true:false;
         this._co = _loc2_.indexOf(DomainExtensions.CO) >= 0?true:false;
         this._info = _loc2_.indexOf(DomainExtensions.INFO) >= 0?true:false;
         this._ca = _loc2_.indexOf(DomainExtensions.CA) >= 0?true:false;
         this._couk = _loc2_.indexOf(DomainExtensions.CO_UK) >= 0?true:false;
         this._comau = _loc2_.indexOf(DomainExtensions.COM_AU) >= 0?true:false;
         this._de = _loc2_.indexOf(DomainExtensions.DE) >= 0?true:false;
         this._nl = _loc2_.indexOf(DomainExtensions.NL) >= 0?true:false;
         this._dk = _loc2_.indexOf(DomainExtensions.DK) >= 0?true:false;
         this.recalculate();
      }
      
      public final function recalculate() : void
      {
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         if(this._com)
         {
            _loc1_.push(DomainExtensions.COM);
            _loc2_.push(DomainExtensions.COM);
         }
         if(this._net)
         {
            _loc1_.push(DomainExtensions.NET);
            _loc2_.push(DomainExtensions.NET);
         }
         if(this._org)
         {
            _loc1_.push(DomainExtensions.ORG);
            _loc2_.push(DomainExtensions.ORG);
         }
         if(this._co)
         {
            _loc1_.push(DomainExtensions.CO);
            _loc2_.push(DomainExtensions.CO);
         }
         if(this._info)
         {
            _loc1_.push(DomainExtensions.INFO);
            _loc2_.push(DomainExtensions.INFO);
         }
         if(this._ca)
         {
            _loc1_.push(DomainExtensions.CA);
            _loc2_.push(DomainExtensions.CA);
         }
         if(this._couk)
         {
            _loc1_.push(DomainExtensions.CO_UK);
            _loc2_.push(DomainExtensions.CO_UK);
         }
         if(this._comau)
         {
            _loc1_.push(DomainExtensions.COM_AU);
            _loc3_.push(DomainExtensions.COM_AU);
         }
         if(this._de)
         {
            _loc1_.push(DomainExtensions.DE);
            _loc2_.push(DomainExtensions.DE);
         }
         if(this._nl)
         {
            _loc1_.push(DomainExtensions.NL);
            _loc3_.push(DomainExtensions.NL);
         }
         if(this._dk)
         {
            _loc1_.push(DomainExtensions.DK);
            _loc3_.push(DomainExtensions.DK);
         }
         this.selectedExtensions = _loc1_;
         this.selectedUniregistryExtensions = _loc2_;
         this.selectedDomizeExtensions = _loc3_;
         this.numExtensions = _loc1_.length;
         this.numUniregistryExtensions = _loc2_.length;
         this.numDomizeExtensions = this.numExtensions - this.numUniregistryExtensions;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedExtensions() : Array
      {
         return this._1731196175selectedExtensions;
      }
      
      public function set selectedExtensions(param1:Array) : void
      {
         var _loc2_:Object = this._1731196175selectedExtensions;
         if(_loc2_ !== param1)
         {
            this._1731196175selectedExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedExtensions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedUniregistryExtensions() : Array
      {
         return this._126489926selectedUniregistryExtensions;
      }
      
      public function set selectedUniregistryExtensions(param1:Array) : void
      {
         var _loc2_:Object = this._126489926selectedUniregistryExtensions;
         if(_loc2_ !== param1)
         {
            this._126489926selectedUniregistryExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedUniregistryExtensions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedDomizeExtensions() : Array
      {
         return this._1537572673selectedDomizeExtensions;
      }
      
      public function set selectedDomizeExtensions(param1:Array) : void
      {
         var _loc2_:Object = this._1537572673selectedDomizeExtensions;
         if(_loc2_ !== param1)
         {
            this._1537572673selectedDomizeExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedDomizeExtensions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numExtensions() : int
      {
         return this._1893057594numExtensions;
      }
      
      public function set numExtensions(param1:int) : void
      {
         var _loc2_:Object = this._1893057594numExtensions;
         if(_loc2_ !== param1)
         {
            this._1893057594numExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numExtensions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numUniregistryExtensions() : int
      {
         return this._464278213numUniregistryExtensions;
      }
      
      public function set numUniregistryExtensions(param1:int) : void
      {
         var _loc2_:Object = this._464278213numUniregistryExtensions;
         if(_loc2_ !== param1)
         {
            this._464278213numUniregistryExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numUniregistryExtensions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numDomizeExtensions() : int
      {
         return this._501218772numDomizeExtensions;
      }
      
      public function set numDomizeExtensions(param1:int) : void
      {
         var _loc2_:Object = this._501218772numDomizeExtensions;
         if(_loc2_ !== param1)
         {
            this._501218772numDomizeExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numDomizeExtensions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set selectedExtensionsString(param1:String) : void
      {
         var _loc2_:Object = this.selectedExtensionsString;
         if(_loc2_ !== param1)
         {
            this._207354368selectedExtensionsString = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedExtensionsString",_loc2_,param1));
            }
         }
      }
   }
}
