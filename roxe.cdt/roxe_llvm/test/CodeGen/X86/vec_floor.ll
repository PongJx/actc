; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mattr=+sse4.1 | FileCheck %s --check-prefix=SSE41
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mattr=+avx | FileCheck %s --check-prefix=AVX
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mattr=+avx512vl | FileCheck %s --check-prefix=AVX512

define <2 x double> @floor_v2f64(<2 x double> %p) {
; SSE41-LABEL: floor_v2f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $9, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: floor_v2f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $9, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: floor_v2f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $9, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <2 x double> @llvm.floor.v2f64(<2 x double> %p)
  ret <2 x double> %t
}
declare <2 x double> @llvm.floor.v2f64(<2 x double> %p)

define <4 x float> @floor_v4f32(<4 x float> %p) {
; SSE41-LABEL: floor_v4f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $9, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: floor_v4f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $9, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: floor_v4f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $9, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <4 x float> @llvm.floor.v4f32(<4 x float> %p)
  ret <4 x float> %t
}
declare <4 x float> @llvm.floor.v4f32(<4 x float> %p)

define <4 x double> @floor_v4f64(<4 x double> %p){
; SSE41-LABEL: floor_v4f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $9, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $9, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: floor_v4f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $9, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: floor_v4f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $9, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <4 x double> @llvm.floor.v4f64(<4 x double> %p)
  ret <4 x double> %t
}
declare <4 x double> @llvm.floor.v4f64(<4 x double> %p)

define <8 x float> @floor_v8f32(<8 x float> %p) {
; SSE41-LABEL: floor_v8f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $9, %xmm0, %xmm0
; SSE41-NEXT:    roundps $9, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: floor_v8f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $9, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: floor_v8f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $9, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <8 x float> @llvm.floor.v8f32(<8 x float> %p)
  ret <8 x float> %t
}
declare <8 x float> @llvm.floor.v8f32(<8 x float> %p)

define <8 x double> @floor_v8f64(<8 x double> %p){
; SSE41-LABEL: floor_v8f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $9, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $9, %xmm1, %xmm1
; SSE41-NEXT:    roundpd $9, %xmm2, %xmm2
; SSE41-NEXT:    roundpd $9, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: floor_v8f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $9, %ymm0, %ymm0
; AVX-NEXT:    vroundpd $9, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: floor_v8f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscalepd $9, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <8 x double> @llvm.floor.v8f64(<8 x double> %p)
  ret <8 x double> %t
}
declare <8 x double> @llvm.floor.v8f64(<8 x double> %p)

define <16 x float> @floor_v16f32(<16 x float> %p) {
; SSE41-LABEL: floor_v16f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $9, %xmm0, %xmm0
; SSE41-NEXT:    roundps $9, %xmm1, %xmm1
; SSE41-NEXT:    roundps $9, %xmm2, %xmm2
; SSE41-NEXT:    roundps $9, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: floor_v16f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $9, %ymm0, %ymm0
; AVX-NEXT:    vroundps $9, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: floor_v16f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscaleps $9, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <16 x float> @llvm.floor.v16f32(<16 x float> %p)
  ret <16 x float> %t
}
declare <16 x float> @llvm.floor.v16f32(<16 x float> %p)

define <2 x double> @ceil_v2f64(<2 x double> %p) {
; SSE41-LABEL: ceil_v2f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $10, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: ceil_v2f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $10, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: ceil_v2f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $10, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <2 x double> @llvm.ceil.v2f64(<2 x double> %p)
  ret <2 x double> %t
}
declare <2 x double> @llvm.ceil.v2f64(<2 x double> %p)

define <4 x float> @ceil_v4f32(<4 x float> %p) {
; SSE41-LABEL: ceil_v4f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $10, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: ceil_v4f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $10, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: ceil_v4f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $10, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <4 x float> @llvm.ceil.v4f32(<4 x float> %p)
  ret <4 x float> %t
}
declare <4 x float> @llvm.ceil.v4f32(<4 x float> %p)

define <4 x double> @ceil_v4f64(<4 x double> %p) {
; SSE41-LABEL: ceil_v4f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $10, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $10, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: ceil_v4f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $10, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: ceil_v4f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $10, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <4 x double> @llvm.ceil.v4f64(<4 x double> %p)
  ret <4 x double> %t
}
declare <4 x double> @llvm.ceil.v4f64(<4 x double> %p)

