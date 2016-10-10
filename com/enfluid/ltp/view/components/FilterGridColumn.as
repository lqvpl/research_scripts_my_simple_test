package com.enfluid.ltp.view.components
{
   import spark.components.gridClasses.GridColumn;
   import spark.components.Group;
   import spark.components.Callout;
   import mx.events.PropertyChangeEvent;
   
   public final class FilterGridColumn extends GridColumn
   {
       
      
      private var _1690775288showWarningIcon:Boolean = false;
      
      private var _749730752showEditIcon:Boolean = false;
      
      private var _525799023showProgressSpinner:Boolean = false;
      
      public var headerContent:Group;
      
      public var missingDataCallout:Callout;
      
      public var numericSort:Boolean = false;
      
      private var _1286914967helpTitle:String;
      
      private var _2033484280helpContent:String;
      
      public function FilterGridColumn(param1:String = null)
      {
         super(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get showWarningIcon() : Boolean
      {
         return this._1690775288showWarningIcon;
      }
      
      public function set showWarningIcon(param1:Boolean) : void
      {
         var _loc2_:Object = this._1690775288showWarningIcon;
         if(_loc2_ !== param1)
         {
            this._1690775288showWarningIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showWarningIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showEditIcon() : Boolean
      {
         return this._749730752showEditIcon;
      }
      
      public function set showEditIcon(param1:Boolean) : void
      {
         var _loc2_:Object = this._749730752showEditIcon;
         if(_loc2_ !== param1)
         {
            this._749730752showEditIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showEditIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showProgressSpinner() : Boolean
      {
         return this._525799023showProgressSpinner;
      }
      
      public function set showProgressSpinner(param1:Boolean) : void
      {
         var _loc2_:Object = this._525799023showProgressSpinner;
         if(_loc2_ !== param1)
         {
            this._525799023showProgressSpinner = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showProgressSpinner",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get helpTitle() : String
      {
         return this._1286914967helpTitle;
      }
      
      public function set helpTitle(param1:String) : void
      {
         var _loc2_:Object = this._1286914967helpTitle;
         if(_loc2_ !== param1)
         {
            this._1286914967helpTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpTitle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get helpContent() : String
      {
         return this._2033484280helpContent;
      }
      
      public function set helpContent(param1:String) : void
      {
         var _loc2_:Object = this._2033484280helpContent;
         if(_loc2_ !== param1)
         {
            this._2033484280helpContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpContent",_loc2_,param1));
            }
         }
      }
   }
}
