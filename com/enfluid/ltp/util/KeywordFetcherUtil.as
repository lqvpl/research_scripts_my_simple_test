package com.enfluid.ltp.util
{
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.AllFavoritesProjectVO;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.AllTrashProjectVO;
   import com.enfluid.ltp.model.constants.Values;
   import mx.effects.Fade;
   import flash.utils.ByteArray;
   
   public final class KeywordFetcherUtil
   {
      
      public static var keywordIDMap:Object = {};
      
      private static var keyword:KeywordVO = new KeywordVO();
       
      
      public function KeywordFetcherUtil()
      {
         super();
      }
      
      public static function fetchKeywordsForProject(param1:ProjectVO, param2:Object) : KeywordArrayCollection
      {
         var _loc4_:KeywordVO = null;
         var _loc5_:SeedKeywordVO = null;
         var _loc3_:ArrayCollection = new ArrayCollection(keyword.findBySQLWithoutParams("SELECT * FROM KeywordVOs WHERE project_id = " + param1.id + ";"));
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 + 40 + 46 - 51 - 95);
         }
         for each(_loc4_ in _loc3_)
         {
            _loc4_ = useExistingKeyword(_loc4_,_loc3_);
            _loc4_.project = param1;
            _loc5_ = param2[_loc4_.seedKeywordID];
            if(_loc5_)
            {
               _loc4_.seedKeyword = _loc5_;
               _loc5_.keywords.addItem(_loc4_);
            }
            else
            {
               param1.ownKeywords.addItem(_loc4_);
            }
         }
         return new KeywordArrayCollection(param1,_loc3_.source);
      }
      
      public static function fetchAllFavoriteKeyowrds() : KeywordArrayCollection
      {
         var _loc2_:KeywordVO = null;
         var _loc3_:AllFavoritesProjectVO = null;
         var _loc1_:ArrayCollection = new ArrayCollection(keyword.findBySQLWithoutParams("SELECT * FROM KeywordVOs WHERE isFavorite = true;"));
         §§push(0);
         if(_loc7_)
         {
            §§push(-((-((§§pop() * 106 + 1) * 22) + 96) * 44));
         }
         for each(_loc2_ in _loc1_)
         {
            _loc2_ = useExistingKeyword(_loc2_,_loc1_);
         }
         _loc3_ = new AllFavoritesProjectVO();
         §§push(_loc3_);
         §§push(1);
         if(_loc6_)
         {
            §§push(§§pop() * 68 + 65 + 104);
         }
         _loc3_ = §§pop().find(§§pop()) as AllFavoritesProjectVO;
         if(!_loc3_)
         {
            _loc3_ = new AllFavoritesProjectVO();
            _loc3_.title = "All Favorites";
            _loc3_.save();
         }
         return new KeywordArrayCollection(_loc3_,_loc1_.source);
      }
      
      public static function fetchAllTrashKeywords() : KeywordArrayCollection
      {
         var _loc2_:KeywordVO = null;
         var _loc3_:AllTrashProjectVO = null;
         var _loc1_:ArrayCollection = new ArrayCollection(keyword.findBySQLWithoutParams("SELECT * FROM KeywordVOs WHERE isInTrash = true;"));
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() * 76) + 66);
         }
         for each(_loc2_ in _loc1_)
         {
            _loc2_ = useExistingKeyword(_loc2_,_loc1_);
         }
         _loc3_ = new AllTrashProjectVO();
         §§push(_loc3_);
         §§push(1);
         if(_loc6_)
         {
            §§push(-(§§pop() - 1) + 118 + 1 - 1);
         }
         _loc3_ = §§pop().find(§§pop()) as AllTrashProjectVO;
         if(!_loc3_)
         {
            _loc3_ = new AllTrashProjectVO();
            _loc3_.title = "All Trash";
            _loc3_.save();
         }
         return new KeywordArrayCollection(_loc3_,_loc1_.source,true);
      }
      
      public static function resetAvgKC(param1:KeywordVO) : void
      {
         §§push(param1.avgKC);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(-(§§pop() - 1) * 14) - 83) * 44);
         }
         if(§§pop() < §§pop())
         {
            param1.avgKC = Values.NOT_FETCHED;
         }
         §§push(param1.amazonKC);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1) - 45 - 10 - 1);
         }
         if(§§pop() < §§pop())
         {
            param1.amazonKC = Values.NOT_FETCHED;
         }
      }
      
      public static function useExistingKeyword(param1:KeywordVO, param2:ArrayCollection) : KeywordVO
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 103 + 71 + 30);
         }
         var _loc4_:* = §§pop();
         var _loc3_:KeywordVO = keywordIDMap[param1.id];
         if(_loc3_)
         {
            _loc4_ = int(param2.getItemIndex(param1));
            param2.removeItemAt(_loc4_);
            param2.addItemAt(_loc3_,_loc4_);
            param1 = _loc3_;
         }
         else
         {
            keywordIDMap[param1.id] = param1;
            resetAvgKC(param1);
            param1.amazonKC = int(param1.amazonKC) || int(Values.NOT_FETCHED);
         }
         return param1;
      }
   }
}
