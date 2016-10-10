package com.enfluid.ltp.controller.common
{
   import com.photon.controller.PhotonComplexCommand;
   import com.enfluid.ltp.model.DataModel;
   import flash.utils.setTimeout;
   import mx.binding.Binding;
   import hr.binaria.asx3m.mapper.IMapper;
   import com.enfluid.ltp.model.ViewModel;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.controller.services.Services;
   import com.enfluid.ltp.controller.licensing.DetermineVersionCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.LoadProjectsCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SelectRecentProjectCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.LoadDefaultConfig;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.LoadAllFavoritesAndTrashCommand;
   import com.enfluid.ltp.controller.rankchecker.LoadRanksCommand;
   
   public final class StartupCommand extends PhotonComplexCommand
   {
       
      
      private var model:DataModel;
      
      public function StartupCommand()
      {
         this.model = DataModel.instance;
         super();
         Services.init();
         addCommand(new DetermineVersionCommand(),null,false);
         addCommand(new LoadPreferencesCommand());
         addCommand(new SetupDBCommand());
         addCommand(new PurgeCorruptDataCommand());
         addCommand(new ConvertDBToV3Command());
         addCommand(new LoadProjectsCommand());
         addCommand(new SelectRecentProjectCommand());
         addCommand(new LoadDefaultConfig());
         addCommand(new LoadGoogleCredentialsCommand());
         addCommand(new LoadProxiesCommand());
         addCommand(new LoadAllFavoritesAndTrashCommand());
         addCommand(new LoadRanksCommand());
         addCommand(new CheckForStartupMessageCommand());
      }
      
      override protected function done(param1:String = "success") : void
      {
         §§push();
         §§push(this.doCallDone);
         §§push(1000);
         if(_loc2_)
         {
            §§push(---(-(§§pop() - 1 + 76) + 1));
         }
         §§pop().setTimeout(§§pop(),§§pop(),param1);
      }
      
      private final function doCallDone(param1:String) : void
      {
         ViewModel.instance.appInitialized = true;
         super.done(param1);
      }
   }
}
