package com.enfluid.ltp.controller.keywordresearch.domainavailability.domize
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.photon.controller.PhotonCommandCompletionEvent;
   
   public final class SetupCheckDomainsOnDomizeCommand extends PhotonComplexCommand implements IPhotonCommand
   {
      
      public static const ONE_DAY:Number = 8.64E7;
       
      
      private const NUM_CHECKS_PER_GROUP_DOMIZE:int = 500;
      
      private var exactExtensions:DomainExtensionOptions;
      
      private var hyphenatedExtensions:DomainExtensionOptions;
      
      private var model:DataModel;
      
      private var viewModel:ViewModel;
      
      private var project:ProjectVO;
      
      private var domizeMap:Object;
      
      private var domizeExtensionsStrings:Array;
      
      public function SetupCheckDomainsOnDomizeCommand()
      {
         this.model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         this.domizeMap = {};
         this.domizeExtensionsStrings = [];
         super();
      }
      
      override public function execute() : void
      {
         var _loc2_:KeywordVO = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         §§push(0);
         if(_loc14_)
         {
            §§push(-(§§pop() - 1 - 1) + 1 - 106);
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(_loc14_)
         {
            §§push(§§pop() * 10 * 117 + 1);
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc14_)
         {
            §§push(-(§§pop() + 32) + 1);
         }
         var _loc8_:* = §§pop();
         §§push(0);
         if(_loc13_)
         {
            §§push((§§pop() - 118 - 1) * 48 + 68);
         }
         var _loc9_:* = §§pop();
         var _loc10_:Array = null;
         this.project = this.model.selectedKeywordCollection.project;
         if(!this.project.domainsEnabled)
         {
            done();
            return;
         }
         §§push(0);
         if(_loc14_)
         {
            §§push(§§pop() + 109 + 1 + 1);
         }
         var _loc1_:* = §§pop();
         this.exactExtensions = this.project.domainsExactMatchExtensions;
         this.hyphenatedExtensions = this.project.domainsHyphenatedExtensions;
         §§push(0);
         if(_loc14_)
         {
            §§push(-(--(§§pop() - 1 + 52) + 33) + 1);
         }
         for each(_loc2_ in this.model.selectedKeywordCollection)
         {
            _loc2_.domainsExact.isHyphenated = false;
            _loc2_.domainsHyphenated.isHyphenated = true;
            this.processDomainsVO(_loc2_.domainsExact);
            this.processDomainsVO(_loc2_.domainsHyphenated);
         }
         §§push(this.domizeExtensionsStrings.length);
         §§push(0);
         if(_loc13_)
         {
            §§push((-(§§pop() - 73 + 7 + 1) - 75) * 71);
         }
         if(§§pop() > §§pop())
         {
            addCommand(new CheckDomizeLoadedAndConnected());
         }
         §§push(0);
         if(_loc13_)
         {
            §§push(-(§§pop() + 1 - 1 - 1 + 97));
         }
         for each(_loc3_ in this.domizeExtensionsStrings)
         {
            _loc4_ = this.domizeMap[_loc3_];
            _loc5_ = _loc3_.split(",");
            _loc6_ = int(_loc5_.length * _loc4_.length);
            _loc7_ = int(Math.ceil(_loc6_ / 500));
            _loc8_ = int(Math.ceil(_loc4_.length / _loc7_));
            addCommand(new SetDomizeOptionsCommand(_loc5_));
            §§push(0);
            if(_loc13_)
            {
               §§push((§§pop() + 1 - 1) * 22 + 1);
            }
            _loc9_ = §§pop();
            while(_loc9_ < _loc7_)
            {
               §§push(_loc4_);
               §§push(0);
               if(_loc13_)
               {
                  §§push(-((§§pop() - 1) * 9 - 1));
               }
               _loc10_ = §§pop().splice(§§pop(),_loc8_);
               addCommand(new SubmitAndScrapeDomizeCommand(_loc10_),this.onCommandDone);
               _loc1_++;
               _loc9_++;
            }
         }
         this.viewModel.domainCommandsToComplete = this.viewModel.domainCommandsToComplete + _loc1_;
         ProgressBarUtil.startProgressBarStep("Fetching Domain Availability",commandList.length);
         super.execute();
      }
      
      private final function processDomainsVO(param1:DomainsVO) : void
      {
         var _loc2_:DomainExtensionOptions = !!param1.isHyphenated?this.hyphenatedExtensions:this.exactExtensions;
         var _loc3_:Array = param1.getMissingDataExtentions(_loc2_.selectedDomizeExtensions);
         §§push(_loc3_.length);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 62 - 28) * 81);
         }
         if(§§pop() > §§pop())
         {
            this.addToCorrectDomizeGroup(_loc3_,param1);
         }
      }
      
      private final function addToCorrectDomizeGroup(param1:Array, param2:DomainsVO) : void
      {
         var _loc3_:String = param1.join(",");
         if(!this.domizeMap[_loc3_])
         {
            this.domizeMap[_loc3_] = [];
            this.domizeExtensionsStrings.push(_loc3_);
         }
         (this.domizeMap[_loc3_] as Array).push(param2);
      }
      
      private final function onCommandDone(param1:PhotonCommandCompletionEvent) : void
      {
         if(param1.target is SubmitAndScrapeDomizeCommand)
         {
            this.viewModel.domainCommandsCompleted++;
         }
      }
   }
}
