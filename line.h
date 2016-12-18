#ifndef LINE_H
#define LINE_H

#include <vector>

class Line
{
public:
  Line(int size);
  ~Line();
  void put(int index, int type);
  void clear();
  std::vector<int> getData();
  int size();
  bool isValid(std::vector<int> clues, int upto);
private:
  std::vector<int> getBlocksUpto(int upto);
  int size;
  int *filled;
}

#endif