package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.controller.rankchecker.DeleteRankEntryCommand;
   import com.enfluid.ltp.controller.rankchecker.SaveRankItemsCommand;
   import com.enfluid.ltp.controller.rankchecker.ReadRanksXMLCommand;
   import flash.events.Event;
   import com.enfluid.ltp.util.CSVStringUtils;
   import com.enfluid.ltp.util.KeywordFetcherUtil;
   import com.photon.controller.PhotonCommand;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   
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
