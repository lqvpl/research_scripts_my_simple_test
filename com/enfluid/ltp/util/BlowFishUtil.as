package com.enfluid.ltp.util
{
   import flash.utils.ByteArray;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.ICipher;
   import com.hurlant.util.Base64;
   import com.hurlant.crypto.symmetric.PKCS5;
   import com.hurlant.crypto.symmetric.ECBMode;
   import spark.primitives.Rect;
   import com.hurlant.crypto.symmetric.BlowFishKey;
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.BindingManager;
   import spark.components.Image;
   import spark.components.Group;
   
   public final class BlowFishUtil
   {
       
      
      public function BlowFishUtil()
      {
         super();
      }
      
      public static function decrypt(param1:String, param2:String) : String
      {
         var $input:ByteArray = null;
         var $pad:IPad = null;
         var $cipher:ICipher = null;
         var $text:String = param1;
         var key:String = param2;
         try
         {
            $input = Base64.decodeToByteArray($text);
            $pad = new PKCS5();
            $cipher = _getCipher(key,$pad);
            $pad.setBlockSize($cipher.getBlockSize());
            $cipher.decrypt($input);
            $cipher.dispose();
            §§push($input);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() * 43) + 1 - 1);
            }
            §§pop().position = §§pop();
            return $input.readUTF();
         }
         catch($error:Error)
         {
         }
         return null;
      }
      
      public static function encrypt(param1:String, param2:String) : String
      {
         var $output:ByteArray = null;
         var $pad:IPad = null;
         var $cipher:ICipher = null;
         var $text:String = param1;
         var key:String = param2;
         try
         {
            $output = new ByteArray();
            $output.writeUTF($text);
            $pad = new PKCS5();
            $cipher = _getCipher(key,$pad);
            $pad.setBlockSize($cipher.getBlockSize());
            $cipher.encrypt($output);
            $cipher.dispose();
            return Base64.encodeByteArray($output);
         }
         catch($error:Error)
         {
         }
         return null;
      }
      
      private static function _getCipher(param1:String, param2:IPad) : ICipher
      {
         return new ECBMode(new BlowFishKey(Base64.decodeToByteArray(param1)),param2);
      }
   }
}
