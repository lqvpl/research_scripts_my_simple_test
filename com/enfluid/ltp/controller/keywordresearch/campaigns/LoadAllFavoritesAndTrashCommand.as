package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.KeywordFetcherUtil;
   import com.enfluid.ltp.util.Scraper;
   
   public final class LoadAllFavoritesAndTrashCommand extends Command implements IPhotonCommand
   {
       
      
      public function LoadAllFavoritesAndTrashCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         model.allFavoriteKeywords = KeywordFetcherUtil.fetchAllFavoriteKeyowrds();
         model.allTrashKeywords = KeywordFetcherUtil.fetchAllTrashKeywords();
         done();
      }
      
      private final function load() : void
      {
      }
   }
}
