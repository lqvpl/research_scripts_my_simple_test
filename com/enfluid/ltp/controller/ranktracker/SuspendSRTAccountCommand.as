package com.enfluid.ltp.controller.ranktracker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.SRTRequestDataVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.controller.services.Services;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import flash.filesystem.File;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.model.vo.RTKeyword;
   import com.enfluid.ltp.model.vo.RTRank;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   
   public final class SuspendSRTAccountCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      public function SuspendSRTAccountCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:SRTRequestDataVO = new SRTRequestDataVO(SRTRequestDataVO.SUSPEND_ACCOUNT);
         var _loc2_:HTTPService = new HTTPService();
         var _loc3_:String = JSON.stringify(_loc1_);
         var _loc4_:Object = {"data":_loc3_};
         Services.instance.srtService.send(_loc4_).addResponder(this);
      }
      
      public final function fault(param1:Object) : void
      {
         §§push();
         §§push(this.execute);
         §§push(30000);
         if(_loc2_)
         {
            §§push(§§pop() - 61 + 1 + 1 - 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
         Logger.log("fault... retrying suspent SRT Account");
      }
      
      public final function result(param1:Object) : void
      {
         var _loc2_:File = null;
         var _loc3_:RTDomain = null;
         var _loc4_:RTKeyword = null;
         var _loc5_:RTRank = null;
         §§push(param1.result.indexOf("success"));
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 110 - 1 + 1 - 1);
         }
         if(§§pop() >= §§pop())
         {
            Logger.log("SRT account suspended... deleteing domains, keywords, and ranks from keyword");
            _loc2_ = File.applicationStorageDirectory.resolvePath("main.db");
            if(_loc2_.exists)
            {
               _loc3_ = new RTDomain();
               _loc3_.deleteAll();
               _loc4_ = new RTKeyword();
               _loc4_.deleteAll();
               _loc5_ = new RTRank();
               _loc5_.deleteAll();
            }
            model.srtAccountCreated = false;
            §§push(model);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() * 57 + 22) * 101);
            }
            §§pop().srtLastDateChecked = §§pop();
            new SaveRegistrationStatusCommand().execute();
         }
         else
         {
            §§push();
            §§push(this.execute);
            §§push(30000);
            if(_loc7_)
            {
               §§push(§§pop() - 38 + 1 + 24);
            }
            §§pop().setTimeout(§§pop(),§§pop());
            Logger.log("was not success... retrying suspent SRT Account");
         }
      }
   }
}
