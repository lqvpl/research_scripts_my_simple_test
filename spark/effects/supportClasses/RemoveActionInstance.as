package spark.effects.supportClasses
{
   import mx.effects.effectClasses.ActionEffectInstance;
   import mx.core.mx_internal;
   import flash.events.Event;
   import mx.core.IVisualElementContainer;
   
   use namespace mx_internal;
   
   public class RemoveActionInstance extends ActionEffectInstance
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      private var _startIndex:Number;
      
      private var _startParent;
      
      public function RemoveActionInstance(param1:Object)
      {
         super(param1);
      }
      
      override public function initEffect(param1:Event) : void
      {
         super.initEffect(param1);
      }
      
      private function getContainer(param1:*) : *
      {
         return param1.parent;
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
         var _loc1_:Boolean = true;
         super.play();
         if(propertyChanges)
         {
            _loc1_ = this.getContainer(propertyChanges.start) != null && this.getContainer(propertyChanges.end) == null;
         }
         if(!playReversed)
         {
            if(_loc1_ && target && this.getContainer(target) != null)
            {
               this.removeChild(this.getContainer(target),target);
            }
         }
         else if(this._startParent && !isNaN(this._startIndex))
         {
            this.addChildAt(this._startParent,target,this._startIndex);
         }
         finishRepeat();
      }
      
      override protected function saveStartValue() : *
      {
         if(target && this.getContainer(target) != null)
         {
            this._startIndex = this.getChildIndex(this.getContainer(target),target);
            this._startParent = this.getContainer(target);
         }
      }
   }
}
