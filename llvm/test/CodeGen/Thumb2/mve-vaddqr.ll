; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=thumbv8.1m.main-none-none-eabi -verify-machineinstrs -mattr=+mve.fp %s -o - | FileCheck %s

define arm_aapcs_vfpcc <4 x i32> @vaddqr_v4i32(<4 x i32> %src, i32 %src2, <4 x i32> %a, <4 x i32> %b) {
; CHECK-LABEL: vaddqr_v4i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vadd.i32 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %i = insertelement <4 x i32> undef, i32 %src2, i32 0
  %sp = shufflevector <4 x i32> %i, <4 x i32> undef, <4 x i32> zeroinitializer
  %c = add <4 x i32> %src, %sp
  ret <4 x i32> %c
}

define arm_aapcs_vfpcc <8 x i16> @vaddqr_v8i16(<8 x i16> %src, i16 %src2, <8 x i16> %a, <8 x i16> %b) {
; CHECK-LABEL: vaddqr_v8i16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vadd.i16 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %i = insertelement <8 x i16> undef, i16 %src2, i32 0
  %sp = shufflevector <8 x i16> %i, <8 x i16> undef, <8 x i32> zeroinitializer
  %c = add <8 x i16> %src, %sp
  ret <8 x i16> %c
}

define arm_aapcs_vfpcc <16 x i8> @vaddqr_v16i8(<16 x i8> %src, i8 %src2, <16 x i8> %a, <16 x i8> %b) {
; CHECK-LABEL: vaddqr_v16i8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vadd.i8 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %i = insertelement <16 x i8> undef, i8 %src2, i32 0
  %sp = shufflevector <16 x i8> %i, <16 x i8> undef, <16 x i32> zeroinitializer
  %c = add <16 x i8> %src, %sp
  ret <16 x i8> %c
}

define arm_aapcs_vfpcc <4 x i32> @vaddqr_v4i32_2(<4 x i32> %src, i32 %src2, <4 x i32> %a, <4 x i32> %b) {
; CHECK-LABEL: vaddqr_v4i32_2:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vadd.i32 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %i = insertelement <4 x i32> undef, i32 %src2, i32 0
  %sp = shufflevector <4 x i32> %i, <4 x i32> undef, <4 x i32> zeroinitializer
  %c = add <4 x i32> %sp, %src
  ret <4 x i32> %c
}

define arm_aapcs_vfpcc <8 x i16> @vaddqr_v8i16_2(<8 x i16> %src, i16 %src2, <8 x i16> %a, <8 x i16> %b) {
; CHECK-LABEL: vaddqr_v8i16_2:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vadd.i16 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %i = insertelement <8 x i16> undef, i16 %src2, i32 0
  %sp = shufflevector <8 x i16> %i, <8 x i16> undef, <8 x i32> zeroinitializer
  %c = add <8 x i16> %sp, %src
  ret <8 x i16> %c
}

define arm_aapcs_vfpcc <16 x i8> @vaddqr_v16i8_2(<16 x i8> %src, i8 %src2, <16 x i8> %a, <16 x i8> %b) {
; CHECK-LABEL: vaddqr_v16i8_2:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vadd.i8 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %i = insertelement <16 x i8> undef, i8 %src2, i32 0
  %sp = shufflevector <16 x i8> %i, <16 x i8> undef, <16 x i32> zeroinitializer
  %c = add <16 x i8> %sp, %src
  ret <16 x i8> %c
}

define arm_aapcs_vfpcc <4 x float> @vaddqr_v4f32(<4 x float> %src, float %src2, <4 x float> %a, <4 x float> %b) {
; CHECK-LABEL: vaddqr_v4f32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmov r0, s4
; CHECK-NEXT:    vadd.f32 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %i = insertelement <4 x float> undef, float %src2, i32 0
  %sp = shufflevector <4 x float> %i, <4 x float> undef, <4 x i32> zeroinitializer
  %c = fadd <4 x float> %src, %sp
  ret <4 x float> %c
}

define arm_aapcs_vfpcc <8 x half> @vaddqr_v8f16(<8 x half> %src, half *%src2p, <8 x half> %a, <8 x half> %b) {
; CHECK-LABEL: vaddqr_v8f16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    ldrh r0, [r0]
; CHECK-NEXT:    vadd.f16 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %src2 = load half, half *%src2p, align 2
  %i = insertelement <8 x half> undef, half %src2, i32 0
  %sp = shufflevector <8 x half> %i, <8 x half> undef, <8 x i32> zeroinitializer
  %c = fadd <8 x half> %src, %sp
  ret <8 x half> %c
}

