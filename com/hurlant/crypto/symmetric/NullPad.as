package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.renderers.CalculatableValueGroup;
   import mx.binding.BindingManager;
   
   public final class NullPad implements IPad
   {
       
      
      public function NullPad()
      {
         super();
      }
      
      public function unpad(param1:ByteArray) : void
      {
      }
      
      public function pad(param1:ByteArray) : void
      {
      }
      
      public function setBlockSize(param1:uint) : void
      {
      }
   }
}
