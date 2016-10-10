package com.enfluid.ltp.controller.ranktracker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.SRTRequestDataVO;
   import com.enfluid.ltp.controller.services.Services;
   import mx.rpc.http.HTTPService;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import flash.filesystem.File;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.model.vo.RTKeyword;
   import com.enfluid.ltp.model.vo.RTRank;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Map;
   import system.data.Iterator;
   
   public final class SuspendSRTAccountCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      public function SuspendSRTAccountCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:SRTRequestDataVO = new SRTRequestDataVO(SRTRequestDataVO.SUSPEND_ACCOUNT);
         var _loc2_:HTTPService = Services.instance.srtService;
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
            §§push(§§pop() + 1 - 15 - 1);
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
            §§push(((-(§§pop() * 3) - 31) * 71 - 17) * 61);
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
            if(_loc7_)
            {
               §§push(((§§pop() * 76 + 1 - 1 + 1) * 49 + 100) * 63);
            }
            §§pop().srtLastDateChecked = §§pop();
            new SaveRegistrationStatusCommand().execute();
         }
         else
         {
            §§push();
            §§push(this.execute);
            §§push(30000);
            if(_loc6_)
            {
               §§push(§§pop() * 30 - 1 + 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
            Logger.log("was not success... retrying suspent SRT Account");
         }
      }
   }
}
