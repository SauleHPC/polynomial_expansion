CXXFLAGS=-std=c++11 -O3 -fopenmp -march=native -mtune=native
LDFLAGS=-fopenmp 
CUDAFLAGS=-O3 -std=c++11 -arch=sm_50

polynomial: polynomial.cpp

polynomial_openmp: polynomial_openmp.cpp

polynomial_gpu_basic: polynomial_gpu_basic.cu
	nvcc $(CUDAFLAGS) polynomial_gpu_basic.cu -o polynomial_gpu_basic

clean:
	-rm polynomial polynomial_gpu

