; ModuleID = "test_string_udf_eq.<locals>.func$2"
target triple = "nvptx64-nvidia-cuda"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-i128:128:128-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

@"_ZN08NumbaEnv16test_string_udfs18test_string_udf_eq12_3clocals_3e4funcB2v2B100cw51cXTLSUwv1sDUaKthqaNgoKmjgOR3W3CwAkMQkR5sQekNGN5oUY8kDEllSAKoKQcmgeQT22p1IEvdSsFYR0EdFtJALtjNtZoAE10udf_string" = common global i8* null
define i32 @"_ZN16test_string_udfs18test_string_udf_eq12_3clocals_3e4funcB2v2B100cw51cXTLSUwv1sDUaKthqaNgoKmjgOR3W3CwAkMQkR5sQekNGN5oUY8kDEllSAKoKQcmgeQT22p1IEvdSsFYR0EdFtJALtjNtZoAE10udf_string"(i8* %".ret", i8* %"arg.st.0", i32 %"arg.st.1", i32 %"arg.st.2") alwaysinline
{
entry:
  %"inserted.m_data" = insertvalue {i8*, i32, i32} undef, i8* %"arg.st.0", 0
  %"inserted.m_bytes" = insertvalue {i8*, i32, i32} %"inserted.m_data", i32 %"arg.st.1", 1
  %"inserted.m_size" = insertvalue {i8*, i32, i32} %"inserted.m_bytes", i32 %"arg.st.2", 2
  %".9" = alloca i8*
  store i8* null, i8** %".9"
  %".24" = alloca {i8*, i32, i32}
  store {i8*, i32, i32} zeroinitializer, {i8*, i32, i32}* %".24"
  %".29" = alloca {i8*, i32, i32}
  store {i8*, i32, i32} zeroinitializer, {i8*, i32, i32}* %".29"
  %".43" = alloca i8
  store i8 0, i8* %".43"
  %".55" = alloca i1
  store i1 0, i1* %".55"
  br label %"B0"
B0:
  %".6" = alloca {i8*, i32, i32}
  %".7" = alloca {i8*, i32, i32}
  store {i8*, i32, i32} %"inserted.m_size", {i8*, i32, i32}* %".6"
  store i8* null, i8** %".9"
  %".12" = call i32 @"_ZN4cudf4core3udf16strings_lowering39call_create_string_view_from_udf_stringB2v3B40c8tJTC_2fWQA93W1AaAIYBPIqRBFCjDSyhCQA_3dE13udf_string_2a14string_view_2a"(i8** %".9", {i8*, i32, i32}* %".6", {i8*, i32, i32}* %".7")
  %".13" = icmp eq i32 %".12", 0
  %".14" = icmp eq i32 %".12", -2
  %".15" = or i1 %".13", %".14"
  %".16" = xor i1 %".15", -1
  %".17" = icmp eq i32 %".12", -1
  %".18" = icmp eq i32 %".12", -3
  %".19" = icmp sge i32 %".12", 1
  %".20" = load i8*, i8** %".9"
  br i1 %".16", label %"B0.if", label %"B0.endif", !prof !1
B0.if:
  ret i32 %".12"
B0.endif:
  %".23" = load {i8*, i32, i32}, {i8*, i32, i32}* %".7"
  store {i8*, i32, i32} zeroinitializer, {i8*, i32, i32}* %".24"
  store {i8*, i32, i32} %".23", {i8*, i32, i32}* %".24"
  %".28" = load {i8*, i32, i32}, {i8*, i32, i32}* %".24"
  store {i8*, i32, i32} zeroinitializer, {i8*, i32, i32}* %".29"
  %"generic" = addrspacecast i8 addrspace(4)* bitcast ([5 x i8] addrspace(4)* @"__conststring__$4cudf" to i8 addrspace(4)*) to i8*
  %".32" = getelementptr inbounds {i8*, i32, i32}, {i8*, i32, i32}* %".29", i32 0, i32 0
  store i8* %"generic", i8** %".32"
  %".34" = getelementptr inbounds {i8*, i32, i32}, {i8*, i32, i32}* %".29", i32 0, i32 2
  store i32 4, i32* %".34"
  %".36" = getelementptr inbounds {i8*, i32, i32}, {i8*, i32, i32}* %".29", i32 0, i32 1
  store i32 4, i32* %".36"
  %".38" = load {i8*, i32, i32}, {i8*, i32, i32}* %".29"
  %".39" = alloca {i8*, i32, i32}
  %".40" = alloca {i8*, i32, i32}
  store {i8*, i32, i32} %".28", {i8*, i32, i32}* %".39"
  store {i8*, i32, i32} %".38", {i8*, i32, i32}* %".40"
  store i8 0, i8* %".43"
  %".46" = call i32 @"_ZN4cudf4core3udf16strings_lowering7eq_implB2v4B40c8tJTC_2fWQA93W1AaAIYBPIqRBFCjDSyhCQA_3dE14string_view_2a14string_view_2a"(i8* %".43", {i8*, i32, i32}* %".39", {i8*, i32, i32}* %".40")
  %".47" = icmp eq i32 %".46", 0
  %".48" = icmp eq i32 %".46", -2
  %".49" = or i1 %".47", %".48"
  %".50" = xor i1 %".49", -1
  %".51" = icmp eq i32 %".46", -1
  %".52" = icmp eq i32 %".46", -3
  %".53" = icmp sge i32 %".46", 1
  %".54" = load i8, i8* %".43"
  %".57" = icmp eq i8 %".54", 0
  br i1 %".57", label %"B0.endif.if", label %"B0.endif.else"
B0.endif.if:
  store i1 0, i1* %".55"
  br label %"B0.endif.endif"
B0.endif.else:
  store i1 1, i1* %".55"
  br label %"B0.endif.endif"
B0.endif.endif:
  %".63" = load i1, i1* %".55"
  br i1 %".50", label %"B0.endif.endif.if", label %"B0.endif.endif.endif", !prof !1
B0.endif.endif.if:
  ret i32 %".46"
B0.endif.endif.endif:
  %".66" = zext i1 %".63" to i8
  store i8 %".66", i8* %".ret"
  ret i32 0
}

declare i32 @"_ZN4cudf4core3udf16strings_lowering39call_create_string_view_from_udf_stringB2v3B40c8tJTC_2fWQA93W1AaAIYBPIqRBFCjDSyhCQA_3dE13udf_string_2a14string_view_2a"(i8** %".ret", {i8*, i32, i32}* %"arg.udf_str", {i8*, i32, i32}* %"arg.sv")

@"__conststring__$4cudf" = internal addrspace(4) constant [5 x i8] c"cudf\00"
declare i32 @"_ZN4cudf4core3udf16strings_lowering7eq_implB2v4B40c8tJTC_2fWQA93W1AaAIYBPIqRBFCjDSyhCQA_3dE14string_view_2a14string_view_2a"(i8* %".ret", {i8*, i32, i32}* %"arg.st", {i8*, i32, i32}* %"arg.rhs")

!nvvmir.version = !{ !0 }
!0 = !{ i32 2, i32 0, i32 3, i32 1 }
!1 = !{ !"branch_weights", i32 1, i32 99 }