define arm_aapcs_vfpcc <4 x float> @vaddqr_v4f32_2(<4 x float> %src, float %src2, <4 x float> %a, <4 x float> %b) {
; CHECK-LABEL: vaddqr_v4f32_2:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmov r0, s4
; CHECK-NEXT:    vadd.f32 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %i = insertelement <4 x float> undef, float %src2, i32 0
  %sp = shufflevector <4 x float> %i, <4 x float> undef, <4 x i32> zeroinitializer
  %c = fadd <4 x float> %sp, %src
  ret <4 x float> %c
}

define arm_aapcs_vfpcc <8 x half> @vaddqr_v8f16_2(<8 x half> %src, half *%src2p, <8 x half> %a, <8 x half> %b) {
; CHECK-LABEL: vaddqr_v8f16_2:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    ldrh r0, [r0]
; CHECK-NEXT:    vadd.f16 q0, q0, r0
; CHECK-NEXT:    bx lr
entry:
  %src2 = load half, half *%src2p, align 2
  %i = insertelement <8 x half> undef, half %src2, i32 0
  %sp = shufflevector <8 x half> %i, <8 x half> undef, <8 x i32> zeroinitializer
  %c = fadd <8 x half> %sp, %src
  ret <8 x half> %c
}

define arm_aapcs_vfpcc <4 x float> @vaddqr_v4f32_3(<4 x float> %src, float %src2, <4 x float> %a, <4 x float> %b) {
; CHECK-LABEL: vaddqr_v4f32_3:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmov r0, s4
; CHECK-NEXT:    vdup.32 q1, r0
; CHECK-NEXT:    vadd.f32 q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %src2bc = bitcast float %src2 to i32
  %i = insertelement <4 x i32> undef, i32 %src2bc, i32 0
  %spbc = shufflevector <4 x i32> %i, <4 x i32> undef, <4 x i32> zeroinitializer
  %sp = bitcast <4 x i32> %spbc to <4 x float>
  %c = fadd <4 x float> %src, %sp
  ret <4 x float> %c
}

define arm_aapcs_vfpcc <8 x half> @vaddqr_v8f16_3(<8 x half> %src, half *%src2p, <8 x half> %a, <8 x half> %b) {
; CHECK-LABEL: vaddqr_v8f16_3:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    ldrh r0, [r0]
; CHECK-NEXT:    vdup.16 q1, r0
; CHECK-NEXT:    vadd.f16 q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %src2 = load half, half *%src2p, align 2
  %src2bc = bitcast half %src2 to i16
  %i = insertelement <8 x i16> undef, i16 %src2bc, i32 0
  %spbc = shufflevector <8 x i16> %i, <8 x i16> undef, <8 x i32> zeroinitializer
  %sp = bitcast <8 x i16> %spbc to <8 x half>
  %c = fadd <8 x half> %src, %sp
  ret <8 x half> %c
}

define arm_aapcs_vfpcc <4 x float> @vaddqr_v4f32_4(<4 x float> %src, float %src2, <4 x float> %a, <4 x float> %b) {
; CHECK-LABEL: vaddqr_v4f32_4:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmov r0, s4
; CHECK-NEXT:    vdup.32 q1, r0
; CHECK-NEXT:    vadd.f32 q0, q1, q0
; CHECK-NEXT:    bx lr
entry:
  %src2bc = bitcast float %src2 to i32
  %i = insertelement <4 x i32> undef, i32 %src2bc, i32 0
  %spbc = shufflevector <4 x i32> %i, <4 x i32> undef, <4 x i32> zeroinitializer
  %sp = bitcast <4 x i32> %spbc to <4 x float>
  %c = fadd <4 x float> %sp, %src
  ret <4 x float> %c
}

define arm_aapcs_vfpcc <8 x half> @vaddqr_v8f16_4(<8 x half> %src, half *%src2p, <8 x half> %a, <8 x half> %b) {
; CHECK-LABEL: vaddqr_v8f16_4:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    ldrh r0, [r0]
; CHECK-NEXT:    vdup.16 q1, r0
; CHECK-NEXT:    vadd.f16 q0, q1, q0
; CHECK-NEXT:    bx lr
entry:
  %src2 = load half, half *%src2p, align 2
  %src2bc = bitcast half %src2 to i16
  %i = insertelement <8 x i16> undef, i16 %src2bc, i32 0
  %spbc = shufflevector <8 x i16> %i, <8 x i16> undef, <8 x i32> zeroinitializer
  %sp = bitcast <8 x i16> %spbc to <8 x half>
  %c = fadd <8 x half> %sp, %src
  ret <8 x half> %c
}
