package spark.effects
{
   import mx.effects.Effect;
   import mx.core.mx_internal;
   import mx.effects.effectClasses.PropertyChanges;
   import mx.core.IVisualElementContainer;
   import mx.core.IVisualElement;
   import spark.effects.supportClasses.RemoveActionInstance;
   
   use namespace mx_internal;
   
   public class RemoveAction extends Effect
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var AFFECTED_PROPERTIES:Array = ["parent","index"];
       
      
      public function RemoveAction(param1:Object = null)
      {
         super(param1);
         duration = 0;
         instanceClass = RemoveActionInstance;
      }
      
      override public function getAffectedProperties() : Array
      {
         return AFFECTED_PROPERTIES;
      }
      
      private function propChangesSortHandler(param1:PropertyChanges, param2:PropertyChanges) : Number
      {
         if(param1.start.index > param2.start.index)
         {
            return 1;
         }
         if(param1.start.index < param2.start.index)
         {
            return -1;
         }
         return 0;
      }
      
      override mx_internal function applyStartValues(param1:Array, param2:Array) : void
      {
         if(param1)
         {
            param1.sort(this.propChangesSortHandler);
         }
         super.applyStartValues(param1,param2);
      }
      
      override protected function getValueFromTarget(param1:Object, param2:String) : *
      {
         var _loc3_:* = param1.parent;
         if(param2 == "index")
         {
            return !!_loc3_?_loc3_ is IVisualElementContainer?IVisualElementContainer(_loc3_).getElementIndex(param1 as IVisualElement):_loc3_.getChildIndex(param1):0;
         }
         return super.getValueFromTarget(param1,param2);
      }
      
      override protected function applyValueToTarget(param1:Object, param2:String, param3:*, param4:Object) : void
      {
         if(param2 == "parent" && param3)
         {
            if(param1.parent == null)
            {
               if(param3 is IVisualElementContainer)
               {
                  IVisualElementContainer(param3).addElementAt(param1 as IVisualElement,Math.min(param4.index,IVisualElementContainer(param3).numElements));
               }
               else
               {
                  param3.addChildAt(param1,Math.min(param4.index,param3.numChildren));
               }
            }
         }
      }
   }
}
