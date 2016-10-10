package mx.controls.listClasses
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.core.IUIComponent;
   
   use namespace mx_internal;
   
   public class BaseListData extends EventDispatcher
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      [Bindable("__NoChangeEvent__")]
      public var columnIndex:int;
      
      [Bindable("__NoChangeEvent__")]
      public var label:String;
      
      [Bindable("__NoChangeEvent__")]
      public var owner:IUIComponent;
      
      [Bindable("__NoChangeEvent__")]
      public var rowIndex:int;
      
      private var _uid:String;
      
      public function BaseListData(param1:String, param2:String, param3:IUIComponent, param4:int = 0, param5:int = 0)
      {
         super();
         this.label = param1;
         this.uid = param2;
         this.owner = param3;
         this.rowIndex = param4;
         this.columnIndex = param5;
      }
      
      [Bindable("__NoChangeEvent__")]
      public function get uid() : String
      {
         return this._uid;
      }
      
      public function set uid(param1:String) : void
      {
         this._uid = param1;
      }
   }
}
