package spark.accessibility
{
   import mx.accessibility.AccImpl;
   import mx.core.mx_internal;
   import spark.components.RichEditableText;
   import mx.core.UIComponent;
   import flash.events.Event;
   import mx.utils.StringUtil;
   import mx.accessibility.AccConst;
   import flash.accessibility.Accessibility;
   
   use namespace mx_internal;
   
   public class RichEditableTextAccImpl extends AccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function RichEditableTextAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_TEXT;
      }
      
      public static function enableAccessibility() : void
      {
         RichEditableText.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new RichEditableTextAccImpl(param1);
      }
      
      override protected function get eventsToHandle() : Array
      {
         return super.eventsToHandle.concat([Event.CHANGE]);
      }
      
      public function get selectionActiveIndex() : int
      {
         return RichEditableText(master).selectionActivePosition;
      }
      
      public function get selectionAnchorIndex() : int
      {
         return RichEditableText(master).selectionAnchorPosition;
      }
      
      override public function get_accValue(param1:uint) : String
      {
         var _loc2_:RichEditableText = RichEditableText(master);
         if(_loc2_.displayAsPassword)
         {
            return StringUtil.repeat("*",_loc2_.text.length);
         }
         return _loc2_.text;
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc2_:uint = getState(param1);
         if(!RichEditableText(master).editable)
         {
            _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_READONLY;
         }
         if(RichEditableText(master).displayAsPassword)
         {
            _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_PROTECTED;
         }
         return _loc2_;
      }
      
      override protected function eventHandler(param1:Event) : void
      {
         $eventHandler(param1);
         switch(param1.type)
         {
            case Event.CHANGE:
               Accessibility.sendEvent(master,0,AccConst.EVENT_OBJECT_VALUECHANGE,true);
         }
      }
      
      override protected function getName(param1:uint) : String
      {
         return "";
      }
   }
}
