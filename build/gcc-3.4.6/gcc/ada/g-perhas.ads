------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                  G N A T . P E R F E C T _ H A S H                       --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--              Copyright (C) 2002-2003 Ada Core Technologies, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

package GNAT.Perfect_Hash is
pragma Pure (Perfect_Hash);

   --  The packages in this hierarchy implement perfect hash
   --  functions. To understand what a perfect hash function is, we
   --  define several notions. These definitions are inspired from the
   --  following paper:
   --
   --    Zbigniew J. Czech, George Havas, and Bohdan S. Majewski ``An
   --    Optimal Algorithm for Generating Minimal Perfect Hash Functions'',
   --    Information Processing Letters, 43(1992) pp.257-264, Oct.1992
   --
   --  Let W be a set of m words. A hash function h is a function that
   --  maps the set of words W into some given interval of integers
   --  [0, k-1], where k is an integer, usually k >= m. h (w) where w
   --  is a word computes an address or an integer from I for the
   --  storage or the retrieval of that item. The storage area used to
   --  store items is known as a hash table. Words for which the same
   --  address is computed are called synonyms. Due to the existence
   --  of synonyms a situation called collision may arise in which two
   --  items w1 and w2 have the same address. Several schemes for
   --  resolving known. A perfect hash function is an injection from
   --  the word set W to the integer interval I with k >= m. If k = m,
   --  then h is a minimal perfect hash function. A hash function is
   --  order preserving if it puts entries into the hash table in a
   --  prespecified order.
   --
   --  A minimal perfect hash function is defined by two properties:
   --  * Since no collisions occur each item can be retrieved from the
   --    table in *one* probe. This represents the "perfect" property.
   --  * The hash table size corresponds to the exact size of W and
   --    *no larger*. This represents the "minimal" property.

end GNAT.Perfect_Hash;
