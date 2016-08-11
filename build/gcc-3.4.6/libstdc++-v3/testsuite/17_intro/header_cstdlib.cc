// 2000-01-01 bkoz

// Copyright (C) 2001, 2002, 2003 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 2, or (at your option)
// any later version.

// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along
// with this library; see the file COPYING.  If not, write to the Free
// Software Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307,
// USA.

// 17.4.1.2 Headers, cstdlib

#include <cstdlib>

// libstdc++/2190
void test01()
{
  long a __attribute__((unused)) = std::abs(1L);
  std::div(2L, 1L);
  std::ldiv_t b __attribute__((unused));
}

void test02()
{
  // Make sure size_t is in namespace std.
  std::size_t i __attribute__((unused)) = 5;
}

int main()
{
  test01();
  test02();
  return 0;
}