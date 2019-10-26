#ifndef SIXDOF_H
#define SIXDOF_H
#include <iostream>
#include <Eigen/Dense>
using namespace Eigen;

class SixDoF {
public:
  SixDoF(MatrixXf m);
  ~SixDoF();
  Matrix4f getTrans(int oriIndex, int index);

private:
  MatrixXf dh(6,4);
};

#endif // SIXDOF_H
