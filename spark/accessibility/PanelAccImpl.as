package spark.accessibility
{
   import mx.accessibility.AccImpl;
   import mx.core.mx_internal;
   import spark.components.Panel;
   import mx.core.UIComponent;
   import flash.display.Sprite;
   import flash.accessibility.AccessibilityImplementation;
   import mx.events.ResizeEvent;
   import spark.events.SkinPartEvent;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.display.Graphics;
   import mx.accessibility.AccConst;
   
   use namespace mx_internal;
   
   public class PanelAccImpl extends AccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      mx_internal var accImplSprite:Sprite;
      
      private var titleDisplayAccImpl:AccessibilityImplementation;
      
      public function PanelAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_GROUPING;
      }
      
      public static function enableAccessibility() : void
      {
         Panel.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         var _loc2_:PanelAccImpl = new PanelAccImpl(param1);
         _loc2_.attach();
      }
      
      override protected function get eventsToHandle() : Array
      {
         return super.eventsToHandle.concat([ResizeEvent.RESIZE,SkinPartEvent.PART_ADDED,SkinPartEvent.PART_REMOVED]);
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc2_:uint = getState(param1);
         return _loc2_;
      }
      
      override protected function getName(param1:uint) : String
      {
         return Panel(master).title;
      }
      
      mx_internal function attach() : Sprite
      {
         var _loc1_:Panel = Panel(master);
         this.accImplSprite = new Sprite();
         _loc1_.$addChildAt(this.accImplSprite,0);
         this.accImplSprite.accessibilityImplementation = this;
         if(_loc1_.titleDisplay)
         {
            this.titleDisplayAccImpl = InteractiveObject(_loc1_.titleDisplay).accessibilityImplementation;
            InteractiveObject(_loc1_.titleDisplay).accessibilityImplementation = null;
         }
         if(_loc1_.tabIndex > 0 && this.accImplSprite.tabIndex == -1)
         {
            this.accImplSprite.tabIndex = _loc1_.tabIndex;
         }
         return this.accImplSprite;
      }
      
      override protected function eventHandler(param1:Event) : void
      {
         var _loc2_:InteractiveObject = null;
         var _loc3_:Panel = null;
         var _loc4_:Graphics = null;
         super.eventHandler(param1);
         switch(param1.type)
         {
            case ResizeEvent.RESIZE:
               _loc3_ = Panel(master);
               _loc4_ = this.accImplSprite.graphics;
               _loc4_.clear();
               _loc4_.lineStyle(0,0,0);
               _loc4_.drawRect(0,0,_loc3_.width,_loc3_.height);
               break;
            case SkinPartEvent.PART_ADDED:
               _loc2_ = Panel(master).titleDisplay as InteractiveObject;
               if(SkinPartEvent(param1).instance == _loc2_)
               {
                  this.titleDisplayAccImpl = _loc2_.accessibilityImplementation;
                  _loc2_.accessibilityImplementation = null;
               }
               break;
            case SkinPartEvent.PART_REMOVED:
               _loc2_ = Panel(master).titleDisplay as InteractiveObject;
               if(SkinPartEvent(param1).instance == _loc2_)
               {
                  _loc2_.accessibilityImplementation = this.titleDisplayAccImpl;
                  this.titleDisplayAccImpl = null;
               }
         }
      }
   }
}
