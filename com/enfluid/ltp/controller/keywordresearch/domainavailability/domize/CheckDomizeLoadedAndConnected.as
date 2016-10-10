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
         viewModel.domizeHTML.location = "";
         exactExtensions = model.selectedKeywordCollection.project.domainsExactMatchExtensions;
         hyphenatedExtensions = model.selectedKeywordCollection.project.domainsHyphenatedExtensions;
         §§push();
         §§push(this.setDomizeUrl);
         §§push(500);
         if(_loc1_)
         {
            §§push(-(-(§§pop() * 57) + 1 + 35));
         }
         §§pop().callDelayed(§§pop(),§§pop());
      }
      
      private final function onComplete(param1:Event) : void
      {
         viewModel.domizeHTML.removeEventListener(Event.COMPLETE,this.onComplete);
         scraper.htmlLoader = viewModel.domizeHTML.htmlLoader;
         callDelayed(this.waitUntilDoneConnecting);
      }
      
      private final function setDomizeUrl() : void
      {
         viewModel.domizeHTML.location = Constants.DOMIZE_URL;
         viewModel.domizeHTML.addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      private final function waitUntilDoneConnecting() : void
      {
         if(scraper.hasInnerText(scraper.body,"CONNECTING"))
         {
            §§push();
            §§push(this.waitUntilDoneConnecting);
            §§push(250);
            if(_loc1_)
            {
               §§push(---(§§pop() + 1 - 1) - 23);
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
