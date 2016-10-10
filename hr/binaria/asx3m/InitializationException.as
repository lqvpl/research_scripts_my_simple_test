package hr.binaria.asx3m
{
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import mx.graphics.SolidColor;
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.utils.ByteArray;
   import flash.filesystem.FileMode;
   
   use namespace bi_internal;
   
   public final class InitializationException extends Error
   {
       
      
      public function InitializationException(param1:Object = "", param2:Object = 0.0)
      {
         super(param1,param2);
      }
   }
}
