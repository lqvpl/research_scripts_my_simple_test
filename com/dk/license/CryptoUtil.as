package com.dk.license
{
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.binding.BindingManager;
   import com.hurlant.crypto.symmetric.IMode;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.ECBMode;
   import com.hurlant.crypto.symmetric.CFBMode;
   import com.hurlant.crypto.symmetric.CFB8Mode;
   import com.hurlant.crypto.symmetric.OFBMode;
   import com.hurlant.crypto.symmetric.CTRMode;
   import com.hurlant.crypto.symmetric.CBCMode;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import com.hurlant.crypto.Crypto;
   import spark.events.TextOperationEvent;
   import com.hurlant.crypto.hash.IHash;
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   import mx.graphics.GradientEntry;
   import system.data.lists.ArrayList;
   
   public final class CryptoUtil
   {
       
      
      public function CryptoUtil()
      {
         super();
      }
      
      public static function encrypt(param1:String, param2:String) : String
      {
         §§push(0);
         if(_loc12_)
         {
            §§push(-(§§pop() - 1 + 1) - 85);
         }
         var _loc9_:uint = §§pop();
         §§push(0);
         if(_loc12_)
         {
            §§push(-(§§pop() + 72 - 54 + 1 + 1 - 66 + 1));
         }
         var _loc10_:uint = §§pop();
         var _loc3_:String = "";
         var _loc4_:Array = String("e7NjchMCEGgTpsx3mKXbVPiAqn8DLzWo_6.tvwJQ-R0OUrSak954fd2FYyuH~1lIBZ").split("");
         var _loc5_:uint = _loc4_.length;
         var _loc6_:Array = param1.split("");
         var _loc7_:Array = String(computeHash(param2)).split("");
         var _loc8_:Array = new Array();
         while(_loc8_.length < _loc5_)
         {
            _loc8_.push(_loc4_[Math.floor(Math.random() * _loc5_)]);
         }
         §§push(0);
         if(_loc12_)
         {
            §§push(-(§§pop() - 1) - 42 + 72 + 35);
         }
         _loc9_ = §§pop();
         while(_loc9_ < _loc6_.length)
         {
            §§push(String(_loc6_[_loc9_]));
            §§push(0);
            if(_loc12_)
            {
               §§push(-((§§pop() + 95) * 95 + 1) - 18);
            }
            §§push(§§pop().charCodeAt(§§pop()));
            §§push(String(_loc8_[_loc9_ % _loc5_]));
            §§push(0);
            if(_loc13_)
            {
               §§push(§§pop() - 1 - 91 + 1);
            }
            _loc10_ = §§pop() + §§pop().charCodeAt(§§pop());
            _loc3_ = _loc3_ + _loc4_[Math.floor(_loc10_ / _loc5_)];
            _loc3_ = _loc3_ + _loc4_[_loc10_ % _loc5_];
            _loc9_++;
         }
         var _loc11_:String = "";
         §§push(0);
         if(_loc13_)
         {
            §§push(-((§§pop() + 1) * 66 * 63 + 45));
         }
         _loc9_ = §§pop();
         while(_loc9_ < _loc5_)
         {
            §§push(String(_loc8_[_loc9_]));
            §§push(0);
            if(_loc12_)
            {
               §§push(-§§pop() + 1 - 1 + 65);
            }
            §§push(§§pop().charCodeAt(§§pop()));
            §§push(String(_loc7_[_loc9_ % _loc7_.length]));
            §§push(0);
            if(_loc13_)
            {
               §§push((§§pop() + 43 + 111) * 42);
            }
            _loc10_ = §§pop() + §§pop().charCodeAt(§§pop());
            _loc11_ = _loc11_ + _loc4_[Math.floor(_loc10_ / _loc5_)];
            _loc11_ = _loc11_ + _loc4_[_loc10_ % _loc5_];
            _loc9_++;
         }
         return String(_loc11_) + String(computeHash(param1)) + String(_loc3_);
      }
      
      public static function decrypt(param1:String, param2:String) : String
      {
         §§push(0);
         if(_loc14_)
         {
            §§push((-(§§pop() - 1) + 1 - 1) * 86 * 37 - 40);
         }
         var _loc11_:uint = §§pop();
         §§push(0);
         if(_loc14_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         var _loc12_:uint = §§pop();
         var _loc3_:String = "";
         var _loc4_:Array = String("e7NjchMCEGgTpsx3mKXbVPiAqn8DLzWo_6.tvwJQ-R0OUrSak954fd2FYyuH~1lIBZ").split("");
         var _loc5_:uint = _loc4_.length;
         var _loc6_:Array = String(computeHash(param2)).split("");
         §§push();
         §§push(param1);
         §§push(_loc5_);
         §§push(2);
         if(_loc13_)
         {
            §§push(§§pop() + 1 + 7 + 113);
         }
         §§push(§§pop() * §§pop());
         §§push(64);
         if(_loc14_)
         {
            §§push(-(§§pop() + 1) + 1 + 112);
         }
         var _loc7_:Array = §§pop().String(§§pop().substr(§§pop() + §§pop())).split("");
         §§push();
         §§push(param1);
         §§push(0);
         if(_loc13_)
         {
            §§push(-(-§§pop() + 1) * 52 * 117);
         }
         §§push(_loc5_);
         §§push(2);
         if(_loc14_)
         {
            §§push(-(§§pop() + 2 + 119) + 1);
         }
         var _loc8_:Array = §§pop().String(§§pop().substr(§§pop(),§§pop() * §§pop())).split("");
         var _loc9_:Array = new Array();
         §§push(param1);
         §§push(_loc5_);
         §§push(2);
         if(_loc13_)
         {
            §§push(§§pop() * 87 + 32 + 41);
         }
         §§push(§§pop() * §§pop());
         §§push(64);
         if(_loc14_)
         {
            §§push(§§pop() - 31 - 17 + 113);
         }
         var _loc10_:String = §§pop().substr(§§pop(),§§pop());
         §§push(0);
         if(_loc14_)
         {
            §§push(§§pop() - 1 - 1 - 1 - 1 - 1 - 1);
         }
         _loc11_ = §§pop();
         while(true)
         {
            §§push(_loc11_);
            §§push(_loc5_);
            §§push(2);
            if(_loc14_)
            {
               §§push(--(§§pop() + 17));
            }
            if(§§pop() >= §§pop() * §§pop())
            {
               break;
            }
            _loc12_ = _loc4_.indexOf(_loc8_[_loc11_]) * _loc5_;
            §§push(_loc12_);
            §§push(_loc4_);
            §§push(_loc8_);
            §§push(_loc11_);
            §§push(1);
            if(_loc14_)
            {
               §§push(§§pop() + 1 - 58 - 4);
            }
            _loc12_ = §§pop() + §§pop().indexOf(§§pop()[§§pop() + §§pop()]);
            §§push(_loc12_);
            §§push();
            §§push(_loc6_);
            §§push(Math);
            §§push(_loc11_);
            §§push(2);
            if(_loc13_)
            {
               §§push(-§§pop() * 9 + 54 - 103 - 93);
            }
            §§push(§§pop().String(§§pop()[§§pop().floor(§§pop() / §§pop()) % _loc6_.length]));
            §§push(0);
            if(_loc13_)
            {
               §§push(-§§pop() * 90 - 33);
            }
            _loc12_ = §§pop() - §§pop().charCodeAt(§§pop());
            _loc9_.push(String.fromCharCode(_loc12_));
            §§push(_loc11_);
            §§push(2);
            if(_loc13_)
            {
               §§push(-(§§pop() - 94) - 97);
            }
            _loc11_ = §§pop() + §§pop();
         }
         §§push(0);
         if(_loc13_)
         {
            §§push(-§§pop() * 94 * 61 + 19 - 1 + 18 + 1);
         }
         _loc11_ = §§pop();
         while(_loc11_ < _loc7_.length)
         {
            _loc12_ = _loc4_.indexOf(_loc7_[_loc11_]) * _loc5_;
            §§push(_loc12_);
            §§push(_loc4_);
            §§push(_loc7_);
            §§push(_loc11_);
            §§push(1);
            if(_loc14_)
            {
               §§push(-(§§pop() + 1 + 3) * 44);
            }
            _loc12_ = §§pop() + §§pop().indexOf(§§pop()[§§pop() + §§pop()]);
            §§push(_loc12_);
            §§push();
            §§push(_loc9_);
            §§push(Math);
            §§push(_loc11_);
            §§push(2);
            if(_loc13_)
            {
               §§push((§§pop() + 61) * 111 * 55 + 1 + 53 + 60);
            }
            §§push(§§pop().String(§§pop()[§§pop().floor(§§pop() / §§pop()) % _loc5_]));
            §§push(0);
            if(_loc13_)
            {
               §§push(-(§§pop() - 58) - 1 - 1);
            }
            _loc12_ = §§pop() - §§pop().charCodeAt(§§pop());
            _loc3_ = _loc3_ + String.fromCharCode(_loc12_);
            §§push(_loc11_);
            §§push(2);
            if(_loc13_)
            {
               §§push((-§§pop() + 60) * 61 + 13);
            }
            _loc11_ = §§pop() + §§pop();
         }
         if(_loc10_ != computeHash(_loc3_))
         {
            return "Error";
         }
         return _loc3_;
      }
      
      private static function computeHash(param1:String) : String
      {
         var _loc2_:IHash = Crypto.getHash("sha256");
         var _loc3_:ByteArray = Hex.toArray(Hex.fromString(param1));
         var _loc4_:ByteArray = _loc2_.hash(_loc3_);
         if(_loc4_ == null)
         {
            return "";
         }
         return Hex.fromArray(_loc4_);
      }
   }
}
