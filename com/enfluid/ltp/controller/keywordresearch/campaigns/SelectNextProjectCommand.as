package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.SearchNetworks;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.rpc.http.HTTPService;
   import mx.graphics.GradientEntry;
   
   public final class SelectNextProjectCommand extends Command implements IPhotonCommand
   {
       
      
      private var lastProjectIndex:int;
      
      public function SelectNextProjectCommand(param1:int)
      {
         super();
         this.lastProjectIndex = param1;
      }
      
      public function execute() : void
      {
         var _loc2_:ProjectVO = null;
         §§push(-1);
         if(_loc3_)
         {
            §§push((-§§pop() - 31 + 1 + 1) * 58 + 91 + 1);
         }
         var _loc1_:* = §§pop();
         if(model.projects.length > this.lastProjectIndex)
         {
            _loc1_ = int(this.lastProjectIndex);
         }
         else if(model.projects.length == this.lastProjectIndex)
         {
            _loc1_ = int(this.lastProjectIndex - 1);
         }
         else
         {
            §§push(model.projects.length);
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() - 1 - 1 + 41 - 0);
            }
            if(§§pop() > §§pop())
            {
               _loc1_ = int(model.projects.length - 1);
            }
         }
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 102) - 1 - 1));
         }
         if(§§pop() > §§pop() && _loc1_ < model.projects.length)
         {
            _loc2_ = model.projects.getItemAt(_loc1_) as ProjectVO;
            new SelectProjectCommand(_loc2_).execute();
         }
         done();
      }
   }
}
