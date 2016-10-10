package com.enfluid.ltp.view.components
{
   import flash.display.Sprite;
   import com.enfluid.ltp.model.DataModel;
   import mx.effects.Fade;
   import flash.utils.ByteArray;
   
   public final class Tick extends Sprite
   {
       
      
      private var tickFade:Fade;
      
      public function Tick(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:uint)
      {
         this.tickFade = new Fade(this);
         super();
         §§push(this.graphics);
         §§push(param5);
         §§push(param6);
         §§push(1);
         if(_loc8_)
         {
            §§push(---(§§pop() + 1 - 12) - 1 - 48);
         }
         §§pop().lineStyle(§§pop(),§§pop(),§§pop(),false,"normal","rounded");
         this.graphics.moveTo(param1,param2);
         this.graphics.lineTo(param3,param4);
      }
      
      public final function fade(param1:Number) : void
      {
         §§push(this.tickFade);
         §§push(1);
         if(_loc2_)
         {
            §§push(--(-(-§§pop() * 27) - 1) + 70);
         }
         §§pop().alphaFrom = §§pop();
         this.tickFade.alphaTo = 0.1;
         this.tickFade.duration = param1;
         this.tickFade.play();
      }
   }
}
