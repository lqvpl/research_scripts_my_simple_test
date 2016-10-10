package com.enfluid.ltp.controller.keywordresearch.domainavailability.domize
{
   import com.enfluid.ltp.controller.common.Command;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.util.Scraper;
   import flash.utils.setTimeout;
   
   public class DomizeCommand extends Command
   {
      
      protected static var exactExtensions:DomainExtensionOptions;
      
      protected static var hyphenatedExtensions:DomainExtensionOptions;
      
      protected static var scraper:Scraper = new Scraper();
       
      
      public function DomizeCommand()
      {
         super();
      }
      
      protected final function callDelayed(param1:Function, param2:int = 100) : void
      {
         setTimeout(param1,param2);
      }
   }
}
