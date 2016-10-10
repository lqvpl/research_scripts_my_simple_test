package com.enfluid.ltp.controller.keywordresearch.domainavailability
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import system.serializers.§eden:release§.debug;
   import system.serializers.eden.config;
   import system.Strings;
   import system.serializers.eden.strings;
   import system.Reflection;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.godaddy.Fetch500GoDaddyDomains;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.domize.CheckDomizeLoadedAndConnected;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.domize.SetDomizeOptionsCommand;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.domize.SubmitAndScrapeDomizeCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import hr.binaria.asx3m.mapper.IMapper;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import com.enfluid.ltp.view.skins.ToggleSwitchSkin;
   import com.photon.controller.PhotonCommandCompletionEvent;
   import com.photon.controller.PhotonCommand;
   import spark.components.Button;
   import mx.binding.BindingManager;
   
   public final class SetupCheckDomainsCommand extends PhotonComplexCommand implements IPhotonCommand
   {
      
      public static const ONE_DAY:Number = 8.64E7;
       
      
      protected var goDaddyDomainsToCheck:Array;
      
      private const NUM_CHECKS_PER_GROUP_DOMIZE:int = 1000;
      
      private const NUM_CHECKS_PER_GROUP_GODADDY:int = 480;
      
      private var exactExtensions:DomainExtensionOptions;
      
      private var goDaddyChecksCount:int = 0;
      
      private var hyphenatedExtensions:DomainExtensionOptions;
      
      private var model:DataModel;
      
      private var viewModel:ViewModel;
      
      private var project:ProjectVO;
      
      private var domizeMap:Object;
      
      private var domizeExtensionsStrings:Array;
      
      public function SetupCheckDomainsCommand()
      {
         this.goDaddyDomainsToCheck = [];
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
         if(_loc13_)
         {
            §§push((§§pop() + 1) * 58 + 91 + 1 - 6 - 1);
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(_loc13_)
         {
            §§push((§§pop() * 55 + 43 + 1) * 102);
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc14_)
         {
            §§push(-(§§pop() - 1) - 1);
         }
         var _loc8_:* = §§pop();
         §§push(0);
         if(_loc14_)
         {
            §§push(§§pop() - 1 - 1 - 1);
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
            §§push(-((§§pop() * 115 + 88) * 62 * 64) - 9 - 23);
         }
         var _loc1_:* = §§pop();
         this.exactExtensions = this.project.domainsExactMatchExtensions;
         this.hyphenatedExtensions = this.project.domainsHyphenatedExtensions;
         §§push(0);
         if(_loc14_)
         {
            §§push(-(§§pop() + 1 + 1) + 1);
         }
         for each(_loc2_ in this.model.selectedKeywordCollection)
         {
            _loc2_.domainsExact.isHyphenated = false;
            _loc2_.domainsHyphenated.isHyphenated = true;
            this.processDomainsVO(_loc2_.domainsExact);
            this.processDomainsVO(_loc2_.domainsHyphenated);
            if(this.goDaddyChecksCount >= 480 && §§pop() > §§pop())
            {
               addCommand(new Fetch500GoDaddyDomains(this.goDaddyDomainsToCheck),this.onCommandDone);
               _loc1_++;
               this.goDaddyDomainsToCheck = [];
               §§push(this);
               §§push(0);
               if(_loc14_)
               {
                  §§push((§§pop() - 35 + 46 - 1 - 1 - 35) * 74);
               }
               §§pop().goDaddyChecksCount = §§pop();
            }
         }
         §§push(this.goDaddyDomainsToCheck.length);
         §§push(0);
         if(_loc14_)
         {
            §§push((§§pop() - 1 - 18 - 1 - 61 - 1 + 35) * 67);
         }
         if(§§pop() > §§pop())
         {
            addCommand(new Fetch500GoDaddyDomains(this.goDaddyDomainsToCheck),this.onCommandDone);
            _loc1_++;
         }
         §§push(this.domizeExtensionsStrings.length);
         §§push(0);
         if(_loc13_)
         {
            §§push(--(§§pop() + 1 + 1 + 112 + 1) + 1);
         }
         if(§§pop() > §§pop())
         {
            addCommand(new CheckDomizeLoadedAndConnected());
         }
         §§push(0);
         if(_loc14_)
         {
            §§push((-(§§pop() * 88 - 7) + 69) * 30 + 83);
         }
         for each(_loc3_ in this.domizeExtensionsStrings)
         {
            _loc4_ = this.domizeMap[_loc3_];
            _loc5_ = _loc3_.split(",");
            _loc6_ = int(_loc5_.length * _loc4_.length);
            _loc7_ = int(_loc6_ / 1000);
            _loc8_ = int(Math.ceil(_loc4_.length / _loc7_));
            addCommand(new SetDomizeOptionsCommand(_loc5_));
            §§push(0);
            if(_loc13_)
            {
               §§push(--(-(§§pop() + 1) * 115 + 1));
            }
            _loc9_ = §§pop();
            while(_loc9_ < _loc7_)
            {
               §§push(_loc4_);
               §§push(0);
               if(_loc14_)
               {
                  §§push(§§pop() - 90 - 60 + 1);
               }
               _loc10_ = §§pop().splice(§§pop(),_loc8_);
               addCommand(new SubmitAndScrapeDomizeCommand(_loc10_),this.onCommandDone);
               _loc1_++;
               _loc9_++;
            }
         }
         this.viewModel.domainCommandsToComplete = _loc1_;
         §§push(this.viewModel);
         §§push(0);
         if(_loc13_)
         {
            §§push((§§pop() + 1) * 66 - 1 + 1);
         }
         §§pop().domainCommandsCompleted = §§pop();
         ProgressBarUtil.startProgressBarStep("Fetching Domain Availability",commandList.length);
         super.execute();
      }
      
      private final function processDomainsVO(param1:DomainsVO) : void
      {
         var _loc2_:DomainExtensionOptions = !!param1.isHyphenated?this.hyphenatedExtensions:this.exactExtensions;
         var _loc3_:Array = param1.getMissingDataExtentions(_loc2_.selectedGoDaddyExtensions);
         var _loc4_:Array = param1.getMissingDataExtentions(_loc2_.selectedDomizeExtensions);
         §§push(_loc3_.length);
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1 - 12) * 47);
         }
         if(§§pop() > §§pop())
         {
            this.goDaddyChecksCount = this.goDaddyChecksCount + _loc3_.length;
            this.goDaddyDomainsToCheck.push(param1);
         }
         §§push(_loc4_.length);
         §§push(0);
         if(_loc6_)
         {
            §§push(--§§pop() + 103 + 77);
         }
         if(§§pop() > §§pop())
         {
            this.addToCorrectDomizeGroup(_loc4_,param1);
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
         if(param1.target is Fetch500GoDaddyDomains || param1.target is SubmitAndScrapeDomizeCommand)
         {
            this.viewModel.domainCommandsCompleted++;
         }
         if(param1.status == PhotonCommand.FAILURE)
         {
            while(true)
            {
               §§push(commandList);
               §§push(0);
               if(_loc5_)
               {
                  §§push(-(§§pop() + 93) * 19 + 1 + 19 - 39 - 44);
               }
               if(!(§§pop()[§§pop()] && §§pop()[§§pop()] is Fetch500GoDaddyDomains))
               {
                  break;
               }
               commandList.shift();
            }
         }
      }
   }
}
