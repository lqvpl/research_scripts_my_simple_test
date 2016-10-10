package com.enfluid.ltp.controller.keywordresearch.domainavailability.domize
{
   import com.photon.controller.IPhotonCommand;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.constants.DomainExtensions;
   
   public final class SetDomizeOptionsCommand extends DomizeCommand implements IPhotonCommand
   {
       
      
      private var extensions:Array;
      
      public function SetDomizeOptionsCommand(param1:Array)
      {
         this.extensions = param1;
         super();
      }
      
      public function execute() : void
      {
         §§push();
         §§push(this.openOptions);
         §§push(500);
         if(_loc1_)
         {
            §§push(-(§§pop() * 2) - 21);
         }
         §§pop().callDelayed(§§pop(),§§pop());
      }
      
      private final function openOptions() : void
      {
         var _loc1_:* = scraper.getElementById("soptions");
         scraper.click(_loc1_);
         §§push();
         §§push(this.setOptions);
         §§push(500);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 60 - 38);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function selectCheckBox(param1:String, param2:Boolean) : void
      {
         var _loc3_:* = scraper.getElementById(param1);
         if(param2 != _loc3_.checked)
         {
            scraper.click(_loc3_);
         }
      }
      
      private final function hasExtension(param1:String) : Boolean
      {
         §§push(this.extensions.indexOf(param1));
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 98 + 1 - 34);
         }
         return §§pop() >= §§pop();
      }
      
      private final function setOptions() : void
      {
         this.selectCheckBox("asyoutype",true);
         this.selectCheckBox("rgrsel",false);
         var _loc1_:* = scraper.getElementById("shownl");
         var _loc2_:Boolean = this.hasExtension(DomainExtensions.NL);
         this.selectCheckBox("showcomau",this.hasExtension(DomainExtensions.COM_AU));
         this.selectCheckBox("shownl",this.hasExtension(DomainExtensions.NL));
         this.selectCheckBox("showdk",this.hasExtension(DomainExtensions.DK));
         this.selectCheckBox("showcom",false);
         this.selectCheckBox("showca",false);
         this.selectCheckBox("showco",false);
         this.selectCheckBox("showinfo",false);
         this.selectCheckBox("shownet",false);
         this.selectCheckBox("showorg",false);
         this.selectCheckBox("showbiz",false);
         this.selectCheckBox("showus",false);
         this.selectCheckBox("showcouk",false);
         this.selectCheckBox("showmobi",false);
         this.selectCheckBox("showio",false);
         this.selectCheckBox("showde",false);
         this.selectCheckBox("showtv",false);
         this.selectCheckBox("showto",false);
         this.selectCheckBox("showit",false);
         this.selectCheckBox("showin",false);
         this.selectCheckBox("showla",false);
         this.selectCheckBox("showpro",false);
         this.selectCheckBox("showname",false);
         this.selectCheckBox("showtel",false);
         this.selectCheckBox("showasia",false);
         this.selectCheckBox("showtm",false);
         this.selectCheckBox("showws",false);
         this.selectCheckBox("showxxx",false);
         done();
      }
   }
}
