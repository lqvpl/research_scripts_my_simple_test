package com.enfluid.ltp.view.components
{
   import spark.components.gridClasses.GridColumn;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   
   public final class CompetitorAnalysisGridColumn extends GridColumn
   {
      
      public static var LEFT_ALIGN:String = "left";
      
      public static var CENTER_ALIGN:String = "center";
       
      
      private var _92903173align:String;
      
      private var _1286914967helpTitle:String;
      
      private var _2033484280helpContent:String;
      
      public function CompetitorAnalysisGridColumn(param1:String = null)
      {
         this._92903173align = CENTER_ALIGN;
         super(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get align() : String
      {
         return this._92903173align;
      }
      
      public function set align(param1:String) : void
      {
         var _loc2_:Object = this._92903173align;
         if(_loc2_ !== param1)
         {
            this._92903173align = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"align",_loc2_,param1));
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