define <8 x float> @ceil_v8f32(<8 x float> %p) {
; SSE41-LABEL: ceil_v8f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $10, %xmm0, %xmm0
; SSE41-NEXT:    roundps $10, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: ceil_v8f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $10, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: ceil_v8f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $10, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <8 x float> @llvm.ceil.v8f32(<8 x float> %p)
  ret <8 x float> %t
}
declare <8 x float> @llvm.ceil.v8f32(<8 x float> %p)

define <8 x double> @ceil_v8f64(<8 x double> %p){
; SSE41-LABEL: ceil_v8f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $10, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $10, %xmm1, %xmm1
; SSE41-NEXT:    roundpd $10, %xmm2, %xmm2
; SSE41-NEXT:    roundpd $10, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: ceil_v8f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $10, %ymm0, %ymm0
; AVX-NEXT:    vroundpd $10, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: ceil_v8f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscalepd $10, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <8 x double> @llvm.ceil.v8f64(<8 x double> %p)
  ret <8 x double> %t
}
declare <8 x double> @llvm.ceil.v8f64(<8 x double> %p)

define <16 x float> @ceil_v16f32(<16 x float> %p) {
; SSE41-LABEL: ceil_v16f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $10, %xmm0, %xmm0
; SSE41-NEXT:    roundps $10, %xmm1, %xmm1
; SSE41-NEXT:    roundps $10, %xmm2, %xmm2
; SSE41-NEXT:    roundps $10, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: ceil_v16f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $10, %ymm0, %ymm0
; AVX-NEXT:    vroundps $10, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: ceil_v16f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscaleps $10, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <16 x float> @llvm.ceil.v16f32(<16 x float> %p)
  ret <16 x float> %t
}
declare <16 x float> @llvm.ceil.v16f32(<16 x float> %p)

define <2 x double> @trunc_v2f64(<2 x double> %p) {
; SSE41-LABEL: trunc_v2f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $11, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: trunc_v2f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $11, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: trunc_v2f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $11, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <2 x double> @llvm.trunc.v2f64(<2 x double> %p)
  ret <2 x double> %t
}
declare <2 x double> @llvm.trunc.v2f64(<2 x double> %p)

define <4 x float> @trunc_v4f32(<4 x float> %p) {
; SSE41-LABEL: trunc_v4f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $11, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: trunc_v4f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $11, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: trunc_v4f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $11, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <4 x float> @llvm.trunc.v4f32(<4 x float> %p)
  ret <4 x float> %t
}
declare <4 x float> @llvm.trunc.v4f32(<4 x float> %p)

define <4 x double> @trunc_v4f64(<4 x double> %p) {
; SSE41-LABEL: trunc_v4f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $11, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $11, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: trunc_v4f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $11, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: trunc_v4f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $11, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <4 x double> @llvm.trunc.v4f64(<4 x double> %p)
  ret <4 x double> %t
}
declare <4 x double> @llvm.trunc.v4f64(<4 x double> %p)

define <8 x float> @trunc_v8f32(<8 x float> %p) {
; SSE41-LABEL: trunc_v8f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $11, %xmm0, %xmm0
; SSE41-NEXT:    roundps $11, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: trunc_v8f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $11, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: trunc_v8f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $11, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <8 x float> @llvm.trunc.v8f32(<8 x float> %p)
  ret <8 x float> %t
}
declare <8 x float> @llvm.trunc.v8f32(<8 x float> %p)

define <8 x double> @trunc_v8f64(<8 x double> %p){
; SSE41-LABEL: trunc_v8f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $11, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $11, %xmm1, %xmm1
; SSE41-NEXT:    roundpd $11, %xmm2, %xmm2
; SSE41-NEXT:    roundpd $11, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: trunc_v8f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $11, %ymm0, %ymm0
; AVX-NEXT:    vroundpd $11, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: trunc_v8f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscalepd $11, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <8 x double> @llvm.trunc.v8f64(<8 x double> %p)
  ret <8 x double> %t
}
declare <8 x double> @llvm.trunc.v8f64(<8 x double> %p)

