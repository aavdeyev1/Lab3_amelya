#include "myKernel.h"

__global__ void kernel( int *a, int dimx, int dimy )
{
    int ix   = blockIdx.x*blockDim.x + threadIdx.x;
    int iy   = blockIdx.y*blockDim.y + threadIdx.y;
    int idx = iy*dimx + ix;
    if (ix < dimx)
        a[idx] = blockIdx.y;
}

// Please implement the following kernels2 through kernel6,
// in order to meet the requirements in the write-ups. 
__global__ void kernel2( int *a, int dimx, int dimy )
{ // Done
    int ix   = blockIdx.x*blockDim.x + threadIdx.x;
    int iy   = blockIdx.y*blockDim.y + threadIdx.y;
    int idx = iy*dimx + ix;
    if (ix < dimx)
        a[idx] = gridDim.x * blockIdx.y + blockIdx.x;
}

__global__ void kernel3( int *a, int dimx, int dimy )
{ // DOne
    int ix   = blockIdx.x*blockDim.x + threadIdx.x;
    int iy   = blockIdx.y*blockDim.y + threadIdx.y;
    int idx = iy*dimx + ix;

    a[idx] = idx;
}

__global__ void kernel4( int *a, int dimx, int dimy )
{ // Done
    int ix   = blockIdx.x*blockDim.x + threadIdx.x;
    int iy   = blockIdx.y*blockDim.y + threadIdx.y;
    int idx = iy*dimx + ix;
    if (ix < dimx)
        a[idx] = threadIdx.x + blockDim.x*threadIdx.y;
    
}

__global__ void kernel5( int *a, int dimx, int dimy )
{ // Done
    int ix   = blockIdx.x*blockDim.x + threadIdx.x;
    int iy   = blockIdx.y*blockDim.y + threadIdx.y;
    int idx = iy*dimx + ix;
    if (ix < dimx)
        a[idx] = blockIdx.y;
}

__global__ void kernel6( int *a, int dimx, int dimy )
{ // Done
    int ix   = blockIdx.x*blockDim.x + threadIdx.x;
    int iy   = blockIdx.y*blockDim.y + threadIdx.y;
    int idx = iy*dimx + ix;
    if (ix < dimx)
        a[idx] = blockIdx.x;
}


