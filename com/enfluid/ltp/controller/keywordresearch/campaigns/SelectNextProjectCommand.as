package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import system.serializers.§eden:release§.debug;
   import system.serializers.eden.config;
   import system.Strings;
   import system.serializers.eden.strings;
   import mx.graphics.RadialGradient;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   
   use namespace mx_internal;
   
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
         if(_loc4_)
         {
            §§push(-(-(§§pop() - 116 + 7) + 1));
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
            if(_loc3_)
            {
               §§push(-(§§pop() - 1) + 105);
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
            §§push((--§§pop() - 116 - 0) * 71 - 1);
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
