#include <Eigen/Dense>
#include <cmath>
#include <iomanip>
#include <iostream>

#define PI 3.14159265358979323846

using namespace std;
using namespace Eigen;

double sind(double d) {
  float r = d * PI / 180.0;
  return sin(r);
}
double cosd(double d) {
  float r = d * PI / 180.0;
  return cos(r);
}

class SixDoF {
public:
  SixDoF(MatrixXf m);
  ~SixDoF();
  Matrix4f getTrans(int upIndex, int downIndex);

private:
  MatrixXf dh;
};

SixDoF::SixDoF(MatrixXf m) {
  dh.resize(6, 4);
  dh = m;
  cout << "D-H paramters = " << endl << endl;
  cout << "theta   alpha   a       d" << endl << endl;
  cout << fixed << setprecision(2) << dh << endl;
  cout << endl;
}

SixDoF::~SixDoF() {}

Matrix4f SixDoF::getTrans(int upIndex, int downIndex) {
  Matrix4f T;
  if ((downIndex - upIndex) == 1) {
    T << cosd(dh(downIndex - 1, 0)), -sind(dh(downIndex - 1, 0)), 0,
        dh(upIndex, 2), sind(dh(upIndex, 0)) * cosd(dh(upIndex, 1)),
        cosd(dh(upIndex, 0)) * cosd(dh(upIndex, 1)), -sind(dh(upIndex, 1)),
        -sind(dh(upIndex, 1)) * dh(upIndex, 3),
        sind(dh(upIndex, 0)) * sind(dh(upIndex, 1)),
        cosd(dh(upIndex, 0)) * sind(dh(upIndex, 1)), cosd(dh(upIndex, 1)),
        cosd(dh(upIndex, 1)) * dh(upIndex, 3), 0, 0, 0, 1;
  } else {
    T = getTrans(upIndex, upIndex + 1);
    for (int i = upIndex + 1; i < downIndex; i++) {
      T = T * getTrans(i, i + 1);
    }
  }
  return T;
}

int main() {
  MatrixXf m(6, 4);
  m << 90, 0, 0, 0, 0, -90, 0, 149.09, -90, 0, 432.8, 0, 0, -90, 20.32, 433.07,
      0, 90, 0, 0, 0, -90, 0, 0;

  SixDoF puma(m);
  cout << puma.getTrans(0, 1);

  return 0;
}
