package com.hurlant.math
{
   import spark.components.Label;
   import mx.binding.BindingManager;
   import flash.errors.IllegalOperationError;
   import mx.controls.Spacer;
   import flash.utils.ByteArray;
   import mx.graphics.GradientEntry;
   import spark.components.Scroller;
   import spark.components.Image;
   import mx.effects.Sequence;
   import mx.graphics.SolidColor;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import spark.effects.Fade;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import mx.graphics.RadialGradient;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.CalculateButtonSkin;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   import flash.events.Event;
   import mx.states.State;
   import mx.states.SetProperty;
   import spark.components.HGroup;
   import mx.effects.Parallel;
   import spark.layouts.VerticalLayout;
   import system.data.Map;
   import system.data.iterators.ArrayIterator;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import mx.controls.HTML;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import com.hurlant.util.Hex;
   
   use namespace bi_internal;
   
   public final class BigInteger
   {
      
      public static const ONE:com.hurlant.math.BigInteger = §§pop().nbv(§§pop());
      
      public static const ZERO:com.hurlant.math.BigInteger = §§pop().nbv(§§pop());
      
      public static const DM:int = DV - 1;
      
      public static const F1:int = 22.0;
      
      public static const F2:int = 8.0;
      
      public static const lplim:int = (§§pop() << 26) / lowprimes[lowprimes.length - 1];
      
      public static const lowprimes:Array = null;
      
      public static const FV:Number = §§pop().pow(§§pop(),BI_FP);
      
      public static const BI_FP:int = 52;
      
      public static const DV:int = §§pop() << DB;
      
      public static const DB:int = 30;
      
      {
         §§push();
         §§push(1);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 117 + 44 + 1 + 1 + 99) * 52);
         }
         §§push();
         §§push(Math);
         §§push(2);
         if(_loc1_)
         {
            §§push(§§pop() - 47 - 1 + 58);
         }
         §§push();
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 5) * 43 - 1);
         }
         §§push();
         §§push();
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 107) - 92);
         }
         §§push();
         §§push(2);
         if(_loc1_)
         {
            §§push((-(§§pop() - 1 + 2 - 21) + 1) * 82);
         }
         §§push(3);
         §§push(5);
         if(_loc1_)
         {
            §§push(§§pop() - 90 + 13 - 96);
         }
         §§push(7);
         §§push(11);
         if(_loc1_)
         {
            §§push(-(--§§pop() + 1 - 1) * 89);
         }
         §§push(13);
         §§push(17);
         if(_loc1_)
         {
            §§push(§§pop() - 44 + 1 + 54);
         }
         §§push(19);
         §§push(23);
         if(_loc1_)
         {
            §§push(((§§pop() + 1) * 9 + 1) * 1 * 49 + 1 - 57);
         }
         §§push(29);
         §§push(31);
         if(_loc2_)
         {
            §§push(§§pop() * 52 - 1 + 1);
         }
         §§push(37);
         §§push(41);
         if(_loc2_)
         {
            §§push((§§pop() * 62 - 1) * 68);
         }
         §§push(43);
         §§push(47);
         if(_loc1_)
         {
            §§push(-((§§pop() + 104 - 1 - 112 - 104) * 1));
         }
         §§push(53);
         §§push(59);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1 - 1) - 15 - 1);
         }
         §§push(61);
         §§push(67);
         if(_loc1_)
         {
            §§push(§§pop() + 81 - 1 - 1 + 1);
         }
         §§push(71);
         §§push(73);
         if(_loc2_)
         {
            §§push(§§pop() * 117 - 87 - 1);
         }
         §§push(79);
         §§push(83);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 79) * 76 - 3 + 1 - 1);
         }
         §§push(89);
         §§push(97);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1 - 2 + 2) + 1);
         }
         §§push(101);
         §§push(103);
         if(_loc1_)
         {
            §§push(((-§§pop() - 28 + 79) * 90 + 1 + 1) * 16);
         }
         §§push(107);
         §§push(109);
         if(_loc2_)
         {
            §§push((-(§§pop() + 30 - 1) + 1 - 44) * 84);
         }
         §§push(113);
         §§push(127);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 0 - 97);
         }
         §§push(131);
         §§push(137);
         if(_loc1_)
         {
            §§push(--(-(§§pop() + 2 + 1 + 100) - 94));
         }
         §§push(139);
         §§push(149);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 - 81 - 1 - 1 + 1) * 50);
         }
         §§push(151);
         §§push(157);
         if(_loc2_)
         {
            §§push(-(§§pop() + 102 + 1));
         }
         §§push(163);
         §§push(167);
         if(_loc1_)
         {
            §§push(§§pop() * 80 + 1 + 111 - 1 + 39);
         }
         §§push(173);
         §§push(179);
         if(_loc1_)
         {
            §§push(-§§pop() - 1 - 21 + 53 - 115);
         }
         §§push(181);
         §§push(191);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1) * 66 + 1);
         }
         §§push(193);
         §§push(197);
         if(_loc1_)
         {
            §§push(§§pop() + 1 - 1 + 96 + 32 + 1);
         }
         §§push(199);
         §§push(211);
         if(_loc1_)
         {
            §§push(-((§§pop() + 1) * 28) + 32);
         }
         §§push(223);
         §§push(227);
         if(_loc1_)
         {
            §§push(-((§§pop() * 113 * 70 - 32) * 43 - 1));
         }
         §§push(229);
         §§push(233);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 1 + 1 + 1);
         }
         §§push(239);
         §§push(241);
         if(_loc2_)
         {
            §§push(-§§pop() - 3 - 1 - 66 - 59);
         }
         §§push(251);
         §§push(257);
         if(_loc1_)
         {
            §§push(§§pop() + 1 + 1 + 66 - 1 - 1 + 28);
         }
         §§push(263);
         §§push(269);
         if(_loc2_)
         {
            §§push(-§§pop() * 51 + 3 - 111 - 1);
         }
         §§push(271);
         §§push(277);
         if(_loc2_)
         {
            §§push(-(§§pop() + 24 + 1 + 1 - 12) * 60);
         }
         §§push(281);
         §§push(283);
         if(_loc2_)
         {
            §§push((§§pop() * 20 + 1 - 109 - 42) * 10 + 1);
         }
         §§push(293);
         §§push(307);
         if(_loc2_)
         {
            §§push(-((-(§§pop() * 7) - 100) * 110 * 3 - 1));
         }
         §§push(311);
         §§push(313);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 104);
         }
         §§push(317);
         §§push(331);
         if(_loc1_)
         {
            §§push(§§pop() - 38 - 8 - 1 - 1 - 1 - 1);
         }
         §§push(337);
         §§push(347);
         if(_loc1_)
         {
            §§push(--(§§pop() + 81));
         }
         §§push(349);
         §§push(353);
         if(_loc1_)
         {
            §§push((§§pop() + 82 - 1) * 91);
         }
         §§push(359);
         §§push(367);
         if(_loc1_)
         {
            §§push((§§pop() + 1 - 1) * 116 + 116 + 41 + 1);
         }
         §§push(373);
         §§push(379);
         if(_loc1_)
         {
            §§push(--(§§pop() - 93 - 1) - 62);
         }
         §§push(383);
         §§push(389);
         if(_loc1_)
         {
            §§push((§§pop() - 1 + 80) * 65 - 81 - 5 - 1);
         }
         §§push(397);
         §§push(401);
         if(_loc1_)
         {
            §§push((-§§pop() + 9) * 87);
         }
         §§push(409);
         §§push(419);
         if(_loc1_)
         {
            §§push(§§pop() * 113 - 1 - 101 - 54 - 65);
         }
         §§push(421);
         §§push(431);
         if(_loc2_)
         {
            §§push((-§§pop() - 1) * 28 - 1);
         }
         §§push(433);
         §§push(439);
         if(_loc1_)
         {
            §§push(§§pop() - 86 - 1 - 66);
         }
         §§push(443);
         §§push(449);
         if(_loc2_)
         {
            §§push(§§pop() * 83 - 49 - 42 + 1);
         }
         §§push(457);
         §§push(461);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1 + 13) + 93);
         }
         §§push(463);
         §§push(467);
         if(_loc2_)
         {
            §§push(-(§§pop() * 31) - 1 + 1);
         }
         §§push(479);
         §§push(487);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1 - 1 - 1) - 1) * 25 - 34);
         }
         §§push(491);
         §§push(499);
         if(_loc2_)
         {
            §§push(-(§§pop() + 98 + 1) - 1);
         }
         §§push(503);
         §§push(509);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 5 + 10));
         }
         §§push();
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1));
         }
      }
      
      bi_internal var a:Array;
      
      bi_internal var s:int;
      
      public var t:int;
      
      public function BigInteger(param1:* = null, param2:int = 0, param3:Boolean = false)
      {
         var _loc4_:ByteArray = null;
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() + 1 + 1) * 82 + 1);
         }
         var _loc5_:* = §§pop();
         super();
         a = new Array();
         if(param1 is String)
         {
            if(param2 && §§pop() != §§pop())
            {
               throw new Error("BigInteger construction with radix!=16 is not supported.");
            }
            param1 = Hex.toArray(param1);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() + 1 - 1) * 46 + 115);
            }
            param2 = §§pop();
         }
         if(param1 is ByteArray)
         {
            _loc4_ = param1 as ByteArray;
            _loc5_ = int(int(param2) || int(_loc4_.length - _loc4_.position));
            fromArray(_loc4_,_loc5_,param3);
         }
      }
      
      public static function nbv(param1:int) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         _loc2_.fromInt(param1);
         return _loc2_;
      }
      
      public final function clearBit(param1:int) : com.hurlant.math.BigInteger
      {
         return changeBit(param1,op_andnot);
      }
      
      private final function op_or(param1:int, param2:int) : int
      {
         return param1 | param2;
      }
      
      public final function negate() : com.hurlant.math.BigInteger
      {
         var _loc1_:com.hurlant.math.BigInteger = nbi();
         ZERO.subTo(this,_loc1_);
         return _loc1_;
      }
      
      public final function andNot(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         bitwiseTo(param1,op_andnot,_loc2_);
         return _loc2_;
      }
      
      public final function modPow(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         §§push(0);
         if(_loc19_)
         {
            §§push((--(§§pop() * 41 * 7) - 1) * 43);
         }
         var _loc4_:* = §§pop();
         var _loc6_:IReduction = null;
         §§push(0);
         if(_loc19_)
         {
            §§push((§§pop() - 1 - 1 - 5) * 50 - 57 - 1);
         }
         var _loc12_:* = §§pop();
         var _loc15_:com.hurlant.math.BigInteger = null;
         var _loc16_:com.hurlant.math.BigInteger = null;
         var _loc3_:int = param1.bitLength();
         §§push();
         §§push(1);
         if(_loc19_)
         {
            §§push(--(§§pop() + 1) + 1 - 1 + 58);
         }
         var _loc5_:com.hurlant.math.BigInteger = §§pop().nbv(§§pop());
         §§push(_loc3_);
         §§push(0);
         if(_loc19_)
         {
            §§push(--(§§pop() - 1));
         }
         if(§§pop() <= §§pop())
         {
            return _loc5_;
         }
         §§push(_loc3_);
         §§push(18);
         if(_loc19_)
         {
            §§push(-(-(§§pop() - 1 + 1) - 1 - 1));
         }
         if(§§pop() < §§pop())
         {
            §§push(1);
            if(_loc18_)
            {
               §§push(§§pop() + 1 + 1 + 1 + 78);
            }
            _loc4_ = §§pop();
         }
         else
         {
            §§push(_loc3_);
            §§push(48);
            if(_loc18_)
            {
               §§push((§§pop() - 1 + 102) * 33 - 66);
            }
            if(§§pop() < §§pop())
            {
               §§push(3);
               if(_loc18_)
               {
                  §§push((-(§§pop() - 28) + 73) * 8 - 16 + 40);
               }
               _loc4_ = §§pop();
            }
            else
            {
               §§push(_loc3_);
               §§push(144);
               if(_loc19_)
               {
                  §§push(§§pop() + 94 - 56 - 0);
               }
               if(§§pop() < §§pop())
               {
                  §§push(4);
                  if(_loc19_)
                  {
                     §§push(-(§§pop() - 1 - 71) - 32);
                  }
                  _loc4_ = §§pop();
               }
               else
               {
                  §§push(_loc3_);
                  §§push(768);
                  if(_loc19_)
                  {
                     §§push(-(--(§§pop() * 10) * 27 + 1 + 1));
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(5);
                     if(_loc18_)
                     {
                        §§push(--(-§§pop() - 113) + 1 - 1);
                     }
                     _loc4_ = §§pop();
                  }
                  else
                  {
                     §§push(6);
                     if(_loc18_)
                     {
                        §§push((-§§pop() - 36) * 13 - 1 - 1 - 1 - 1);
                     }
                     _loc4_ = §§pop();
                  }
               }
            }
         }
         §§push(_loc3_);
         §§push(8);
         if(_loc19_)
         {
            §§push(-§§pop() + 98 - 112 + 1);
         }
         if(§§pop() < §§pop())
         {
            _loc6_ = new ClassicReduction(param2);
         }
         else if(param2.isEven())
         {
            _loc6_ = new BarrettReduction(param2);
         }
         else
         {
            _loc6_ = new MontgomeryReduction(param2);
         }
         var _loc7_:Array = [];
         §§push(3);
         if(_loc19_)
         {
            §§push((§§pop() + 1 - 14 + 14) * 16);
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = _loc4_ - 1;
         §§push(1);
         if(_loc19_)
         {
            §§push(-(§§pop() + 1 - 1 - 30) - 31);
         }
         var _loc10_:int = §§pop() << _loc4_ - 1;
         §§push(_loc7_);
         §§push(1);
         if(_loc18_)
         {
            §§push(§§pop() * 7 + 117 - 42);
         }
         §§pop()[§§pop()] = _loc6_.convert(this);
         §§push(_loc4_);
         §§push(1);
         if(_loc19_)
         {
            §§push(-(§§pop() + 1 - 1) + 1 - 60 + 10 + 63);
         }
         if(§§pop() > §§pop())
         {
            _loc16_ = new com.hurlant.math.BigInteger();
            §§push(_loc6_);
            §§push(_loc7_);
            §§push(1);
            if(_loc18_)
            {
               §§push(((§§pop() * 3 - 68 - 8 - 1) * 16 - 1) * 98);
            }
            §§pop().sqrTo(§§pop()[§§pop()],_loc16_);
            while(_loc8_ <= _loc10_)
            {
               _loc7_[_loc8_] = new com.hurlant.math.BigInteger();
               §§push(_loc6_);
               §§push(_loc16_);
               §§push(_loc7_);
               §§push(_loc8_);
               §§push(2);
               if(_loc18_)
               {
                  §§push((§§pop() + 1 + 60 + 1) * 115 + 1 - 1 + 1);
               }
               §§pop().mulTo(§§pop(),§§pop()[§§pop() - §§pop()],_loc7_[_loc8_]);
               §§push(_loc8_);
               §§push(2);
               if(_loc19_)
               {
                  §§push(((§§pop() + 1 - 1) * 29 - 23 - 1) * 117 - 76);
               }
               _loc8_ = int(§§pop() + §§pop());
            }
         }
         var _loc11_:int = param1.t - 1;
         var _loc13_:Boolean = true;
         var _loc14_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         _loc3_ = nbits(param1.a[_loc11_]) - 1;
         while(true)
         {
            §§push(_loc11_);
            §§push(0);
            if(_loc19_)
            {
               §§push(-(§§pop() - 15) + 116 + 16 + 1 - 1 + 24);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            if(_loc3_ >= _loc9_)
            {
               _loc12_ = param1.a[_loc11_] >> _loc3_ - _loc9_ & _loc10_;
            }
            else
            {
               §§push(param1.a[_loc11_]);
               §§push(1);
               if(_loc18_)
               {
                  §§push(-(--§§pop() + 20) - 1);
               }
               §§push(_loc3_);
               §§push(1);
               if(_loc18_)
               {
                  §§push((-§§pop() * 22 - 78) * 28 - 67);
               }
               _loc12_ = (§§pop() & §§pop() << §§pop() + §§pop() - 1) << _loc9_ - _loc3_;
               §§push(_loc11_);
               §§push(0);
               if(_loc18_)
               {
                  §§push(-(-§§pop() - 103 + 30 + 6 - 1) - 24);
               }
               if(§§pop() > §§pop())
               {
                  _loc12_ = _loc12_ | param1.a[_loc11_ - 1] >> DB + _loc3_ - _loc9_;
               }
            }
            _loc8_ = int(_loc4_);
            while(true)
            {
               §§push(_loc12_);
               §§push(1);
               if(_loc19_)
               {
                  §§push(-§§pop() - 18 - 18 - 1 + 1 + 1);
               }
               §§push(§§pop() & §§pop());
               §§push(0);
               if(_loc19_)
               {
                  §§push(-(§§pop() - 41) + 106 - 1);
               }
               if(§§pop() != §§pop())
               {
                  break;
               }
               §§push(_loc12_);
               §§push(1);
               if(_loc18_)
               {
                  §§push(-(-(§§pop() * 33 + 1) + 82 + 1));
               }
               _loc12_ = §§pop() >> §§pop();
               _loc8_--;
            }
            §§push(_loc3_ = _loc3_ - _loc8_);
            §§push(0);
            if(_loc19_)
            {
               §§push(-(§§pop() - 4) + 61);
            }
            if(§§pop() < §§pop())
            {
               _loc3_ = _loc3_ + DB;
               _loc11_--;
            }
            if(_loc13_)
            {
               _loc7_[_loc12_].copyTo(_loc5_);
               _loc13_ = false;
            }
            else
            {
               while(true)
               {
                  §§push(_loc8_);
                  §§push(1);
                  if(_loc18_)
                  {
                     §§push(§§pop() + 46 - 105 + 1 - 79 + 1 - 36);
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  _loc6_.sqrTo(_loc5_,_loc14_);
                  _loc6_.sqrTo(_loc14_,_loc5_);
                  §§push(_loc8_);
                  §§push(2);
                  if(_loc18_)
                  {
                     §§push(--((§§pop() + 1) * 58) * 27 + 1);
                  }
                  _loc8_ = int(§§pop() - §§pop());
               }
               §§push(_loc8_);
               §§push(0);
               if(_loc18_)
               {
                  §§push((-(§§pop() - 60) + 4 + 89 - 114 + 1) * 0);
               }
               if(§§pop() > §§pop())
               {
                  _loc6_.sqrTo(_loc5_,_loc14_);
               }
               else
               {
                  _loc15_ = _loc5_;
                  _loc5_ = _loc14_;
                  _loc14_ = _loc15_;
               }
               _loc6_.mulTo(_loc14_,_loc7_[_loc12_],_loc5_);
            }
            while(true)
            {
               §§push(_loc11_);
               §§push(0);
               if(_loc18_)
               {
                  §§push((--(§§pop() + 104) - 16 + 1 - 1) * 58);
               }
               if(!(§§pop() >= §§pop() && §§pop() == §§pop()))
               {
                  break;
               }
               _loc6_.sqrTo(_loc5_,_loc14_);
               _loc15_ = _loc5_;
               _loc5_ = _loc14_;
               _loc14_ = _loc15_;
               §§push(--_loc3_);
               §§push(0);
               if(_loc19_)
               {
                  §§push((-§§pop() + 54 - 52 - 110 - 1) * 15);
               }
               if(§§pop() < §§pop())
               {
                  _loc3_ = DB - 1;
                  _loc11_--;
               }
            }
         }
         return _loc6_.revert(_loc5_);
      }
      
      public final function isProbablePrime(param1:int) : Boolean
      {
         §§push(0);
         if(_loc7_)
         {
            §§push((-(§§pop() + 31 - 1) - 78) * 13);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 56 - 17) * 95);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() - 1 - 1) - 1 - 1);
         }
         var _loc5_:* = §§pop();
         var _loc3_:com.hurlant.math.BigInteger = abs();
         §§push(_loc3_.t);
         §§push(1);
         if(_loc6_)
         {
            §§push((§§pop() * 21 - 1 - 1 + 109) * 3 - 117);
         }
         if(§§pop() == §§pop() && §§pop()[§§pop()] <= lowprimes[lowprimes.length - 1])
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() * 109 + 1));
            }
            _loc2_ = §§pop();
            while(_loc2_ < lowprimes.length)
            {
               §§push(_loc3_);
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() + 1 - 1 - 1 + 15);
               }
               if(§§pop()[§§pop()] == lowprimes[_loc2_])
               {
                  return true;
               }
               _loc2_++;
            }
            return false;
         }
         if(_loc3_.isEven())
         {
            return false;
         }
         §§push(1);
         if(_loc6_)
         {
            §§push(§§pop() + 88 + 1 - 1 - 1 - 12 - 46 - 1);
         }
         _loc2_ = §§pop();
         while(_loc2_ < lowprimes.length)
         {
            _loc4_ = int(lowprimes[_loc2_]);
            §§push(_loc2_);
            §§push(1);
            if(_loc7_)
            {
               §§push(§§pop() + 96 - 1 + 78);
            }
            _loc5_ = int(§§pop() + §§pop());
            while(_loc5_ < lowprimes.length && _loc4_ < lplim)
            {
               _loc4_ = int(_loc4_ * lowprimes[_loc5_++]);
            }
            _loc4_ = int(_loc3_.modInt(_loc4_));
            while(_loc2_ < _loc5_)
            {
               §§push(_loc4_ % lowprimes[_loc2_++]);
               §§push(0);
               if(_loc6_)
               {
                  §§push(-(§§pop() - 1 - 1 - 77 - 60));
               }
               if(§§pop() == §§pop())
               {
                  return false;
               }
            }
         }
         return _loc3_.millerRabin(param1);
      }
      
      public final function divide(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         divRemTo(param1,_loc2_,null);
         return _loc2_;
      }
      
      public final function mod(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = nbi();
         abs().divRemTo(param1,null,_loc2_);
         §§push(s);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 85 + 70 - 1);
         }
         if(§§pop() < §§pop() && §§pop() > §§pop())
         {
            param1.subTo(_loc2_,_loc2_);
         }
         return _loc2_;
      }
      
      protected final function addTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push((-(§§pop() - 1 - 87 - 9) - 1) * 22 - 60);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(§§pop() - 83) - 1) + 1 + 101);
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = Math.min(param1.t,t);
         while(_loc3_ < _loc5_)
         {
            _loc4_ = int(_loc4_ + (this.a[_loc3_] + param1.a[_loc3_]));
            param2.a[_loc3_++] = _loc4_ & DM;
            _loc4_ = _loc4_ >> DB;
         }
         if(param1.t < t)
         {
            _loc4_ = int(_loc4_ + param1.s);
            while(_loc3_ < t)
            {
               _loc4_ = int(_loc4_ + this.a[_loc3_]);
               param2.a[_loc3_++] = _loc4_ & DM;
               _loc4_ = _loc4_ >> DB;
            }
            _loc4_ = int(_loc4_ + s);
         }
         else
         {
            _loc4_ = int(_loc4_ + s);
            while(_loc3_ < param1.t)
            {
               _loc4_ = int(_loc4_ + param1.a[_loc3_]);
               param2.a[_loc3_++] = _loc4_ & DM;
               _loc4_ = _loc4_ >> DB;
            }
            _loc4_ = int(_loc4_ + param1.s);
         }
         §§push(param2);
         §§push(_loc4_);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() * 63 * 111 - 1 + 93 - 34) * 27);
         }
         if(§§pop() < §§pop())
         {
            §§push(-1);
            if(_loc7_)
            {
               §§push(§§pop() + 56 + 87 + 1 - 1 - 54 - 1 - 92);
            }
         }
         else
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(-§§pop() + 1 - 1);
            }
         }
         §§pop().s = §§pop();
         §§push(_loc4_);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(-§§pop() * 108) * 48 + 9) + 40);
         }
         if(§§pop() > §§pop())
         {
            param2.a[_loc3_++] = _loc4_;
         }
         else
         {
            §§push(_loc4_);
            §§push(-1);
            if(_loc8_)
            {
               §§push(-§§pop() + 57 + 1 - 26 + 117 + 1 + 83);
            }
            if(§§pop() < §§pop())
            {
               param2.a[_loc3_++] = DV + _loc4_;
            }
         }
         param2.t = _loc3_;
         param2.clamp();
      }
      
      protected final function bitwiseTo(param1:com.hurlant.math.BigInteger, param2:Function, param3:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(--§§pop() + 1 + 1);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 2 - 94 + 4) * 69);
         }
         var _loc5_:* = §§pop();
         var _loc6_:int = Math.min(param1.t,t);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 25 * 57 * 18 * 16 - 1);
         }
         _loc4_ = §§pop();
         while(_loc4_ < _loc6_)
         {
            param3.a[_loc4_] = param2(this.a[_loc4_],param1.a[_loc4_]);
            _loc4_++;
         }
         if(param1.t < t)
         {
            _loc5_ = param1.s & DM;
            _loc4_ = int(_loc6_);
            while(_loc4_ < t)
            {
               param3.a[_loc4_] = param2(this.a[_loc4_],_loc5_);
               _loc4_++;
            }
            param3.t = t;
         }
         else
         {
            _loc5_ = s & DM;
            _loc4_ = int(_loc6_);
            while(_loc4_ < param1.t)
            {
               param3.a[_loc4_] = param2(_loc5_,param1.a[_loc4_]);
               _loc4_++;
            }
            param3.t = param1.t;
         }
         param3.s = param2(s,param1.s);
         param3.clamp();
      }
      
      protected final function modInt(param1:int) : int
      {
         §§push(0);
         if(_loc6_)
         {
            §§push((-§§pop() + 1 + 1 + 13 + 32) * 51);
         }
         var _loc4_:* = §§pop();
         §§push(param1);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 46 - 82 + 1);
         }
         if(§§pop() <= §§pop())
         {
            §§push(0);
            if(_loc6_)
            {
               return -((-§§pop() + 96) * 23 - 23) - 1;
            }
         }
         var _loc2_:int = DV % param1;
         §§push(s);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() * 51) + 1);
         }
         if(§§pop() < §§pop())
         {
            §§push(int(param1 - 1));
         }
         else
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() * 77 * 115 - 1);
            }
         }
         var _loc3_:int = §§pop();
         §§push(t);
         §§push(0);
         if(_loc5_)
         {
            §§push(((§§pop() - 63) * 88 + 1) * 15);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc5_)
            {
               §§push(--(§§pop() - 43 - 1 + 100 - 1) * 104);
            }
            if(§§pop() == §§pop())
            {
               §§push(a);
               §§push(0);
               if(_loc5_)
               {
                  §§push(--(§§pop() - 1 - 90) + 47);
               }
               _loc3_ = §§pop()[§§pop()] % param1;
            }
            else
            {
               _loc4_ = int(t - 1);
               while(true)
               {
                  §§push(_loc4_);
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push((§§pop() - 1 - 97 - 1 + 39 + 61) * 94 + 31);
                  }
                  if(§§pop() < §§pop())
                  {
                     break;
                  }
                  _loc3_ = (_loc2_ * _loc3_ + a[_loc4_]) % param1;
                  _loc4_--;
               }
            }
         }
         return _loc3_;
      }
      
      protected final function chunkSize(param1:Number) : int
      {
         return Math.floor(Math.LN2 * DB / Math.log(param1));
      }
      
      public final function gcd(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc6_:com.hurlant.math.BigInteger = null;
         §§push(s);
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 1) + 1 + 1 + 70);
         }
         var _loc2_:com.hurlant.math.BigInteger = §§pop() < §§pop()?negate():clone();
         §§push(param1.s);
         §§push(0);
         if(_loc9_)
         {
            §§push(--((§§pop() + 1 + 36 - 1) * 94));
         }
         var _loc3_:com.hurlant.math.BigInteger = §§pop() < §§pop()?param1.negate():param1.clone();
         §§push(_loc2_.compareTo(_loc3_));
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() * 111 - 47 + 35 - 72 - 88));
         }
         if(§§pop() < §§pop())
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc3_;
            _loc3_ = _loc6_;
         }
         var _loc4_:int = _loc2_.getLowestSetBit();
         var _loc5_:int = _loc3_.getLowestSetBit();
         §§push(_loc5_);
         §§push(0);
         if(_loc9_)
         {
            §§push((-§§pop() - 1 - 82) * 110 - 65 - 74);
         }
         if(§§pop() < §§pop())
         {
            return _loc2_;
         }
         if(_loc4_ < _loc5_)
         {
            _loc5_ = _loc4_;
         }
         §§push(_loc5_);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 1 + 5 + 1) - 80 + 1);
         }
         if(§§pop() > §§pop())
         {
            _loc2_.rShiftTo(_loc5_,_loc2_);
            _loc3_.rShiftTo(_loc5_,_loc3_);
         }
         while(true)
         {
            §§push(_loc2_.sigNum());
            §§push(0);
            if(_loc8_)
            {
               §§push(((§§pop() + 1) * 52 + 70 - 7) * 58);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            §§push(_loc4_ = _loc2_.getLowestSetBit());
            §§push(0);
            if(_loc9_)
            {
               §§push(-((-§§pop() + 70) * 98) * 30);
            }
            if(§§pop() > §§pop())
            {
               _loc2_.rShiftTo(_loc4_,_loc2_);
            }
            §§push(_loc4_ = _loc3_.getLowestSetBit());
            §§push(0);
            if(_loc9_)
            {
               §§push((§§pop() - 118 - 16 + 47 - 1) * 15 - 81 - 1);
            }
            if(§§pop() > §§pop())
            {
               _loc3_.rShiftTo(_loc4_,_loc3_);
            }
            §§push(_loc2_.compareTo(_loc3_));
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() + 33) - 1);
            }
            if(§§pop() >= §§pop())
            {
               _loc2_.subTo(_loc3_,_loc2_);
               §§push(_loc2_);
               §§push(1);
               if(_loc8_)
               {
                  §§push(-(§§pop() + 1 + 1));
               }
               §§pop().rShiftTo(§§pop(),_loc2_);
            }
            else
            {
               _loc3_.subTo(_loc2_,_loc3_);
               §§push(_loc3_);
               §§push(1);
               if(_loc8_)
               {
                  §§push((-(§§pop() * 103 + 90) + 1 - 61) * 12 - 112);
               }
               §§pop().rShiftTo(§§pop(),_loc3_);
            }
         }
         §§push(_loc5_);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 1) + 87);
         }
         if(§§pop() > §§pop())
         {
            _loc3_.lShiftTo(_loc5_,_loc3_);
         }
         return _loc3_;
      }
      
      bi_internal final function dAddOffset(param1:int, param2:int) : void
      {
         while(t <= param2)
         {
            §§push(a);
            §§push(_loc3_);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 1) * 89 * 12 - 1 - 1);
            }
            §§pop()[§§pop()] = §§pop();
         }
         a[param2] = a[param2] + param1;
         while(a[param2] >= DV)
         {
            a[param2] = a[param2] - DV;
            if(++param2 >= t)
            {
               §§push(a);
               §§push(_loc3_);
               §§push(0);
               if(_loc7_)
               {
                  §§push((§§pop() - 14) * 82 + 26 + 62 + 1);
               }
               §§pop()[§§pop()] = §§pop();
            }
            a[param2]++;
         }
      }
      
      bi_internal final function lShiftTo(param1:int, param2:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() * 63) - 26);
         }
         var _loc8_:* = §§pop();
         var _loc3_:int = param1 % DB;
         var _loc4_:int = DB - _loc3_;
         §§push(1);
         if(_loc9_)
         {
            §§push(§§pop() - 26 + 1 + 1 + 1);
         }
         var _loc5_:int = §§pop() << _loc4_ - 1;
         var _loc6_:int = param1 / DB;
         var _loc7_:* = s << _loc3_ & DM;
         _loc8_ = int(t - 1);
         while(true)
         {
            §§push(_loc8_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(-§§pop() - 1) * 58 - 1 + 0);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            §§push(param2.a);
            §§push(_loc8_ + _loc6_);
            §§push(1);
            if(_loc10_)
            {
               §§push((§§pop() + 53 + 109) * 21 - 1 + 23 + 17 - 1);
            }
            §§pop()[§§pop() + §§pop()] = a[_loc8_] >> _loc4_ | _loc7_;
            _loc7_ = (a[_loc8_] & _loc5_) << _loc3_;
            _loc8_--;
         }
         _loc8_ = int(_loc6_ - 1);
         while(true)
         {
            §§push(_loc8_);
            §§push(0);
            if(_loc10_)
            {
               §§push(-(-((§§pop() - 33) * 6) - 1));
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            §§push(param2.a);
            §§push(_loc8_);
            §§push(0);
            if(_loc9_)
            {
               §§push((-((§§pop() + 1 - 4) * 16) + 1) * 57 * 91);
            }
            §§pop()[§§pop()] = §§pop();
            _loc8_--;
         }
         param2.a[_loc6_] = _loc7_;
         §§push(param2);
         §§push(t + _loc6_);
         §§push(1);
         if(_loc9_)
         {
            §§push(-(-((§§pop() + 1) * 30) + 72 + 1 - 76));
         }
         §§pop().t = §§pop() + §§pop();
         param2.s = s;
         param2.clamp();
      }
      
      public final function getLowestSetBit() : int
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 83) + 1);
         }
         var _loc1_:* = §§pop();
         while(_loc1_ < t)
         {
            §§push(a[_loc1_]);
            §§push(0);
            if(_loc3_)
            {
               §§push(-(§§pop() + 1 + 1) + 64 + 1);
            }
            if(§§pop() != §§pop())
            {
               return _loc1_ * DB + lbit(a[_loc1_]);
            }
            _loc1_++;
         }
         §§push(s);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 76 + 57) * 88) * 94);
         }
         if(§§pop() < §§pop())
         {
            return t * DB;
         }
         §§push(-1);
         if(_loc3_)
         {
            §§push((§§pop() + 118) * 42 + 1);
         }
         return §§pop();
      }
      
      public final function subtract(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         subTo(param1,_loc2_);
         return _loc2_;
      }
      
      public final function primify(param1:int, param2:int) : void
      {
         if(!testBit(param1 - 1))
         {
            bitwiseTo(com.hurlant.math.BigInteger.ONE.shiftLeft(param1 - 1),op_or,this);
         }
         if(isEven())
         {
            §§push();
            §§push(1);
            if(_loc3_)
            {
               §§push(-(-(§§pop() - 54) - 1));
            }
            §§pop().dAddOffset(§§pop(),0);
         }
         while(!isProbablePrime(param2))
         {
            §§push();
            §§push(2);
            if(_loc3_)
            {
               §§push(-(-(-§§pop() - 36) * 81 + 117) + 43);
            }
            §§pop().dAddOffset(§§pop(),0);
            while(bitLength() > param1)
            {
               subTo(com.hurlant.math.BigInteger.ONE.shiftLeft(param1 - 1),this);
            }
         }
      }
      
      bi_internal final function multiplyLowerTo(param1:com.hurlant.math.BigInteger, param2:int, param3:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() + 54 - 1 + 1 + 1));
         }
         var _loc5_:* = §§pop();
         var _loc4_:int = Math.min(t + param1.t,param2);
         §§push(param3);
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() + 73 - 1 - 1 - 1);
         }
         §§pop().s = §§pop();
         param3.t = _loc4_;
         while(true)
         {
            §§push(_loc4_);
            §§push(0);
            if(_loc7_)
            {
               §§push(§§pop() + 17 - 24 + 1 - 1);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            §§push(param3.a);
            §§push(_loc6_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() - 29 + 80 + 1 - 1 + 113) * 118);
            }
            §§pop()[§§pop()] = §§pop();
         }
         _loc5_ = int(param3.t - t);
         while(_loc4_ < _loc5_)
         {
            §§push(param3.a);
            §§push(_loc4_ + t);
            §§push();
            §§push(0);
            if(_loc8_)
            {
               §§push(-((§§pop() + 56) * 5));
            }
            §§push(param1.a[_loc4_]);
            §§push(param3);
            §§push(_loc4_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-(-§§pop() + 1 + 1));
            }
            §§pop()[§§pop()] = §§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),t);
            _loc4_++;
         }
         _loc5_ = int(Math.min(param1.t,param2));
         while(_loc4_ < _loc5_)
         {
            §§push();
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() - 1 - 17));
            }
            §§push(param1.a[_loc4_]);
            §§push(param3);
            §§push(_loc4_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-((§§pop() - 1 - 1) * 84 + 1) - 67 - 1);
            }
            §§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param2 - _loc4_);
            _loc4_++;
         }
         param3.clamp();
      }
      
      public final function modPowInt(param1:int, param2:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc3_:IReduction = null;
         §§push(param1);
         §§push(256);
         if(_loc4_)
         {
            §§push(-(((§§pop() - 1) * 57 * 55 - 1 + 113) * 119));
         }
         if(§§pop() < §§pop() || param2.isEven())
         {
            _loc3_ = new ClassicReduction(param2);
         }
         else
         {
            _loc3_ = new MontgomeryReduction(param2);
         }
         return exp(param1,_loc3_);
      }
      
      bi_internal final function intAt(param1:String, param2:int) : int
      {
         §§push();
         §§push(param1.charAt(param2));
         §§push(36);
         if(_loc3_)
         {
            §§push(§§pop() + 84 - 24 - 67 - 1 - 1);
         }
         return §§pop().parseInt(§§pop(),§§pop());
      }
      
      public final function testBit(param1:int) : Boolean
      {
         var _loc2_:int = Math.floor(param1 / DB);
         if(_loc2_ >= t)
         {
            §§push(s);
            §§push(0);
            if(_loc4_)
            {
               §§push(-(-(§§pop() + 1) + 33) - 56 + 1 - 76);
            }
            return §§pop() != §§pop();
         }
         §§push(a[_loc2_]);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 79 - 1 - 39);
         }
         §§push(§§pop() & §§pop() << param1 % DB);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 46 + 1 - 1 + 106 - 44);
         }
         return §§pop() != §§pop();
      }
      
      bi_internal final function exp(param1:int, param2:IReduction) : com.hurlant.math.BigInteger
      {
         var _loc7_:com.hurlant.math.BigInteger = null;
         if(param1 > 4294967295 || §§pop() < §§pop())
         {
            return ONE;
         }
         var _loc3_:com.hurlant.math.BigInteger = nbi();
         var _loc4_:com.hurlant.math.BigInteger = nbi();
         var _loc5_:com.hurlant.math.BigInteger = param2.convert(this);
         var _loc6_:int = nbits(param1) - 1;
         _loc5_.copyTo(_loc3_);
         while(true)
         {
            §§push(--_loc6_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-((§§pop() + 64 + 1) * 65));
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            param2.sqrTo(_loc3_,_loc4_);
            §§push(param1);
            §§push(1);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 + 1 - 76 - 1));
            }
            §§push(§§pop() & §§pop() << _loc6_);
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() * 4 * 66 * 105 - 1 + 98);
            }
            if(§§pop() > §§pop())
            {
               param2.mulTo(_loc4_,_loc5_,_loc3_);
            }
            else
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc4_;
               _loc4_ = _loc7_;
            }
         }
         return param2.revert(_loc3_);
      }
      
      public final function toArray(param1:ByteArray) : uint
      {
         §§push(8);
         if(_loc10_)
         {
            §§push(---§§pop() * 9);
         }
         var _loc2_:* = §§pop();
         §§push(1);
         if(_loc11_)
         {
            §§push((-§§pop() + 1 - 1) * 77);
         }
         var _loc3_:int = §§pop() << 8 - 1;
         §§push(0);
         if(_loc10_)
         {
            §§push((§§pop() - 1 + 1 - 1) * 81 - 19 - 45 + 1);
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = t;
         var _loc6_:int = DB - _loc5_ * DB % _loc2_;
         var _loc7_:Boolean = false;
         §§push(0);
         if(_loc10_)
         {
            §§push((-(§§pop() + 118 - 113) + 29) * 49 + 66 + 1);
         }
         var _loc8_:* = §§pop();
         §§push(_loc5_--);
         §§push(0);
         if(_loc10_)
         {
            §§push(((-§§pop() + 1) * 26 - 27) * 92);
         }
         if(§§pop() > §§pop())
         {
            if(_loc6_ < DB && §§pop() > §§pop())
            {
               _loc7_ = true;
               param1.writeByte(_loc4_);
               _loc8_++;
            }
            while(true)
            {
               §§push(_loc5_);
               §§push(0);
               if(_loc11_)
               {
                  §§push(-(§§pop() * 61 * 76) - 111 + 1);
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               if(_loc6_ < _loc2_)
               {
                  §§push(a[_loc5_]);
                  §§push(1);
                  if(_loc11_)
                  {
                     §§push(-((-§§pop() - 79 - 73) * 6 - 60) + 1);
                  }
                  _loc4_ = (§§pop() & §§pop() << _loc6_ - 1) << _loc2_ - _loc6_;
                  _loc4_ = _loc4_ | a[--_loc5_] >> (_loc6_ = _loc6_ + (DB - _loc2_));
               }
               else
               {
                  _loc4_ = a[_loc5_] >> (_loc6_ = _loc6_ - _loc2_) & _loc3_;
                  §§push(_loc6_);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(§§pop() + 1 + 1 + 66 + 48);
                  }
                  if(§§pop() <= §§pop())
                  {
                     _loc6_ = _loc6_ + DB;
                     _loc5_--;
                  }
               }
               §§push(_loc4_);
               §§push(0);
               if(_loc10_)
               {
                  §§push(--((§§pop() - 1) * 23 - 1 - 1 + 65));
               }
               if(§§pop() > §§pop())
               {
                  _loc7_ = true;
               }
               if(_loc7_)
               {
                  param1.writeByte(_loc4_);
                  _loc8_++;
               }
            }
         }
         return _loc8_;
      }
      
      public final function dispose() : void
      {
         var _loc1_:Random = new Random();
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() - 1 + 106);
         }
         var _loc2_:uint = §§pop();
         while(_loc2_ < a.length)
         {
            a[_loc2_] = _loc1_.nextByte();
            delete a[_loc2_];
            _loc2_++;
         }
         a = null;
         §§push();
         §§push(0);
         if(_loc4_)
         {
            §§push(----§§pop() + 7 + 82);
         }
         §§pop().t = §§pop();
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 31) * 38 - 68);
         }
         §§pop().s = §§pop();
         Memory.gc();
      }
      
      private final function lbit(param1:int) : int
      {
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 32 - 1);
         }
         if(§§pop() == §§pop())
         {
            §§push(-1);
            if(_loc3_)
            {
               return -(§§pop() + 1 + 40 - 1) - 1 - 14;
            }
         }
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 1 + 1) * 5) - 18 - 1);
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         §§push(65535);
         if(_loc4_)
         {
            §§push((§§pop() + 1 + 1 - 1 - 21) * 91 + 1 - 19);
         }
         §§push(§§pop() & §§pop());
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() * 50) + 1 + 1) * 119 * 94);
         }
         if(§§pop() == §§pop())
         {
            §§push(param1);
            §§push(16);
            if(_loc4_)
            {
               §§push((§§pop() * 1 - 1 + 94) * 103 * 108 + 1);
            }
            param1 = §§pop() >> §§pop();
            §§push(_loc2_);
            §§push(16);
            if(_loc4_)
            {
               §§push(§§pop() + 1 + 82 + 12);
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         §§push(param1);
         §§push(255);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1 + 16 - 95) + 67 - 1);
         }
         §§push(§§pop() & §§pop());
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 25) + 1);
         }
         if(§§pop() == §§pop())
         {
            §§push(param1);
            §§push(8);
            if(_loc3_)
            {
               §§push(-§§pop() * 33 + 33);
            }
            param1 = §§pop() >> §§pop();
            §§push(_loc2_);
            §§push(8);
            if(_loc3_)
            {
               §§push((§§pop() * 32 - 68 - 1) * 62);
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         §§push(param1);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() - 102 - 1 - 1);
         }
         §§push(§§pop() & §§pop());
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 1);
         }
         if(§§pop() == §§pop())
         {
            §§push(param1);
            §§push(4);
            if(_loc3_)
            {
               §§push(-(-§§pop() - 73 - 1) - 3);
            }
            param1 = §§pop() >> §§pop();
            §§push(_loc2_);
            §§push(4);
            if(_loc3_)
            {
               §§push(-(§§pop() + 64) + 32 + 91 - 118 + 1);
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         §§push(param1);
         §§push(3);
         if(_loc4_)
         {
            §§push((§§pop() + 1 - 76) * 66);
         }
         §§push(§§pop() & §§pop());
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 65) - 58 + 61 + 67 - 73);
         }
         if(§§pop() == §§pop())
         {
            §§push(param1);
            §§push(2);
            if(_loc4_)
            {
               §§push(-((§§pop() - 5) * 4 - 111 - 1));
            }
            param1 = §§pop() >> §§pop();
            §§push(_loc2_);
            §§push(2);
            if(_loc4_)
            {
               §§push(--(§§pop() + 74) + 49 + 101);
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         §§push(param1);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 85 + 1 - 1) - 1 - 1);
         }
         §§push(§§pop() & §§pop());
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 63 - 36 + 1 - 88 + 33);
         }
         if(§§pop() == §§pop())
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      bi_internal final function divRemTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger = null, param3:com.hurlant.math.BigInteger = null) : void
      {
         §§push(_loc4_);
         §§push(0);
         if(_loc12_)
         {
            §§push((-(§§pop() - 103) - 1 - 37) * 101 * 43);
         }
         var /*UnknownSlot*/:* = §§pop();
         var m:com.hurlant.math.BigInteger = param1;
         var q:com.hurlant.math.BigInteger = param2;
         var r:com.hurlant.math.BigInteger = param3;
         var pm:com.hurlant.math.BigInteger = m.abs();
         §§push(pm.t);
         §§push(0);
         if(_loc12_)
         {
            §§push(-(§§pop() - 4 - 113));
         }
         if(§§pop() <= §§pop())
         {
            return;
         }
         var pt:com.hurlant.math.BigInteger = abs();
         if(pt.t < pm.t)
         {
            if(q != null)
            {
               §§push(q);
               §§push(0);
               if(_loc13_)
               {
                  §§push(§§pop() + 1 - 1 + 1);
               }
               §§pop().fromInt(§§pop());
            }
            if(r != null)
            {
               copyTo(r);
            }
            return;
         }
         if(r == null)
         {
            r = nbi();
         }
         var y:com.hurlant.math.BigInteger = nbi();
         var ts:int = s;
         var ms:int = m.s;
         var nsh:int = DB - nbits(pm.a[pm.t - 1]);
         §§push(nsh);
         §§push(0);
         if(_loc13_)
         {
            §§push(---(§§pop() * 6 + 1) * 64 * 100);
         }
         if(§§pop() > §§pop())
         {
            pm.lShiftTo(nsh,y);
            pt.lShiftTo(nsh,r);
         }
         else
         {
            pm.copyTo(y);
            pt.copyTo(r);
         }
         var ys:int = y.t;
         var y0:int = y.a[ys - 1];
         §§push(y0);
         §§push(0);
         if(_loc12_)
         {
            §§push(-(-(§§pop() + 55 + 34) * 22));
         }
         if(§§pop() == §§pop())
         {
            return;
         }
         §§push(_loc4_);
         §§push(y0);
         §§push(1);
         if(_loc12_)
         {
            §§push(--(§§pop() - 1 - 1) * 7 - 91);
         }
         §§push(§§pop() * (§§pop() << F1));
         §§push(ys);
         §§push(1);
         if(_loc12_)
         {
            §§push((§§pop() + 105 + 116 + 1) * 116 + 96);
         }
         if(§§pop() > §§pop())
         {
            §§push(y.a);
            §§push(ys);
            §§push(2);
            if(_loc13_)
            {
               §§push(-§§pop() + 0 - 71 - 1);
            }
            §§push(§§pop()[§§pop() - §§pop()] >> F2);
         }
         else
         {
            §§push(0);
            if(_loc12_)
            {
               §§push(-(§§pop() * 96 + 1));
            }
            §§push(§§pop());
         }
         var /*UnknownSlot*/:* = Number(§§pop() + §§pop());
         var d1:Number = FV / yt;
         §§push(_loc4_);
         §§push(1);
         if(_loc13_)
         {
            §§push((§§pop() * 65 + 14 + 1 + 117 + 38) * 13);
         }
         var /*UnknownSlot*/:* = Number((§§pop() << F1) / yt);
         §§push(_loc4_);
         §§push(1);
         if(_loc13_)
         {
            §§push(§§pop() + 1 + 30 + 1);
         }
         var /*UnknownSlot*/:* = Number(§§pop() << F2);
         var i:int = r.t;
         var j:int = i - ys;
         var t:com.hurlant.math.BigInteger = q == null?nbi():q;
         y.dlShiftTo(j,t);
         §§push(r.compareTo(t));
         §§push(0);
         if(_loc12_)
         {
            §§push(--(§§pop() - 114));
         }
         if(§§pop() >= §§pop())
         {
            §§push(r.a);
            §§push(_loc5_);
            §§push(1);
            if(_loc13_)
            {
               §§push((-(§§pop() + 34) + 68 + 98 - 1) * 78 - 1);
            }
            §§pop()[§§pop()] = §§pop();
            r.subTo(t,r);
         }
         ONE.dlShiftTo(ys,t);
         t.subTo(y,y);
         while(y.t < ys)
         {
            §§push(0);
            if(_loc13_)
            {
               §§push(§§pop() + 35 + 116 - 1);
            }
            while(§§hasnext(y,_loc6_))
            {
               with(_loc9_)
               {
                  
                  y.t++;
                  §§push(0);
                  if(_loc13_)
                  {
                     §§push(-(§§pop() - 1 - 41));
                  }
                  if(§§pop())
                  {
                     _loc5_[_loc6_] = _loc8_;
                  }
               }
            }
         }
         while(true)
         {
            §§push(--j);
            §§push(0);
            if(_loc12_)
            {
               §§push(§§pop() - 1 + 1 - 1);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            var qd:int = r.a[--i] == y0?int(DM):int(Number(r.a[i]) * d1 + (Number(r.a[i - 1]) + e) * d2);
            §§push(r.a);
            §§push(i);
            §§push(r.a[i]);
            §§push(y);
            §§push(0);
            if(_loc12_)
            {
               §§push((-§§pop() * 12 - 5) * 2 + 1 - 1 + 1);
            }
            §§push(qd);
            §§push(r);
            §§push(j);
            §§push(0);
            if(_loc12_)
            {
               §§push(-§§pop() + 1 - 71 - 1 - 1);
            }
            if((§§pop()[§§pop()] = §§pop() + §§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),ys)) < qd)
            {
               y.dlShiftTo(j,t);
               r.subTo(t,r);
               while(r.a[i] < --qd)
               {
                  r.subTo(t,r);
               }
               continue;
            }
         }
         if(q != null)
         {
            r.drShiftTo(ys,q);
            if(ts != ms)
            {
               ZERO.subTo(q,q);
            }
         }
         r.t = ys;
         r.clamp();
         §§push(nsh);
         §§push(0);
         if(_loc13_)
         {
            §§push(-(§§pop() - 105 + 1 - 31));
         }
         if(§§pop() > §§pop())
         {
            r.rShiftTo(nsh,r);
         }
         §§push(ts);
         §§push(0);
         if(_loc13_)
         {
            §§push((§§pop() - 38) * 42 - 111);
         }
         if(§§pop() < §§pop())
         {
            ZERO.subTo(r,r);
         }
      }
      
      public final function remainder(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         divRemTo(param1,null,_loc2_);
         return _loc2_;
      }
      
      bi_internal final function multiplyUpperTo(param1:com.hurlant.math.BigInteger, param2:int, param3:com.hurlant.math.BigInteger) : void
      {
         param2--;
         var _loc4_:int = param3.t = t + param1.t - param2;
         §§push(param3);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(§§pop() * 96) - 27));
         }
         §§pop().s = §§pop();
         while(true)
         {
            §§push(--_loc4_);
            §§push(0);
            if(_loc7_)
            {
               §§push(--§§pop() - 46 + 11 + 1 - 84 + 50);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            §§push(param3.a);
            §§push(_loc4_);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(-§§pop() * 93) + 77 + 93 - 100 - 1);
            }
            §§pop()[§§pop()] = §§pop();
         }
         §§push(Math);
         §§push(param2 - t);
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 1 - 90) * 2 - 115);
         }
         _loc4_ = §§pop().max(§§pop(),§§pop());
         while(_loc4_ < param1.t)
         {
            §§push(param3.a);
            §§push(t + _loc4_ - param2);
            §§push();
            §§push(param2 - _loc4_);
            §§push(param1.a[_loc4_]);
            §§push(param3);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(-(§§pop() + 1) + 54 + 75));
            }
            §§pop()[§§pop()] = §§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),t + _loc4_ - param2);
            _loc4_++;
         }
         param3.clamp();
         §§push(param3);
         §§push(1);
         if(_loc6_)
         {
            §§push((§§pop() + 21 - 93 + 118 + 1 + 1 - 1) * 50);
         }
         §§pop().drShiftTo(§§pop(),param3);
      }
      
      public final function divideAndRemainder(param1:com.hurlant.math.BigInteger) : Array
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         var _loc3_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         divRemTo(param1,_loc2_,_loc3_);
         return [_loc2_,_loc3_];
      }
      
      public final function valueOf() : Number
      {
         §§push(s);
         §§push(-1);
         if(_loc4_)
         {
            §§push(-(§§pop() - 40) - 48);
         }
         if(§§pop() == §§pop())
         {
            return -negate().valueOf();
         }
         §§push(1);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1) + 52);
         }
         var _loc1_:Number = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 47 + 54 - 49);
         }
         var _loc2_:Number = §§pop();
         §§push(0);
         if(_loc4_)
         {
            §§push(((§§pop() + 1) * 32 * 14 + 1) * 23 * 93);
         }
         var _loc3_:uint = §§pop();
         while(_loc3_ < t)
         {
            _loc2_ = _loc2_ + a[_loc3_] * _loc1_;
            _loc1_ = _loc1_ * DV;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public final function shiftLeft(param1:int) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 1) * 39) * 11 + 1 + 109);
         }
         if(§§pop() < §§pop())
         {
            rShiftTo(-param1,_loc2_);
         }
         else
         {
            lShiftTo(param1,_loc2_);
         }
         return _loc2_;
      }
      
      public final function multiply(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         multiplyTo(param1,_loc2_);
         return _loc2_;
      }
      
      bi_internal final function am(param1:int, param2:int, param3:com.hurlant.math.BigInteger, param4:int, param5:int, param6:int) : int
      {
         §§push(0);
         if(_loc13_)
         {
            §§push(-(§§pop() + 52 + 89 - 1 - 1) - 89);
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(_loc13_)
         {
            §§push((§§pop() - 1 - 19) * 5);
         }
         var _loc10_:* = §§pop();
         §§push(0);
         if(_loc14_)
         {
            §§push((§§pop() - 1 + 1 + 1 + 7 + 1) * 94);
         }
         var _loc11_:* = §§pop();
         §§push(param2);
         §§push(32767);
         if(_loc14_)
         {
            §§push(--(§§pop() + 1 + 77 - 42 - 1));
         }
         var _loc7_:* = §§pop() & §§pop();
         §§push(param2);
         §§push(15);
         if(_loc14_)
         {
            §§push(-(§§pop() * 86 * 79 - 1) + 23 + 35 - 74);
         }
         var _loc8_:* = §§pop() >> §§pop();
         while(true)
         {
            §§push(--param6);
            §§push(0);
            if(_loc13_)
            {
               §§push(-((§§pop() + 35 + 1) * 2));
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            §§push(a[param1]);
            §§push(32767);
            if(_loc13_)
            {
               §§push(--§§pop() - 1);
            }
            _loc9_ = §§pop() & §§pop();
            §§push(a[param1++]);
            §§push(15);
            if(_loc14_)
            {
               §§push((§§pop() - 52 + 1) * 100);
            }
            _loc10_ = §§pop() >> §§pop();
            _loc11_ = int(_loc8_ * _loc9_ + _loc10_ * _loc7_);
            §§push(_loc7_ * _loc9_);
            §§push(_loc11_);
            §§push(32767);
            if(_loc14_)
            {
               §§push((§§pop() + 90 - 61) * 37);
            }
            §§push(§§pop() & §§pop());
            §§push(15);
            if(_loc13_)
            {
               §§push(§§pop() * 66 + 1 - 93);
            }
            §§push(§§pop() + (§§pop() << §§pop()) + param3.a[param4]);
            §§push(param5);
            §§push(1073741823);
            if(_loc14_)
            {
               §§push(§§pop() + 3 + 1 - 1);
            }
            _loc9_ = int(§§pop() + (§§pop() & §§pop()));
            §§push(_loc9_);
            §§push(30);
            if(_loc13_)
            {
               §§push((§§pop() - 1 - 31 - 92 + 65) * 45);
            }
            §§push(§§pop() >>> §§pop());
            §§push(_loc11_);
            §§push(15);
            if(_loc13_)
            {
               §§push(((§§pop() - 1) * 60 + 63 + 1 + 1) * 79 + 64);
            }
            §§push(§§pop() + (§§pop() >>> §§pop()) + _loc8_ * _loc10_);
            §§push(param5);
            §§push(30);
            if(_loc14_)
            {
               §§push((§§pop() + 1 - 5 - 97) * 91);
            }
            param5 = §§pop() + (§§pop() >>> §§pop());
            §§push(param3.a);
            §§push(_loc12_);
            §§push(_loc9_);
            §§push(1073741823);
            if(_loc14_)
            {
               §§push(--(§§pop() * 70 + 1) - 1);
            }
            §§pop()[§§pop()] = §§pop() & §§pop();
         }
         return param5;
      }
      
      bi_internal final function drShiftTo(param1:int, param2:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-(§§pop() - 49) + 1 + 105));
         }
         var _loc3_:* = §§pop();
         _loc3_ = int(param1);
         while(_loc3_ < t)
         {
            param2.a[_loc3_ - param1] = a[_loc3_];
            _loc3_++;
         }
         §§push(param2);
         §§push(Math);
         §§push(t - param1);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() - 86 - 104) * 57));
         }
         §§pop().t = §§pop().max(§§pop(),§§pop());
         param2.s = s;
      }
      
      public final function add(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         addTo(param1,_loc2_);
         return _loc2_;
      }
      
      protected final function nbi() : *
      {
         return new com.hurlant.math.BigInteger();
      }
      
      protected final function millerRabin(param1:int) : Boolean
      {
         var _loc7_:com.hurlant.math.BigInteger = null;
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 - 2 + 1);
         }
         var _loc8_:* = §§pop();
         var _loc2_:com.hurlant.math.BigInteger = subtract(com.hurlant.math.BigInteger.ONE);
         var _loc3_:int = _loc2_.getLowestSetBit();
         §§push(_loc3_);
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() * 56 - 1 - 8);
         }
         if(§§pop() <= §§pop())
         {
            return false;
         }
         var _loc4_:com.hurlant.math.BigInteger = _loc2_.shiftRight(_loc3_);
         §§push(param1);
         §§push(1);
         if(_loc9_)
         {
            §§push((-§§pop() - 80 + 116 - 44) * 83 + 1);
         }
         §§push(§§pop() + §§pop());
         §§push(1);
         if(_loc10_)
         {
            §§push(-((-§§pop() - 1 - 25 - 75) * 42 - 1));
         }
         param1 = §§pop() >> §§pop();
         if(param1 > lowprimes.length)
         {
            param1 = int(lowprimes.length);
         }
         var _loc5_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() * 94 * 111 + 1);
         }
         var _loc6_:* = §§pop();
         while(_loc6_ < param1)
         {
            _loc5_.fromInt(lowprimes[_loc6_]);
            _loc7_ = _loc5_.modPow(_loc4_,this);
            §§push(_loc7_.compareTo(com.hurlant.math.BigInteger.ONE));
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() - 106) * 38);
            }
            if(§§pop() != §§pop() && §§pop() != §§pop())
            {
               §§push(1);
               if(_loc10_)
               {
                  §§push((§§pop() + 1 - 1 + 27 - 1 + 1) * 12);
               }
               _loc8_ = §§pop();
               while(_loc8_++ < _loc3_ && §§pop() != §§pop())
               {
                  §§push(_loc7_);
                  §§push(2);
                  if(_loc10_)
                  {
                     §§push((((§§pop() - 1) * 99 - 1) * 116 - 1) * 85 + 50);
                  }
                  _loc7_ = §§pop().modPowInt(§§pop(),this);
                  §§push(_loc7_.compareTo(com.hurlant.math.BigInteger.ONE));
                  §§push(0);
                  if(_loc9_)
                  {
                     §§push((§§pop() + 1 - 1 - 49) * 2);
                  }
                  if(§§pop() == §§pop())
                  {
                     return false;
                  }
               }
               §§push(_loc7_.compareTo(_loc2_));
               §§push(0);
               if(_loc10_)
               {
                  §§push(-(§§pop() - 72 - 97 + 1) - 14 + 53);
               }
               if(§§pop() != §§pop())
               {
                  return false;
               }
            }
            _loc6_++;
         }
         return true;
      }
      
      bi_internal final function dMultiply(param1:int) : void
      {
         §§push(a);
         §§push(t);
         §§push();
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-§§pop() * 94));
         }
         §§push(param1 - 1);
         §§push(this);
         §§push(0);
         if(_loc5_)
         {
            §§push((-(§§pop() + 95) + 77 - 1 - 27 + 82) * 23);
         }
         §§pop()[§§pop()] = §§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),t);
         t++;
         clamp();
      }
      
      private final function op_andnot(param1:int, param2:int) : int
      {
         return param1 & ~param2;
      }
      
      bi_internal final function clamp() : void
      {
         var _loc1_:* = s & DM;
         while(true)
         {
            §§push(t);
            §§push(0);
            if(_loc5_)
            {
               §§push(-((§§pop() + 115) * 106 + 15));
            }
            if(!(§§pop() > §§pop() && a[t - 1] == _loc1_))
            {
               break;
            }
            t = _loc3_;
         }
      }
      
      bi_internal final function invDigit() : int
      {
         §§push(t);
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() * 102 * 95);
         }
         if(§§pop() < §§pop())
         {
            §§push(0);
            if(_loc3_)
            {
               return (§§pop() * 49 - 1) * 61 + 14 - 18 + 1;
            }
         }
         §§push(a);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 33 - 111));
         }
         var _loc1_:int = §§pop()[§§pop()];
         §§push(_loc1_);
         §§push(1);
         if(_loc4_)
         {
            §§push(§§pop() + 1 - 103 + 19 - 1 - 1 - 1);
         }
         §§push(§§pop() & §§pop());
         §§push(0);
         if(_loc4_)
         {
            §§push((-(§§pop() - 1 - 9) + 95 - 91) * 96 - 12);
         }
         if(§§pop() == §§pop())
         {
            §§push(0);
            if(_loc4_)
            {
               return (-(-(§§pop() + 80) + 71) * 19 + 102) * 70;
            }
         }
         §§push(_loc1_);
         §§push(3);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1) - 1 - 41 + 119);
         }
         var _loc2_:* = §§pop() & §§pop();
         §§push(_loc2_);
         §§push(2);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 1) - 1 - 74) + 66 + 0);
         }
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() * 45) - 1);
         }
         §§push(§§pop() * (§§pop() - (§§pop() & §§pop()) * _loc2_));
         §§push(15);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 42) - 111 - 86));
         }
         _loc2_ = §§pop() & §§pop();
         §§push(_loc2_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 31 - 103 + 5 - 37));
         }
         §§push(_loc1_);
         §§push(255);
         if(_loc4_)
         {
            §§push(-(§§pop() * 47 - 71 - 1));
         }
         §§push(§§pop() * (§§pop() - (§§pop() & §§pop()) * _loc2_));
         §§push(255);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1) + 1 + 1 + 82);
         }
         _loc2_ = §§pop() & §§pop();
         §§push(_loc2_);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 62 - 80 - 55 + 75);
         }
         §§push(_loc1_);
         §§push(65535);
         if(_loc4_)
         {
            §§push(-((§§pop() + 1) * 65 - 1) * 28 + 64);
         }
         §§push((§§pop() & §§pop()) * _loc2_);
         §§push(65535);
         if(_loc4_)
         {
            §§push(§§pop() - 36 - 94 + 72 + 83 - 87 + 1);
         }
         §§push(§§pop() * (§§pop() - (§§pop() & §§pop())));
         §§push(65535);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 6);
         }
         _loc2_ = §§pop() & §§pop();
         §§push(_loc2_);
         §§push(2);
         if(_loc4_)
         {
            §§push(--(§§pop() - 1 + 11) * 68 - 92 - 1);
         }
         _loc2_ = int(§§pop() * (§§pop() - _loc1_ * _loc2_ % DV) % DV);
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 75 + 103) - 101);
         }
         return §§pop() > §§pop()?int(DV - _loc2_):int(-_loc2_);
      }
      
      protected final function changeBit(param1:int, param2:Function) : com.hurlant.math.BigInteger
      {
         var _loc3_:com.hurlant.math.BigInteger = com.hurlant.math.BigInteger.ONE.shiftLeft(param1);
         bitwiseTo(_loc3_,param2,_loc3_);
         return _loc3_;
      }
      
      public final function equals(param1:com.hurlant.math.BigInteger) : Boolean
      {
         §§push(compareTo(param1));
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 94 - 1 + 1 + 3);
         }
         return §§pop() == §§pop();
      }
      
      public final function compareTo(param1:com.hurlant.math.BigInteger) : int
      {
         var _loc2_:int = s - param1.s;
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push(-§§pop() - 1 - 1);
         }
         if(§§pop() != §§pop())
         {
            return _loc2_;
         }
         var _loc3_:int = t;
         _loc2_ = _loc3_ - param1.t;
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 93 + 1 - 1 + 91 + 1 + 1);
         }
         if(§§pop() != §§pop())
         {
            return _loc2_;
         }
         while(true)
         {
            §§push(--_loc3_);
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() - 13 + 1 - 1) * 84 + 87 - 1);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            _loc2_ = a[_loc3_] - param1.a[_loc3_];
            §§push(_loc2_);
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() + 1) * 49 - 55 - 1);
            }
            if(§§pop() != §§pop())
            {
               return _loc2_;
            }
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 67 + 110 - 1 + 27 - 28 - 111);
         }
         return §§pop();
      }
      
      public final function shiftRight(param1:int) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 2) * 37 + 1 - 1);
         }
         if(§§pop() < §§pop())
         {
            lShiftTo(-param1,_loc2_);
         }
         else
         {
            rShiftTo(param1,_loc2_);
         }
         return _loc2_;
      }
      
      bi_internal final function multiplyTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger) : void
      {
         var _loc3_:com.hurlant.math.BigInteger = abs();
         var _loc4_:com.hurlant.math.BigInteger = param1.abs();
         var _loc5_:* = int(_loc3_.t);
         param2.t = _loc5_ + _loc4_.t;
         while(true)
         {
            §§push(--_loc5_);
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() + 1 - 43 - 1);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            §§push(param2.a);
            §§push(_loc5_);
            §§push(0);
            if(_loc7_)
            {
               §§push(§§pop() - 0 + 1 - 40 - 1 + 29 - 1);
            }
            §§pop()[§§pop()] = §§pop();
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() + 1 - 1) - 1);
         }
         _loc5_ = §§pop();
         while(_loc5_ < _loc4_.t)
         {
            §§push(param2.a);
            §§push(_loc5_ + _loc3_.t);
            §§push(_loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push((-(§§pop() - 1) * 22 + 103) * 115);
            }
            §§push(_loc4_.a[_loc5_]);
            §§push(param2);
            §§push(_loc5_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-((-§§pop() + 1) * 52 - 7 + 1));
            }
            §§pop()[§§pop()] = §§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),_loc3_.t);
            _loc5_++;
         }
         §§push(param2);
         §§push(0);
         if(_loc7_)
         {
            §§push(-§§pop() + 117 - 44 + 56);
         }
         §§pop().s = §§pop();
         param2.clamp();
         if(s != param1.s)
         {
            ZERO.subTo(param2,param2);
         }
      }
      
      public final function bitCount() : int
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(((§§pop() + 114) * 29 * 37 - 1 - 54) * 83);
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = s & DM;
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() - 1 + 1 + 1 - 8) * 90 + 31 + 0);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < t)
         {
            _loc1_ = int(_loc1_ + cbit(a[_loc3_] ^ _loc2_));
            _loc3_++;
         }
         return _loc1_;
      }
      
      protected final function toRadix(param1:uint = 10) : String
      {
         §§push(sigNum());
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 1 - 75 - 59) + 1 + 101 + 1);
         }
         if(§§pop() == §§pop() || §§pop() < §§pop() || §§pop() > §§pop())
         {
            return "0";
         }
         var _loc2_:int = chunkSize(param1);
         var _loc3_:Number = Math.pow(param1,_loc2_);
         var _loc4_:com.hurlant.math.BigInteger = nbv(_loc3_);
         var _loc5_:com.hurlant.math.BigInteger = nbi();
         var _loc6_:com.hurlant.math.BigInteger = nbi();
         var _loc7_:String = "";
         divRemTo(_loc4_,_loc5_,_loc6_);
         while(true)
         {
            §§push(_loc5_.sigNum());
            §§push(0);
            if(_loc9_)
            {
               §§push(((§§pop() + 96) * 71 + 1) * 21 - 95);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            §§push((_loc3_ + _loc6_.intValue()).toString(param1));
            §§push(1);
            if(_loc8_)
            {
               §§push(--(§§pop() - 118));
            }
            _loc7_ = §§pop().substr(§§pop()) + _loc7_;
            _loc5_.divRemTo(_loc4_,_loc5_,_loc6_);
         }
         return _loc6_.intValue().toString(param1) + _loc7_;
      }
      
      private final function cbit(param1:int) : int
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 62 + 9 - 1 + 17 + 1) - 1);
         }
         var _loc2_:uint = §§pop();
         while(true)
         {
            §§push(param1);
            §§push(0);
            if(_loc3_)
            {
               §§push(-§§pop() + 101 - 30);
            }
            if(§§pop() == §§pop())
            {
               break;
            }
            param1 = param1 & param1 - 1;
            _loc2_++;
         }
         return _loc2_;
      }
      
      bi_internal final function rShiftTo(param1:int, param2:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc9_)
         {
            §§push((-(§§pop() * 75 - 1 - 104 - 73) + 4) * 9);
         }
         var _loc7_:* = §§pop();
         param2.s = s;
         var _loc3_:int = param1 / DB;
         if(_loc3_ >= t)
         {
            §§push(param2);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(-(§§pop() + 91 - 109) + 1) - 68);
            }
            §§pop().t = §§pop();
            return;
         }
         var _loc4_:int = param1 % DB;
         var _loc5_:int = DB - _loc4_;
         §§push(1);
         if(_loc9_)
         {
            §§push(--(§§pop() + 14 + 1) + 58 + 1);
         }
         var _loc6_:int = §§pop() << _loc4_ - 1;
         §§push(param2.a);
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() * 0 + 31 - 1);
         }
         §§pop()[§§pop()] = a[_loc3_] >> _loc4_;
         §§push(_loc3_);
         §§push(1);
         if(_loc8_)
         {
            §§push(-(-(§§pop() * 43) - 89 - 30) * 9 - 40);
         }
         _loc7_ = int(§§pop() + §§pop());
         while(_loc7_ < t)
         {
            param2.a[_loc7_ - _loc3_ - 1] = param2.a[_loc7_ - _loc3_ - 1] | (a[_loc7_] & _loc6_) << _loc5_;
            param2.a[_loc7_ - _loc3_] = a[_loc7_] >> _loc4_;
            _loc7_++;
         }
         §§push(_loc4_);
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 1 + 1 - 28 - 1 - 1);
         }
         if(§§pop() > §§pop())
         {
            param2.a[t - _loc3_ - 1] = param2.a[t - _loc3_ - 1] | (s & _loc6_) << _loc5_;
         }
         param2.t = t - _loc3_;
         param2.clamp();
      }
      
      public final function modInverse(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:Boolean = param1.isEven();
         if(isEven() && _loc2_ || §§pop() == §§pop())
         {
            return com.hurlant.math.BigInteger.ZERO;
         }
         var _loc3_:com.hurlant.math.BigInteger = param1.clone();
         var _loc4_:com.hurlant.math.BigInteger = clone();
         §§push();
         §§push(1);
         if(_loc9_)
         {
            §§push(§§pop() - 1 - 1 - 78);
         }
         var _loc5_:com.hurlant.math.BigInteger = §§pop().nbv(§§pop());
         §§push();
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() - 84 + 1 - 61 + 1 - 1));
         }
         var _loc6_:com.hurlant.math.BigInteger = §§pop().nbv(§§pop());
         §§push();
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 1 - 1) * 1 + 31 - 1);
         }
         var _loc7_:com.hurlant.math.BigInteger = §§pop().nbv(§§pop());
         §§push();
         §§push(1);
         if(_loc10_)
         {
            §§push(§§pop() - 1 - 1 + 107 - 97 - 1);
         }
         var _loc8_:com.hurlant.math.BigInteger = §§pop().nbv(§§pop());
         while(true)
         {
            §§push(_loc3_.sigNum());
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() - 73 + 110 + 60);
            }
            if(§§pop() == §§pop())
            {
               break;
            }
            while(_loc3_.isEven())
            {
               §§push(_loc3_);
               §§push(1);
               if(_loc10_)
               {
                  §§push((-(§§pop() - 86 + 49) + 1 - 1) * 12 + 12);
               }
               §§pop().rShiftTo(§§pop(),_loc3_);
               if(_loc2_)
               {
                  if(!_loc5_.isEven() || !_loc6_.isEven())
                  {
                     _loc5_.addTo(this,_loc5_);
                     _loc6_.subTo(param1,_loc6_);
                  }
                  §§push(_loc5_);
                  §§push(1);
                  if(_loc10_)
                  {
                     §§push(§§pop() - 49 + 28 - 1);
                  }
                  §§pop().rShiftTo(§§pop(),_loc5_);
               }
               else if(!_loc6_.isEven())
               {
                  _loc6_.subTo(param1,_loc6_);
               }
               §§push(_loc6_);
               §§push(1);
               if(_loc10_)
               {
                  §§push(((§§pop() + 51) * 9 - 34 - 93 - 63 + 1) * 110);
               }
               §§pop().rShiftTo(§§pop(),_loc6_);
            }
            while(_loc4_.isEven())
            {
               §§push(_loc4_);
               §§push(1);
               if(_loc10_)
               {
                  §§push(-(§§pop() - 63) + 39);
               }
               §§pop().rShiftTo(§§pop(),_loc4_);
               if(_loc2_)
               {
                  if(!_loc7_.isEven() || !_loc8_.isEven())
                  {
                     _loc7_.addTo(this,_loc7_);
                     _loc8_.subTo(param1,_loc8_);
                  }
                  §§push(_loc7_);
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push(-((§§pop() - 43) * 111 - 62) + 1);
                  }
                  §§pop().rShiftTo(§§pop(),_loc7_);
               }
               else if(!_loc8_.isEven())
               {
                  _loc8_.subTo(param1,_loc8_);
               }
               §§push(_loc8_);
               §§push(1);
               if(_loc9_)
               {
                  §§push(--((§§pop() - 1) * 31) + 1);
               }
               §§pop().rShiftTo(§§pop(),_loc8_);
            }
            §§push(_loc3_.compareTo(_loc4_));
            §§push(0);
            if(_loc10_)
            {
               §§push(§§pop() + 1 - 74 - 1 - 1);
            }
            if(§§pop() >= §§pop())
            {
               _loc3_.subTo(_loc4_,_loc3_);
               if(_loc2_)
               {
                  _loc5_.subTo(_loc7_,_loc5_);
               }
               _loc6_.subTo(_loc8_,_loc6_);
            }
            else
            {
               _loc4_.subTo(_loc3_,_loc4_);
               if(_loc2_)
               {
                  _loc7_.subTo(_loc5_,_loc7_);
               }
               _loc8_.subTo(_loc6_,_loc8_);
            }
         }
         §§push(_loc4_.compareTo(com.hurlant.math.BigInteger.ONE));
         §§push(0);
         if(_loc10_)
         {
            §§push(-(-§§pop() + 61) + 1);
         }
         if(§§pop() != §§pop())
         {
            return com.hurlant.math.BigInteger.ZERO;
         }
         §§push(_loc8_.compareTo(param1));
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() * 74 + 74 - 100 - 1);
         }
         if(§§pop() >= §§pop())
         {
            return _loc8_.subtract(param1);
         }
         §§push(_loc8_.sigNum());
         §§push(0);
         if(_loc9_)
         {
            §§push(--((§§pop() + 1) * 20 + 1 + 1) + 1);
         }
         if(§§pop() < §§pop())
         {
            _loc8_.addTo(param1,_loc8_);
            §§push(_loc8_.sigNum());
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() * 67 * 20) - 20);
            }
            if(§§pop() < §§pop())
            {
               return _loc8_.add(param1);
            }
            return _loc8_;
         }
         return _loc8_;
      }
      
      bi_internal final function fromArray(param1:ByteArray, param2:int, param3:Boolean = false) : void
      {
         §§push(0);
         if(_loc12_)
         {
            §§push(§§pop() + 1 + 97 + 88 - 1);
         }
         var _loc8_:* = §§pop();
         var _loc4_:int = param1.position;
         var _loc5_:int = _loc4_ + param2;
         §§push(0);
         if(_loc13_)
         {
            §§push(-((§§pop() + 34 - 116) * 9));
         }
         var _loc6_:* = §§pop();
         §§push(8);
         if(_loc12_)
         {
            §§push(§§pop() + 45 + 92 - 1 + 1 + 1);
         }
         var _loc7_:* = §§pop();
         §§push();
         §§push(0);
         if(_loc13_)
         {
            §§push((§§pop() - 103 - 1 - 31) * 63 - 1 + 51);
         }
         §§pop().t = §§pop();
         §§push();
         §§push(0);
         if(_loc12_)
         {
            §§push((§§pop() - 20 + 1) * 40 + 87 - 1 - 57 - 1);
         }
         §§pop().s = §§pop();
         while(--_loc5_ >= _loc4_)
         {
            if(_loc5_ < param1.length)
            {
               §§push(int(param1[_loc5_]));
            }
            else
            {
               §§push(0);
               if(_loc12_)
               {
                  §§push((-(§§pop() + 60) * 37 - 38) * 7 - 48);
               }
            }
            _loc8_ = int(§§pop());
            §§push(_loc6_);
            §§push(0);
            if(_loc13_)
            {
               §§push(-((§§pop() - 33) * 22 * 27 + 1) - 1 + 37);
            }
            if(§§pop() == §§pop())
            {
               a[t++] = _loc8_;
            }
            else if(_loc6_ + _loc7_ > DB)
            {
               §§push(a);
               §§push(t - 1);
               §§push(a[t - 1]);
               §§push(_loc8_);
               §§push(1);
               if(_loc12_)
               {
                  §§push(§§pop() + 1 + 92 - 58 + 68 + 111);
               }
               §§pop()[§§pop()] = §§pop() | (§§pop() & §§pop() << DB - _loc6_ - 1) << _loc6_;
               a[t++] = _loc8_ >> DB - _loc6_;
            }
            else
            {
               a[t - 1] = a[t - 1] | _loc8_ << _loc6_;
            }
            _loc6_ = int(_loc6_ + _loc7_);
            if(_loc6_ >= DB)
            {
               _loc6_ = int(_loc6_ - DB);
            }
         }
         if(!param3 && §§pop() == §§pop())
         {
            §§push();
            §§push(-1);
            if(_loc12_)
            {
               §§push((-§§pop() * 19 + 1 + 1 + 1) * 17 - 112);
            }
            §§pop().s = §§pop();
            §§push(_loc6_);
            §§push(0);
            if(_loc13_)
            {
               §§push(§§pop() + 7 + 1 - 26);
            }
            if(§§pop() > §§pop())
            {
               §§push(a);
               §§push(t - 1);
               §§push(a[t - 1]);
               §§push(1);
               if(_loc12_)
               {
                  §§push(§§pop() - 1 + 31 - 1 - 33 - 1);
               }
               §§pop()[§§pop()] = §§pop() | §§pop() << DB - _loc6_ - 1 << _loc6_;
            }
         }
         clamp();
         param1.position = Math.min(_loc4_ + param2,param1.length);
      }
      
      bi_internal final function copyTo(param1:com.hurlant.math.BigInteger) : void
      {
         var _loc2_:int = t - 1;
         while(true)
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc3_)
            {
               §§push(--§§pop() * 2);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            param1.a[_loc2_] = a[_loc2_];
            _loc2_--;
         }
         param1.t = t;
         param1.s = s;
      }
      
      public final function intValue() : int
      {
         §§push(s);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1 + 1) - 24);
         }
         if(§§pop() < §§pop())
         {
            §§push(t);
            §§push(1);
            if(_loc2_)
            {
               §§push(-((-§§pop() + 1) * 11) - 1 - 49);
            }
            if(§§pop() == §§pop())
            {
               §§push(a);
               §§push(0);
               if(_loc2_)
               {
                  §§push(--§§pop() * 8);
               }
               return §§pop()[§§pop()] - DV;
            }
            §§push(t);
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() - 55 + 1 - 100 + 1 + 1);
            }
            if(§§pop() == §§pop())
            {
               §§push(-1);
               if(_loc1_)
               {
                  return (§§pop() * 116 * 107 - 1 - 1 - 1 + 3) * 106;
               }
            }
         }
         else
         {
            §§push(t);
            §§push(1);
            if(_loc1_)
            {
               §§push(-(§§pop() + 33 + 103));
            }
            if(§§pop() == §§pop())
            {
               §§push(a);
               §§push(0);
               if(_loc2_)
               {
                  §§push(-(§§pop() + 55 + 49) + 16 + 1);
               }
               return §§pop()[§§pop()];
            }
            §§push(t);
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() - 1 - 108 - 1);
            }
            if(§§pop() == §§pop())
            {
               §§push(0);
               if(_loc2_)
               {
                  return -(-§§pop() - 76) + 109;
               }
            }
         }
         §§push(a);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 - 38 - 47) + 1 - 35);
         }
         §§push(§§pop()[§§pop()]);
         §§push(1);
         if(_loc1_)
         {
            §§push((§§pop() + 1 - 7) * 3 + 43 - 23 - 57 + 1);
         }
         §§push((§§pop() & §§pop() << 32 - DB - 1) << DB);
         §§push(a);
         §§push(0);
         if(_loc1_)
         {
            §§push((§§pop() - 1 + 1 - 99 + 1) * 33);
         }
         return §§pop() | §§pop()[§§pop()];
      }
      
      public final function min(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         §§push(compareTo(param1));
         §§push(0);
         if(_loc2_)
         {
            §§push(-(---§§pop() * 7));
         }
         return §§pop() < §§pop()?this:param1;
      }
      
      public final function bitLength() : int
      {
         §§push(t);
         §§push(0);
         if(_loc1_)
         {
            §§push((---(§§pop() + 1) - 96) * 91);
         }
         if(§§pop() <= §§pop())
         {
            §§push(0);
            if(_loc2_)
            {
               return -(-(§§pop() + 1) - 1) - 93 - 4 + 1;
            }
         }
         return DB * (t - 1) + nbits(a[t - 1] ^ s & DM);
      }
      
      public final function shortValue() : int
      {
         §§push(t);
         §§push(0);
         if(_loc1_)
         {
            §§push(-((§§pop() + 38 - 97 - 1 - 1 + 1) * 117));
         }
         if(§§pop() == §§pop())
         {
            §§push(int(s));
         }
         else
         {
            §§push(a);
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() - 28 - 82 - 117);
            }
            §§push(§§pop()[§§pop()]);
            §§push(16);
            if(_loc2_)
            {
               §§push((§§pop() + 1 + 1 + 1 + 48) * 90 - 31 - 1);
            }
            §§push(§§pop() << §§pop());
            §§push(16);
            if(_loc2_)
            {
               §§push(§§pop() - 50 + 1 + 1 - 2);
            }
            §§push(§§pop() >> §§pop());
         }
         return §§pop();
      }
      
      public final function and(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         bitwiseTo(param1,op_and,_loc2_);
         return _loc2_;
      }
      
      public final function byteValue() : int
      {
         §§push(t);
         §§push(0);
         if(_loc1_)
         {
            §§push(--(§§pop() + 1 + 1 - 1) - 28);
         }
         if(§§pop() == §§pop())
         {
            §§push(int(s));
         }
         else
         {
            §§push(a);
            §§push(0);
            if(_loc2_)
            {
               §§push(-§§pop() * 89 + 1 - 43 - 1 - 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(24);
            if(_loc1_)
            {
               §§push((§§pop() - 1 - 1) * 65);
            }
            §§push(§§pop() << §§pop());
            §§push(24);
            if(_loc1_)
            {
               §§push(---(§§pop() - 1));
            }
            §§push(§§pop() >> §§pop());
         }
         return §§pop();
      }
      
      public final function not() : com.hurlant.math.BigInteger
      {
         var _loc1_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() - 110 + 73);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < t)
         {
            _loc1_[_loc2_] = DM & ~a[_loc2_];
            _loc2_++;
         }
         _loc1_.t = t;
         _loc1_.s = ~s;
         return _loc1_;
      }
      
      bi_internal final function subTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 111 * 16 * 7);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() * 23 - 1 + 1 - 108 + 88);
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = Math.min(param1.t,t);
         while(_loc3_ < _loc5_)
         {
            _loc4_ = int(_loc4_ + (a[_loc3_] - param1.a[_loc3_]));
            param2.a[_loc3_++] = _loc4_ & DM;
            _loc4_ = _loc4_ >> DB;
         }
         if(param1.t < t)
         {
            _loc4_ = int(_loc4_ - param1.s);
            while(_loc3_ < t)
            {
               _loc4_ = int(_loc4_ + a[_loc3_]);
               param2.a[_loc3_++] = _loc4_ & DM;
               _loc4_ = _loc4_ >> DB;
            }
            _loc4_ = int(_loc4_ + s);
         }
         else
         {
            _loc4_ = int(_loc4_ + s);
            while(_loc3_ < param1.t)
            {
               _loc4_ = int(_loc4_ - param1.a[_loc3_]);
               param2.a[_loc3_++] = _loc4_ & DM;
               _loc4_ = _loc4_ >> DB;
            }
            _loc4_ = int(_loc4_ - param1.s);
         }
         §§push(param2);
         §§push(_loc4_);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 35 - 101 + 1 + 1);
         }
         if(§§pop() < §§pop())
         {
            §§push(-1);
            if(_loc8_)
            {
               §§push(-(§§pop() * 20 + 119) + 50);
            }
         }
         else
         {
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() + 1 - 1) * 39 - 100);
            }
         }
         §§pop().s = §§pop();
         §§push(_loc4_);
         §§push(-1);
         if(_loc8_)
         {
            §§push((§§pop() * 115 - 1 - 66) * 40 + 1);
         }
         if(§§pop() < §§pop())
         {
            param2.a[_loc3_++] = DV + _loc4_;
         }
         else
         {
            §§push(_loc4_);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() - 1 + 1 + 82) * 78 + 51);
            }
            if(§§pop() > §§pop())
            {
               param2.a[_loc3_++] = _loc4_;
            }
         }
         param2.t = _loc3_;
         param2.clamp();
      }
      
      public final function clone() : com.hurlant.math.BigInteger
      {
         var _loc1_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         this.copyTo(_loc1_);
         return _loc1_;
      }
      
      public final function pow(param1:int) : com.hurlant.math.BigInteger
      {
         return exp(param1,new NullReduction());
      }
      
      public final function flipBit(param1:int) : com.hurlant.math.BigInteger
      {
         return changeBit(param1,op_xor);
      }
      
      public final function xor(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         bitwiseTo(param1,op_xor,_loc2_);
         return _loc2_;
      }
      
      public final function or(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         bitwiseTo(param1,op_or,_loc2_);
         return _loc2_;
      }
      
      public final function max(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         §§push(compareTo(param1));
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 71 - 1 + 3) * 73 + 94 + 1);
         }
         return §§pop() > §§pop()?this:param1;
      }
      
      bi_internal final function fromInt(param1:int) : void
      {
         §§push();
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 104 + 32 + 1) * 63 + 1);
         }
         §§pop().t = §§pop();
         §§push();
         §§push(param1);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 26) * 56 * 90 - 9 - 37);
         }
         if(§§pop() < §§pop())
         {
            §§push(-1);
            if(_loc2_)
            {
               §§push(-(§§pop() + 1 - 96) - 1 + 79);
            }
         }
         else
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(§§pop() * 90 - 1 - 33);
            }
         }
         §§pop().s = §§pop();
         §§push(param1);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() + 48 + 106) + 56) + 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(a);
            §§push(0);
            if(_loc3_)
            {
               §§push(-(§§pop() - 72 - 2 + 105 + 109) + 103 + 1);
            }
            §§pop()[§§pop()] = param1;
         }
         else
         {
            §§push(param1);
            §§push(-1);
            if(_loc3_)
            {
               §§push(-§§pop() + 1 + 1);
            }
            if(§§pop() < §§pop())
            {
               §§push(a);
               §§push(0);
               if(_loc2_)
               {
                  §§push(-§§pop() * 52 - 1 + 112);
               }
               §§pop()[§§pop()] = param1 + DV;
            }
            else
            {
               §§push();
               §§push(0);
               if(_loc2_)
               {
                  §§push((§§pop() - 45) * 85 + 3 + 1 + 85);
               }
               §§pop().t = §§pop();
            }
         }
      }
      
      bi_internal final function isEven() : Boolean
      {
         §§push(t);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 12 - 1) * 73);
         }
         if(§§pop() > §§pop())
         {
            §§push(a);
            §§push(0);
            if(_loc1_)
            {
               §§push((-(§§pop() * 45) + 70 + 1) * 23 * 33);
            }
            §§push(§§pop()[§§pop()]);
            §§push(1);
            if(_loc1_)
            {
               §§push(-(§§pop() + 61) + 1);
            }
            §§push(§§pop() & §§pop());
         }
         else
         {
            §§push(s);
         }
         §§push(0);
         if(_loc2_)
         {
            §§push(--(-§§pop() - 108 + 1 + 1));
         }
         return §§pop() == §§pop();
      }
      
      public final function toString(param1:Number = 16) : String
      {
         §§push(0);
         if(_loc10_)
         {
            §§push(--(§§pop() - 1 + 1 - 1 - 1 + 40));
         }
         var _loc2_:* = §§pop();
         §§push(s);
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() - 1 + 1) - 34 - 61 - 1);
         }
         if(§§pop() < §§pop())
         {
            return "-" + negate().toString(param1);
         }
         §§push(2);
         if(_loc11_)
         {
            §§push(§§pop() - 101 + 1 + 11 + 13 - 1);
         }
         if(§§pop() === _loc9_)
         {
            §§push(0);
            if(_loc10_)
            {
               §§push((-(§§pop() - 1) + 20) * 40 + 97 - 87);
            }
         }
         else
         {
            §§push(4);
            if(_loc10_)
            {
               §§push(§§pop() + 1 + 13 + 44 - 1);
            }
            if(§§pop() === _loc9_)
            {
               §§push(1);
               if(_loc11_)
               {
                  §§push(-(§§pop() + 66 + 1 + 52 - 1) + 1 - 58);
               }
            }
            else
            {
               §§push(8);
               if(_loc11_)
               {
                  §§push(§§pop() - 96 - 14 + 27 - 98);
               }
               if(§§pop() === _loc9_)
               {
                  §§push(2);
                  if(_loc11_)
                  {
                     §§push(-((§§pop() - 116) * 84 + 58) - 76);
                  }
               }
               else
               {
                  §§push(16);
                  if(_loc11_)
                  {
                     §§push(-((§§pop() - 1 + 48 - 1) * 113));
                  }
                  if(§§pop() === _loc9_)
                  {
                     §§push(3);
                     if(_loc10_)
                     {
                        §§push(--(-(§§pop() - 46) + 1));
                     }
                  }
                  else
                  {
                     §§push(32);
                     if(_loc10_)
                     {
                        §§push(§§pop() + 1 + 98 - 1 - 32 + 1);
                     }
                     if(§§pop() === _loc9_)
                     {
                        §§push(4);
                        if(_loc11_)
                        {
                           §§push(-(§§pop() - 28 + 1) - 1);
                        }
                     }
                     else
                     {
                        §§push(5);
                        if(_loc11_)
                        {
                           §§push(-(§§pop() + 97 - 1 + 115) - 1);
                        }
                     }
                  }
               }
            }
         }
         switch(§§pop())
         {
            case 0:
               §§push(1);
               if(_loc11_)
               {
                  §§push(--(§§pop() - 107) * 113 * 83);
               }
               _loc2_ = §§pop();
               break;
            case 1:
               §§push(2);
               if(_loc10_)
               {
                  §§push(-(-((§§pop() - 1) * 51 + 68) * 85));
               }
               _loc2_ = §§pop();
               break;
            case 2:
               §§push(3);
               if(_loc10_)
               {
                  §§push(-((§§pop() + 1 + 42) * 48) - 1 - 63);
               }
               _loc2_ = §§pop();
               break;
            case 3:
               §§push(4);
               if(_loc11_)
               {
                  §§push(§§pop() + 106 + 96 + 1 - 115 - 0);
               }
               _loc2_ = §§pop();
               break;
            case 4:
               §§push(5);
               if(_loc10_)
               {
                  §§push(§§pop() - 1 - 1 - 1 + 1 - 101 - 93 + 1);
               }
               _loc2_ = §§pop();
         }
         §§push(1);
         if(_loc10_)
         {
            §§push(§§pop() + 1 + 1 - 90);
         }
         var _loc3_:int = §§pop() << _loc2_ - 1;
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() + 1 - 93 + 20);
         }
         var _loc4_:* = §§pop();
         var _loc5_:Boolean = false;
         var _loc6_:String = "";
         var _loc7_:int = t;
         var _loc8_:int = DB - _loc7_ * DB % _loc2_;
         §§push(_loc7_--);
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() + 1 + 87 - 1));
         }
         if(§§pop() > §§pop())
         {
            if(_loc8_ < DB && §§pop() > §§pop())
            {
               _loc5_ = true;
               §§push(_loc4_);
               §§push(36);
               if(_loc11_)
               {
                  §§push(§§pop() * 21 + 1 + 15 + 1);
               }
               _loc6_ = §§pop().toString(§§pop());
            }
            while(true)
            {
               §§push(_loc7_);
               §§push(0);
               if(_loc10_)
               {
                  §§push(§§pop() - 9 - 14 + 90 + 1 - 1);
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               if(_loc8_ < _loc2_)
               {
                  §§push(a[_loc7_]);
                  §§push(1);
                  if(_loc11_)
                  {
                     §§push(-(§§pop() + 52 + 97 + 1 + 1) - 29);
                  }
                  _loc4_ = (§§pop() & §§pop() << _loc8_ - 1) << _loc2_ - _loc8_;
                  _loc4_ = _loc4_ | a[--_loc7_] >> (_loc8_ = _loc8_ + (DB - _loc2_));
               }
               else
               {
                  _loc4_ = a[_loc7_] >> (_loc8_ = _loc8_ - _loc2_) & _loc3_;
                  §§push(_loc8_);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push((§§pop() + 112 - 60 - 1) * 30 - 1);
                  }
                  if(§§pop() <= §§pop())
                  {
                     _loc8_ = _loc8_ + DB;
                     _loc7_--;
                  }
               }
               §§push(_loc4_);
               §§push(0);
               if(_loc10_)
               {
                  §§push(-(§§pop() * 52 * 25));
               }
               if(§§pop() > §§pop())
               {
                  _loc5_ = true;
               }
               if(_loc5_)
               {
                  §§push(_loc6_);
                  §§push(_loc4_);
                  §§push(36);
                  if(_loc11_)
                  {
                     §§push(-((§§pop() + 1) * 85 - 1) * 70 - 105);
                  }
                  _loc6_ = §§pop() + §§pop().toString(§§pop());
               }
            }
         }
         return !!_loc5_?_loc6_:"0";
      }
      
      public final function setBit(param1:int) : com.hurlant.math.BigInteger
      {
         return changeBit(param1,op_or);
      }
      
      public final function abs() : com.hurlant.math.BigInteger
      {
         §§push(s);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() * 110 + 93) * 22);
         }
         return §§pop() < §§pop()?negate():this;
      }
      
      bi_internal final function nbits(param1:int) : int
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(((§§pop() + 1) * 14 + 1 + 1) * 16 - 92);
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc6_)
         {
            §§push(§§pop() + 1 + 1 + 1 + 1);
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         §§push(16);
         if(_loc6_)
         {
            §§push(§§pop() - 1 - 1 - 93);
         }
         §§push(_loc3_ = int(§§pop() >>> §§pop()));
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 1 + 1) - 87);
         }
         if(§§pop() != §§pop())
         {
            param1 = _loc3_;
            §§push(_loc2_);
            §§push(16);
            if(_loc5_)
            {
               §§push(§§pop() * 2 - 1 + 68 - 50);
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         §§push(param1);
         §§push(8);
         if(_loc5_)
         {
            §§push(-§§pop() * 30 * 119 - 34 - 1);
         }
         §§push(_loc3_ = int(§§pop() >> §§pop()));
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() + 102) * 4 + 1 + 9);
         }
         if(§§pop() != §§pop())
         {
            param1 = _loc3_;
            §§push(_loc2_);
            §§push(8);
            if(_loc5_)
            {
               §§push((-§§pop() + 1 - 39) * 37 + 1);
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         §§push(param1);
         §§push(4);
         if(_loc6_)
         {
            §§push(§§pop() - 1 - 9 - 1 + 78);
         }
         §§push(_loc3_ = int(§§pop() >> §§pop()));
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 1 + 43 - 40 + 58 - 108);
         }
         if(§§pop() != §§pop())
         {
            param1 = _loc3_;
            §§push(_loc2_);
            §§push(4);
            if(_loc5_)
            {
               §§push(-(-§§pop() + 1 + 16));
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         §§push(param1);
         §§push(2);
         if(_loc5_)
         {
            §§push(-(--(§§pop() * 66) - 1 + 1 + 1));
         }
         §§push(_loc3_ = int(§§pop() >> §§pop()));
         §§push(0);
         if(_loc6_)
         {
            §§push(--§§pop() + 87 - 116 - 1);
         }
         if(§§pop() != §§pop())
         {
            param1 = _loc3_;
            §§push(_loc2_);
            §§push(2);
            if(_loc6_)
            {
               §§push(-(§§pop() - 71) + 20 - 1);
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         §§push(param1);
         §§push(1);
         if(_loc5_)
         {
            §§push((§§pop() + 1) * 62 - 1);
         }
         §§push(_loc3_ = int(§§pop() >> §§pop()));
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 11 - 105 - 36);
         }
         if(§§pop() != §§pop())
         {
            param1 = _loc3_;
            §§push(_loc2_);
            §§push(1);
            if(_loc6_)
            {
               §§push((--(§§pop() + 1) + 78 + 86) * 4 + 103);
            }
            _loc2_ = int(§§pop() + §§pop());
         }
         return _loc2_;
      }
      
      public final function sigNum() : int
      {
         §§push(s);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1 - 1) * 26);
         }
         if(§§pop() < §§pop())
         {
            §§push(-1);
            if(_loc2_)
            {
               return --(§§pop() + 119 - 1 - 63 - 48);
            }
         }
         §§push(t);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 101 + 16 - 1);
         }
         if(§§pop() <= §§pop() || §§pop() == §§pop() && §§pop() <= §§pop())
         {
            §§push(0);
            if(_loc1_)
            {
               return (§§pop() * 9 * 11 + 1 - 1) * 108;
            }
         }
         §§push(1);
         if(_loc2_)
         {
            §§push(--(-(§§pop() - 112 + 1) + 118) + 54);
         }
         return §§pop();
      }
      
      public final function toByteArray() : ByteArray
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(-((-§§pop() + 91) * 114 - 72));
         }
         var _loc4_:* = §§pop();
         var _loc1_:int = t;
         var _loc2_:ByteArray = new ByteArray();
         §§push(_loc2_);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 18 - 117 + 79 - 1);
         }
         §§pop()[§§pop()] = s;
         §§push(DB);
         §§push(_loc1_ * DB);
         §§push(8);
         if(_loc8_)
         {
            §§push(-§§pop() - 2 - 1 - 9);
         }
         var _loc3_:int = §§pop() - §§pop() % §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push((-§§pop() + 58) * 44);
         }
         var _loc5_:* = §§pop();
         §§push(_loc1_--);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 28 + 50 + 102 + 116 + 76);
         }
         if(§§pop() > §§pop())
         {
            if(_loc3_ < DB && (_loc4_ = int(a[_loc1_] >> _loc3_)) != (s & DM) >> _loc3_)
            {
               _loc2_[_loc5_++] = _loc4_ | s << DB - _loc3_;
            }
            while(true)
            {
               §§push(_loc1_);
               §§push(0);
               if(_loc7_)
               {
                  §§push(-((--(§§pop() * 33) - 1) * 17));
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               §§push(_loc3_);
               §§push(8);
               if(_loc8_)
               {
                  §§push((§§pop() * 73 - 69 + 1 + 2 + 1) * 24 - 17);
               }
               if(§§pop() < §§pop())
               {
                  §§push(a[_loc1_]);
                  §§push(1);
                  if(_loc7_)
                  {
                     §§push(§§pop() * 42 - 48 - 1);
                  }
                  §§push(§§pop() & §§pop() << _loc3_ - 1);
                  §§push(8);
                  if(_loc8_)
                  {
                     §§push(-(§§pop() + 49 - 1 + 1) - 1);
                  }
                  _loc4_ = §§pop() << §§pop() - _loc3_;
                  §§push(_loc4_);
                  §§push(a[--_loc1_]);
                  §§push(_loc3_);
                  §§push(DB);
                  §§push(8);
                  if(_loc8_)
                  {
                     §§push((§§pop() - 1) * 79 - 1 + 1);
                  }
                  _loc4_ = §§pop() | §§pop() >> (_loc3_ = §§pop() + (§§pop() - §§pop()));
               }
               else
               {
                  §§push(a[_loc1_]);
                  §§push(_loc3_);
                  §§push(8);
                  if(_loc7_)
                  {
                     §§push((§§pop() - 60 - 69) * 85);
                  }
                  §§push(§§pop() >> (_loc3_ = §§pop() - §§pop()));
                  §§push(255);
                  if(_loc7_)
                  {
                     §§push((§§pop() + 1) * 31 - 1 - 1 - 1);
                  }
                  _loc4_ = §§pop() & §§pop();
                  §§push(_loc3_);
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(-(-§§pop() + 1));
                  }
                  if(§§pop() <= §§pop())
                  {
                     _loc3_ = _loc3_ + DB;
                     _loc1_--;
                  }
               }
               §§push(_loc4_);
               §§push(128);
               if(_loc8_)
               {
                  §§push((§§pop() - 1) * 65 - 1 + 33 - 1);
               }
               §§push(§§pop() & §§pop());
               §§push(0);
               if(_loc8_)
               {
                  §§push(-(§§pop() * 45 + 1));
               }
               if(§§pop() != §§pop())
               {
                  §§push(_loc4_);
                  §§push(-256);
                  if(_loc7_)
                  {
                     §§push(§§pop() * 36 + 105 - 1 - 115);
                  }
                  _loc4_ = §§pop() | §§pop();
               }
               §§push(_loc5_);
               §§push(0);
               if(_loc7_)
               {
                  §§push((§§pop() - 1 - 1 + 1) * 33 + 1);
               }
               if(§§pop() == §§pop() && §§pop() != (§§pop() & §§pop()))
               {
                  _loc5_++;
               }
               §§push(_loc5_);
               §§push(0);
               if(_loc7_)
               {
                  §§push(-(-§§pop() - 89 + 1));
               }
               if(§§pop() > §§pop() || _loc4_ != s)
               {
                  _loc2_[_loc5_++] = _loc4_;
               }
            }
         }
         return _loc2_;
      }
      
      bi_internal final function squareTo(param1:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 17 - 1 + 1);
         }
         var _loc4_:* = §§pop();
         var _loc2_:com.hurlant.math.BigInteger = abs();
         §§push(param1);
         §§push(2);
         if(_loc7_)
         {
            §§push(-(§§pop() * 53 + 90) - 119 - 1 + 68);
         }
         var _loc3_:* = int(§§pop().t = §§pop() * _loc2_.t);
         while(true)
         {
            §§push(--_loc3_);
            §§push(0);
            if(_loc6_)
            {
               §§push(--§§pop() * 43 * 99);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            §§push(param1.a);
            §§push(_loc3_);
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() - 1 + 1 + 1 - 7 + 88 - 1 + 1);
            }
            §§pop()[§§pop()] = §§pop();
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() * 13 + 72 + 1 - 58);
         }
         _loc3_ = §§pop();
         while(_loc3_ < _loc2_.t - 1)
         {
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(_loc2_.a[_loc3_]);
            §§push(param1);
            §§push(2);
            if(_loc6_)
            {
               §§push((-§§pop() - 80 - 43 + 1) * 89 + 1);
            }
            §§push(§§pop() * _loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() + 104 - 1 + 1) * 73 + 109 - 102 + 1);
            }
            _loc4_ = int(§§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),1));
            §§push(param1.a);
            §§push(_loc3_ + _loc2_.t);
            §§push(param1.a[_loc3_ + _loc2_.t]);
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(1);
            if(_loc6_)
            {
               §§push(-(-§§pop() + 1) + 31);
            }
            §§push(§§pop() + §§pop());
            §§push(2);
            if(_loc6_)
            {
               §§push(§§pop() - 44 - 1 - 26 + 12);
            }
            §§push(§§pop() * _loc2_.a[_loc3_]);
            §§push(param1);
            §§push(2);
            if(_loc7_)
            {
               §§push(-(§§pop() * 50 - 1) + 108);
            }
            §§push(§§pop() * _loc3_);
            §§push(1);
            if(_loc6_)
            {
               §§push((-(§§pop() - 114 - 1 - 99) - 28) * 78 - 1);
            }
            if((§§pop()[§§pop()] = §§pop() + §§pop().am(§§pop(),§§pop(),§§pop(),§§pop() + §§pop(),_loc4_,_loc2_.t - _loc3_ - 1)) >= DV)
            {
               param1.a[_loc3_ + _loc2_.t] = param1.a[_loc3_ + _loc2_.t] - DV;
               §§push(param1.a);
               §§push(_loc3_ + _loc2_.t);
               §§push(1);
               if(_loc7_)
               {
                  §§push(-(-§§pop() + 1 - 1) - 1 - 58 + 1);
               }
               §§push(§§pop() + §§pop());
               §§push(1);
               if(_loc7_)
               {
                  §§push((§§pop() + 99 + 1) * 84 - 103 + 1);
               }
               §§pop()[§§pop()] = §§pop();
            }
            _loc3_++;
         }
         §§push(param1.t);
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() + 1 + 21) * 91) - 1 + 36 + 60);
         }
         if(§§pop() > §§pop())
         {
            §§push(param1.a);
            §§push(param1.t - 1);
            §§push(param1.a[param1.t - 1]);
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(_loc2_.a[_loc3_]);
            §§push(param1);
            §§push(2);
            if(_loc6_)
            {
               §§push(-(§§pop() * 0 + 1 - 67) + 1 - 1);
            }
            §§push(§§pop() * _loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push(§§pop() - 1 - 63 + 1);
            }
            §§pop()[§§pop()] = §§pop() + §§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),1);
         }
         §§push(param1);
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() + 88 - 1) * 79 - 1) * 4 - 95 + 1);
         }
         §§pop().s = §§pop();
         param1.clamp();
      }
      
      private final function op_and(param1:int, param2:int) : int
      {
         return param1 & param2;
      }
      
      protected final function fromRadix(param1:String, param2:int = 10) : void
      {
         §§push(0);
         if(_loc11_)
         {
            §§push(((§§pop() - 13) * 94 * 110 + 75) * 95);
         }
         var _loc9_:* = §§pop();
         §§push();
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() + 1 - 5 - 91);
         }
         §§pop().fromInt(§§pop());
         var _loc3_:int = chunkSize(param2);
         var _loc4_:Number = Math.pow(param2,_loc3_);
         var _loc5_:Boolean = false;
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() + 106) - 51 - 59 - 1 - 1 - 44);
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() + 33 + 0 + 103));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push((-((§§pop() - 46) * 7) - 1) * 75);
         }
         var _loc8_:* = §§pop();
         while(_loc8_ < param1.length)
         {
            _loc9_ = int(intAt(param1,_loc8_));
            §§push(_loc9_);
            §§push(0);
            if(_loc10_)
            {
               §§push(§§pop() - 37 + 19 + 1 + 1 + 1);
            }
            if(§§pop() < §§pop())
            {
               if(param1.charAt(_loc8_) == "-" && §§pop() == §§pop())
               {
                  _loc5_ = true;
               }
            }
            else
            {
               _loc7_ = int(param2 * _loc7_ + _loc9_);
               if(++_loc6_ >= _loc3_)
               {
                  dMultiply(_loc4_);
                  §§push();
                  §§push(_loc7_);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(§§pop() + 1 + 1 + 1);
                  }
                  §§pop().dAddOffset(§§pop(),§§pop());
                  §§push(0);
                  if(_loc11_)
                  {
                     §§push(§§pop() * 107 * 89 + 1);
                  }
                  _loc6_ = §§pop();
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(--(-((§§pop() + 1) * 106 - 1) * 27));
                  }
                  _loc7_ = §§pop();
               }
            }
            _loc8_++;
         }
         §§push(_loc6_);
         §§push(0);
         if(_loc11_)
         {
            §§push((-(§§pop() * 34 - 1) + 1) * 64 + 86);
         }
         if(§§pop() > §§pop())
         {
            dMultiply(Math.pow(param2,_loc6_));
            §§push();
            §§push(_loc7_);
            §§push(0);
            if(_loc10_)
            {
               §§push(§§pop() - 54 - 1 - 90);
            }
            §§pop().dAddOffset(§§pop(),§§pop());
         }
         if(_loc5_)
         {
            com.hurlant.math.BigInteger.ZERO.subTo(this,this);
         }
      }
      
      bi_internal final function dlShiftTo(param1:int, param2:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 103 * 103 - 1) * 78 - 77 - 1 + 1);
         }
         var _loc3_:* = §§pop();
         _loc3_ = int(t - 1);
         while(true)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(-§§pop() - 1));
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            param2.a[_loc3_ + param1] = a[_loc3_];
            _loc3_--;
         }
         _loc3_ = int(param1 - 1);
         while(true)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() - 31 - 81) * 64 - 1 - 1);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            §§push(param2.a);
            §§push(_loc3_);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1 + 62) + 76 + 112 + 1);
            }
            §§pop()[§§pop()] = §§pop();
            _loc3_--;
         }
         param2.t = t + param1;
         param2.s = s;
      }
      
      private final function op_xor(param1:int, param2:int) : int
      {
         return param1 ^ param2;
      }
   }
}
