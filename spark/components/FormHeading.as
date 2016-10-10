package spark.components
{
   import spark.components.supportClasses.SkinnableComponent;
   import spark.core.IDisplayText;
   import flash.events.Event;
   import mx.events.PropertyChangeEvent;
   
   public class FormHeading extends SkinnableComponent
   {
       
      
      private var _1184053038labelDisplay:IDisplayText;
      
      private var _label:String = "";
      
      public function FormHeading()
      {
         super();
      }
      
      [Bindable("labelChanged")]
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         if(this._label == param1)
         {
            return;
         }
         this._label = param1;
         if(this.labelDisplay)
         {
            this.labelDisplay.text = this.label;
         }
         dispatchEvent(new Event("labelChanged"));
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.labelDisplay)
         {
            this.labelDisplay.text = this.label;
         }
      }
      
      override protected function getCurrentSkinState() : String
      {
         return !!enabled?"normal":"disabled";
      }
      
      [SkinPart(required="false")]
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : IDisplayText
      {
         return this._1184053038labelDisplay;
      }
      
      [SkinPart(required="false")]
      public function set labelDisplay(param1:IDisplayText) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
   }
}
