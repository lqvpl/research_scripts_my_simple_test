package mx.effects.effectClasses
{
   import mx.effects.EffectInstance;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ActionEffectInstance extends EffectInstance
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      protected var playedAction:Boolean = false;
      
      private var _startValue;
      
      public function ActionEffectInstance(param1:Object)
      {
         super(param1);
      }
      
      protected function saveStartValue() : *
      {
      }
      
      protected function getStartValue() : *
      {
         return this._startValue;
      }
      
      override public function play() : void
      {
         super.play();
         if(!playReversed)
         {
            this._startValue = this.saveStartValue();
         }
         this.playedAction = true;
      }
      
      override public function end() : void
      {
         if(!this.playedAction)
         {
            this.play();
         }
         super.end();
      }
   }
}
