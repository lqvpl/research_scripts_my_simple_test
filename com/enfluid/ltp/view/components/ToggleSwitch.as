package com.enfluid.ltp.view.components
{
   import spark.components.CheckBox;
   import spark.core.IDisplayText;
   
   public final class ToggleSwitch extends CheckBox
   {
       
      
      [SkinPart(required="false")]
      public var selectedLabelField:IDisplayText;
      
      [SkinPart(required="false")]
      public var deselectedLabelField:IDisplayText;
      
      private var _selectedLabel:String = "Yes";
      
      private var _deselectedLabel:String = "No";
      
      public function ToggleSwitch()
      {
         super();
      }
      
      public function get selectedLabel() : String
      {
         return this._selectedLabel;
      }
      
      public function set selectedLabel(param1:String) : void
      {
         this._selectedLabel = param1;
         if(this.selectedLabelField)
         {
            this.selectedLabelField.text = this.selectedLabel;
         }
      }
      
      public function get deselectedLabel() : String
      {
         return this._deselectedLabel;
      }
      
      public function set deselectedLabel(param1:String) : void
      {
         this._deselectedLabel = param1;
         if(this.deselectedLabelField)
         {
            this.deselectedLabelField.text = this.deselectedLabel;
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.selectedLabelField)
         {
            this.selectedLabelField.text = this.selectedLabel;
         }
         if(param2 == this.deselectedLabelField)
         {
            this.deselectedLabelField.text = this.deselectedLabel;
         }
      }
   }
}
