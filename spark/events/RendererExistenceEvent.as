package spark.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   import mx.core.IVisualElement;
   
   use namespace mx_internal;
   
   public class RendererExistenceEvent extends Event
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      public static const RENDERER_ADD:String = "rendererAdd";
      
      public static const RENDERER_REMOVE:String = "rendererRemove";
       
      
      public var data:Object;
      
      public var index:int;
      
      public var renderer:IVisualElement;
      
      public function RendererExistenceEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:IVisualElement = null, param5:int = -1, param6:Object = null)
      {
         super(param1,param2,param3);
         this.renderer = param4;
         this.index = param5;
         this.data = param6;
      }
      
      override public function clone() : Event
      {
         return new RendererExistenceEvent(type,bubbles,cancelable,this.renderer,this.index,this.data);
      }
   }
}
