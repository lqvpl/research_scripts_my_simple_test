package com.hurlant.math
{
   import mx.collections.ArrayList;
   import hr.binaria.asx3m.mapper.IMapper;
   import com.enfluid.ltp.assets.AssetsLibrary_GREY_STAR;
   import com.enfluid.ltp.assets.AssetsLibrary_INACTIVE_STAR;
   import com.enfluid.ltp.assets.AssetsLibrary_LOGO;
   import com.enfluid.ltp.assets.AssetsLibrary_PLATINUM_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_PLATINUM_LOGO;
   import com.enfluid.ltp.assets.AssetsLibrary_SEO_MOZ;
   import com.enfluid.ltp.assets.AssetsLibrary_X_IMAGE;
   import com.enfluid.ltp.assets.AssetsLibrary_YELLOW_STAR;
   import com.enfluid.ltp.assets.AssetsLibrary_PROJECT_EDIT_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_DOMAIN_EDIT_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_TRASH_ICON_YELLOW;
   import com.enfluid.ltp.assets.AssetsLibrary_TRASH_GRAY_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_INFORMATION_ALERT_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_SELECT_COLUMNS_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_FILTER_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_FIND_MORE_KEYWORDS;
   import com.enfluid.ltp.assets.AssetsLibrary_SETTINGS;
   import com.enfluid.ltp.assets.AssetsLibrary_EXPORT;
   import com.enfluid.ltp.assets.AssetsLibrary_EXCLAMATION;
   import com.enfluid.ltp.assets.AssetsLibrary_PROJECT_SELECTED;
   import com.enfluid.ltp.assets.AssetsLibrary_CONTRACT_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_EXPAND_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_NOTE_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_NOTE_GREY_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_NOTE_RED_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_MAIN_APP_BACKGROUND_PATTERN;
   import com.enfluid.ltp.assets.AssetsLibrary_CHECKBOX_TICK;
   import com.enfluid.ltp.assets.AssetsLibrary_CONTAINER_DISPLAY_SLIDE_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_RANK_EXPORT_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_RANK_SETTINGS_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_QUESTION_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_HAND_CURSOR_ICON;
   import com.enfluid.ltp.assets.AssetsLibrary_LOCK;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import mx.graphics.SolidColorStroke;
   
   use namespace bi_internal;
   
   final class BarrettReduction implements IReduction
   {
       
      
      private var r2:com.hurlant.math.BigInteger;
      
      private var q3:com.hurlant.math.BigInteger;
      
      private var mu:com.hurlant.math.BigInteger;
      
      private var m:com.hurlant.math.BigInteger;
      
      function BarrettReduction(param1:com.hurlant.math.BigInteger)
      {
         super();
         r2 = new com.hurlant.math.BigInteger();
         q3 = new com.hurlant.math.BigInteger();
         §§push(com.hurlant.math.BigInteger.ONE);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1) * 54 - 73 + 106);
         }
         §§pop().dlShiftTo(§§pop() * param1.t,r2);
         mu = r2.divide(param1);
         this.m = param1;
      }
      
      public function revert(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         return param1;
      }
      
      public function sqrTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger) : void
      {
         param1.squareTo(param2);
         reduce(param2);
      }
      
      public function convert(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = null;
         §§push(param1.s);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1 + 98);
         }
         if(§§pop() < §§pop() || §§pop() > §§pop() * m.t)
         {
            return param1.mod(m);
         }
         §§push(param1.compareTo(m));
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 18 + 21 + 1);
         }
         if(§§pop() < §§pop())
         {
            return param1;
         }
         _loc2_ = new com.hurlant.math.BigInteger();
         param1.copyTo(_loc2_);
         reduce(_loc2_);
         return _loc2_;
      }
      
      public function reduce(param1:com.hurlant.math.BigInteger) : void
      {
         var _loc2_:com.hurlant.math.BigInteger = param1 as com.hurlant.math.BigInteger;
         _loc2_.drShiftTo(m.t - 1,r2);
         §§push(_loc2_.t);
         §§push(m.t);
         §§push(1);
         if(_loc3_)
         {
            §§push((-(§§pop() + 95) + 98) * 90 + 88 - 1 - 1);
         }
         if(§§pop() > §§pop() + §§pop())
         {
            §§push(_loc2_);
            §§push(m.t);
            §§push(1);
            if(_loc3_)
            {
               §§push((§§pop() - 1) * 107 - 1 - 40 - 89 + 1 + 1);
            }
            §§pop().t = §§pop() + §§pop();
            _loc2_.clamp();
         }
         §§push(mu);
         §§push(r2);
         §§push(m.t);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) * 27 * 96 + 1 - 56));
         }
         §§pop().multiplyUpperTo(§§pop(),§§pop() + §§pop(),q3);
         §§push(m);
         §§push(q3);
         §§push(m.t);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 29 + 92 - 1);
         }
         §§pop().multiplyLowerTo(§§pop(),§§pop() + §§pop(),r2);
         while(true)
         {
            §§push(_loc2_.compareTo(r2));
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() * 23 + 1 - 7 + 1);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push(-(-§§pop() * 47) - 105);
            }
            §§push(m.t);
            §§push(1);
            if(_loc4_)
            {
               §§push(§§pop() - 1 + 119 - 82);
            }
            §§pop().dAddOffset(§§pop(),§§pop() + §§pop());
         }
         _loc2_.subTo(r2,_loc2_);
         while(true)
         {
            §§push(_loc2_.compareTo(m));
            §§push(0);
            if(_loc3_)
            {
               §§push((§§pop() - 7 - 113 - 12) * 30 - 1);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            _loc2_.subTo(m,_loc2_);
         }
      }
      
      public function mulTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger, param3:com.hurlant.math.BigInteger) : void
      {
         param1.multiplyTo(param2,param3);
         reduce(param3);
      }
   }
}
