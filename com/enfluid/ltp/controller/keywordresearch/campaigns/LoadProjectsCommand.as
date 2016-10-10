package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.MissingDataButtonSkin;
   import mx.binding.BindingManager;
   import flash.utils.setTimeout;
   import flash.events.EventDispatcher;
   import mx.collections.ArrayCollection;
   import spark.components.TextArea;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.ViewModel;
   import com.hurlant.crypto.symmetric.ICipher;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.ECBMode;
   import com.hurlant.crypto.symmetric.BlowFishKey;
   import com.hurlant.util.Base64;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import flash.events.MouseEvent;
   
   use namespace bi_internal;
   
   public final class LoadProjectsCommand extends Command implements IPhotonCommand
   {
       
      
      public function LoadProjectsCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         §§push();
         §§push(this.doExecute);
         §§push(250);
         if(_loc1_)
         {
            §§push(-(§§pop() - 25 - 107 - 117 + 106 + 36) + 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function doExecute() : void
      {
         model.projects = new ArrayCollection();
         viewModel.isLoadingProjects = true;
         §§push();
         §§push(this.load);
         §§push(100);
         if(_loc1_)
         {
            §§push(--((§§pop() - 90) * 7) - 1 - 67);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function load() : void
      {
         var _loc3_:Object = null;
         var _loc1_:ProjectVO = new ProjectVO();
         var _loc2_:ArrayCollection = new ArrayCollection(_loc1_.findBySQLWithoutParams("SELECT * FROM ProjectVOs;"));
         model.projects = _loc2_;
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 36 + 16 + 108);
         }
         for each(_loc3_ in _loc2_)
         {
            model.projectTitle[_loc3_.id] = _loc3_.title;
         }
         §§push(_loc2_.length);
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 57) * 56 + 25);
         }
         if(§§pop() == §§pop())
         {
            §§push();
            §§push(this.showCreateProjectCallout);
            §§push(3000);
            if(_loc7_)
            {
               §§push((§§pop() + 111 + 0) * 36 + 31);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         viewModel.isLoadingProjects = false;
         done();
      }
      
      private final function showCreateProjectCallout() : void
      {
         ViewModel.instance.isProjectEditMode = false;
         ViewModel.instance.showCreateProjectCallout = true;
      }
   }
}
