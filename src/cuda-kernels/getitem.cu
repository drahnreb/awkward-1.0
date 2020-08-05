// BSD 3-Clause License; see https://github.com/scikit-hep/awkward-1.0/blob/master/LICENSE

#include "awkward/cuda-kernels/cuda_getitem.h"
#include <iostream>

template <typename T>
T awkward_cuda_Index_getitem_at_nowrap(const T* ptr,
                                       int64_t offset,
                                       int64_t at) {
  T item;
  cudaMemcpy(&item,
             &ptr[(int64_t) (offset + at)],
             sizeof(T),
             cudaMemcpyDeviceToHost);
  return item;
}
int8_t awkward_cuda_Index8_getitem_at_nowrap(
  const int8_t* ptr,
  int64_t offset,
  int64_t at) {
  return awkward_cuda_Index_getitem_at_nowrap<int8_t>(
    ptr,
    offset,
    at);
}
uint8_t awkward_cuda_IndexU8_getitem_at_nowrap(
  const uint8_t* ptr,
  int64_t offset,
  int64_t at) {
  return awkward_cuda_Index_getitem_at_nowrap<uint8_t>(
    ptr,
    offset,
    at);
}
int32_t awkward_cuda_Index32_getitem_at_nowrap(
  const int32_t* ptr,
  int64_t offset,
  int64_t at) {
  return awkward_cuda_Index_getitem_at_nowrap<int32_t>(
    ptr,
    offset,
    at);
}
uint32_t awkward_cuda_IndexU32_getitem_at_nowrap(
  const uint32_t* ptr,
  int64_t offset,
  int64_t at) {
  return awkward_cuda_Index_getitem_at_nowrap<uint32_t>(
    ptr,
    offset,
    at);
}
int64_t awkward_cuda_Index64_getitem_at_nowrap(
  const int64_t * ptr,
  int64_t offset,
  int64_t at) {
  return awkward_cuda_Index_getitem_at_nowrap<int64_t>(
    ptr,
    offset,
    at);
}

template <typename T>
T awkward_cuda_NumpyArray_getitem_at0(const T* ptr) {
  T item;
  cudaMemcpy(&item,
             &ptr[0],
             sizeof(T),
             cudaMemcpyDeviceToHost);
  return item;
}
bool awkward_cuda_NumpyArraybool_getitem_at0(
  const bool* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<bool>(ptr);
}
int8_t awkward_cuda_NumpyArray8_getitem_at0(
  const int8_t* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<int8_t>(ptr);
}
uint8_t awkward_cuda_NumpyArrayU8_getitem_at0(
  const uint8_t* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<uint8_t>(ptr);
}
int16_t awkward_cuda_NumpyArray16_getitem_at0(
  const int16_t* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<int16_t>(ptr);
}
uint16_t awkward_cuda_NumpyArrayU16_getitem_at0(
  const uint16_t* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<uint16_t>(ptr);
}
int32_t awkward_cuda_NumpyArray32_getitem_at0(
  const int32_t* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<int32_t>(ptr);
}
uint32_t awkward_cuda_NumpyArrayU32_getitem_at0(
  const uint32_t* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<uint32_t>(ptr);
}
int64_t awkward_cuda_NumpyArray64_getitem_at0(
  const int64_t* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<int64_t>(ptr);
}
uint64_t awkward_cuda_NumpyArrayU64_getitem_at0(
  const uint64_t* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<uint64_t>(ptr);
}
float awkward_cuda_NumpyArrayfloat32_getitem_at0(
  const float* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<float>(ptr);
}
double awkward_cuda_NumpyArrayfloat64_getitem_at0(
  const double* ptr) {
  return awkward_cuda_NumpyArray_getitem_at0<double>(ptr);
}

template <typename T>
void awkward_cuda_Index_setitem_at_nowrap(
  const T* ptr,
  int64_t offset,
  int64_t at,
  T value) {
  cudaMemcpy(
    (void *) &ptr[(int64_t) (offset + at)],
    &value, sizeof(T),
    cudaMemcpyHostToDevice);
}
void awkward_cuda_Index8_setitem_at_nowrap(
  const int8_t* ptr,
  int64_t offset,
  int64_t at,
  int8_t value) {
  return awkward_cuda_Index_setitem_at_nowrap<int8_t>(
    ptr,
    offset,
    at,
    value);
}
void awkward_cuda_IndexU8_setitem_at_nowrap(
  const uint8_t* ptr,
  int64_t offset,
  int64_t at,
  uint8_t value) {
  return awkward_cuda_Index_setitem_at_nowrap<uint8_t>(
    ptr,
    offset,
    at,
    value);
}
void awkward_cuda_Index32_setitem_at_nowrap(
  const int32_t* ptr,
  int64_t offset,
  int64_t at,
  int32_t value) {
  return awkward_cuda_Index_setitem_at_nowrap<int32_t>(
    ptr,
    offset,
    at,
    value);
}
void awkward_cuda_IndexU32_setitem_at_nowrap(
  const uint32_t* ptr,
  int64_t offset,
  int64_t at,
  uint32_t value) {
  return awkward_cuda_Index_setitem_at_nowrap<uint32_t>(
    ptr,
    offset,
    at,
    value);
}
void awkward_cuda_Index64_setitem_at_nowrap(
  const int64_t* ptr,
  int64_t offset,
  int64_t at,
  int64_t value) {
  return awkward_cuda_Index_setitem_at_nowrap<int64_t>(
    ptr,
    offset,
    at,
    value);
}