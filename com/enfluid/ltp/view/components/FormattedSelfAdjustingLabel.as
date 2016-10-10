package com.enfluid.ltp.view.components
{
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import spark.formatters.NumberFormatter;
   import mx.core.IFlexModuleFactory;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.PropertyChangeEvent;
   
   public final class FormattedSelfAdjustingLabel extends SelfAdjustingLabel
   {
       
      
      private var _1060399231numberFormatter:NumberFormatter;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function FormattedSelfAdjustingLabel()
      {
         super();
         this._FormattedSelfAdjustingLabel_NumberFormatter1_i();
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
      
      override public function set text(param1:String) : void
      {
         super.text = !!isNaN(Number(param1))?param1:this.numberFormatter.format(param1);
      }
      
      private final function _FormattedSelfAdjustingLabel_NumberFormatter1_i() : NumberFormatter
      {
         var _loc1_:NumberFormatter = new NumberFormatter();
         _loc1_.trailingZeros = false;
         _loc1_.initialized(this,"numberFormatter");
         this.numberFormatter = _loc1_;
         BindingManager.executeBindings(this,"numberFormatter",this.numberFormatter);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberFormatter() : NumberFormatter
      {
         return this._1060399231numberFormatter;
      }
      
      public function set numberFormatter(param1:NumberFormatter) : void
      {
         var _loc2_:Object = this._1060399231numberFormatter;
         if(_loc2_ !== param1)
         {
            this._1060399231numberFormatter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberFormatter",_loc2_,param1));
            }
         }
      }
   }
}