define <16 x float> @trunc_v16f32(<16 x float> %p) {
; SSE41-LABEL: trunc_v16f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $11, %xmm0, %xmm0
; SSE41-NEXT:    roundps $11, %xmm1, %xmm1
; SSE41-NEXT:    roundps $11, %xmm2, %xmm2
; SSE41-NEXT:    roundps $11, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: trunc_v16f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $11, %ymm0, %ymm0
; AVX-NEXT:    vroundps $11, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: trunc_v16f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscaleps $11, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <16 x float> @llvm.trunc.v16f32(<16 x float> %p)
  ret <16 x float> %t
}
declare <16 x float> @llvm.trunc.v16f32(<16 x float> %p)

define <2 x double> @rint_v2f64(<2 x double> %p) {
; SSE41-LABEL: rint_v2f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $4, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: rint_v2f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $4, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: rint_v2f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $4, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <2 x double> @llvm.rint.v2f64(<2 x double> %p)
  ret <2 x double> %t
}
declare <2 x double> @llvm.rint.v2f64(<2 x double> %p)

define <4 x float> @rint_v4f32(<4 x float> %p) {
; SSE41-LABEL: rint_v4f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $4, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: rint_v4f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $4, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: rint_v4f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $4, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <4 x float> @llvm.rint.v4f32(<4 x float> %p)
  ret <4 x float> %t
}
declare <4 x float> @llvm.rint.v4f32(<4 x float> %p)

define <4 x double> @rint_v4f64(<4 x double> %p) {
; SSE41-LABEL: rint_v4f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $4, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $4, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: rint_v4f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $4, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: rint_v4f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $4, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <4 x double> @llvm.rint.v4f64(<4 x double> %p)
  ret <4 x double> %t
}
declare <4 x double> @llvm.rint.v4f64(<4 x double> %p)

define <8 x float> @rint_v8f32(<8 x float> %p) {
; SSE41-LABEL: rint_v8f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $4, %xmm0, %xmm0
; SSE41-NEXT:    roundps $4, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: rint_v8f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $4, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: rint_v8f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $4, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <8 x float> @llvm.rint.v8f32(<8 x float> %p)
  ret <8 x float> %t
}
declare <8 x float> @llvm.rint.v8f32(<8 x float> %p)

define <8 x double> @rint_v8f64(<8 x double> %p){
; SSE41-LABEL: rint_v8f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $4, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $4, %xmm1, %xmm1
; SSE41-NEXT:    roundpd $4, %xmm2, %xmm2
; SSE41-NEXT:    roundpd $4, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: rint_v8f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $4, %ymm0, %ymm0
; AVX-NEXT:    vroundpd $4, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: rint_v8f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscalepd $4, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <8 x double> @llvm.rint.v8f64(<8 x double> %p)
  ret <8 x double> %t
}
declare <8 x double> @llvm.rint.v8f64(<8 x double> %p)

define <16 x float> @rint_v16f32(<16 x float> %p) {
; SSE41-LABEL: rint_v16f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $4, %xmm0, %xmm0
; SSE41-NEXT:    roundps $4, %xmm1, %xmm1
; SSE41-NEXT:    roundps $4, %xmm2, %xmm2
; SSE41-NEXT:    roundps $4, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: rint_v16f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $4, %ymm0, %ymm0
; AVX-NEXT:    vroundps $4, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: rint_v16f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscaleps $4, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <16 x float> @llvm.rint.v16f32(<16 x float> %p)
  ret <16 x float> %t
}
declare <16 x float> @llvm.rint.v16f32(<16 x float> %p)

define <2 x double> @nearbyint_v2f64(<2 x double> %p) {
; SSE41-LABEL: nearbyint_v2f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $12, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: nearbyint_v2f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $12, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: nearbyint_v2f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $12, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <2 x double> @llvm.nearbyint.v2f64(<2 x double> %p)
  ret <2 x double> %t
}
declare <2 x double> @llvm.nearbyint.v2f64(<2 x double> %p)

define <4 x float> @nearbyint_v4f32(<4 x float> %p) {
; SSE41-LABEL: nearbyint_v4f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $12, %xmm0, %xmm0
; SSE41-NEXT:    retq
;
; AVX-LABEL: nearbyint_v4f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $12, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: nearbyint_v4f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $12, %xmm0, %xmm0
; AVX512-NEXT:    retq
  %t = call <4 x float> @llvm.nearbyint.v4f32(<4 x float> %p)
  ret <4 x float> %t
}
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float> %p)

