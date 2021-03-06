package spark.core
{
   import flashx.textLayout.formats.TextLayoutFormat;
   import mx.core.mx_internal;
   import mx.styles.IStyleClient;
   import flash.text.engine.FontLookup;
   import flash.text.engine.Kerning;
   import flashx.textLayout.property.Property;
   import flashx.textLayout.tlf_internal;
   
   use namespace mx_internal;
   
   public class CSSTextLayoutFormat extends TextLayoutFormat
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function CSSTextLayoutFormat(param1:IStyleClient)
      {
         var _loc2_:Property = null;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         super();
         for each(_loc2_ in TextLayoutFormat.tlf_internal::description)
         {
            _loc3_ = _loc2_.name;
            if(_loc3_ == "fontLookup")
            {
               this[_loc3_] = convertedFontLookup(param1);
            }
            else if(_loc3_ == "kerning")
            {
               this[_loc3_] = convertedKerning(param1);
            }
            else
            {
               _loc4_ = param1.getStyle(_loc3_);
               if(_loc4_ !== undefined)
               {
                  this[_loc3_] = _loc4_;
               }
            }
         }
      }
      
      private static function convertedFontLookup(param1:IStyleClient) : *
      {
         var _loc2_:String = param1.getStyle("fontLookup");
         if(_loc2_ == "auto")
         {
            if(param1.mx_internal::embeddedFontContext)
            {
               _loc2_ = FontLookup.EMBEDDED_CFF;
            }
            else
            {
               _loc2_ = FontLookup.DEVICE;
            }
         }
         return _loc2_;
      }
      
      private static function convertedKerning(param1:IStyleClient) : *
      {
         var _loc2_:Object = param1.getStyle("kerning");
         if(_loc2_ === "default")
         {
            _loc2_ = Kerning.AUTO;
         }
         else if(_loc2_ === true)
         {
            _loc2_ = Kerning.ON;
         }
         else if(_loc2_ === false)
         {
            _loc2_ = Kerning.OFF;
         }
         return _loc2_;
      }
   }
}
