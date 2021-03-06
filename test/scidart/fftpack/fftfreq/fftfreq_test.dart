import 'package:scidart/scidart.dart';
import 'package:scidart/src/numdart/numdart.dart';
import 'package:test/test.dart';

void main() {
  test('fftfreq of a signal', () {
    var signal = Array([-2, 8, 6, 4, 1, 0, 3, 5]);
    var timeSignal = Array([0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7]);
    var fourier = arrayComplexAbs(rfft(signal));
    var n = signal.length;
    var timeStep = timeSignal[1] - timeSignal[0]; // 0.1
    var freq = fftFreq(n, d: timeStep);
    print(fourier);
    print(fourier.length);
    print(freq);
    print(freq.length);

    var freqExpec = Array([0.0, 1.25, 2.5, 3.75, -5.0, -3.75, -2.5, -1.25]);

    expect(freq, freqExpec);
  });

  test('fftfreq of a signal real only', () {
    var signal = Array([-2, 8, 6, 4, 1, 0, 3, 5]);
    var timeSignal = Array([0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7]);
    var fourier = arrayComplexAbs(rfft(signal));
    var n = signal.length;
    var timeStep = timeSignal[1] - timeSignal[0]; // 0.1
    var freq = fftFreq(n, d: timeStep, realFrequenciesOnly: true);
    print(fourier);
    print(fourier.length);
    print(freq);
    print(freq.length);

    var freqExpec = Array([0.0, 1.25, 2.5, 3.75]);

    expect(freq, freqExpec);
  });
}
