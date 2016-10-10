package spark.components
{
   import spark.components.supportClasses.SkinnableTextBase;
   import mx.core.mx_internal;
   import flash.events.Event;
   
   use namespace mx_internal;
   
   public class TextInput extends SkinnableTextBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const focusExclusions:Array = ["textDisplay"];
       
      
      public function TextInput()
      {
         super();
      }
      
      override public function get suggestedFocusSkinExclusions() : Array
      {
         return focusExclusions;
      }
      
      [Bindable("textChanged")]
      [Bindable("change")]
      override public function set text(param1:String) : void
      {
         super.text = param1;
         dispatchEvent(new Event("textChanged"));
      }
      
      public function get widthInChars() : Number
      {
         return getWidthInChars();
      }
      
      public function set widthInChars(param1:Number) : void
      {
         setWidthInChars(param1);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == textDisplay)
         {
            textDisplay.multiline = false;
            textDisplay.lineBreak = "explicit";
            if(textDisplay is RichEditableText)
            {
               RichEditableText(textDisplay).heightInLines = 1;
            }
         }
      }
   }
}
