CXXFLAGS=-std=c++17 -O3 -fopenmp -march=native -mtune=native
LDFLAGS=-fopenmp 
CUDAFLAGS=-O3 -std=c++17 -arch=sm_50

polynomial: polynomial.cpp

polynomial_openmp: polynomial_openmp.cpp

polynomial_gpu_basic: polynomial_gpu_basic.cu
	nvcc $(CUDAFLAGS) $< -o $@

polynomial_gpu_uvm_basic: polynomial_gpu_uvm_basic.cu
	nvcc $(CUDAFLAGS) $< -o $@


clean:
	-rm polynomial polynomial_gpu