define <4 x double> @nearbyint_v4f64(<4 x double> %p) {
; SSE41-LABEL: nearbyint_v4f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $12, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $12, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: nearbyint_v4f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $12, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: nearbyint_v4f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundpd $12, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <4 x double> @llvm.nearbyint.v4f64(<4 x double> %p)
  ret <4 x double> %t
}
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double> %p)

define <8 x float> @nearbyint_v8f32(<8 x float> %p) {
; SSE41-LABEL: nearbyint_v8f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $12, %xmm0, %xmm0
; SSE41-NEXT:    roundps $12, %xmm1, %xmm1
; SSE41-NEXT:    retq
;
; AVX-LABEL: nearbyint_v8f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $12, %ymm0, %ymm0
; AVX-NEXT:    retq
;
; AVX512-LABEL: nearbyint_v8f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vroundps $12, %ymm0, %ymm0
; AVX512-NEXT:    retq
  %t = call <8 x float> @llvm.nearbyint.v8f32(<8 x float> %p)
  ret <8 x float> %t
}
declare <8 x float> @llvm.nearbyint.v8f32(<8 x float> %p)

define <8 x double> @nearbyint_v8f64(<8 x double> %p){
; SSE41-LABEL: nearbyint_v8f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundpd $12, %xmm0, %xmm0
; SSE41-NEXT:    roundpd $12, %xmm1, %xmm1
; SSE41-NEXT:    roundpd $12, %xmm2, %xmm2
; SSE41-NEXT:    roundpd $12, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: nearbyint_v8f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundpd $12, %ymm0, %ymm0
; AVX-NEXT:    vroundpd $12, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: nearbyint_v8f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscalepd $12, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <8 x double> @llvm.nearbyint.v8f64(<8 x double> %p)
  ret <8 x double> %t
}
declare <8 x double> @llvm.nearbyint.v8f64(<8 x double> %p)

define <16 x float> @nearbyint_v16f32(<16 x float> %p) {
; SSE41-LABEL: nearbyint_v16f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    roundps $12, %xmm0, %xmm0
; SSE41-NEXT:    roundps $12, %xmm1, %xmm1
; SSE41-NEXT:    roundps $12, %xmm2, %xmm2
; SSE41-NEXT:    roundps $12, %xmm3, %xmm3
; SSE41-NEXT:    retq
;
; AVX-LABEL: nearbyint_v16f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vroundps $12, %ymm0, %ymm0
; AVX-NEXT:    vroundps $12, %ymm1, %ymm1
; AVX-NEXT:    retq
;
; AVX512-LABEL: nearbyint_v16f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vrndscaleps $12, %zmm0, %zmm0
; AVX512-NEXT:    retq
  %t = call <16 x float> @llvm.nearbyint.v16f32(<16 x float> %p)
  ret <16 x float> %t
}
declare <16 x float> @llvm.nearbyint.v16f32(<16 x float> %p)

;
; Constant Folding
;

