package spark.accessibility
{
   import mx.core.mx_internal;
   import spark.components.TitleWindow;
   import mx.core.UIComponent;
   import flash.display.Sprite;
   import flash.accessibility.Accessibility;
   import mx.accessibility.AccConst;
   import spark.events.TitleWindowBoundsEvent;
   import mx.events.CloseEvent;
   import flash.events.Event;
   
   use namespace mx_internal;
   
   public class TitleWindowAccImpl extends PanelAccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function TitleWindowAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_PANE;
      }
      
      public static function enableAccessibility() : void
      {
         TitleWindow.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         var _loc2_:TitleWindowAccImpl = new TitleWindowAccImpl(param1);
         var _loc3_:Sprite = _loc2_.attach();
         Accessibility.sendEvent(_loc3_,0,AccConst.EVENT_OBJECT_CREATE);
         Accessibility.updateProperties();
      }
      
      override protected function get eventsToHandle() : Array
      {
         return super.eventsToHandle.concat([TitleWindowBoundsEvent.WINDOW_MOVE_END,CloseEvent.CLOSE]);
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc2_:uint = getState(param1);
         _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_MOVEABLE;
         return _loc2_;
      }
      
      override protected function eventHandler(param1:Event) : void
      {
         super.eventHandler(param1);
         switch(param1.type)
         {
            case TitleWindowBoundsEvent.WINDOW_MOVE_END:
               Accessibility.sendEvent(accImplSprite,0,AccConst.EVENT_OBJECT_LOCATIONCHANGE,true);
               Accessibility.updateProperties();
               break;
            case CloseEvent.CLOSE:
               Accessibility.sendEvent(accImplSprite,0,AccConst.EVENT_OBJECT_DESTROY,true);
               Accessibility.updateProperties();
         }
      }
   }
}
