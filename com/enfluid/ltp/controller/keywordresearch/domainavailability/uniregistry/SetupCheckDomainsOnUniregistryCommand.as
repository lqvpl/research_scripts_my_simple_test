package com.enfluid.ltp.controller.keywordresearch.domainavailability.uniregistry
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.photon.controller.PhotonCommandCompletionEvent;
   
   public final class SetupCheckDomainsOnUniregistryCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var project:ProjectVO;
      
      private var exactExtensions:DomainExtensionOptions;
      
      private var hyphenatedExtensions:DomainExtensionOptions;
      
      private var domainsToCheck:Array;
      
      private var model:DataModel;
      
      private var viewModel:ViewModel;
      
      private var domainGroups:Array;
      
      private const MAX_DOMAINS_PER_GROUP:int = 400;
      
      private var domainsVOMap:Object;
      
      public function SetupCheckDomainsOnUniregistryCommand()
      {
         this.domainsToCheck = [];
         this.model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         this.domainGroups = [];
         this.domainsVOMap = {};
         super();
      }
      
      override public function execute() : void
      {
         var _loc2_:KeywordVO = null;
         this.project = this.model.selectedKeywordCollection.project;
         if(!this.project.domainsEnabled)
         {
            done();
            return;
         }
         this.exactExtensions = this.project.domainsExactMatchExtensions;
         this.hyphenatedExtensions = this.project.domainsHyphenatedExtensions;
         var _loc1_:int = this.calcNewDomainGroupLength();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 61 + 1 + 1 + 1));
         }
         for each(_loc2_ in this.model.selectedKeywordCollection)
         {
            _loc2_.domainsExact.isHyphenated = false;
            _loc2_.domainsHyphenated.isHyphenated = true;
            this.processDomainsVO(_loc2_.domainsExact);
            this.processDomainsVO(_loc2_.domainsHyphenated);
            if(this.domainsToCheck.length >= _loc1_)
            {
               addCommand(new CheckDomainsOnUniregistryCommand(this.domainsToCheck,this.domainsVOMap));
               this.domainsToCheck = [];
               this.domainsVOMap = {};
            }
         }
         §§push(this.domainsToCheck.length);
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() + 88 - 10) * 44 + 1 + 93 - 101);
         }
         if(§§pop() > §§pop())
         {
            addCommand(new CheckDomainsOnUniregistryCommand(this.domainsToCheck,this.domainsVOMap));
         }
         this.viewModel.domainCommandsToComplete = this.viewModel.domainCommandsToComplete + commandList.length;
         super.execute();
      }
      
      private final function processDomainsVO(param1:DomainsVO) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:DomainExtensionOptions = !!param1.isHyphenated?this.hyphenatedExtensions:this.exactExtensions;
         var _loc3_:Array = param1.getMissingDataExtentions(_loc2_.selectedUniregistryExtensions);
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() * 56 * 4 - 108 + 77 - 87 - 1 + 1);
         }
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = param1.domainWithoutExtension + "." + _loc4_;
            §§push(this.domainsToCheck.indexOf(_loc5_));
            §§push(-1);
            if(_loc9_)
            {
               §§push((§§pop() * 38 * 31 + 1 - 1 + 1) * 97 + 1);
            }
            if(§§pop() == §§pop())
            {
               this.domainsToCheck.push(_loc5_);
            }
         }
         §§push(_loc3_.length);
         §§push(0);
         if(_loc9_)
         {
            §§push(--§§pop() - 59 - 69);
         }
         if(§§pop() > §§pop())
         {
            if(!this.domainsVOMap[param1.domainWithoutExtension])
            {
               this.domainsVOMap[param1.domainWithoutExtension] = param1;
            }
            else
            {
               this.domainsVOMap[param1.domainWithoutExtension] = [this.domainsVOMap[param1.domainWithoutExtension],param1];
            }
         }
      }
      
      private final function calcNewDomainGroupLength() : int
      {
         §§push(400);
         §§push(2);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1 + 1));
         }
         §§push(§§pop() / §§pop());
         §§push(Math.random() * 400);
         §§push(2);
         if(_loc1_)
         {
            §§push(-§§pop() + 54 + 1 - 1 - 76);
         }
         return §§pop() + §§pop() / §§pop();
      }
      
      private final function onCommandDone(param1:PhotonCommandCompletionEvent) : void
      {
         if(param1.target is CheckDomainsOnUniregistryCommand)
         {
            this.viewModel.domainCommandsCompleted++;
         }
      }
   }
}