define <2 x double> @const_floor_v2f64() {
; SSE41-LABEL: const_floor_v2f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    movaps {{.*#+}} xmm0 = [-2.000000e+00,2.000000e+00]
; SSE41-NEXT:    retq
;
; AVX-LABEL: const_floor_v2f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vmovaps {{.*#+}} xmm0 = [-2.000000e+00,2.000000e+00]
; AVX-NEXT:    retq
;
; AVX512-LABEL: const_floor_v2f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vmovaps {{.*#+}} xmm0 = [-2.000000e+00,2.000000e+00]
; AVX512-NEXT:    retq
  %t = call <2 x double> @llvm.floor.v2f64(<2 x double> <double -1.5, double 2.5>)
  ret <2 x double> %t
}

define <4 x float> @const_floor_v4f32() {
; SSE41-LABEL: const_floor_v4f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    movaps {{.*#+}} xmm0 = [-4.000000e+00,6.000000e+00,-9.000000e+00,2.000000e+00]
; SSE41-NEXT:    retq
;
; AVX-LABEL: const_floor_v4f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vmovaps {{.*#+}} xmm0 = [-4.000000e+00,6.000000e+00,-9.000000e+00,2.000000e+00]
; AVX-NEXT:    retq
;
; AVX512-LABEL: const_floor_v4f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vmovaps {{.*#+}} xmm0 = [-4.000000e+00,6.000000e+00,-9.000000e+00,2.000000e+00]
; AVX512-NEXT:    retq
  %t = call <4 x float> @llvm.floor.v4f32(<4 x float> <float -3.5, float 6.0, float -9.0, float 2.5>)
  ret <4 x float> %t
}

define <2 x double> @const_ceil_v2f64() {
; SSE41-LABEL: const_ceil_v2f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    movaps {{.*#+}} xmm0 = [-1.000000e+00,3.000000e+00]
; SSE41-NEXT:    retq
;
; AVX-LABEL: const_ceil_v2f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vmovaps {{.*#+}} xmm0 = [-1.000000e+00,3.000000e+00]
; AVX-NEXT:    retq
;
; AVX512-LABEL: const_ceil_v2f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vmovaps {{.*#+}} xmm0 = [-1.000000e+00,3.000000e+00]
; AVX512-NEXT:    retq
  %t = call <2 x double> @llvm.ceil.v2f64(<2 x double> <double -1.5, double 2.5>)
  ret <2 x double> %t
}

define <4 x float> @const_ceil_v4f32() {
; SSE41-LABEL: const_ceil_v4f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    movaps {{.*#+}} xmm0 = [-3.000000e+00,6.000000e+00,-9.000000e+00,3.000000e+00]
; SSE41-NEXT:    retq
;
; AVX-LABEL: const_ceil_v4f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vmovaps {{.*#+}} xmm0 = [-3.000000e+00,6.000000e+00,-9.000000e+00,3.000000e+00]
; AVX-NEXT:    retq
;
; AVX512-LABEL: const_ceil_v4f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vmovaps {{.*#+}} xmm0 = [-3.000000e+00,6.000000e+00,-9.000000e+00,3.000000e+00]
; AVX512-NEXT:    retq
  %t = call <4 x float> @llvm.ceil.v4f32(<4 x float> <float -3.5, float 6.0, float -9.0, float 2.5>)
  ret <4 x float> %t
}

define <2 x double> @const_trunc_v2f64() {
; SSE41-LABEL: const_trunc_v2f64:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    movaps {{.*#+}} xmm0 = [-1.000000e+00,2.000000e+00]
; SSE41-NEXT:    retq
;
; AVX-LABEL: const_trunc_v2f64:
; AVX:       ## %bb.0:
; AVX-NEXT:    vmovaps {{.*#+}} xmm0 = [-1.000000e+00,2.000000e+00]
; AVX-NEXT:    retq
;
; AVX512-LABEL: const_trunc_v2f64:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vmovaps {{.*#+}} xmm0 = [-1.000000e+00,2.000000e+00]
; AVX512-NEXT:    retq
  %t = call <2 x double> @llvm.trunc.v2f64(<2 x double> <double -1.5, double 2.5>)
  ret <2 x double> %t
}

define <4 x float> @const_trunc_v4f32() {
; SSE41-LABEL: const_trunc_v4f32:
; SSE41:       ## %bb.0:
; SSE41-NEXT:    movaps {{.*#+}} xmm0 = [-3.000000e+00,6.000000e+00,-9.000000e+00,2.000000e+00]
; SSE41-NEXT:    retq
;
; AVX-LABEL: const_trunc_v4f32:
; AVX:       ## %bb.0:
; AVX-NEXT:    vmovaps {{.*#+}} xmm0 = [-3.000000e+00,6.000000e+00,-9.000000e+00,2.000000e+00]
; AVX-NEXT:    retq
;
; AVX512-LABEL: const_trunc_v4f32:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vmovaps {{.*#+}} xmm0 = [-3.000000e+00,6.000000e+00,-9.000000e+00,2.000000e+00]
; AVX512-NEXT:    retq
  %t = call <4 x float> @llvm.trunc.v4f32(<4 x float> <float -3.5, float 6.0, float -9.0, float 2.5>)
  ret <4 x float> %t
}
