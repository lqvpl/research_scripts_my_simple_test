package spark.effects
{
   import mx.effects.Effect;
   import mx.core.mx_internal;
   import flash.display.DisplayObjectContainer;
   import mx.effects.effectClasses.PropertyChanges;
   import mx.effects.IEffectInstance;
   import spark.effects.supportClasses.AddActionInstance;
   import mx.core.IVisualElementContainer;
   import mx.core.IVisualElement;
   
   use namespace mx_internal;
   
   public class AddAction extends Effect
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var AFFECTED_PROPERTIES:Array = ["parent","index"];
      
      public static const BEFORE:String = "before";
      
      public static const AFTER:String = "after";
      
      public static const FIRST_CHILD:String = "firstChild";
      
      public static const LAST_CHILD:String = "lastChild";
      
      public static const INDEX:String = "index";
       
      
      private var localPropertyChanges:Array;
      
      public var index:int = -1;
      
      public var relativeTo:DisplayObjectContainer;
      
      public var position:String = "index";
      
      public function AddAction(param1:Object = null)
      {
         super(param1);
         duration = 0;
         instanceClass = AddActionInstance;
      }
      
      override public function getAffectedProperties() : Array
      {
         return AFFECTED_PROPERTIES;
      }
      
      private function getPropertyChanges(param1:Object) : PropertyChanges
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.localPropertyChanges.length)
         {
            if(this.localPropertyChanges[_loc2_].target == param1)
            {
               return this.localPropertyChanges[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function targetSortHandler(param1:Object, param2:Object) : Number
      {
         var _loc3_:PropertyChanges = this.getPropertyChanges(param1);
         var _loc4_:PropertyChanges = this.getPropertyChanges(param2);
         if(_loc3_ && _loc4_)
         {
            if(_loc3_.start.index > _loc4_.start.index)
            {
               return 1;
            }
            if(_loc3_.start.index < _loc4_.start.index)
            {
               return -1;
            }
         }
         return 0;
      }
      
      override public function createInstances(param1:Array = null) : Array
      {
         if(!param1)
         {
            param1 = this.targets;
         }
         if(param1 && propertyChangesArray)
         {
            this.localPropertyChanges = propertyChangesArray;
            param1.sort(this.targetSortHandler);
         }
         return super.createInstances(param1);
      }
      
      override protected function initInstance(param1:IEffectInstance) : void
      {
         super.initInstance(param1);
         var _loc2_:AddActionInstance = AddActionInstance(param1);
         _loc2_.relativeTo = this.relativeTo;
         _loc2_.index = this.index;
         _loc2_.position = this.position;
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
         if(param2 == "parent" && param3 == undefined)
         {
            if(param1.parent)
            {
               if(param1.parent is IVisualElementContainer)
               {
                  IVisualElementContainer(param1.parent).removeElement(param1 as IVisualElement);
               }
               else
               {
                  param1.parent.removeChild(param1);
               }
            }
         }
      }
   }
}
