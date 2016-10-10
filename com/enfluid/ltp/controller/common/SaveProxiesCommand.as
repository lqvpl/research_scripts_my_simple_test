package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatHeaderRenderer;
   import mx.graphics.SolidColor;
   import flash.events.Event;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.util.Util;
   
   public final class SaveProxiesCommand extends Command implements IPhotonCommand
   {
       
      
      private var proxiesString:String;
      
      public function SaveProxiesCommand(param1:String)
      {
         this.proxiesString = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc3_:String = null;
         var _loc4_:ProxyVO = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc1_:String = this.proxiesString;
         var _loc2_:Array = _loc1_.split("\n");
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() - 1) * 78);
         }
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_)
            {
               _loc4_ = new ProxyVO();
               _loc5_ = _loc3_.split(",");
               §§push(_loc5_);
               §§push(0);
               if(_loc10_)
               {
                  §§push(--(--§§pop() - 68) - 1);
               }
               _loc6_ = §§pop()[§§pop()].split(":");
               §§push(_loc4_);
               §§push(_loc6_);
               §§push(0);
               if(_loc11_)
               {
                  §§push(-(§§pop() - 1) - 56 - 51);
               }
               §§pop().host = §§pop()[§§pop()];
               §§push(_loc4_);
               §§push(_loc6_);
               §§push(1);
               if(_loc11_)
               {
                  §§push(-(§§pop() + 1) * 89 + 1 + 1);
               }
               §§pop().port = §§pop()[§§pop()];
               §§push(_loc5_);
               §§push(1);
               if(_loc11_)
               {
                  §§push(-(§§pop() * 68 + 55 - 1) - 98 + 46);
               }
               if(§§pop()[§§pop()])
               {
                  §§push(_loc5_);
                  §§push(1);
                  if(_loc11_)
                  {
                     §§push(-((§§pop() - 1) * 86 * 50 - 35 + 34));
                  }
                  _loc7_ = §§pop()[§§pop()].split(":");
                  §§push(_loc7_);
                  §§push(0);
                  if(_loc11_)
                  {
                     §§push(--§§pop() + 1);
                  }
                  if(§§pop()[§§pop()] && §§pop()[§§pop()])
                  {
                     _loc4_.requiresAuth = true;
                  }
                  §§push(_loc4_);
                  §§push(_loc7_);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(-(§§pop() - 1 - 1 + 1) + 37);
                  }
                  §§pop().authUserName = §§pop()[§§pop()];
                  §§push(_loc4_);
                  §§push(_loc7_);
                  §§push(1);
                  if(_loc11_)
                  {
                     §§push(-(§§pop() + 13 + 105) + 1);
                  }
                  §§pop().authPassword = §§pop()[§§pop()];
               }
               if(Util.isValidIP(_loc4_.host))
               {
                  _loc4_.save();
               }
            }
         }
         done();
      }
   }
}
