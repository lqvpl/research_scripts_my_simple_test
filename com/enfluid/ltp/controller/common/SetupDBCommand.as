package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import info.noirbizarre.airorm.ORM;
   import com.hurlant.math.BigInteger;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.vo.DefaultConfigVO;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.vo.AllFavoritesProjectVO;
   import com.enfluid.ltp.model.vo.AllTrashProjectVO;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import flash.utils.ByteArray;
   
   public final class SetupDBCommand extends Command implements IPhotonCommand
   {
       
      
      public function SetupDBCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         ORM.registerClass(ProjectVO);
         ORM.registerClass(DefaultConfigVO);
         ORM.registerClass(SeedKeywordVO);
         ORM.registerClass(KeywordVO);
         ORM.registerClass(CompetitorUrlVO);
         ORM.registerClass(AllFavoritesProjectVO);
         ORM.registerClass(AllTrashProjectVO);
         ORM.registerClass(ProxyVO);
         ORM.updateDB();
         done();
      }
   }
}
