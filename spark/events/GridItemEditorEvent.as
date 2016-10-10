package spark.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   import spark.components.gridClasses.GridColumn;
   
   use namespace mx_internal;
   
   public class GridItemEditorEvent extends Event
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      public static const GRID_ITEM_EDITOR_SESSION_STARTING:String = "gridItemEditorSessionStarting";
      
      public static const GRID_ITEM_EDITOR_SESSION_START:String = "gridItemEditorSessionStart";
      
      public static const GRID_ITEM_EDITOR_SESSION_SAVE:String = "gridItemEditorSessionSave";
      
      public static const GRID_ITEM_EDITOR_SESSION_CANCEL:String = "gridItemEditorSessionCancel";
       
      
      public var columnIndex:int;
      
      public var column:GridColumn;
      
      public var rowIndex:int;
      
      public function GridItemEditorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:uint = 2147483647, param5:uint = 2147483647, param6:GridColumn = null)
      {
         super(param1,param2,param3);
         this.rowIndex = param4;
         this.columnIndex = param5;
         this.column = param6;
      }
      
      override public function clone() : Event
      {
         var _loc1_:GridItemEditorEvent = new GridItemEditorEvent(type,bubbles,cancelable,this.rowIndex,this.columnIndex,this.column);
         return _loc1_;
      }
   }
}
