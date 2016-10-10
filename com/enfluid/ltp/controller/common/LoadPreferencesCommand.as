package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.PreferencesVO;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.filesystem.File;
   import com.enfluid.ltp.util.FileSystemOperations;
   import hr.binaria.asx3m.Asx3mer;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import spark.primitives.Rect;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.net.URLRequest;
   import flash.events.Event;
   import com.enfluid.ltp.model.constants.Countries;
   import system.data.collections.ArrayCollection;
   import com.enfluid.ltp.model.constants.Languages;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisHeaderComponent;
   import mx.binding.BindingManager;
   
   public final class LoadPreferencesCommand extends Command implements IPhotonCommand
   {
       
      
      public function LoadPreferencesCommand()
      {
         super();
         model.loadPreferencesCommamd = this;
      }
      
      public function execute() : void
      {
         var prefsXML:XML = null;
         var prefsVO:PreferencesVO = null;
         try
         {
            if(File.applicationStorageDirectory.resolvePath("preferences.xml").exists)
            {
               prefsXML = FileSystemOperations.instance.readXML("preferences.xml",File.applicationStorageDirectory);
               prefsVO = Asx3mer.instance.fromXML(prefsXML) as PreferencesVO;
               model.preferences = prefsVO;
               if(prefsXML.selectedCampaignID is int && §§pop() != §§pop())
               {
                  prefsVO.selectedProjectID = prefsXML.selectedCampaignID;
                  new SavePreferencesCommand().execute();
               }
            }
            else
            {
               model.preferences = new PreferencesVO();
            }
         }
         catch(err:Error)
         {
            model.preferences = new PreferencesVO();
         }
         viewModel.showEULAPopup = !model.preferences.eulaAccepted;
         this.selectCountry();
         this.selectRankTrackerCountry();
         this.selectLanguage();
         if(model.preferences.eulaAccepted)
         {
            done();
         }
      }
      
      public final function setComplete() : void
      {
         done();
      }
      
      public final function selectCountry() : void
      {
         if(!model.preferences.selectedCountryCode)
         {
            model.selectedCountry = Countries.UNITED_STATES;
            model.preferences.selectedCountryCode = Countries.UNITED_STATES.code;
            new SavePreferencesCommand().execute();
         }
         else
         {
            model.selectedCountry = Countries.findCountryByCode(model.preferences.selectedCountryCode);
         }
      }
      
      public final function selectLanguage() : void
      {
         if(!model.preferences.selectedLanguageCode)
         {
            model.selectedLanguage = Languages.ENGLISH;
            model.preferences.selectedLanguageCode = Languages.ENGLISH.code;
            new SavePreferencesCommand().execute();
         }
         else
         {
            model.selectedLanguage = Languages.findLanguageByCode(model.preferences.selectedLanguageCode);
         }
      }
      
      public final function selectRankTrackerCountry() : void
      {
         if(!model.preferences.selectedCountryCodeRankTracker)
         {
            model.preferences.selectedCountryCodeRankTracker = "us";
         }
      }
   }
}
