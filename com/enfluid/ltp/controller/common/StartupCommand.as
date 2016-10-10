package com.enfluid.ltp.controller.common
{
   import com.photon.controller.PhotonComplexCommand;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane.FlatUIScrollBarTrack;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.DataModel;
   import flash.utils.setTimeout;
   import system.serializers.§eden:release§.debug;
   import system.Reflection;
   import system.serializers.eden.BuiltinSerializer;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.model.ViewModel;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   import io.calq.CalqClient;
   import com.enfluid.ltp.controller.services.Services;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
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
         var _loc1_:CalqClient = new CalqClient("def155c1e25fef66689cd192c68e1c34");
         Services.init();
         new SetUserEvent("UserEvent.StartApp").execute();
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
         addCommand(new ShowTipsCommand());
      }
      
      override protected function done(param1:String = "success") : void
      {
         §§push();
         §§push(this.doCallDone);
         §§push(1000);
         if(_loc2_)
         {
            §§push(-(§§pop() * 47 + 1) - 112);
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
