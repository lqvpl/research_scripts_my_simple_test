package spark.layouts
{
   import mx.core.mx_internal;
   import spark.components.supportClasses.GroupBase;
   
   use namespace mx_internal;
   
   public class FormItemLayout extends ConstraintLayout
   {
       
      
      private var layoutColumnWidths:Vector.<Number> = null;
      
      public function FormItemLayout()
      {
         super();
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         checkUseVirtualLayout();
         var _loc3_:GroupBase = target;
         if(!_loc3_)
         {
            return;
         }
         measureAndPositionColumnsAndRows(param1,param2);
         if(this.layoutColumnWidths)
         {
            setColumnWidths(this.layoutColumnWidths);
         }
         layoutContent(param1,param2);
      }
      
      public function getMeasuredColumnWidths() : Vector.<Number>
      {
         return measureColumns();
      }
      
      public function setLayoutColumnWidths(param1:Vector.<Number>) : void
      {
         this.layoutColumnWidths = param1;
         setColumnWidths(this.layoutColumnWidths);
         target.invalidateDisplayList();
      }
   }
}
