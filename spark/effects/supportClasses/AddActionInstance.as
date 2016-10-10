package spark.effects.supportClasses
{
   import mx.effects.effectClasses.ActionEffectInstance;
   import mx.core.mx_internal;
   import flash.display.DisplayObjectContainer;
   import mx.core.IVisualElementContainer;
   import spark.effects.AddAction;
   
   use namespace mx_internal;
   
   public class AddActionInstance extends ActionEffectInstance
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public var index:int = -1;
      
      public var relativeTo:DisplayObjectContainer;
      
      public var position:String;
      
      public function AddActionInstance(param1:Object)
      {
         super(param1);
      }
      
      private function getContainer(param1:*) : *
      {
         return param1.parent;
      }
      
      private function getNumElements(param1:*) : int
      {
         if(param1 is IVisualElementContainer)
         {
            return IVisualElementContainer(param1).numElements;
         }
         return param1.numChildren;
      }
      
      private function addChild(param1:*, param2:*) : void
      {
         if(param1 is IVisualElementContainer)
         {
            IVisualElementContainer(param1).addElement(param2);
         }
         else
         {
            param1.addChild(param2);
         }
      }
      
      private function removeChild(param1:*, param2:*) : void
      {
         if(param1 is IVisualElementContainer)
         {
            IVisualElementContainer(param1).removeElement(param2);
         }
         else
         {
            param1.removeChild(param2);
         }
      }
      
      private function addChildAt(param1:*, param2:*, param3:int) : void
      {
         if(param1 is IVisualElementContainer)
         {
            IVisualElementContainer(param1).addElementAt(param2,param3);
         }
         else
         {
            param1.addChildAt(param2,param3);
         }
      }
      
      private function getChildIndex(param1:*, param2:*) : int
      {
         if(param1 is IVisualElementContainer)
         {
            return IVisualElementContainer(param1).getElementIndex(param2);
         }
         return param1.getChildIndex(param2);
      }
      
      override public function play() : void
      {
         super.play();
         if(!this.relativeTo && propertyChanges)
         {
            if(this.getContainer(propertyChanges.start) == null && this.getContainer(propertyChanges.end) != null)
            {
               this.relativeTo = this.getContainer(propertyChanges.end);
               this.position = "index";
               this.index = propertyChanges.end.index;
            }
         }
         if(!playReversed)
         {
            if(target && this.getContainer(target) == null && this.relativeTo)
            {
               switch(this.position)
               {
                  case AddAction.INDEX:
                     if(this.index == -1)
                     {
                        this.addChild(this.relativeTo,target);
                     }
                     else
                     {
                        this.addChildAt(this.relativeTo,target,Math.min(this.index,this.getNumElements(this.relativeTo)));
                     }
                     break;
                  case AddAction.BEFORE:
                     this.addChildAt(this.getContainer(this.relativeTo),target,this.getChildIndex(this.getContainer(this.relativeTo),this.relativeTo));
                     break;
                  case AddAction.AFTER:
                     this.addChildAt(this.getContainer(this.relativeTo),target,this.getChildIndex(this.getContainer(this.relativeTo),this.relativeTo) + 1);
                     break;
                  case AddAction.FIRST_CHILD:
                     this.addChildAt(this.relativeTo,target,0);
                  case AddAction.LAST_CHILD:
                     this.addChild(this.relativeTo,target);
               }
            }
         }
         else if(target && this.relativeTo && this.getContainer(target) == this.relativeTo)
         {
            this.removeChild(this.relativeTo,target);
         }
         finishRepeat();
      }
   }
}
