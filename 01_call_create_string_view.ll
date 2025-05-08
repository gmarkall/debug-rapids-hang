; ModuleID = "call_create_string_view_from_udf_string$3"
target triple = "nvptx64-nvidia-cuda"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-i128:128:128-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

@"_ZN08NumbaEnv4cudf4core3udf16strings_lowering39call_create_string_view_from_udf_stringB2v3B40c8tJTC_2fWQA93W1AaAIYBPIqRBFCjDSyhCQA_3dE13udf_string_2a14string_view_2a" = common global i8* null
define i32 @"_ZN4cudf4core3udf16strings_lowering39call_create_string_view_from_udf_stringB2v3B40c8tJTC_2fWQA93W1AaAIYBPIqRBFCjDSyhCQA_3dE13udf_string_2a14string_view_2a"(i8** %".ret", {i8*, i32, i32}* %"arg.udf_str", {i8*, i32, i32}* %"arg.sv")
{
entry:
  %".5" = alloca i8*
  store i8* null, i8** %".5"
  br label %"B0"
B0:
  store i8* null, i8** %".5"
  %".8" = call i32 @"string_view_from_udf_string"(i8** %".5", {i8*, i32, i32}* %"arg.udf_str", {i8*, i32, i32}* %"arg.sv")
  %".9" = icmp eq i32 %".8", 0
  %".10" = icmp eq i32 %".8", -2
  %".11" = or i1 %".9", %".10"
  %".12" = xor i1 %".11", -1
  %".13" = icmp eq i32 %".8", -1
  %".14" = icmp eq i32 %".8", -3
  %".15" = icmp sge i32 %".8", 1
  %".16" = load i8*, i8** %".5"
  br i1 %".12", label %"B0.if", label %"B0.endif", !prof !1
B0.if:
  ret i32 %".8"
B0.endif:
  store i8* null, i8** %".ret"
  ret i32 0
}

declare i32 @"string_view_from_udf_string"(i8** %".ret", {i8*, i32, i32}* %"arg.arg0", {i8*, i32, i32}* %"arg.arg1")

!nvvmir.version = !{ !0 }
!0 = !{ i32 1, i32 9, i32 3, i32 1 }
!1 = !{ !"branch_weights", i32 1, i32 99 }
