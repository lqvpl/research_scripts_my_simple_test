package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import flash.filesystem.File;
   import flash.events.Event;
   import com.enfluid.ltp.util.CSVStringUtils;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.KeywordVO;
   
   public final class PurgeCorruptDataCommand extends Command implements IPhotonCommand
   {
       
      
      private var KEYWORD_DB_FILE:File;
      
      private var KEYWORD_DB_FILE_OLD:File;
      
      private var MAIN_DB_FILE:File;
      
      public function PurgeCorruptDataCommand()
      {
         this.KEYWORD_DB_FILE = File.applicationStorageDirectory.resolvePath("keywordResearch.db");
         this.KEYWORD_DB_FILE_OLD = File.applicationStorageDirectory.resolvePath("keywordResearch.db.old");
         this.MAIN_DB_FILE = File.applicationStorageDirectory.resolvePath("main.db");
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:ProjectVO = null;
         var _loc2_:SeedKeywordVO = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:ArrayCollection = null;
         var _loc5_:* = null;
         var _loc6_:KeywordVO = null;
         if(this.MAIN_DB_FILE.exists && this.KEYWORD_DB_FILE_OLD.exists)
         {
            _loc1_ = new ProjectVO();
            _loc2_ = new SeedKeywordVO();
            _loc3_ = new ArrayCollection(_loc1_.findBySQLWithoutParams("SELECT * FROM ProjectVOs;"));
            §§push(0);
            if(_loc10_)
            {
               §§push(-(-(§§pop() - 1 + 107) - 64 - 65) - 47);
            }
            for each(_loc1_ in _loc3_)
            {
               if(_loc1_.country.code == "zw")
               {
                  _loc5_ = "DELETE FROM KeywordVOs WHERE project_id = " + _loc1_.id + ";";
                  _loc6_ = new KeywordVO();
                  _loc6_.query(_loc5_);
                  _loc5_ = "DELETE FROM SeedKeywordVOs WHERE project_id = " + _loc1_.id + ";";
                  _loc2_.query(_loc5_);
                  _loc1_.deleteMe();
               }
            }
            _loc4_ = new ArrayCollection(_loc2_.findBySQLWithoutParams("SELECT * FROM SeedKeywordVOs;"));
            §§push(0);
            if(_loc9_)
            {
               §§push((§§pop() - 1) * 81 - 1 + 8 - 116 - 57 + 50);
            }
            for each(_loc2_ in _loc4_)
            {
               if(_loc2_.keyword == null)
               {
                  _loc2_.deleteMe();
               }
            }
            this.KEYWORD_DB_FILE_OLD.moveTo(this.KEYWORD_DB_FILE,true);
            viewModel.showReConvertingMessage = true;
         }
         done();
      }
   }
}
