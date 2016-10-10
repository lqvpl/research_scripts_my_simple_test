package system.text.parser
{
   public final class GenericParser
   {
       
      
      private var _source:String;
      
      public var pos:uint;
      
      public var ch:String;
      
      public function GenericParser(param1:String)
      {
         super();
         _source = param1;
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 47 - 1 - 1);
         }
         §§pop().pos = §§pop();
         ch = "";
      }
      
      public static function isDigit(param1:String) : Boolean
      {
         return "0" <= param1 && param1 <= "9";
      }
      
      public static function isAlpha(param1:String) : Boolean
      {
         return "A" <= param1 && param1 <= "Z" || "a" <= param1 && param1 <= "z";
      }
      
      public static function isUnicode(param1:String) : Boolean
      {
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 46 + 1);
         }
         §§push(§§pop().charCodeAt(§§pop()));
         §§push(255);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 35));
         }
         return §§pop() > §§pop();
      }
      
      public static function isHexDigit(param1:String) : Boolean
      {
         return isDigit(param1) || "A" <= param1 && param1 <= "F" || "a" <= param1 && param1 <= "f";
      }
      
      public static function isASCII(param1:String) : Boolean
      {
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 93 + 49 - 2));
         }
         §§push(§§pop().charCodeAt(§§pop()));
         §§push(255);
         if(_loc3_)
         {
            §§push(§§pop() * 48 * 34 - 1 - 23 - 49);
         }
         return §§pop() <= §§pop();
      }
      
      public final function next() : String
      {
         ch = getChar();
         pos++;
         return ch;
      }
      
      public function get source() : String
      {
         return _source;
      }
      
      public final function getChar() : String
      {
         return source.charAt(pos);
      }
      
      public final function hasMoreChar() : Boolean
      {
         return pos <= source.length - 1;
      }
      
      public final function getCharAt(param1:uint) : String
      {
         return source.charAt(param1);
      }
   }
}
