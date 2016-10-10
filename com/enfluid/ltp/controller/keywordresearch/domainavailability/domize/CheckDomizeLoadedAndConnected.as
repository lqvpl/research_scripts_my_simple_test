package com.enfluid.ltp.controller.keywordresearch.domainavailability.domize
{
   import com.photon.controller.IPhotonCommand;
   import flash.events.Event;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.setTimeout;
   
   public final class CheckDomizeLoadedAndConnected extends DomizeCommand implements IPhotonCommand
   {
       
      
      public function CheckDomizeLoadedAndConnected()
      {
         super();
      }
      
      public function execute() : void
      {
         viewModel.goDaddyHTML.location = "";
         exactExtensions = model.selectedKeywordCollection.project.domainsExactMatchExtensions;
         hyphenatedExtensions = model.selectedKeywordCollection.project.domainsHyphenatedExtensions;
         §§push();
         §§push(this.setDomizeUrl);
         §§push(500);
         if(_loc1_)
         {
            §§push(§§pop() + 1 + 64 - 1 + 1 - 43 - 43);
         }
         §§pop().callDelayed(§§pop(),§§pop());
      }
      
      private final function onComplete(param1:Event) : void
      {
         viewModel.goDaddyHTML.removeEventListener(Event.COMPLETE,this.onComplete);
         scraper.htmlLoader = viewModel.goDaddyHTML.htmlLoader;
         callDelayed(this.waitUntilDoneConnecting);
      }
      
      private final function setDomizeUrl() : void
      {
         viewModel.goDaddyHTML.location = Constants.DOMIZE_URL;
         viewModel.goDaddyHTML.addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      private final function waitUntilDoneConnecting() : void
      {
         if(scraper.hasInnerText(scraper.body,"CONNECTING"))
         {
            §§push();
            §§push(this.waitUntilDoneConnecting);
            §§push(250);
            if(_loc2_)
            {
               §§push(§§pop() * 31 - 1 + 93 - 70 - 72 - 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         else
         {
            done();
         }
      }
   }
}
