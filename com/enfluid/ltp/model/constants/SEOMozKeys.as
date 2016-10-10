package com.enfluid.ltp.model.constants
{
   import flash.utils.Timer;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.SEOMozKey;
   import com.enfluid.ltp.util.Util;
   import flash.events.TimerEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import spark.components.Group;
   import spark.components.gridClasses.GridLayer;
   
   public final class SEOMozKeys
   {
      
      private static var initialized:Boolean = false;
      
      private static var userKeyCount:int = §§pop();
      
      private static var timer:Timer = new §§pop().Timer(§§pop());
      
      private static var model:DataModel = DataModel.instance;
      
      private static var keyIndex:int = §§pop();
      
      private static var keys:Array;
      
      private static var keyType:String;
      
      private static var fullVersionKeys:Array = [new SEOMozKey("mozscape-77b5181943","c11863e4b5120e96d9cccfd4335aa59d")];
      
      private static var trialKeys:Array = [new SEOMozKey("mozscape-77b5181943","c11863e4b5120e96d9cccfd4335aa59d")];
      
      {
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 79 + 119 - 1) * 98 * 28);
         }
         §§push();
         §§push();
         §§push(30000);
         if(_loc2_)
         {
            §§push(-(§§pop() - 25 + 56 + 1));
         }
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 61 - 94 + 119 + 1);
         }
      }
      
      public function SEOMozKeys()
      {
         super();
      }
      
      public static function getNextKey(param1:Boolean = false) : SEOMozKey
      {
         var _loc2_:SEOMozKey = null;
         if(!initialized)
         {
            fullVersionKeys.sort(Util.randomSort);
            trialKeys.sort(Util.randomSort);
            timer.addEventListener(TimerEvent.TIMER,onTimer);
            timer.start();
            keys = !!model.isTrial?trialKeys:fullVersionKeys;
            keyType = !!model.isTrial?"Trial Keys":"Full Keys";
            initialized = true;
         }
         if(param1 || model.isTrial || §§pop() >= §§pop())
         {
            _loc2_ = keys[keyIndex];
            keyIndex++;
            new SetUserEvent("UserEvent.MozKeyUsed",{
               "UsedKey":"Internal Key",
               "KeyType":keyType,
               "Key":_loc2_.accessID + ":" + _loc2_.secretKey
            }).execute();
            if(keyIndex >= keys.length)
            {
               §§push();
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() - 7 - 1 + 1 + 1);
               }
               §§pop().keyIndex = §§pop();
            }
         }
         else
         {
            new SetUserEvent("UserEvent.MozKeyUsed",{
               "UsedKey":"User Key",
               "Key":model.preferences.userSeoMozAccessId + ":" + model.preferences.userSeoMozSecretKey
            }).execute();
            _loc2_ = new SEOMozKey(model.preferences.userSeoMozAccessId,model.preferences.userSeoMozSecretKey);
            userKeyCount++;
         }
         return _loc2_;
      }
      
      private static function onTimer(param1:TimerEvent) : void
      {
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push((--(§§pop() - 5 - 49 + 1) + 46) * 77);
         }
         §§pop().userKeyCount = §§pop();
      }
   }
}
