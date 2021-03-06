import 'package:scidart/src/numdart/arrays_base/array.dart';
import 'package:scidart/src/numdart/arrays_base/array2d.dart';

///  Get a submatrix where each element of [rows] array represent a column on
///  current matrix.
///  [rows]    Array of row indices.
///  [col0]   Initial column index
///  [col1]   Final column index
///  return     A(r(:),j0:j1)
///  exception  ArrayIndexOutOfBoundsException Submatrix indices
///  Examples
///  --------
///  >>> var a = Array2d([
///  >>>  Array([4.0, 2.0, 1.0]),
///  >>>  Array([16.0, 4.0, 1.0]),
///  >>>  Array([64.0, 8.0, 1.0])
///  >>> ]);
///  >>> matrixSubFromArray(a, Array([0, 1]), 0, 2);
///  Array2d([
///    Array([4.0, 2.0, 1.0]),
///    Array([16.0, 4.0, 1.0])
///  ]);
Array2d matrixSubFromArray(Array2d a, Array rows, int col0, int col1) {
  Array2d b = Array2d.fixed(rows.length, col1 - col0 + 1);
  try {
    for (int i = 0; i < rows.length; i++) {
      for (int j = col0; j <= col1; j++) {
        b[i][j - col0] = a[rows[i].toInt()][j];
      }
    }
  } catch (e) {
    throw FormatException("Submatrix indices: ${e}");
  }
  return b;
}
